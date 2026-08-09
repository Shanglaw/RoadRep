# Produktspezifikation: Kennzeichen-App (MVP)

**Status:** Umsetzbare Produktspezifikation, Version 1.0  
**Stand:** 9. August 2026  
**Arbeitstitel:** RoadScore / KennzeichenKarma  
**Leitsatz:** **Bewerte das Fahrverhalten, nicht den Menschen.**

---

## 1. Kurzfassung

Die App ermöglicht es, ein Kfz-Kennzeichen exakt zu suchen und ausschließlich anhand fest vorgegebener Kategorien zu bewerten. Bewertet wird eine konkrete, selbst beobachtete Verkehrssituation – niemals die Persönlichkeit, Identität oder der vermeintliche Charakter des Fahrers.

Jedes Kennzeichen erhält ein Profil mit:

- einem RoadScore von 0 bis 100,
- einer Verteilung positiver, neutraler und negativer Beobachtungen,
- den am häufigsten vergebenen Kategorien,
- einer transparenten Angabe zur Datenmenge und Aktualität.

Es gibt keine Kommentare, Freitexte, Fotos, Videos, Namen, Chats oder personenbezogene Beschreibungen. Die Kern-UX ist neutral, leicht verständlich, barrierearm und für junge wie ältere Erwachsene geeignet. Humor, Badges, lokale Statistiken und Community-Elemente sind optional und werden erst nach einem sicheren MVP ergänzt.

---

## 2. Produktziel

### 2.1 Hauptziel

Die App macht beobachtbares Fahrverhalten in einer einfachen, kontrollierten und möglichst fairen Form sichtbar. Sie soll positives Verhalten ebenso fördern wie problematisches Verhalten abbilden.

### 2.2 Nutzerproblem

Verkehrsteilnehmer erleben täglich rücksichtsvolles, auffälliges oder gefährliches Fahrverhalten, haben aber keinen niedrigschwelligen, strukturierten Kanal, um diese Beobachtung ohne öffentliche Beleidigungen oder persönliche Anschuldigungen festzuhalten.

### 2.3 Produktversprechen

> Kennzeichen eingeben, beobachtetes Verhalten auswählen, absenden – ohne Kommentar, Foto oder Namensnennung.

### 2.4 Produktsäulen

1. **Bewerten:** Eine konkrete Beobachtung in wenigen Schritten erfassen.
2. **Nachschauen:** Ein Kennzeichenprofil und dessen aggregierten RoadScore ansehen.
3. **Entdecken:** Später regionale Trends und Statistiken erkunden.
4. **Eigener Bezug:** Optional das eigene Kennzeichen verifizieren und dessen Wahrnehmung nachvollziehen.

---

## 3. Zielgruppe und UX-Grundsätze

### 3.1 Zielgruppe

Die Bedienung richtet sich an Erwachsene aller Altersgruppen, insbesondere:

- junge Fahrer, die eine schnelle und moderne Bedienung erwarten,
- Pendler und regelmäßig Fahrende,
- ältere Nutzer, die klare Sprache, große Bedienelemente und wenig Ablenkung bevorzugen,
- Halter, die die aggregierte Wahrnehmung ihres eigenen Kennzeichens sehen möchten.

Für den MVP gilt eine Altersgrenze von **18 Jahren**. Eine spätere Öffnung für Minderjährige setzt eine gesonderte rechtliche und sicherheitstechnische Prüfung voraus.

### 3.2 UX-Grundsätze

- neutrale Hauptnavigation ohne Jugendsprache,
- leicht verständliche Begriffe und eindeutige Symbole,
- große Touch-Ziele von mindestens 44 × 44 CSS-Pixeln,
- keine Funktion darf ausschließlich über Farbe oder Icons verständlich sein,
- vollständige Tastaturbedienung und Screenreader-Beschriftungen,
- hoher Kontrast und skalierbare Schrift,
- Bewertung in höchstens vier kurzen Schritten,
- keine Social-Funktion ist Voraussetzung für Suche oder Profilansicht,
- Humor nur in optionalen Badges oder Ergebnissen, nie bei schweren Vorwürfen.

---

## 4. Verbindliche Produktregeln

1. Bewertet wird ausschließlich **selbst beobachtbares Fahrverhalten**.
2. Es gibt ausschließlich redaktionell freigegebene Kategorien.
3. Es gibt keine Kommentare, Freitexte, Fotos, Videos, Audioaufnahmen oder Namen.
4. Kategorien beschreiben ein Verhalten in der Vergangenheit, zum Beispiel „Fuhr sehr dicht auf“, nicht eine Person wie „Drängler“.
5. Ein Kennzeichenprofil darf keine Rückschlüsse auf Halter, Fahrer, Adresse oder Bewegungsprofil anbieten.
6. Es werden keine exakten Orts- oder GPS-Daten einer Beobachtung veröffentlicht.
7. Einzelne Nutzer dürfen den Ruf eines Kennzeichens nicht wesentlich beeinflussen können.
8. Positive Beobachtungen sind ein gleichwertiger Teil des Produkts.
9. Negative Rankings einzelner Kennzeichen sind ausgeschlossen.
10. Schwere Kategorien dürfen nicht humoristisch inszeniert werden.

---

## 5. Nicht-Ziele

Der MVP ist ausdrücklich nicht:

