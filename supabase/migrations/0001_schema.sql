-- RoadRep: Schema für den gehosteten Supabase-Kern
-- Anwenden: Supabase Dashboard -> SQL Editor -> Inhalt einfügen -> Run.
-- Referenz: Plan C:\Users\kotok\.claude\plans\proud-prancing-spark.md, Phase 1.
-- Entspricht sinngemäß §11 der PRODUKTSPEZIFIKATION.md, für diese Phase vereinfacht
-- (kein normalized_plate_ciphertext, nur lookup_hash — siehe Plan "Entschieden für diese Phase").

-- In den meisten Supabase-Projekten bereits aktiv; steht hier defensiv, falls nicht.
CREATE EXTENSION IF NOT EXISTS pgcrypto;

CREATE TABLE plates (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  lookup_hash TEXT NOT NULL UNIQUE,        -- SHA-256(country_code || normalizedPlate), hex
  display_plate TEXT NOT NULL,
  country_code TEXT NOT NULL DEFAULT 'DE',
  public_opt_in BOOLEAN NOT NULL DEFAULT false,
  public_opt_in_at TIMESTAMPTZ,
  public_opt_in_consent_text TEXT,         -- verbatim Zustimmungstext, rechtlich belastbar (§8.6)
  verified_by UUID REFERENCES auth.users(id) ON DELETE SET NULL,
  verified_at TIMESTAMPTZ,
  document_confirmed_at TIMESTAMPTZ,       -- Fahrzeugschein-Selbstauskunft, siehe §23.5
  moderation_hidden BOOLEAN NOT NULL DEFAULT false,
  moderation_blocked BOOLEAN NOT NULL DEFAULT false,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE TABLE categories (
  key TEXT PRIMARY KEY,
  label TEXT NOT NULL,
  type TEXT NOT NULL CHECK (type IN ('positiv','neutral','negativ')),
  weight INTEGER NOT NULL,
  level INTEGER NOT NULL DEFAULT 0,
  is_sensitive BOOLEAN NOT NULL DEFAULT false,
  definition TEXT NOT NULL
);

CREATE TABLE observations (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  plate_id UUID NOT NULL REFERENCES plates(id) ON DELETE CASCADE,
  category_key TEXT NOT NULL REFERENCES categories(key),
  reporter_user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  status TEXT NOT NULL DEFAULT 'valid' CHECK (status IN ('valid','hidden','removed'))
);

-- Gerichtete Kanten; gegenseitig = beide Richtungen existieren mit consented_at gesetzt.
-- Siehe §8.8/§23.8 der Spec und openFriendConsentModal() im Prototyp.
CREATE TABLE friend_links (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  from_user UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  to_user UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  requested_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  consented_at TIMESTAMPTZ,
  consent_text TEXT,
  UNIQUE (from_user, to_user)
);

CREATE TABLE moderation_cases (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  case_number TEXT UNIQUE DEFAULT 'RR-' || to_char(now(),'YYYYMMDD') || '-' || substr(gen_random_uuid()::text,1,6),
  plate_id UUID REFERENCES plates(id) ON DELETE SET NULL,
  reason TEXT NOT NULL,
  description TEXT,
  reported_by UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  status TEXT NOT NULL DEFAULT 'open' CHECK (status IN ('open','reviewing','resolved','dismissed')),
  escalated BOOLEAN NOT NULL DEFAULT false
);

-- Append-only Audit-Log (§14.4) — keine UPDATE/DELETE-Policy in 0003_rls.sql,
-- damit ist die Tabelle nach dem Schreiben unveränderlich.
CREATE TABLE moderation_actions (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  case_id UUID NOT NULL REFERENCES moderation_cases(id) ON DELETE CASCADE,
  actor_user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  action TEXT NOT NULL CHECK (action IN ('hide','unhide','block','unblock','dismiss','escalate','note')),
  note TEXT,
  acted_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE TABLE plate_claims (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  plate_id UUID NOT NULL REFERENCES plates(id) ON DELETE CASCADE,
  requesting_user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  requested_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  deadline_at TIMESTAMPTZ NOT NULL DEFAULT now() + INTERVAL '14 days',
  status TEXT NOT NULL DEFAULT 'pending' CHECK (status IN ('pending','completed','cancelled','expired')),
  document_confirmed_at TIMESTAMPTZ
);

-- Wer hier drinsteht, darf Moderationsentscheidungen treffen (is_moderator() in 0003_rls.sql).
-- Erstbefüllung erfolgt manuell nach dem ersten echten Login, siehe README in diesem Ordner.
CREATE TABLE moderators (
  user_id UUID PRIMARY KEY REFERENCES auth.users(id) ON DELETE CASCADE
);

-- Hilfreiche Indizes für die häufigsten Zugriffsmuster
CREATE INDEX idx_observations_plate_id ON observations(plate_id);
CREATE INDEX idx_observations_reporter ON observations(reporter_user_id);
CREATE INDEX idx_friend_links_to_user ON friend_links(to_user);
CREATE INDEX idx_moderation_cases_status ON moderation_cases(status);
