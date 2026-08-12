# RoadRep — Supabase-Migrationen

Anwenden: Supabase-Projekt → SQL Editor → jede Datei **in dieser Reihenfolge** einfügen und ausführen:

1. `0001_schema.sql` — Tabellen
2. `0002_seed_categories.sql` — die 25 Kategorien
3. `0003_rls.sql` — Row Level Security (Privacy-Durchsetzung auf DB-Ebene)
4. `0004_functions.sql` — Rate-Limits, Moderation, RoadScore-Berechnung
5. `0005_claim_blocked_guard.sql` — schließt eine beim Anschluss des Client-Claim-Flows (Phase 6.3)
   entdeckte Lücke: `claim_plate()`/`request_transfer()` prüften `moderation_blocked` bisher nicht

Kein Supabase-CLI nötig — reines Copy-Paste in den SQL Editor, Dateien sind im Repo nur zur Versionierung.

## Nach dem ersten echten Login: dich selbst als Moderator eintragen

`moderators` hat bewusst kein Insert-Policy für Clients — die Erstbefüllung passiert manuell:

```sql
INSERT INTO moderators (user_id)
SELECT id FROM auth.users WHERE email = 'deathdavid94@gmail.com';
```

Weitere Moderator:innen später genauso per E-Mail hinzufügen.

## Verifikation

Siehe die Kommentarblöcke am Ende von `0003_rls.sql` und `0004_functions.sql` für konkrete Test-Queries (RLS-Simulation mit `SET LOCAL request.jwt.claims`, Rate-Limit-Tests, Moderationsrechte-Test).

Referenz: vollständiger Plan unter `C:\Users\kotok\.claude\plans\proud-prancing-spark.md`.
