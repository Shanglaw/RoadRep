-- RoadRep: serverseitige Funktionen und Trigger.
-- Ersetzt alle bisher nur clientseitig "simulierten" Prüfungen (Rate-Limits, Moderationsrechte,
-- Transfer-Wartefrist, RoadScore-Berechnung) durch echte, nicht umgehbare Durchsetzung.
-- Anwenden: nach 0001, 0002, 0003.

-- ============================================================================
-- Rate-Limit-Trigger: NUR die 30-Tage-pro-Kategorie-Regel. Die 24h-pro-Kennzeichen-Regel
-- wird bewusst NICHT hier, sondern einmalig vorab in submit_observations() geprüft — sonst
-- würde die erste Kategorie einer Mehrfachauswahl sich selbst blockieren, weil der Trigger
-- die gerade erst eingefügte erste Zeile schon als "vorhandene Beobachtung < 24h" sähe.
-- ============================================================================
CREATE OR REPLACE FUNCTION check_rate_limit_observation()
RETURNS TRIGGER LANGUAGE plpgsql AS $$
BEGIN
  IF EXISTS (
    SELECT 1 FROM observations
    WHERE plate_id = NEW.plate_id
      AND reporter_user_id = NEW.reporter_user_id
      AND category_key = NEW.category_key
      AND status = 'valid'
      AND created_at > now() - INTERVAL '30 days'
  ) THEN
    RAISE EXCEPTION 'rate_limit_30d_category' USING ERRCODE = 'P0002';
  END IF;
  RETURN NEW;
END;
$$;

CREATE TRIGGER trg_rate_limit_observation
  BEFORE INSERT ON observations
  FOR EACH ROW EXECUTE FUNCTION check_rate_limit_observation();

-- ============================================================================
-- submit_observations: einzige Schreib-Route für Beobachtungen (kein INSERT-Policy
-- auf observations existiert, siehe 0003_rls.sql). Legt das Kennzeichen bei Bedarf an,
-- prüft moderation_blocked, prüft die 24h-Sperre einmalig für die ganze Übermittlung
-- (spiegelt "Du hast dieses Kennzeichen in den letzten 24 Stunden bereits bewertet"),
-- fügt dann jede Kategorie einzeln ein und fängt die 30-Tage-Sperre pro Kategorie ab
-- (graceful skip statt Komplettabbruch, wie im bisherigen Client-Verhalten).
-- ============================================================================
CREATE OR REPLACE FUNCTION submit_observations(
  p_lookup_hash TEXT,
  p_display_plate TEXT,
  p_country_code TEXT,
  p_category_keys TEXT[]
) RETURNS JSONB
LANGUAGE plpgsql SECURITY DEFINER
AS $$
DECLARE
  v_plate_id UUID;
  v_blocked BOOLEAN;
  v_recent_any BOOLEAN;
  v_category TEXT;
  v_accepted TEXT[] := ARRAY[]::TEXT[];
  v_skipped TEXT[] := ARRAY[]::TEXT[];
BEGIN
  IF auth.uid() IS NULL THEN
    RAISE EXCEPTION 'not_authenticated';
  END IF;
  IF p_category_keys IS NULL OR array_length(p_category_keys, 1) IS NULL THEN
    RAISE EXCEPTION 'no_categories_selected';
  END IF;

  INSERT INTO plates (lookup_hash, display_plate, country_code)
  VALUES (p_lookup_hash, p_display_plate, p_country_code)
  ON CONFLICT (lookup_hash) DO NOTHING;

  SELECT id, moderation_blocked INTO v_plate_id, v_blocked
  FROM plates WHERE lookup_hash = p_lookup_hash;

  IF v_blocked THEN
    RAISE EXCEPTION 'plate_blocked' USING ERRCODE = 'P0003';
  END IF;

  SELECT EXISTS (
    SELECT 1 FROM observations
    WHERE plate_id = v_plate_id AND reporter_user_id = auth.uid()
      AND status = 'valid' AND created_at > now() - INTERVAL '24 hours'
  ) INTO v_recent_any;

  IF v_recent_any THEN
    RAISE EXCEPTION 'rate_limit_24h_plate' USING ERRCODE = 'P0001';
  END IF;

  FOREACH v_category IN ARRAY p_category_keys LOOP
    BEGIN
      INSERT INTO observations (plate_id, category_key, reporter_user_id)
      VALUES (v_plate_id, v_category, auth.uid());
      v_accepted := array_append(v_accepted, v_category);
    EXCEPTION
      WHEN SQLSTATE 'P0002' THEN v_skipped := array_append(v_skipped, v_category);
      WHEN foreign_key_violation THEN v_skipped := array_append(v_skipped, v_category);
    END;
  END LOOP;

  RETURN jsonb_build_object('accepted', to_jsonb(v_accepted), 'skipped', to_jsonb(v_skipped));
