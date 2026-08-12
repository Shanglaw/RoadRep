-- RoadRep: Freunde-Feature Phase 6.4 - Einladungslink-Vorschau.
--
-- Problem: der Consent-Dialog (openFriendConsentModal(), bereits vorhanden) zeigt "Du fügst hinzu:
-- <Kennzeichen>" VOR der Zustimmung an - informierte Zustimmung setzt voraus, dass man sieht, WEM man
-- zustimmt. Aber die normalen plates-RLS-Policies (0003_rls.sql) lassen das gerade NICHT zu: ein
-- privates Profil ist erst nach GEGENSEITIGER Freundschaft sichtbar, und genau die soll ja gerade erst
-- durch diesen Dialog entstehen (Henne-Ei-Problem). Diese enge, zweckgebundene SECURITY DEFINER
-- Funktion umgeht das gezielt NUR für die Vorschau: sie liefert ausschließlich display_plate +
-- country_code (keinen Score, keine Beobachtungen, keinen RoadScore) - also nicht mehr, als ohnehin
-- jedes öffentlich freigegebene Profil zeigen würde.
--
-- Zugriffsvoraussetzung ist Besitz der User-ID, nicht irgendeine Beziehung: UUIDs (v4, 122 Bit Zufall)
-- sind praktisch nicht erratbar/aufzählbar. Eine User-ID bekommt man nur, wenn (a) man selbst einen
-- Einladungslink erhalten hat (die Person hat ihn aktiv geteilt, siehe #/friend-invite/:uuid im Client)
-- oder (b) man bereits Teilnehmer:in einer friend_links-Zeile ist, die diese ID referenziert (dort
-- durch friend_links_select_participant ohnehin schon lesbar). Beides ist Besitz, den die Gegenseite
-- selbst hergestellt hat, kein Erraten.
CREATE OR REPLACE FUNCTION get_invite_preview(p_user_id UUID)
RETURNS JSONB
LANGUAGE plpgsql SECURITY DEFINER STABLE
AS $$
DECLARE
  v_display TEXT;
  v_country TEXT;
BEGIN
  IF auth.uid() IS NULL THEN
    RAISE EXCEPTION 'not_authenticated';
  END IF;

  -- moderation_hidden/moderation_blocked ausgeschlossen, damit diese Vorschau nicht mehr zeigt als
  -- get_plate_profile() einer neu entstandenen Freundschaft später ohnehin zeigen würde (0004_functions.sql)
  -- - sonst könnte man sich mit jemandem "verbinden", dessen Profil man danach gar nicht sehen kann.
  SELECT display_plate, country_code INTO v_display, v_country
  FROM plates WHERE verified_by = p_user_id AND NOT moderation_hidden AND NOT moderation_blocked;

  IF NOT FOUND THEN
    RETURN jsonb_build_object('found', false);
  END IF;

  RETURN jsonb_build_object('found', true, 'display_plate', v_display, 'country_code', v_country);
END;
$$;

-- ============================================================================
-- VERIFIKATION:
--   -- Als Konto B: SELECT get_invite_preview('<A-uuid>'); auf ein Kennzeichen, das A verifiziert hat
--   --   -> {"found": true, "display_plate": ..., "country_code": ...}, KEIN score/trust/dist-Feld.
--   -- Für eine UUID ohne verifiziertes Kennzeichen -> {"found": false}.
--   -- Ohne eingeloggte Sitzung (auth.uid() IS NULL) -> Fehler 'not_authenticated'.
-- ============================================================================
