-- RoadRep: Row Level Security — höchster Hebel der ganzen Migration.
-- Setzt den Privacy-Standard aus der Spec (privat-by-default, gegenseitige Freunde-Sichtbarkeit,
-- öffentliches Opt-in, Moderation hide/block) auf Datenbank-Ebene durch, nicht nur im Client-JS.
-- Anwenden: nach 0001 und 0002, im Supabase SQL Editor.

CREATE OR REPLACE FUNCTION is_moderator() RETURNS boolean
LANGUAGE sql SECURITY DEFINER STABLE
AS $$ SELECT EXISTS (SELECT 1 FROM moderators WHERE user_id = auth.uid()) $$;

-- ---------- plates ----------
ALTER TABLE plates ENABLE ROW LEVEL SECURITY;

CREATE POLICY plates_select_owner ON plates FOR SELECT
  USING (verified_by = auth.uid());

CREATE POLICY plates_select_public ON plates FOR SELECT
  USING (public_opt_in = true AND moderation_hidden = false AND moderation_blocked = false);

CREATE POLICY plates_select_mutual_friend ON plates FOR SELECT
  USING (
    moderation_hidden = false AND moderation_blocked = false
    AND EXISTS (
      SELECT 1 FROM friend_links
      WHERE from_user = auth.uid() AND to_user = verified_by AND consented_at IS NOT NULL
    )
    AND EXISTS (
      SELECT 1 FROM friend_links
      WHERE from_user = verified_by AND to_user = auth.uid() AND consented_at IS NOT NULL
    )
  );

CREATE POLICY plates_select_moderator ON plates FOR SELECT
  USING (is_moderator());

CREATE POLICY plates_update_owner ON plates FOR UPDATE
  USING (verified_by = auth.uid());

CREATE POLICY plates_update_moderator ON plates FOR UPDATE
  USING (is_moderator());
-- Bewusst kein INSERT/DELETE-Policy für Clients: läuft ausschließlich über die
-- SECURITY DEFINER Funktionen aus 0004_functions.sql (claim_plate, submit_observations).

-- ---------- categories ----------
ALTER TABLE categories ENABLE ROW LEVEL SECURITY;

CREATE POLICY categories_select_all ON categories FOR SELECT
  USING (true); -- öffentlich lesbar, keine personenbezogenen Daten

-- ---------- observations ----------
ALTER TABLE observations ENABLE ROW LEVEL SECURITY;

CREATE POLICY observations_select_owner ON observations FOR SELECT
  USING (EXISTS (SELECT 1 FROM plates p WHERE p.id = plate_id AND p.verified_by = auth.uid()));

CREATE POLICY observations_select_reporter ON observations FOR SELECT
  USING (reporter_user_id = auth.uid());

CREATE POLICY observations_select_moderator ON observations FOR SELECT
  USING (is_moderator());
-- Kein INSERT-Policy: nur submit_observations() darf schreiben, das erzwingt die
-- 24h/30-Tage-Rate-Limits serverseitig (vorher nur durch Scannen von localStorage simuliert).

-- ---------- friend_links ----------
ALTER TABLE friend_links ENABLE ROW LEVEL SECURITY;

CREATE POLICY friend_links_select_participant ON friend_links FOR SELECT
  USING (from_user = auth.uid() OR to_user = auth.uid());

CREATE POLICY friend_links_insert_self ON friend_links FOR INSERT
  WITH CHECK (from_user = auth.uid());

CREATE POLICY friend_links_delete_self ON friend_links FOR DELETE
  USING (from_user = auth.uid());

-- ---------- moderation_cases ----------
ALTER TABLE moderation_cases ENABLE ROW LEVEL SECURITY;

CREATE POLICY moderation_cases_insert_authenticated ON moderation_cases FOR INSERT
  WITH CHECK (reported_by = auth.uid());

CREATE POLICY moderation_cases_select_reporter ON moderation_cases FOR SELECT
  USING (reported_by = auth.uid());

CREATE POLICY moderation_cases_select_moderator ON moderation_cases FOR SELECT
  USING (is_moderator());

CREATE POLICY moderation_cases_update_moderator ON moderation_cases FOR UPDATE
  USING (is_moderator());

-- ---------- moderation_actions (append-only Audit-Log) ----------
ALTER TABLE moderation_actions ENABLE ROW LEVEL SECURITY;

CREATE POLICY moderation_actions_insert_moderator ON moderation_actions FOR INSERT
  WITH CHECK (is_moderator() AND actor_user_id = auth.uid());

CREATE POLICY moderation_actions_select_moderator ON moderation_actions FOR SELECT
  USING (is_moderator());
-- Bewusst KEINE UPDATE- oder DELETE-Policy -> die Tabelle ist damit unveränderlich,
-- auch für Moderatoren selbst. Das ist Absicht (§14.4 Audit-Protokoll).

-- ---------- plate_claims ----------
ALTER TABLE plate_claims ENABLE ROW LEVEL SECURITY;

CREATE POLICY plate_claims_select_owner ON plate_claims FOR SELECT
  USING (EXISTS (SELECT 1 FROM plates p WHERE p.id = plate_id AND p.verified_by = auth.uid()));

CREATE POLICY plate_claims_select_requester ON plate_claims FOR SELECT
  USING (requesting_user_id = auth.uid());

CREATE POLICY plate_claims_select_moderator ON plate_claims FOR SELECT
  USING (is_moderator());
-- Kein INSERT-Policy: nur request_transfer()/finalize_transfer() dürfen schreiben,
-- das erzwingt die 14-Tage-Wartefrist serverseitig (kein "Frist überspringen" mehr möglich).

-- ---------- moderators ----------
ALTER TABLE moderators ENABLE ROW LEVEL SECURITY;

CREATE POLICY moderators_select_authenticated ON moderators FOR SELECT
  USING (auth.uid() IS NOT NULL);
-- Absichtlich KEIN INSERT/UPDATE/DELETE-Policy für Clients — Erstbefüllung erfolgt
-- manuell durch den Entwickler im SQL Editor, siehe Ordner-README.

-- ============================================================================
-- VERIFIKATION (im SQL Editor auszuführen, wichtigster Checkpoint des ganzen Plans):
--
--   SET LOCAL role authenticated;
--   SET LOCAL request.jwt.claims = '{"sub": "<test-uuid>", "role": "authenticated"}';
--
--   -- Fremdes privates Profil -> 0 Zeilen erwartet
--   SELECT count(*) FROM plates WHERE verified_by = '<andere-uuid>' AND public_opt_in = false;
--
--   -- Öffentlich freigegebenes Profil -> sichtbar
--   SELECT count(*) FROM plates WHERE public_opt_in = true;
--
--   -- moderation_actions ist unveränderlich (muss fehlschlagen):
--   UPDATE moderation_actions SET note = 'test' WHERE id = (SELECT id FROM moderation_actions LIMIT 1);
--   DELETE FROM moderation_actions WHERE id = (SELECT id FROM moderation_actions LIMIT 1);
-- ============================================================================