END;
$$;

-- ============================================================================
-- claim_plate / request_transfer / finalize_transfer / cancel_transfer
-- Fahrzeugschein-Bestätigung bleibt Selbstauskunft (§23.5 "entschieden": für die produktive
-- App ist das nicht ausreichend, für diesen vertrauten Kreis akzeptiert) — aber wird jetzt
-- serverseitig verlangt (p_document_confirmed), nicht mehr nur durch einen deaktivierten
-- Button im Client. Die 14-Tage-Wartefrist wird an v_claim.deadline_at geprüft, kein
-- "Frist überspringen" mehr möglich, da es keinen Client-Pfad ohne diese Funktion gibt.
-- ============================================================================
CREATE OR REPLACE FUNCTION claim_plate(
  p_lookup_hash TEXT,
  p_display_plate TEXT,
  p_country_code TEXT,
  p_document_confirmed BOOLEAN
) RETURNS JSONB
LANGUAGE plpgsql SECURITY DEFINER
AS $$
DECLARE
  v_existing_verifier UUID;
BEGIN
  IF auth.uid() IS NULL THEN RAISE EXCEPTION 'not_authenticated'; END IF;
  IF NOT p_document_confirmed THEN RAISE EXCEPTION 'document_confirmation_required'; END IF;

  INSERT INTO plates (lookup_hash, display_plate, country_code)
  VALUES (p_lookup_hash, p_display_plate, p_country_code)
  ON CONFLICT (lookup_hash) DO NOTHING;

  SELECT verified_by INTO v_existing_verifier FROM plates WHERE lookup_hash = p_lookup_hash;

  IF v_existing_verifier IS NULL THEN
    UPDATE plates SET verified_by = auth.uid(), verified_at = now(), document_confirmed_at = now()
    WHERE lookup_hash = p_lookup_hash;
    RETURN jsonb_build_object('status', 'claimed');
  ELSIF v_existing_verifier = auth.uid() THEN
    RETURN jsonb_build_object('status', 'already_yours');
  ELSE
    RAISE EXCEPTION 'plate_already_claimed' USING ERRCODE = 'P0004';
  END IF;
END;
$$;

CREATE OR REPLACE FUNCTION request_transfer(
  p_lookup_hash TEXT,
  p_document_confirmed BOOLEAN
) RETURNS JSONB
LANGUAGE plpgsql SECURITY DEFINER
AS $$
DECLARE
  v_plate_id UUID;
  v_claim_id UUID;
  v_deadline TIMESTAMPTZ;
BEGIN
  IF auth.uid() IS NULL THEN RAISE EXCEPTION 'not_authenticated'; END IF;
  IF NOT p_document_confirmed THEN RAISE EXCEPTION 'document_confirmation_required'; END IF;

  SELECT id INTO v_plate_id FROM plates WHERE lookup_hash = p_lookup_hash;
  IF NOT FOUND THEN RAISE EXCEPTION 'plate_not_found'; END IF;

  UPDATE plate_claims SET status = 'cancelled'
  WHERE plate_id = v_plate_id AND requesting_user_id = auth.uid() AND status = 'pending';

  INSERT INTO plate_claims (plate_id, requesting_user_id, document_confirmed_at)
  VALUES (v_plate_id, auth.uid(), now())
  RETURNING id, deadline_at INTO v_claim_id, v_deadline;

  RETURN jsonb_build_object('status', 'pending', 'claim_id', v_claim_id, 'deadline_at', v_deadline);
