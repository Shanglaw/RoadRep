-- RoadRep: schließt eine Lücke in claim_plate()/request_transfer() aus 0004_functions.sql --
-- moderation_blocked wurde dort nirgends geprüft, obwohl submit_observations() das schon tat. Ohne
-- diese Prüfung hätte ein von der Moderation gesperrtes Kennzeichen trotzdem (über-)verifiziert werden
-- können. Entdeckt beim Umstellen des Claim-Flows im Client (Phase 6.3) auf claim_plate().
-- CREATE OR REPLACE ersetzt die Funktionen 1:1 — keine Schema-Änderung, in beliebiger Reihenfolge nach
-- 0004_functions.sql anwendbar.

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
  v_blocked BOOLEAN;
BEGIN
  IF auth.uid() IS NULL THEN RAISE EXCEPTION 'not_authenticated'; END IF;
  IF NOT p_document_confirmed THEN RAISE EXCEPTION 'document_confirmation_required'; END IF;

  INSERT INTO plates (lookup_hash, display_plate, country_code)
  VALUES (p_lookup_hash, p_display_plate, p_country_code)
  ON CONFLICT (lookup_hash) DO NOTHING;

  SELECT verified_by, moderation_blocked INTO v_existing_verifier, v_blocked
  FROM plates WHERE lookup_hash = p_lookup_hash;

  IF v_blocked THEN
    RAISE EXCEPTION 'plate_blocked' USING ERRCODE = 'P0003';
  END IF;

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
  v_blocked BOOLEAN;
  v_claim_id UUID;
  v_deadline TIMESTAMPTZ;
BEGIN
  IF auth.uid() IS NULL THEN RAISE EXCEPTION 'not_authenticated'; END IF;
  IF NOT p_document_confirmed THEN RAISE EXCEPTION 'document_confirmation_required'; END IF;

  SELECT id, moderation_blocked INTO v_plate_id, v_blocked FROM plates WHERE lookup_hash = p_lookup_hash;
  IF NOT FOUND THEN RAISE EXCEPTION 'plate_not_found'; END IF;
  IF v_blocked THEN RAISE EXCEPTION 'plate_blocked' USING ERRCODE = 'P0003'; END IF;

  UPDATE plate_claims SET status = 'cancelled'
  WHERE plate_id = v_plate_id AND requesting_user_id = auth.uid() AND status = 'pending';

  INSERT INTO plate_claims (plate_id, requesting_user_id, document_confirmed_at)
  VALUES (v_plate_id, auth.uid(), now())
  RETURNING id, deadline_at INTO v_claim_id, v_deadline;

  RETURN jsonb_build_object('status', 'pending', 'claim_id', v_claim_id, 'deadline_at', v_deadline);
END;
$$;

-- ============================================================================
-- VERIFIKATION:
--   -- Als Moderator einen Fall auf einem Kennzeichen anlegen und mit apply_moderation_decision(
--   --   case_id, 'block') sperren, dann als anderes Konto claim_plate() auf dasselbe Kennzeichen
--   --   aufrufen -> muss 'plate_blocked' werfen (nicht mehr erfolgreich verifizieren).
--   -- Gleiches für request_transfer() auf ein bereits fremdverifiziertes UND gesperrtes Kennzeichen.
-- ============================================================================