- ein Portal zum Melden von Straftaten oder Verkehrsverstößen an Behörden,
- ein Ersatz für Polizei, Versicherung oder gerichtsfeste Beweissicherung,
- ein soziales Netzwerk mit Chats, Kommentaren oder Direktnachrichten,
- eine Halter- oder Personensuche,
- eine Karte mit Bewegungsdaten einzelner Fahrzeuge,
- ein Pranger oder eine Rangliste der „schlechtesten Fahrer“,
- ein System für Geldstrafen, Versicherungsentscheidungen, Bonität oder automatisierte Sanktionen,
- eine Plattform zum Hochladen von Dashcam-, Personen- oder Fahrzeugbildern,
- ein Marktplatz für gekaufte Bewertungen, Profilverbesserungen oder bezahlte Score-Manipulation.

---

## 6. MVP-Funktionsumfang

### 6.1 Muss-Funktionen (P0)

- Konto erstellen und anmelden
- exakte Kennzeichensuche
- Kennzeichen normalisieren und validieren
- Kennzeichenprofil anzeigen
- eine Beobachtung über eine feste Kategorie abgeben
- RoadScore und Vertrauensstufe berechnen
- Kategorieverteilung und Bewertungszeitraum anzeigen
- Missbrauchsschutz und Rate Limits
- Profil beziehungsweise Bewertung melden
- Betroffenenanfrage, Widerspruch und Löschprüfung ermöglichen
- Moderationsoberfläche für autorisierte Mitarbeiter
- Datenschutz-, Nutzungs- und Community-Regeln anzeigen
- vollständige Protokollierung von Moderationsentscheidungen

### 6.2 Soll-Funktionen (P1)

- „Mein Kennzeichen“ beantragen und verifizieren
- Benachrichtigung bei neuen aggregierten Beobachtungen zum verifizierten Kennzeichen
- einfache, grobe Bezirksstatistiken ohne Einzelkennzeichen-Ranking
- Badges für überwiegend positives Verhalten
- barrierearme Einführungsansicht und einfache Hilfetexte

### 6.3 Spätere Funktionen (P2)

- lokaler Feed mit aggregierten und ausreichend anonymisierten Ereignissen
- Stadt- und Markenstatistiken, sofern rechtlich und methodisch zulässig
- Wochenrückblicke
- positive Challenges wie „Drei rücksichtsvolle Situationen beobachten“
- Teilen einer neutralen Profilkarte ohne personenbezogene Zusatzdaten
- optionale Community-Ansicht neben einer reduzierten „Einfach“-Ansicht
- Mehrsprachigkeit
- feinere Manipulations- und Anomalieerkennung

### 6.4 Explizit zurückgestellt

- Folgen einzelner Kennzeichen
- Reaktionen auf einzelne Bewertungen
- Duelle zwischen Kennzeichen
- Top-Listen einzelner Kennzeichen
- monetarisierte Profilgestaltung

Diese Funktionen erhöhen das Risiko von Belästigung, Prangerwirkung oder Manipulation und benötigen vor einer Umsetzung eine erneute Produkt- und Rechtsprüfung.

---

## 7. Informationsarchitektur und Hauptscreens

### 7.1 Hauptnavigation

1. **Suchen**
2. **Bewerten**
3. **Entdecken** – im MVP nur einfache, aggregierte Statistiken oder ausgeblendet
4. **Mein Kennzeichen** – P1
5. **Konto und Hilfe**

### 7.2 Screens

| Screen | Zweck | Wichtigste Elemente |
|---|---|---|
| Start / Suche | Kennzeichen exakt eingeben | Länderwahl, Kennzeichenfeld, Suchen, „Fahrverhalten bewerten“ |
| Suchergebnis | Ziel prüfen | normalisierte Kennzeichenanzeige, Profil öffnen, Bewertung starten |
| Kennzeichenprofil | aggregierte Wahrnehmung zeigen | RoadScore, Vertrauensstufe, Zeitraum, Kategorien, Melden-Link |
| Bewertungsablauf | Beobachtung erfassen | Bestätigung, Kategoriegruppe, Kategorie, Regeln, Absenden |
| Bestätigung | Abschluss | Erfolgsmeldung, Sperrfrist, Profil öffnen |
| Mein Kennzeichen | Eigentümerfunktion | Verifizierung, Übersicht, Widerspruch, Einstellungen |
| Hilfe und Sicherheit | Regeln erklären | Verhaltensregel, FAQ, Notfallhinweis, Kontakt |
| Moderation | Fälle bearbeiten | Meldungen, Historie, Maßnahmen, Audit-Protokoll |

---

## 8. UX-Flows

### 8.1 Flow A: Kennzeichen suchen

1. Nutzer wählt das Land beziehungsweise Kennzeichenformat.
2. Nutzer gibt ein vollständiges Kennzeichen ein.
3. Das System normalisiert Groß-/Kleinschreibung, Leerzeichen und Bindestriche.
4. Das System validiert das Format.
5. Bei gültiger Eingabe öffnet sich das Profil.
6. Bei unbekanntem Kennzeichen erscheint ein leeres Profil mit „Noch nicht genügend Beobachtungen“ und einer Bewertungsmöglichkeit.

**Wichtig:** Im MVP gibt es nur exakte Suche. Keine Teiltreffer, Autovervollständigung, öffentliche Listen oder Suchmaschinenindexierung von Kennzeichenprofilen.