END;
$$;

CREATE OR REPLACE FUNCTION finalize_transfer(p_claim_id UUID)
RETURNS JSONB
LANGUAGE plpgsql SECURITY DEFINER
AS $$
DECLARE
  v_claim plate_claims%ROWTYPE;
BEGIN
  IF auth.uid() IS NULL THEN RAISE EXCEPTION 'not_authenticated'; END IF;

  SELECT * INTO v_claim FROM plate_claims
  WHERE id = p_claim_id AND requesting_user_id = auth.uid() AND status = 'pending';
  IF NOT FOUND THEN RAISE EXCEPTION 'claim_not_found'; END IF;

  IF now() < v_claim.deadline_at THEN
    RAISE EXCEPTION 'transfer_cooling_off_active' USING ERRCODE = 'P0005';
  END IF;

  UPDATE plates
  SET verified_by = auth.uid(), verified_at = now(), document_confirmed_at = v_claim.document_confirmed_at
  WHERE id = v_claim.plate_id;

  UPDATE plate_claims SET status = 'completed' WHERE id = p_claim_id;

  RETURN jsonb_build_object('status', 'transferred');
END;
$$;

CREATE OR REPLACE FUNCTION cancel_transfer(p_claim_id UUID)
RETURNS JSONB
LANGUAGE plpgsql SECURITY DEFINER
AS $$
BEGIN
  IF auth.uid() IS NULL THEN RAISE EXCEPTION 'not_authenticated'; END IF;
  UPDATE plate_claims SET status = 'cancelled'
  WHERE id = p_claim_id AND requesting_user_id = auth.uid() AND status = 'pending';
  RETURN jsonb_build_object('status', 'cancelled');
END;
$$;

-- ============================================================================
-- apply_moderation_decision: ersetzt den reinen Client-Flag modAuthed + Klartext-Demo-Code
-- "RR-MOD-2024" durch eine echte serverseitige is_moderator()-Prüfung. Schreibt zuerst ins
-- unveränderliche Audit-Log (moderation_actions hat keine UPDATE/DELETE-Policy), danach
-- erst die Plate-/Case-Flags — Reihenfolge stellt sicher, dass jede Entscheidung protokolliert
-- ist, auch wenn danach etwas fehlschlägt.
-- ============================================================================
CREATE OR REPLACE FUNCTION apply_moderation_decision(
  p_case_id UUID,
  p_action TEXT,
  p_note TEXT DEFAULT NULL
) RETURNS JSONB
LANGUAGE plpgsql SECURITY DEFINER
AS $$
BEGIN
  IF NOT is_moderator() THEN
    RAISE EXCEPTION 'not_authorised' USING ERRCODE = 'P0006';
  END IF;
  IF p_action NOT IN ('hide','unhide','block','unblock','dismiss','escalate','note') THEN
    RAISE EXCEPTION 'invalid_action';
  END IF;

  INSERT INTO moderation_actions (case_id, actor_user_id, action, note)
  VALUES (p_case_id, auth.uid(), p_action, p_note);

  UPDATE plates p SET
    moderation_hidden = CASE p_action WHEN 'hide' THEN true WHEN 'unhide' THEN false ELSE p.moderation_hidden END,
    moderation_blocked = CASE p_action WHEN 'block' THEN true WHEN 'unblock' THEN false ELSE p.moderation_blocked END
  FROM moderation_cases mc
  WHERE mc.id = p_case_id AND p.id = mc.plate_id;

  UPDATE moderation_cases SET
    status = CASE p_action WHEN 'dismiss' THEN 'dismissed' WHEN 'escalate' THEN 'reviewing' ELSE status END,
    escalated = CASE p_action WHEN 'escalate' THEN true ELSE escalated END
  WHERE id = p_case_id;

  RETURN jsonb_build_object('status', 'applied', 'action', p_action);