### 8.2 Flow B: Fahrverhalten bewerten

1. Nutzer ist angemeldet und bestätigt das Kennzeichen.
2. Die App zeigt: „Bewerte nur, was du selbst beobachtet hast.“
3. Nutzer wählt **positiv**, **neutral** oder **negativ**.
4. Nutzer wählt genau eine Kategorie.
5. Die App zeigt eine kurze Definition der Kategorie.
6. Nutzer bestätigt, dass keine Bewertung während des Fahrens abgegeben wird.
7. Backend prüft Berechtigung, Rate Limits, Duplikate und Risikosignale.
8. Bei Erfolg wird die Beobachtung gespeichert und gegebenenfalls aggregiert veröffentlicht.

**Zielzeit:** unter 30 Sekunden ab geöffnetem Kennzeichenprofil.

### 8.3 Flow C: Kennzeichenprofil ansehen

1. Profil zeigt RoadScore nur bei ausreichender Datenbasis.
2. Unterhalb der Schwelle steht „Noch nicht genügend unabhängige Beobachtungen“.
3. Sichtbar sind Score-Bereich, Vertrauensstufe, Anzahl gültiger Beobachtungen, betrachteter Zeitraum und häufigste Kategorien.
4. Einzelne Beobachter, Zeitpunkte oder Orte werden nicht angezeigt.
5. Jede Profilansicht enthält „Profil oder Ergebnis melden“.

### 8.4 Flow D: Mein Kennzeichen verifizieren (P1)

1. Nutzer beantragt die Zuordnung eines Kennzeichens.
2. Das System verlangt einen geeigneten Besitz-/Nutzungsnachweis nach dem rechtlich freigegebenen Verfahren.
3. Nachweisunterlagen werden getrennt verarbeitet und nach Abschluss unverzüglich nach der festgelegten Löschfrist entfernt.
4. Verifizierung verleiht keine Möglichkeit, Bewertungen selbst zu verändern.
5. Verifizierte Nutzer können Benachrichtigungen, Auskunft, Widerspruch und Moderationsprüfung anstoßen.

### 8.5 Flow E: Melden oder widersprechen

1. Nutzer öffnet „Melden“ beziehungsweise „Widerspruch“.
2. Er wählt einen festen Grund, zum Beispiel Manipulationsverdacht, falsches Kennzeichen, Datenschutzanfrage oder technische Fehlzuordnung.
3. Freitext wird nur in einem privaten Supportkanal zugelassen und niemals veröffentlicht.
4. Das System vergibt eine Fallnummer und setzt je nach Risiko Sichtbarkeit oder Score-Verarbeitung vorläufig aus.
5. Ein Moderator entscheidet anhand dokumentierter Regeln.
6. Der Antragsteller erhält eine knappe Entscheidung und einen Eskalationsweg.

---

## 9. Kategorienkatalog Version 1

### 9.1 Modell

- **Typ:** positiv, neutral oder negativ
- **Gewicht:** Einfluss auf den RoadScore
- **Stufe:** Intensität des beobachteten Verhaltens; 0 bedeutet neutral, 1 bis 5 bedeutet zunehmend relevant
- Die Zahlen werden in der normalen Bewertungs-UX nicht angezeigt.
- Stufe 5 bedeutet besonders gefährliches oder rücksichtsloses Verhalten, nicht automatisch eine juristische Bewertung.

### 9.2 Kategorien

| Schlüssel | Nutzertext | Typ | Gewicht | Stufe |
|---|---|---:|---:|---:|
| `lets_merge` | Ließ einfädeln | positiv | +1 | 1 |
| `keeps_distance` | Hielt guten Abstand | positiv | +1 | 1 |
| `signals_well` | Blinkte vorbildlich | positiv | +1 | 1 |
| `considerate_driving` | Fuhr rücksichtsvoll | positiv | +2 | 2 |
| `emergency_lane` | Bildete eine Rettungsgasse | positiv | +3 | 3 |
| `helped_road_user` | Half einem anderen Verkehrsteilnehmer | positiv | +3 | 3 |
| `parks_well` | Parkte ordentlich | positiv | +1 | 1 |
| `safe_bicycle_distance` | Hielt guten Abstand zu Radfahrern | positiv | +2 | 2 |
| `unusually_slow` | Fuhr auffällig langsam | neutral | 0 | 0 |
| `late_at_light` | Reagierte spät an der Ampel | neutral | 0 | 0 |
| `very_loud_vehicle` | Sehr lautes Fahrzeug | neutral | 0 | 0 |
| `unusual_vehicle` | Auffälliges oder besonderes Fahrzeug | neutral | 0 | 0 |
| `no_signal` | Blinkte nicht | negativ | -1 | 1 |
| `blocked_left_lane` | Blockierte unnötig die linke Spur | negativ | -1 | 1 |
| `obstructive_parking` | Parkte behindernd | negativ | -1 | 1 |
| `frequent_lane_changes` | Wechselte häufig die Spur | negativ | -1 | 1 |
| `clearly_too_fast` | Fuhr deutlich zu schnell | negativ | -2 | 2 |
| `tailgating` | Fuhr sehr dicht auf | negativ | -2 | 2 |
| `abrupt_lane_change` | Wechselte abrupt die Spur | negativ | -2 | 2 |
| `pressured_overtaking` | Drängelte beim Überholen | negativ | -2 | 2 |
| `phone_distraction` | Wirkte durch ein Mobiltelefon abgelenkt | negativ | -3 | 3 |
| `unsafe_bicycle_pass` | Überholte Radfahrer mit zu wenig Abstand | negativ | -3 | 3 |
| `endangered_pedestrians` | Gefährdete Fußgänger | negativ | -4 | 4 |
| `ran_red_light` | Fuhr über Rot | negativ | -4 | 4 |
| `blocked_emergency_lane` | Behinderte eine Rettungsgasse | negativ | -5 | 5 |

### 9.3 Redaktionelle Regeln für Kategorien

Eine Kategorie wird nur aufgenommen, wenn:

- sie von einem normalen Verkehrsteilnehmer in wenigen Sekunden beobachtet werden kann,
- sie ein konkretes Verhalten und keine Persönlichkeit beschreibt,
- sie ohne Freitext verständlich ist,
- sie nicht auf Herkunft, Geschlecht, Alter, Gesundheit oder andere persönliche Merkmale zielt,
- ihre Definition so konkret ist, dass verschiedene Nutzer ungefähr dasselbe darunter verstehen.

### 9.4 Sensible Kategorien

Kategorien ab negativer Stufe 3 gelten als sensibel. Sie werden auf einem Profil erst einzeln ausgewiesen, wenn mindestens drei voneinander unabhängige, gültige Beobachter dieselbe Kategorie innerhalb von 90 Tagen gemeldet haben. Bis dahin werden sie weder als Einzelvorwurf angezeigt noch für einen öffentlich sichtbaren Score verwendet.

---

## 10. RoadScore Version 1

### 10.1 Ziel

Der RoadScore fasst gewichtete Beobachtungen in einer verständlichen Zahl von 0 bis 100 zusammen. Eine einzelne Bewertung soll den Score nur begrenzt verändern. Viele aktuelle, voneinander unabhängige Beobachtungen sollen stärker wirken als wenige alte Beobachtungen.

### 10.2 Eingangswerte

Für jede gültige Beobachtung `i`:

- `weight_i`: Kategoriegewicht zwischen -5 und +3
- `age_days_i`: Alter der Beobachtung in Tagen
- `decay_i`: zeitlicher Gewichtungsfaktor

### 10.3 Zeitliche Abwertung

Version 1 verwendet eine Halbwertszeit von 180 Tagen:

```text
decay_i = 0.5 ^ (age_days_i / 180)
```

Damit zählt eine Beobachtung:

- am Tag der Abgabe zu 100 %,
- nach 180 Tagen zu 50 %,
- nach 360 Tagen zu 25 %.

### 10.4 Berechnung

```text
weighted_sum = Σ(weight_i × decay_i)
evidence     = Σ(abs(weight_i) × decay_i)
prior        = 10

road_score = round(clamp(50 + 50 × weighted_sum / (prior + evidence), 0, 100))
```

Eigenschaften:

- Neue oder unbekannte Kennzeichen starten rechnerisch neutral bei 50.
- Der `prior` dämpft kleine Datenmengen.
- Neutrale Kategorien verändern den Score nicht, bleiben aber als Statistik sichtbar.
- Nur gültige, nicht gesperrte und nicht als Duplikat erkannte Beobachtungen fließen ein.
- Sensible Kategorien fließen erst nach Erreichen ihrer Veröffentlichungsschwelle in den öffentlichen Score ein.

### 10.5 Sichtbarkeit und Vertrauensstufe

Der numerische RoadScore wird erst ab **fünf gültigen Beobachtungen von mindestens drei unabhängigen Konten** angezeigt. Vorher steht „Noch nicht genügend Daten“.

Zusätzlich wird eine Vertrauensstufe angezeigt:

| Stufe | Effektive Datenbasis | Anzeige |
|---|---:|---|
| Keine | unter 5 Beobachtungen oder unter 3 Konten | Kein Score |
| Niedrig | 5–14 gültige Beobachtungen | „Vorläufig“ |
| Mittel | 15–49 gültige Beobachtungen | „Wachsende Datenbasis“ |
| Hoch | ab 50 gültigen Beobachtungen | „Breite Datenbasis“ |

Die Vertrauensstufe ist keine Aussage darüber, ob eine einzelne Beobachtung wahr ist. Sie beschreibt nur die Breite der Datenbasis.

### 10.6 Score-Darstellung

- 0–29: deutlich negativ
- 30–44: eher negativ
- 45–55: ausgeglichen
- 56–70: eher positiv
- 71–100: deutlich positiv

Die UI zeigt immer auch Datenmenge und Aktualität. Der Score darf nie ohne Kontext allein präsentiert werden.

### 10.7 Neuberechnung

- bei Annahme, Sperrung oder Löschung einer Beobachtung,
- täglich für aktive Kennzeichenprofile wegen Zeitabwertung,
- vollständig reproduzierbar aus den gültigen Beobachtungen,
- mit gespeicherter Formelversion, damit spätere Änderungen nachvollziehbar bleiben.

---

## 11. Datenmodell-Vorschlag

### 11.1 `users`