END;
$$;

-- ============================================================================
-- get_plate_profile: EINZIGE RoadScore-Implementierung (SSOT). Ersetzt computeAggregate()
-- und sensitiveEligible() im Client vollständig — Formel-Konstanten identisch zum bisherigen
-- Client-Code übernommen (HALFLIFE_DAYS=180, PRIOR=10, MIN_OBS=5, MIN_ACCOUNTS=3,
-- SENSITIVE_ACCOUNTS_REQUIRED=3, SENSITIVE_WINDOW_DAYS=90). Bestimmt selbst die Zugriffsstufe
-- (owner/moderator sehen alles inkl. gesperrter Profile; friend/public je nach RLS-Kriterien;
-- sonst nicht sichtbar) und wendet die sensible-Kategorie-Schwelle jetzt für JEDE Stufe an,
-- inklusive privat (§9.4 "Entschieden 11. August 2026", vorher nur öffentlich).
-- ============================================================================
CREATE OR REPLACE FUNCTION get_plate_profile(p_lookup_hash TEXT)
RETURNS JSONB
LANGUAGE plpgsql SECURITY DEFINER STABLE
AS $$
DECLARE
  v_plate plates%ROWTYPE;
  v_is_owner BOOLEAN;
  v_is_friend BOOLEAN;
  v_is_public BOOLEAN;
  v_is_mod BOOLEAN;
  v_tier TEXT;
  v_total_count INTEGER;
  v_result JSONB;