| Feld | Typ | Zweck |
|---|---|---|
| `id` | UUID | interne ID |
| `email_normalized` | String, verschlüsselt/geschützt | Anmeldung und Verifizierung |
| `status` | Enum | active, restricted, suspended, deleted |
| `email_verified_at` | Timestamp, nullable | Verifizierungsstatus |
| `created_at` | Timestamp | Erstellung |
| `deleted_at` | Timestamp, nullable | Löschstatus |

### 11.2 `plates`

| Feld | Typ | Zweck |
|---|---|---|
| `id` | UUID | interne ID |
| `country_code` | String | Land des Kennzeichenformats |
| `normalized_plate_ciphertext` | String | verschlüsselte Normalform |
| `lookup_hash` | String, unique | exakte Suche ohne Klartextindex |
| `display_plate` | String | rechtlich freigegebene Darstellung |
| `profile_status` | Enum | active, limited, hidden, disputed |
| `created_at` | Timestamp | Erstellung |

### 11.3 `categories`

| Feld | Typ | Zweck |
|---|---|---|
| `id` | UUID | interne ID |
| `key` | String, unique | stabiler technischer Schlüssel |
| `label` | String | Nutzertext |
| `type` | Enum | positive, neutral, negative |
| `weight` | Integer | RoadScore-Gewicht |
| `severity` | Integer | Stufe 0–5 |
| `is_sensitive` | Boolean | besondere Veröffentlichungsschwelle |
| `definition` | Text | redaktionelle Erklärung |
| `active_from`, `active_until` | Timestamp | Versionierung |

### 11.4 `observations`

| Feld | Typ | Zweck |
|---|---|---|
| `id` | UUID | interne ID |
| `plate_id` | UUID | Zielkennzeichen |
| `category_id` | UUID | ausgewählte Kategorie |
| `reporter_user_id` | UUID | interner Beobachter |
| `observed_at_bucket` | Date | grober Tag statt exakter öffentlicher Zeit |
| `created_at` | Timestamp | technische Erstellung |
| `status` | Enum | pending, valid, withheld, rejected, removed |
| `moderation_reason_code` | Enum, nullable | feste Begründung |
| `risk_score` | Decimal | Missbrauchssignal |
| `formula_version` | String | Bewertungsregel bei Annahme |

### 11.5 `score_snapshots`

| Feld | Typ | Zweck |
|---|---|---|
| `plate_id` | UUID | Kennzeichen |
| `score` | Integer | 0–100 |
| `confidence_level` | Enum | none, low, medium, high |
| `valid_observation_count` | Integer | Datenbasis |
| `unique_reporter_count` | Integer | Unabhängigkeit |
| `formula_version` | String | Nachvollziehbarkeit |
| `calculated_at` | Timestamp | Aktualität |

### 11.6 Weitere Tabellen

- `plate_claims`: Antrag und Status von „Mein Kennzeichen“
- `moderation_cases`: Meldungen, Widersprüche und Entscheidungen
- `moderation_actions`: unveränderbares Audit-Protokoll
- `rate_limit_events`: kurzlebige Missbrauchsschutzdaten
- `account_risk_signals`: Kontorisiko ohne öffentliche Sichtbarkeit
- `category_versions`: Historie von Bezeichnungen und Gewichten

### 11.7 Datenminimierung

- Keine GPS-Koordinaten oder Bewegungsverläufe speichern.
- Keine Klarnamen für normale Nutzer erfassen.
- IP-Adressen nicht dauerhaft als Rohwert speichern; falls nötig, kurzlebig und geschützt für Missbrauchsschutz verarbeiten.
- Gerätekennungen nur pseudonymisiert, zweckgebunden und mit begrenzter Aufbewahrung nutzen.
- Verifizierungsdokumente für „Mein Kennzeichen“ getrennt speichern und nach Abschluss nach der festgelegten kurzen Frist löschen.

---

## 12. API-Vorschlag

| Methode | Route | Zweck |
|---|---|---|
| `POST` | `/v1/plates/lookup` | exakte Kennzeichensuche |
| `GET` | `/v1/plates/{id}/profile` | aggregiertes Profil |
| `GET` | `/v1/categories` | aktive Kategorien |
| `POST` | `/v1/plates/{id}/observations` | Beobachtung abgeben |
| `POST` | `/v1/plates/{id}/reports` | Profil melden |
| `POST` | `/v1/observations/{id}/reports` | Beobachtung intern melden, sofern referenzierbar |
| `POST` | `/v1/plate-claims` | „Mein Kennzeichen“ beantragen |
| `GET` | `/v1/me/plate-claims` | eigene Anträge abrufen |
| `POST` | `/v1/privacy-requests` | Auskunft, Widerspruch oder Löschprüfung |
| `GET` | `/v1/admin/moderation-cases` | Moderationswarteschlange |
| `POST` | `/v1/admin/moderation-cases/{id}/decision` | Entscheidung dokumentieren |

Jede schreibende Route benötigt Authentifizierung, CSRF-/Token-Schutz, serverseitige Validierung, Rate Limits und Auditierung.

---

## 13. Missbrauchsschutz

### 13.1 Mindestschutz im MVP

- Nur verifizierte Konten dürfen bewerten.
- Pro Konto und Kennzeichen höchstens eine Beobachtung innerhalb von 24 Stunden.
- Dieselbe Kategorie darf vom selben Konto für dasselbe Kennzeichen höchstens einmal innerhalb von 30 Tagen vergeben werden.
- Maximal 5 Abgaben in 10 Minuten und 20 Abgaben pro Tag je Konto.
- Zusätzliche geschützte Limits je Netzwerk- und Gerätesignal.
- Keine Bewertung des als „Mein Kennzeichen“ verifizierten eigenen Kennzeichens.
- Konten mit auffälligen Mustern werden gedrosselt oder in manuelle Prüfung gestellt.
- Gelöschte und neu erstellte Konten dürfen Sperrfristen nicht umgehen.

### 13.2 Erkennung verdächtiger Muster

- viele Bewertungen desselben Kennzeichens in kurzer Zeit,
- Kontogruppen mit ähnlichem Verhalten,
- wiederholte ausschließlich schwere Negativbewertungen,
- automatisierte oder unrealistisch schnelle Eingaben,
- ungewöhnlich hohe Zahl neu angelegter Kennzeichenprofile,
- gezielte Gegenseitigkeits- oder Vergeltungsmuster.

### 13.3 Reaktionen des Systems

Je nach Risiko:

1. Anfrage verlangsamen oder ablehnen,
2. zusätzliche Verifizierung verlangen,
3. Beobachtung zunächst zurückhalten,
4. Konto vorübergehend einschränken,
5. Fall an Moderation übergeben,
6. Beobachtungen eines missbrauchenden Kontos rückwirkend aus Scores entfernen.

Limits müssen serverseitig konfigurierbar sein, ohne App-Update angepasst werden können und dürfen in der Client-App nicht als einzige Schutzschicht implementiert sein.

---

## 14. Moderation, Sicherheit und Datenschutz

### 14.1 Grundsatz

Öffentlich durchsuchbare Kennzeichenprofile können datenschutz- und persönlichkeitsrechtliche Risiken erzeugen. Der öffentliche Profilmodus ist deshalb ein **Launch-Gate**: Vor Produktivstart müssen Rechtsgrundlage, Informationspflichten, Betroffenenrechte, Aufbewahrung, Moderationsprozess und die konkrete öffentliche Darstellung durch qualifizierte Rechtsberatung für die vorgesehenen Länder freigegeben werden.

Wenn der öffentliche Profilmodus nicht freigegeben wird, startet der MVP mit der sicheren Alternative:

- Einzelprofil nur für einen verifizierten Berechtigten, oder
- ausschließlich aggregierte Statistiken auf Bezirks-/Regionsebene ohne öffentliches Einzelkennzeichenprofil.

### 14.2 Privacy by Design

Die technische und organisatorische Gestaltung folgt Datenminimierung, Zweckbindung, Sicherheit, begrenzter Aufbewahrung und datenschutzfreundlichen Voreinstellungen. Diese Prinzipien werden nicht nachträglich ergänzt, sondern bereits in Architektur, UI und Standardkonfiguration umgesetzt.

### 14.3 Moderationsregeln

- Keine manuelle Erstellung neuer öffentlicher Freitextinhalte.
- Schwere Beobachtungen unterliegen Veröffentlichungsschwellen.
- Profile können bei glaubhaftem Manipulationsverdacht vorläufig verborgen werden.
- Moderatoren sehen nur die Daten, die sie für den Fall benötigen.
- Jede Entscheidung enthält festen Grundcode, Zeit, Bearbeiter und Ergebnis.
- Einsprüche werden von einer anderen Person geprüft, wenn organisatorisch möglich.
- Meldungen gegen geschützte oder besonders gefährdete Personen werden priorisiert.

### 14.4 Betroffenenrechte und Support

Das Produkt benötigt klar erreichbare Prozesse für:

- Information über die Verarbeitung,
- Auskunft,
- Berichtigung technischer Fehlzuordnungen,
- Löschprüfung,
- Einschränkung der Verarbeitung,
- Widerspruch,
- Beschwerde und Eskalation.

Die konkrete rechtliche Anspruchsprüfung ist keine automatische Produktentscheidung, sondern Teil eines dokumentierten Datenschutzprozesses.

### 14.5 Aufbewahrungsvorschlag

- gültige Beobachtungen: maximal 24 Monate, danach löschen oder vollständig anonymisieren,
- Missbrauchsschutz- und Netzwerkdaten: grundsätzlich höchstens 90 Tage,
- abgelehnte Bewertungsinhalte: höchstens 90 Tage für Einspruch und Missbrauchsanalyse,
- Moderationsnachweise: nach rechtlich festgelegtem Zweck und Löschkonzept,
- Verifizierungsdokumente: nur bis zum Abschluss plus kurze, rechtlich geprüfte Nachfrist.

Die Zeitabwertung des RoadScores ersetzt keine Löschung.

### 14.6 Sicherheit

- Verschlüsselung während Übertragung und Speicherung,
- rollenbasierte Rechte für Support und Moderation,
- Mehrfaktor-Authentifizierung für Administratoren,
- unveränderbares Audit-Protokoll für sensible Aktionen,
- Geheimnisse ausschließlich in einem Secret-Management-System,
- regelmäßige Backups und getestete Wiederherstellung,
- Schutz vor automatisierter Abfrage und massenhaftem Auslesen,
- keine Suchmaschinenindexierung von Einzelkennzeichenprofilen,
- Löschung eines Kontos entfernt oder anonymisiert dessen Zuordnung nach festgelegtem Konzept.