BEGIN
  SELECT * INTO v_plate FROM plates WHERE lookup_hash = p_lookup_hash;
  IF NOT FOUND THEN
    RETURN jsonb_build_object('lookup_hash', p_lookup_hash, 'visible', false, 'reason', 'not_found');
  END IF;

  v_is_owner := (v_plate.verified_by = auth.uid());
  v_is_mod := is_moderator();
  v_is_public := v_plate.public_opt_in AND NOT v_plate.moderation_hidden AND NOT v_plate.moderation_blocked;
  v_is_friend := (NOT v_plate.moderation_hidden AND NOT v_plate.moderation_blocked)
    AND EXISTS (SELECT 1 FROM friend_links WHERE from_user = auth.uid() AND to_user = v_plate.verified_by AND consented_at IS NOT NULL)
    AND EXISTS (SELECT 1 FROM friend_links WHERE from_user = v_plate.verified_by AND to_user = auth.uid() AND consented_at IS NOT NULL);

  IF v_is_owner OR v_is_mod THEN
    v_tier := 'owner';
  ELSIF v_is_friend THEN
    v_tier := 'friend';
  ELSIF v_is_public THEN
    v_tier := 'public';
  ELSE
    RETURN jsonb_build_object(
      'id', v_plate.id,
      'lookup_hash', p_lookup_hash,
      'display_plate', v_plate.display_plate,
      'country_code', v_plate.country_code,
      'visible', false,
      'reason', CASE
        WHEN v_plate.moderation_blocked THEN 'blocked'
        WHEN v_plate.moderation_hidden THEN 'hidden'
        WHEN v_plate.verified_by IS NULL THEN 'unverified'
        ELSE 'private'
      END
    );
  END IF;

  SELECT count(*) INTO v_total_count FROM observations WHERE plate_id = v_plate.id AND status = 'valid';

  WITH eligible_obs AS (
    SELECT o.category_key, o.reporter_user_id, o.created_at, c.weight, c.type
    FROM observations o
    JOIN categories c ON c.key = o.category_key
    WHERE o.plate_id = v_plate.id AND o.status = 'valid'
      AND (
        NOT c.is_sensitive
        OR (
          SELECT count(DISTINCT o2.reporter_user_id)
          FROM observations o2
          WHERE o2.plate_id = v_plate.id AND o2.category_key = o.category_key
            AND o2.status = 'valid' AND o2.created_at > now() - INTERVAL '90 days'
        ) >= 3
      )
  ),
  weighted AS (
    SELECT
      count(*) AS obs_count,
      count(DISTINCT reporter_user_id) AS account_count,
      coalesce(sum(weight * power(0.5, extract(epoch FROM (now() - created_at)) / (180.0 * 86400))), 0) AS weighted_sum,
      coalesce(sum(abs(weight) * power(0.5, extract(epoch FROM (now() - created_at)) / (180.0 * 86400))), 0) AS evidence,
      min(created_at) AS oldest
    FROM eligible_obs
  ),
  dist AS (
    SELECT
      count(*) FILTER (WHERE type = 'positiv') AS positiv,
      count(*) FILTER (WHERE type = 'neutral') AS neutral,
      count(*) FILTER (WHERE type = 'negativ') AS negativ
    FROM eligible_obs
  ),
  top_cats AS (
    SELECT coalesce(jsonb_agg(jsonb_build_object('key', category_key, 'count', cnt)), '[]'::jsonb) AS cats
    FROM (
      SELECT category_key, count(*) AS cnt
      FROM eligible_obs
      GROUP BY category_key
      ORDER BY count(*) DESC
      LIMIT 5
    ) ranked
  )
  SELECT jsonb_build_object(
    'id', v_plate.id,
    'lookup_hash', p_lookup_hash,
    'display_plate', v_plate.display_plate,
    'country_code', v_plate.country_code,
    'visible', true,
    'tier', v_tier,
    'is_actual_owner', v_is_owner, -- getrennt von tier='owner', das auch Moderatoren einschliesst -
                                    -- der Client darf Eigentümer-Steuerelemente (Opt-in-Button etc.)
                                    -- nur zeigen, wenn dies wirklich true ist, nicht schon bei tier='owner'.
    'public_opt_in', v_plate.public_opt_in,
    'public_opt_in_at', v_plate.public_opt_in_at,
    'verified', v_plate.verified_by IS NOT NULL,
    'moderation_hidden', v_plate.moderation_hidden,
    'moderation_blocked', v_plate.moderation_blocked,
    'enough_data', (w.obs_count >= 5 AND w.account_count >= 3),
    'score', CASE WHEN w.obs_count >= 5 AND w.account_count >= 3
      THEN round(greatest(0, least(100, 50 + 50 * w.weighted_sum / (10 + w.evidence))))
      ELSE NULL END,
    'trust', CASE
      WHEN w.obs_count < 5 OR w.account_count < 3 THEN 'Kein Score'
      WHEN w.obs_count >= 50 THEN 'Breite Datenbasis'
      WHEN w.obs_count >= 15 THEN 'Wachsende Datenbasis'
      ELSE 'Vorläufig' END,
    'account_count', w.account_count,
    'valid_count', w.obs_count,
    'total_count', v_total_count,
    'dist', jsonb_build_object('positiv', d.positiv, 'neutral', d.neutral, 'negativ', d.negativ),
    'top_cats', t.cats,
    'period_days', CASE WHEN w.obs_count >= 5 AND w.account_count >= 3
      THEN round(extract(epoch FROM (now() - w.oldest)) / 86400)
      ELSE NULL END
  ) INTO v_result
  FROM weighted w, dist d, top_cats t;

  RETURN v_result;
END;
$$;

-- ============================================================================
-- VERIFIKATION:
--   -- Rate-Limit 24h: zweiter submit_observations()-Aufruf < 24h nach dem ersten
--   --   -> Fehler 'rate_limit_24h_plate'
--   -- Rate-Limit 30 Tage: dieselbe Kategorie zweimal für dieselbe Plate/Konto
--   --   -> zweiter Key landet in 'skipped', nicht in 'accepted'
--   -- claim_plate() für bereits fremdverifiziertes Kennzeichen -> 'plate_already_claimed'
--   -- finalize_transfer() vor Ablauf der 14 Tage -> 'transfer_cooling_off_active'
--   -- apply_moderation_decision() als Nicht-Moderator -> 'not_authorised'
--   -- get_plate_profile() für privates fremdes Profil -> visible:false, reason:'private'
-- ============================================================================