### 14.7 Notfallhinweis

Bei akuter Gefahr fordert die App ausdrücklich dazu auf, die App nicht während des Fahrens zu bedienen und bei Bedarf die zuständigen Notfall- oder Polizeistellen zu kontaktieren. Die App selbst nimmt keine Notfallmeldungen entgegen.

---

## 15. Priorisierte Umsetzung

### Phase 0: Freigaben und Grundlagen

1. Zielland und Kennzeichenformate festlegen.
2. Datenschutz- und Persönlichkeitsrechtsprüfung durchführen.
3. öffentlichen Profilmodus oder sichere Alternative verbindlich wählen.
4. Kategorien, Definitionen und Moderationsrichtlinie redaktionell freigeben.
5. Lösch-, Auskunfts- und Sicherheitskonzept verabschieden.

### Phase 1: Sicheres Kern-MVP

1. Konto und verifizierte Anmeldung
2. exakte Kennzeichensuche und Normalisierung
3. Kennzeichenprofil mit Mindestdaten-Schwelle
4. Bewertungsablauf mit festen Kategorien
5. RoadScore Version 1 und tägliche Neuberechnung
6. Rate Limits und Basiserkennung von Missbrauch
7. Meldungs-, Widerspruchs- und Moderationsablauf
8. Datenschutz-, Hilfe- und Sicherheitsseiten

### Phase 2: Eigener Bezug und positive Bindung

1. „Mein Kennzeichen“-Verifizierung
2. Benachrichtigungen mit sicheren Standardeinstellungen
3. positive Badges
4. verständlichere Score-Erklärungen und Verlauf in groben Zeiträumen

### Phase 3: Aggregierte Community

1. regionale Statistiken mit Mindestgruppengrößen
2. lokaler Feed ohne einzelne sensible Vorwürfe
3. Wochenrückblicke
4. positive Challenges

---

## 16. Akzeptanzkriterien für den MVP

### Suche und Profile

- Gültige Kennzeichen werden zuverlässig normalisiert.
- Ungültige Eingaben erzeugen eine verständliche Fehlermeldung.
- Teil- und Massensuche sind nicht möglich.
- Profile unterhalb der Mindestschwelle zeigen keinen numerischen Score.
- Kein Profil zeigt Nutzeridentitäten, exakte Orte oder einzelne Zeitpunkte.

### Bewertungen

- Eine Bewertung kann nur mit einer aktiven Kategorie abgesendet werden.
- Freitext und Datei-Uploads existieren im öffentlichen Bewertungsablauf nicht.
- Doppelte oder zu häufige Bewertungen werden serverseitig blockiert.
- Eine erfolgreiche Bewertung wird reproduzierbar im Score berücksichtigt.
- Gesperrte oder gelöschte Bewertungen werden bei Neuberechnung entfernt.

### RoadScore

- Die Referenzformel ist durch automatisierte Tests abgedeckt.
- Tests decken positive, negative, neutrale, gemischte, alte und leere Daten ab.
- Score bleibt immer zwischen 0 und 100.
- Eine einzelne leichte Beobachtung verändert den neutralen Startwert nur begrenzt.
- Formelversion und Berechnungszeitpunkt sind nachvollziehbar.

### Sicherheit und Moderation

- Rate Limits sind getestet und konfigurierbar.
- Moderatoren können Profile oder Beobachtungen sperren und wieder freigeben.
- Jede Moderationsaktion wird protokolliert.
- Datenschutzanfragen erhalten eine Fallnummer und Statusverfolgung.
- Eine Sicherheitsprüfung bestätigt Schutz gegen massenhaftes Auslesen, Kontoübernahme und typische Webangriffe.

### Barrierefreiheit und Bedienung

- Kernflows funktionieren per Tastatur und Screenreader.
- Kontrast und Fokusdarstellung erfüllen die festgelegten Barrierefreiheitsziele.
- Ein durchschnittlicher Nutzer kann eine Beobachtung in weniger als 30 Sekunden abschließen.
- Die App warnt vor Bedienung während des Fahrens.

---

## 17. Teststrategie

### 17.1 Automatisierte Tests

- Unit-Tests für Kennzeichen-Normalisierung, Kategorien, Zeitabwertung und RoadScore
- Property-Tests für Score-Grenzen und deterministische Berechnung
- Integrationstests für Bewertung, Sperrung, Löschung und Neuberechnung
- Sicherheitstests für Authentifizierung, Autorisierung und Rate Limits
- End-to-End-Tests für Suche, Bewertung, Meldung und Moderation
- Barrierefreiheitstests für Kernseiten

### 17.2 Zwingende Randfälle

- leeres oder ungültiges Kennzeichen,
- Unicode-, Leerzeichen- und Bindestrichvarianten,
- mehrere Länderformate,
- null Beobachtungen,
- nur neutrale Beobachtungen,
- eine einzelne schwere Negativbewertung,
- alte und neue Bewertungen gemischt,
- gleichzeitige Mehrfachabgaben,
- gelöschtes oder gesperrtes Konto,
- Kennzeichenwechsel beziehungsweise Wiedervergabe,
- manipulierte Clientdaten,
- Ausfall der Score-Neuberechnung,
- laufender Widerspruch gegen ein Profil.

### 17.3 Manuelle Tests

- moderierte Usability-Tests mit jüngeren, mittleren und älteren Erwachsenen,
- Missbrauchs- und Belästigungsszenarien,
- Prüfung der Tonalität jeder Kategorie,
- Moderationsübungen mit realistischen Falltypen,
- Prüfung des sicheren Ersatzmodus ohne öffentliche Einzelprofile.

---

## 18. Erfolgsmessung

### 18.1 Kernmetriken

- Anteil abgeschlossener Bewertungsflows
- Medianzeit bis zur Abgabe
- Anteil positiver, neutraler und negativer Beobachtungen
- Zahl unabhängiger Beobachter pro sichtbarem Profil
- Meldequote pro 1.000 Beobachtungen
- bestätigte Missbrauchsfälle pro 1.000 Beobachtungen
- Bearbeitungszeit von Widersprüchen und Datenschutzanfragen
- Anteil der Profile, deren Score auf mindestens mittlerer Datenbasis beruht

### 18.2 Schutzmetriken

- Anteil zurückgehaltener sensibler Kategorien
- Zahl verhinderter Duplikate und Rate-Limit-Verstöße
- Zahl vorläufig verborgener Profile
- Anteil erfolgreicher Einsprüche
- Beschwerden wegen Prangerwirkung oder Fehlzuordnung

### 18.3 Kein Erfolgsmaß

Die Zahl negativer Bewertungen, besonders niedrige Scores oder virale Einzelkennzeichen sind ausdrücklich keine Produktziele.

---

## 19. Produktentscheidungen für Version 1

| Thema | Entscheidung |
|---|---|
| Bewertungsobjekt | beobachtbares Fahrverhalten, nicht die Person |
| Eingabe | ausschließlich feste Kategorien |
| Öffentliche Inhalte | keine Kommentare, Fotos, Videos, Namen oder Chats |
| Suche | nur exakte vollständige Kennzeichensuche |
| Score | 0–100, gewichtete Kategorien, neutraler Start bei 50 |
| Alterung | Halbwertszeit 180 Tage |
| Mindestdaten | 5 Beobachtungen von mindestens 3 Konten |
| Sensible Kategorien | separate Schwelle von 3 unabhängigen Beobachtern in 90 Tagen |
| Wiederholung | 24 Stunden pro Konto/Kennzeichen; 30 Tage für gleiche Kategorie |
| Negative Rankings | ausgeschlossen |
| Zielgruppe | Erwachsene aller Altersgruppen; MVP ab 18 |
| Öffentliche Einzelprofile | nur nach rechtlicher Freigabe |
| Monetarisierung | keine käufliche Score- oder Bewertungsbeeinflussung |

---

## 20. Offene Produktfragen nach dem MVP

Diese Fragen blockieren die technische Kernumsetzung nicht, werden aber erst nach Nutzungsdaten und erneuter Sicherheitsprüfung entschieden:

- endgültiger Produktname und Markenauftritt,
- Länder außerhalb des ersten Startmarkts,
- konkrete Verifizierungsmethode für „Mein Kennzeichen“,
- Art und Umfang positiver Badges,
- Mindestgruppengrößen für regionale Statistiken,
- sichere Form eines lokalen Feeds,
- Anpassung von Kategoriegewichten anhand moderierter Daten,
- Anpassung der Halbwertszeit und des Prior-Werts,
- optionale „Einfach“- und „Community“-Ansicht.

Änderungen an Gewichten oder Score-Formeln müssen versioniert, getestet, dokumentiert und auf Manipulations- sowie Fairnessfolgen geprüft werden.

---

## 21. Launch-Checkliste

- [ ] Rechtsprüfung für Zielland und öffentlichen Profilmodus abgeschlossen
- [ ] Datenschutz-Folgenabschätzung beziehungsweise dokumentierte Erforderlichkeitsprüfung abgeschlossen
- [ ] Rechtsgrundlage und Informationspflichten dokumentiert
- [ ] Lösch-, Widerspruchs- und Auskunftsprozess getestet
- [ ] Kategorien und Definitionen redaktionell geprüft
- [ ] RoadScore mit Testvektoren validiert
- [ ] Rate Limits und Missbrauchserkennung unter Last getestet
- [ ] Moderation geschult und Eskalationsweg besetzt
- [ ] Sicherheits- und Datenschutzprüfung bestanden
- [ ] Barrierefreiheit der Kernflows geprüft
- [ ] Notfall- und „Nicht während der Fahrt“-Hinweise sichtbar
- [ ] Ersatzmodus ohne öffentliche Einzelprofile produktionsbereit

---

## 22. Referenzen für die rechtliche und technische Ausarbeitung

- [Datenschutz-Grundverordnung – offizieller Text bei EUR-Lex](https://eur-lex.europa.eu/eli/reg/2016/679/oj/deu)
- [EDSA-Leitlinien 4/2019 zu Datenschutz durch Technikgestaltung und datenschutzfreundliche Voreinstellungen](https://www.edpb.europa.eu/documents/guideline/guidelines-42019-on-article-25-data-protection-by-design-and-by-default_de)

Diese Spezifikation ist eine Produkt- und Umsetzungsvorgabe, keine Rechtsberatung. Die rechtlichen Launch-Gates sind verbindliche Projektanforderungen.

