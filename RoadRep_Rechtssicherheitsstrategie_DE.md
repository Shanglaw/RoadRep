# RoadRep – Rechtssicherheits- und Launch-Strategie Deutschland

**Status:** Arbeitsgrundlage für Produkt, Entwicklung und anwaltliche Prüfung  
**Stand:** 13. August 2026  
**Geltungsbereich:** Deutschland / MVP  
**Produkt:** RoadRep  
**Claim:** **RoadRep – Bewerte die Fahrt. Nicht den Fahrer.**

> **Wichtiger Hinweis:** Dieses Dokument ist keine Rechtsberatung und garantiert keine „Rechtssicherheit“. Es beschreibt eine bewusst risikoarme Produkt- und Datenschutzarchitektur für den deutschen Markt. Vor dem Produktivstart müssen die gekennzeichneten Launch-Gates durch qualifizierte Rechtsberatung und Datenschutzprüfung freigegeben werden.

---

## 1. Ziel dieses Dokuments

RoadRep verarbeitet Bewertungen, die an ein Kfz-Kennzeichen anknüpfen. Auch ohne Veröffentlichung von Namen können kennzeichenbezogene Informationen datenschutzrechtlich relevant sein.

Die zentrale Produktstrategie lautet deshalb:

> **So wenig personenbezogene Wirkung wie möglich, so viel Produktnutzen wie nötig.**

Für Deutschland soll RoadRep nicht als öffentlicher „Fahrer-Pranger“ starten, sondern als **privates, strukturiertes Feedbacksystem für verifizierte Berechtigte eines Kennzeichens**.

Die risikoreicheren Community-Funktionen werden technisch vorbereitet, bleiben aber standardmäßig deaktiviert, bis sie gesondert rechtlich freigegeben wurden.

---

# 2. Rechtliche Ausgangslage

## 2.1 Kennzeichenbewertungen sind nicht automatisch anonym

Ein Kfz-Kennzeichen kann zusammen mit weiteren Informationen einen Bezug zu einer natürlichen Person herstellen.

Daher darf RoadRep nicht davon ausgehen:

> „Wir speichern keine Namen, deshalb gilt die DSGVO nicht.“

Stattdessen wird die Verarbeitung von Beginn an als datenschutzrechtlich relevante Verarbeitung behandelt.

---

## 2.2 Vorgegebene Kategorien allein beseitigen das Prangerrisiko nicht

Das frühere Portal `fahrerbewertung.de` arbeitete ebenfalls mit einem Bewertungsschema, vorgegebenen Eigenschaften und ohne freie Texte.

Das OVG Nordrhein-Westfalen befasste sich im Urteil **16 A 770/17 vom 19.10.2017** mit diesem Modell. Besonders relevant für RoadRep ist, dass die öffentliche Abrufbarkeit kennzeichenbezogener Bewertungen ein wesentlicher Risikofaktor war.

Für RoadRep folgt daraus:

**Keine öffentlichen Einzelkennzeichenprofile im deutschen MVP.**

Quelle:

- [OVG Nordrhein-Westfalen, 16 A 770/17](https://nrwe.justiz.nrw.de/ovgs/ovg_nrw/j2017/16_A_770_17_Urteil_20171019.html)

---

# 3. Grundmodell für den deutschen MVP

## 3.1 Was RoadRep 1.0 darf

Ein angemeldeter Nutzer darf:

1. ein vollständiges Kennzeichen eingeben,
2. eine oder mehrere vorgegebene Beobachtungskategorien auswählen,
3. die Beobachtung absenden,
4. das eigene Kennzeichen verifizieren,
5. nach erfolgreicher Verifizierung die aggregierten Bewertungen des eigenen Kennzeichens ansehen,
6. Datenschutz-, Widerspruchs- und Moderationsverfahren auslösen.

---

## 3.2 Was RoadRep 1.0 nicht darf

Im deutschen MVP bleiben deaktiviert:

- öffentliche Einzelkennzeichenprofile,
- öffentliche RoadScores,
- öffentliche Kategorieverteilungen zu einem Kennzeichen,
- Google-/Suchmaschinenindexierung von Kennzeichenprofilen,
- öffentliche Top-/Flop-Ranglisten,
- „schlechteste Fahrer“ / „Top-Raser“ / ähnliche Negativrankings,
- Folgen einzelner Kennzeichen,
- öffentliche Feeds zu einzelnen Kennzeichen,
- Push-Nachrichten über negative Vorwürfe gegen einzelne Kennzeichen,
- Schnittstellen für Versicherungen, Arbeitgeber oder andere Dritte,
- vollständige oder teilweise Bewegungsprofile,
- öffentliche Beobachtungsorte,
- exakte öffentliche Beobachtungszeiten,
- Bilder, Videos oder Audiodateien,
- öffentliche Kommentare oder Freitext,
- Halter- oder Personensuche.

---

# 4. Verbindlicher Produktgrundsatz

Alle Texte und Funktionen müssen folgendem Grundsatz entsprechen:

> **Bewertet wird eine Beobachtung zu einem Kennzeichen – niemals eine festgestellte Eigenschaft des Fahrers oder Halters.**

Zulässig:

- „Fuhr sehr dicht auf“
- „Blinkte nicht“
- „Ließ einfädeln“
- „Drei unabhängige Nutzer wählten die Kategorie ‚Fuhr deutlich zu schnell‘.“

Nicht zulässig:

- „Der Fahrer ist ein Drängler.“
- „Der Halter ist ein Raser.“
- „Dieses Auto fährt immer zu schnell.“
- „Der Besitzer ist rücksichtslos.“

Zusätzlich muss bei sichtbaren aggregierten Daten dauerhaft erklärt werden:

> **RoadRep bewertet beobachtetes Fahrverhalten. Die Bewertungen stellen keine Aussage über die Person oder den Halter des Fahrzeugs dar. Halter und Fahrer können unterschiedliche Personen sein.**

---

# 5. Rechtsgrundlage – Launch-Gate

## 5.1 Problem

Die Bewertungen werden gespeichert, bevor der Halter oder Fahrer überhaupt von RoadRep weiß.

Daher kann die Speicherung nicht allein auf eine spätere Einwilligung des Halters gestützt werden.

---

## 5.2 Zu prüfender Ansatz

Vor dem Launch ist anwaltlich zu prüfen und schriftlich zu dokumentieren, ob und in welchem Umfang die Verarbeitung auf **Art. 6 Abs. 1 lit. f DSGVO – berechtigtes Interesse** gestützt werden kann.

Die Prüfung muss mindestens enthalten:

1. **Interesse**
   - Welches konkrete legitime Interesse verfolgt RoadRep?

2. **Erforderlichkeit**
   - Warum werden genau diese Daten benötigt?
   - Gibt es eine weniger eingriffsintensive Alternative?

3. **Interessenabwägung**
   - Welche Auswirkungen hat die Verarbeitung für Halter und mögliche Fahrer?
   - Was erwarten Betroffene vernünftigerweise?
   - Welche Schutzmaßnahmen reduzieren das Risiko?

4. **Schutzmaßnahmen**
   - private Profile,
   - keine öffentliche Suche,
   - Aggregation,
   - Mindestschwellen,
   - Zeitverfall,
   - Rate Limits,
   - Widerspruchsmöglichkeiten,
   - Datenminimierung.

**Launch-Gate:** Ohne dokumentierte und freigegebene Rechtsgrundlage dürfen keine echten kennzeichenbezogenen Beobachtungen gespeichert werden.

Quelle:

- [DSGVO, Art. 6 – EUR-Lex](https://eur-lex.europa.eu/eli/reg/2016/679/art_6/oj/deu)

---

# 6. Datenschutz-Folgenabschätzung (DSFA)

RoadRep verwendet einen RoadScore und verarbeitet wiederholte Verhaltensbeobachtungen.

Damit besteht ein relevantes Risiko, dass die Verarbeitung als systematische Bewertung bzw. Scoring eingeordnet wird.

Die deutsche Datenschutzkonferenz und die europäischen Leitlinien nennen **Bewerten/Einstufen und Profiling** als wichtige Kriterien für die Prüfung einer DSFA-Pflicht.

Für RoadRep gilt deshalb intern:

> **Die DSFA wird nicht als optional behandelt, sondern vor dem Launch durchgeführt.**

Die DSFA muss mindestens dokumentieren:

- Zweck der Verarbeitung,
- Datenarten,
- betroffene Personen,
- Datenflüsse,
- RoadScore-Berechnung,
- Speicherfristen,
- Verifizierung,
- Missbrauchsschutz,
- Moderationszugriffe,
- Empfänger,
- technische Schutzmaßnahmen,
- Risiken für Halter und Fahrer,
- Risiko falscher Bewertungen,
- Risiko koordinierter Rufschädigung,
- Risiko von Stalking oder Tracking,
- Risiko der Re-Identifizierung,
- Widerspruchs- und Löschverfahren,
- Restrisiken.

Falls trotz Schutzmaßnahmen ein hohes Restrisiko verbleibt, muss geprüft werden, ob eine vorherige Konsultation der zuständigen Datenschutzaufsichtsbehörde nach Art. 36 DSGVO erforderlich ist.

Quellen:

- [DSK – Kurzpapier Datenschutz-Folgenabschätzung](https://www.datenschutzkonferenz-online.de/media/kp/dsk_kpnr_5.pdf)
- [DSK / WP29 – Leitlinien zur DSFA](https://www.datenschutzkonferenz-online.de/media/wp/20171004_wp248_rev01.pdf)
- [DSGVO – EUR-Lex](https://eur-lex.europa.eu/legal-content/DE/TXT/HTML/?uri=CELEX%3A02016R0679-20160504)

---

# 7. Kennzeichenprofile

## 7.1 Standardstatus

Jedes Kennzeichenprofil erhält standardmäßig:

```yaml
profile_visibility: PRIVATE
public_profile: false
public_score: false
search_engine_indexing: false
friends_visibility: false
```

---

## 7.2 Fremde Kennzeichen

Ein normaler Nutzer darf durch eine Suche nach einem fremden Kennzeichen **nicht erfahren**:

- ob bereits Bewertungen existieren,
- wie viele Bewertungen existieren,
- ob das Kennzeichen verifiziert wurde,
- welchen RoadScore es hat,
- welche Kategorien vergeben wurden,
- ob ein Widerspruch läuft.

Zulässige Antwort:

> „Du kannst eine Beobachtung zu diesem Kennzeichen abgeben.“

---

## 7.3 Eigenes Kennzeichen

Nur ein erfolgreich verifizierter Berechtigter darf das private Profil öffnen.

Das Profil zeigt ausschließlich aggregierte Informationen.

Nicht anzeigen:

- Identität einzelner Beobachter,
- E-Mail-Adressen,
- IP-Adressen,
- Geräteinformationen,
- exakte Beobachtungszeit,
- genaue Beobachtungsorte.

---

# 8. Verifizierung von „Mein Kennzeichen“

## 8.1 Kein Checkbox-Verfahren im Produktivsystem

Folgendes reicht ausdrücklich **nicht**:

> „Ich bestätige, dass ich den Fahrzeugschein habe.“

Eine reine Selbstauskunft darf nur in einem Demo-Prototyp existieren.

---

## 8.2 Anforderungen an eine echte Verifizierung

Das Verfahren muss vor Produktivstart rechtlich und technisch freigegeben werden.

Mögliche Richtung zur Prüfung:

1. Nutzer beantragt Kennzeichen.
2. Nutzer erbringt einen geeigneten Besitz-/Nutzungsnachweis.
3. Nachweis wird getrennt vom RoadRep-Profil verarbeitet.
4. Es wird nur das Ergebnis der Prüfung gespeichert:
   - `verified`
   - Zeitpunkt,
   - Prüfmethode,
   - Ablaufdatum.
5. Dokumente werden nach Abschluss innerhalb einer kurzen festgelegten Frist gelöscht.

Nach Möglichkeit sollen keine vollständigen Fahrzeugscheinbilder dauerhaft gespeichert werden.

---

## 8.3 Verifizierung beweist nicht den Fahrer

Die UI muss klarstellen:

> Die Verifizierung bestätigt nur die aktuelle Berechtigung zur Verwaltung dieses Kennzeichenprofils. Sie beweist nicht, wer bei früheren Beobachtungen das Fahrzeug geführt hat.

---

# 9. RoadScore

## 9.1 RoadScore bleibt im deutschen MVP privat

Der RoadScore darf zunächst ausschließlich dem verifizierten Berechtigten angezeigt werden.

Kein:

- öffentlicher Score,
- öffentlicher Rankingplatz,
- öffentlicher Vergleich einzelner Kennzeichen,
- API-Zugang für Dritte.

---

## 9.2 Mindestdaten

Der Score darf erst angezeigt werden, wenn mindestens:

- 5 gültige Beobachtungen
- von mindestens 3 unabhängigen Konten

vorliegen.

Darunter:

> „Noch nicht genügend unabhängige Beobachtungen.“

---

## 9.3 Kontextpflicht

Der RoadScore darf nie allein dargestellt werden.

Immer gemeinsam mit:

- Datenbasis,
- Vertrauensstufe,
- Aktualität,
- Hinweis auf Beobachtungscharakter,
- Hinweis „Halter ≠ Fahrer“.

---

# 10. Sensible Kategorien

## 10.1 Stufen

Kategorie-Stufe 1–2:

- normale Beobachtung.

Kategorie-Stufe 3–5:

- sensible Beobachtung.

Beispiele:

- Mobiltelefon-Ablenkung,
- gefährlicher Fahrradüberholvorgang,
- Gefährdung von Fußgängern,
- Rotlicht,
- Behinderung einer Rettungsgasse.

---

## 10.2 Veröffentlichungsschwelle

Sensible Kategorien dürfen auch im privaten Profil nicht sofort einzeln erscheinen.

Mindestschwelle:

> **3 unabhängige gültige Beobachter derselben Kategorie innerhalb von 90 Tagen.**

Unterhalb dieser Schwelle:

- Kategorie nicht einzeln anzeigen,
- keine Formulierung als bestätigte Tatsache,
- nicht in einen später öffentlich sichtbaren Score einrechnen.

---

## 10.3 Zusätzliche MVP-Prüfung

Vor Launch sollte anwaltlich geprüft werden, ob Stufe-4- und Stufe-5-Kategorien im deutschen MVP überhaupt angeboten werden sollten.

Defensivste Variante:

```yaml
severity_1_enabled: true
severity_2_enabled: true
severity_3_enabled: legal_review
severity_4_enabled: false
severity_5_enabled: false
```

---

# 11. Beobachter und Anonymität

RoadRep darf nicht versprechen:

> „Du bist vollständig anonym.“

Besser:

> **Deine Identität wird anderen RoadRep-Nutzern nicht angezeigt. Gesetzliche Offenlegungs- und Auskunftspflichten bleiben unberührt.**

Intern darf die Nutzer-ID verarbeitet werden, soweit dies für:

- Rate Limits,
- Missbrauchserkennung,
- Moderation,
- Sicherheit,
- Rechtsansprüche

notwendig ist.

Öffentlich wird niemals angezeigt, welcher Nutzer welche Bewertung abgegeben hat.

---

# 12. Auskunft und Art. 14 DSGVO

Da Beobachtungen typischerweise von einem anderen Nutzer stammen und nicht direkt beim betroffenen Halter erhoben werden, muss RoadRep die Informationspflichten nach **Art. 14 DSGVO** ausdrücklich prüfen und umsetzen.

Die Datenschutzprüfung muss klären:

- wann Betroffene informiert werden,
- welche Informationen bereitgestellt werden,
- wie die Datenquelle beschrieben wird,
- wie Auskunftsanfragen bearbeitet werden,
- wie die Rechte der Beobachter geschützt werden,
- welche Ausnahmen ggf. tatsächlich anwendbar sind.

Eine pauschale Annahme wie

> „Wir können den Halter sowieso nicht kontaktieren, also gilt Art. 14 nicht“

ist nicht als Produktregel zulässig.

---

# 13. Widerspruch und Einschränkung

## 13.1 Einfacher Zugang

Jedes verifizierte Profil benötigt einen klar sichtbaren Bereich:

**Datenschutz & Widerspruch**

Dort:

- Auskunft beantragen,
- Verarbeitung widersprechen,
- technische Fehlzuordnung melden,
- Löschprüfung beantragen,
- Einschränkung beantragen,
- Beschwerde einreichen.

---

## 13.2 Technischer Status

Bei einem plausiblen Widerspruch kann das Profil automatisch wechseln auf:

```text
PROCESSING_RESTRICTED_PENDING_REVIEW
```

Auswirkung:

- Score eingefroren,
- keine neue Sichtbarkeit,
- keine Freigabe,
- Beobachtungen weiterhin gegen Manipulation geschützt,
- Moderations-/Datenschutzprüfung wird eröffnet.

Art. 21 DSGVO ist dabei in der Rechtsprüfung ausdrücklich zu berücksichtigen.

---

# 14. Speicherfristen

Die aktuelle Produktspezifikation sieht maximal 24 Monate vor.

Für den deutschen MVP sollte eine kürzere Frist geprüft werden.

Empfohlene Prüfvariante:

| Datenart | Arbeitsvorschlag |
|---|---:|
| gültige Beobachtungen | 6–12 Monate |
| abgelehnte Beobachtungen | max. 90 Tage |
| Netzwerk-/Missbrauchssignale | max. 90 Tage |
| Verifizierungsdokumente | nur Prüfzeit + kurze Nachfrist |
| Moderationsprotokolle | nach dokumentiertem rechtlichem Zweck |
| Accountdaten | bis Kontolöschung + erforderliche Abwicklung |

Die konkrete Frist ist rechtlich zu begründen.

Grundsatz:

> **Die RoadScore-Zeitabwertung ersetzt keine Datenlöschung.**

---

# 15. Keine Bewegungsprofile

RoadRep speichert und veröffentlicht keine GPS-Koordinaten.

Wenn ein grober Zeitpunkt technisch notwendig ist:

- intern höchstens grobe Zeit-Buckets,
- öffentlich niemals exakte Zeitpunkte.

Nicht zulässig:

```text
UL-AB 1234
08:12 Stuttgart
09:04 Ludwigsburg
17:37 Stuttgart
```

Dadurch könnte faktisch ein Bewegungsprofil entstehen.

---

# 16. Freunde-Funktion

## 16.1 Empfehlung für Deutschland MVP

```yaml
friends_visibility: false
```

Die Funktion wird zunächst deaktiviert.

Grund:

Die Zustimmung des Halters beseitigt nicht automatisch alle Rechte anderer Personen, die das Fahrzeug in beobachteten Situationen gefahren haben könnten.

---

## 16.2 Spätere sichere Variante

Nach Rechtsprüfung könnte statt gegenseitiger dauerhafter Profilfreigabe eine eingeschränkte Sharing-Funktion untersucht werden:

- aktiv vom verifizierten Nutzer erzeugter Link,
- jederzeit widerrufbar,
- kurze Laufzeit,
- Kennzeichen teilweise maskiert,
- keine sensiblen Kategorien,
- keine Einzelbeobachtungen,
- keine Beobachtungszeiten oder Orte,
- kein Zugriff auf historische Detaildaten.

---

# 17. Öffentliche Profile

## 17.1 MVP

Für Deutschland:

```yaml
public_profiles: false
public_score: false
sensitive_categories_public: false
search_engine_indexing: false
```

---

## 17.2 Spätere Aktivierung

Öffentliche Profile dürfen nur geprüft werden, wenn:

- DSFA abgeschlossen,
- Rechtsgrundlage bestätigt,
- Auswirkungen des OVG-Urteils bewertet,
- Einwilligungs-/Opt-in-Modell anwaltlich bestätigt,
- Widerruf technisch sofort wirksam,
- Missbrauchsschutz getestet,
- keine Suchmaschinenindexierung,
- keine negativen Rankings,
- kein öffentliches Bewegungsprofil.

Auch ein freiwilliges Opt-in des verifizierten Halters bedeutet **nicht automatisch**, dass alle datenschutz- und persönlichkeitsrechtlichen Fragen gelöst sind.

---

# 18. Missbrauchsschutz

Verbindlicher Mindestschutz:

- nur verifizierte Konten dürfen bewerten,
- pro Konto/Kennzeichen höchstens eine Bewertungsaktion in 24 Stunden,
- gleiche Kategorie für dasselbe Kennzeichen höchstens einmal in 30 Tagen,
- Tageslimits,
- Geschwindigkeitslimits,
- Netzwerk-/Gerätesignale,
- Bot-Erkennung,
- Erkennung koordinierter Bewertungswellen,
- keine Bewertung des eigenen verifizierten Kennzeichens,
- rückwirkende Entfernung von Bewertungen gesperrter Missbrauchskonten aus dem Score.

Besonders prüfen:

- viele neue Konten → gleiches Kennzeichen,
- Gruppen mit identischem Bewertungsmuster,
- nur schwere Negativbewertungen,
- gegenseitige Vergeltungsbewertungen,
- ungewöhnlich schnelles Bewerten,
- massenhaft neu angelegte Kennzeichen.

---

# 19. Moderation

RoadRep benötigt vor Launch einen echten Moderationsprozess.

Jede Entscheidung enthält:

- Fall-ID,
- Grundcode,
- Bearbeiter,
- Zeitpunkt,
- Maßnahme,
- Ergebnis,
- ggf. Zweitprüfung.

Moderatoren dürfen nur notwendige Daten sehen.

Schwere Fälle:

- Stalkingverdacht,
- koordinierte Rufschädigung,
- Drohungen über externe Kanäle,
- systematische Zielbewertung eines Kennzeichens,
- Datenschutzbeschwerden

werden priorisiert.

---

# 20. Technische Privacy-by-Design-Regeln

## MUSS

- Kennzeichen verschlüsselt speichern.
- Exakte Suche über geschützten Lookup-Hash ermöglichen.
- Keine öffentliche Kennzeichenliste.
- Keine Teilkennzeichensuche.
- Kein Autocomplete mit existierenden Kennzeichen.
- Keine GPS-Speicherung.
- IP-Adressen nicht dauerhaft als Klarwert speichern.
- Gerätekennungen nur pseudonymisiert und befristet nutzen.
- Datenbankzugriffe rollenbasiert absichern.
- MFA für Administratoren.
- Audit-Log für Moderationsaktionen.
- Schutz gegen Scraping und Massensuche.
- serverseitige Feature-Flags.
- datenschutzfreundlichste Einstellung als Default.

---

# 21. Deutsche Feature-Flag-Konfiguration

Empfohlener Startzustand:

```yaml
country: DE

legal_review_version: "pending"

collect_real_observations: false

private_claimed_profiles: false
private_score: false

public_profiles: false
public_score: false
sensitive_categories_public: false

friends_visibility: false

regional_statistics: false

search_engine_indexing: false

severity_1_enabled: false
severity_2_enabled: false
severity_3_enabled: false
severity_4_enabled: false
severity_5_enabled: false

retention_days: null
```

`retention_days: null` bedeutet:

> **Noch nicht rechtlich freigegeben – Verarbeitung bleibt deaktiviert.**

Damit wird vermieden, dass `0` gleichzeitig als „keine Speicherung“ oder „noch nicht entschieden“ interpretiert werden kann.

---

# 22. Freigabestufen

## Gate A – Rechtsgrundlage

- [ ] Verantwortlicher festgelegt
- [ ] Verzeichnis der Verarbeitungstätigkeiten erstellt
- [ ] Art.-6-Rechtsgrundlage schriftlich geprüft
- [ ] Interessenabwägung dokumentiert
- [ ] Art.-14-Konzept geprüft
- [ ] Art.-21-Widerspruchsprozess definiert

**Erst danach:** echte Beobachtungen speichern.

---

## Gate B – DSFA

- [ ] DSFA durchgeführt
- [ ] RoadScore bewertet
- [ ] Missbrauchsrisiken bewertet
- [ ] Stalking-/Trackingrisiko bewertet
- [ ] Re-Identifizierungsrisiko bewertet
- [ ] Abhilfemaßnahmen getestet
- [ ] Restrisiko dokumentiert
- [ ] Art.-36-Konsultationsbedarf geprüft

---

## Gate C – Kennzeichenverifizierung

- [ ] echte Verifizierungsmethode festgelegt
- [ ] rechtlich geprüft
- [ ] Löschfrist für Nachweise festgelegt
- [ ] Fehlzuordnungsprozess vorhanden
- [ ] Kennzeichenwechsel/Wiedervergabe berücksichtigt

**Erst danach:**

```yaml
private_claimed_profiles: true
```

---

## Gate D – RoadScore

- [ ] Scoreformel fachlich geprüft
- [ ] Mindestdaten-Schwelle bestätigt
- [ ] sensible Kategorien bewertet
- [ ] private Darstellung rechtlich freigegeben
- [ ] DSFA berücksichtigt Scoring vollständig

**Erst danach:**

```yaml
private_score: true
```

---

## Gate E – Öffentliche Funktionen

Separates Rechtsgutachten / separate Freigabe für:

- [ ] öffentliche Kennzeichenprofile
- [ ] öffentliche Scores
- [ ] Freunde-/Sharing-Funktion
- [ ] regionale Statistiken
- [ ] öffentliche Community-Funktionen

Ohne separate Freigabe bleiben alle Werte `false`.

---

# 23. Empfohlener RoadRep-Launch in Deutschland

## Phase 0 – Demo

Keine echten personenbezogenen Kennzeichendaten.

Nur:

- Testkennzeichen,
- Mock-Daten,
- UI,
- Kategorieauswahl,
- RoadScore-Simulation.

---

## Phase 1 – Private Feedback MVP

Nach Gate A–D:

```text
Bewerten
    ↓
geschützte Speicherung
    ↓
Aggregation
    ↓
nur verifizierter Berechtigter
    ↓
privates Feedback + RoadScore
```

Keine öffentliche Profilansicht.

---

## Phase 2 – Aggregierte Statistik

Nur nach eigener Prüfung.

Möglich:

- ausreichend große Regionen,
- kein Einzelkennzeichen,
- keine Rückrechnung auf einzelne Fahrzeuge,
- Mindestgruppengröße.

---

## Phase 3 – Sharing / Öffentlichkeit

Erst nach gesonderter Rechtsprüfung.

Nicht automatisch Teil des MVP.

---

# 24. Empfohlener Text für die App

## Beim Bewerten

> **Bewerte nur, was du selbst beobachtet hast.**
>
> RoadRep bewertet konkrete Verkehrssituationen – nicht Personen. Gib keine Bewertung während der Fahrt ab.

---

## Beim privaten Profil

> **Dein privates RoadRep-Profil**
>
> Die angezeigten Werte beruhen auf aggregierten Beobachtungen anderer Nutzer zu diesem Kennzeichen. Sie stellen keine festgestellten Tatsachen über dich oder andere Personen dar. Halter und Fahrer können unterschiedliche Personen sein.

---

## Beobachter-Hinweis

> **Deine Identität wird anderen RoadRep-Nutzern nicht angezeigt. Gesetzliche Offenlegungs- und Auskunftspflichten bleiben unberührt.**

---

## Widerspruch

> **Du möchtest eine Verarbeitung überprüfen lassen?**
>
> Du kannst Auskunft, Widerspruch, Berichtigung einer Fehlzuordnung, Einschränkung oder eine Löschprüfung beantragen.

---

# 25. Wichtigste Produktentscheidung

Für Deutschland lautet die empfohlene Linie:

> ## **Nicht: „Finde heraus, wie andere Fahrer bewertet wurden.“**
>
> ## **Sondern: „Erhalte strukturiertes Feedback zu deinem verifizierten Kennzeichen.“**

Das reduziert insbesondere:

- Prangerwirkung,
- öffentliche Rufschädigung,
- Massensuche,
- neugieriges Ausforschen,
- Suchmaschinenverbreitung,
- Profilbildung durch beliebige Dritte.

Gleichzeitig bleibt der Kern von RoadRep erhalten:

> **Menschen können beobachtetes Fahrverhalten mit festen Kategorien bewerten, ohne Kommentare, Namen oder öffentliche Anschuldigungen.**

---

# 26. Offene Punkte für den Fachanwalt / Datenschutzbeauftragten

Folgende Fragen müssen konkret beantwortet werden:

1. Welche Rechtsgrundlage trägt die Speicherung fremder kennzeichenbezogener Beobachtungen?
2. Ist Art. 6 Abs. 1 lit. f DSGVO für das Private-only-Modell tragfähig?
3. Wie muss die Interessenabwägung konkret aussehen?
4. Welche Art.-14-Informationspflichten bestehen?
5. Wie wird das Auskunftsrecht umgesetzt, ohne Beobachter unnötig zu identifizieren?
6. Wie wird Art. 21 DSGVO praktisch umgesetzt?
7. Ist der RoadScore in der geplanten Form zulässig?
8. Welche Kategorien sollten aus rechtlichen Gründen ausgeschlossen oder umformuliert werden?
9. Ist eine DSFA zwingend und reicht die geplante DSFA aus?
10. Welche Kennzeichen-Verifizierung ist zulässig und erforderlich?
11. Welche Speicherfrist ist angemessen?
12. Was ist bei Kennzeichenwechsel und Wiedervergabe erforderlich?
13. Können öffentliche Opt-in-Profile später rechtssicher angeboten werden?
14. Ist eine Freunde-/Sharing-Funktion zulässig und unter welchen Einschränkungen?
15. Welche Plattformpflichten und Melde-/Moderationspflichten gelten zusätzlich?

---

# 27. Quellen / Ausgangspunkte für die Rechtsprüfung

- [OVG Nordrhein-Westfalen, Urteil 16 A 770/17 vom 19.10.2017](https://nrwe.justiz.nrw.de/ovgs/ovg_nrw/j2017/16_A_770_17_Urteil_20171019.html)
- [Datenschutz-Grundverordnung – EUR-Lex](https://eur-lex.europa.eu/legal-content/DE/TXT/HTML/?uri=CELEX%3A02016R0679-20160504)
- [Art. 6 DSGVO – Rechtmäßigkeit der Verarbeitung](https://eur-lex.europa.eu/eli/reg/2016/679/art_6/oj/deu)
- [DSK – Kurzpapier Datenschutz-Folgenabschätzung](https://www.datenschutzkonferenz-online.de/media/kp/dsk_kpnr_5.pdf)
- [DSK / WP29 – Leitlinien zur Datenschutz-Folgenabschätzung](https://www.datenschutzkonferenz-online.de/media/wp/20171004_wp248_rev01.pdf)

---

# 28. Kurzfassung für Entwicklung

```text
ROADREP DE MVP

DEFAULT:
- keine öffentlichen Profile
- keine öffentliche Suche nach Bewertungen
- kein öffentlicher RoadScore
- keine Freunde-Sichtbarkeit
- keine Suchmaschinenindexierung
- keine Ortsdaten
- keine Kommentare/Bilder/Namen

NUTZER:
- verifiziertes Konto zum Bewerten

BEWERTUNG:
- nur feste Kategorien
- beobachtetes Verhalten
- Rate Limits
- sensible Kategorien mit Schwellen

EIGENES PROFIL:
- nur nach echter Kennzeichenverifizierung
- aggregierte Daten
- RoadScore erst nach Mindestdaten
- Beobachter nie öffentlich sichtbar

DATENSCHUTZ:
- Rechtsgrundlage vor Launch
- Interessenabwägung
- DSFA
- Art. 14
- Art. 21
- Löschkonzept
- Moderation
- Audit-Log

PUBLIC / FRIENDS:
- Feature Flag OFF
- nur nach separater schriftlicher Rechtsfreigabe
```

---

## Schluss

Die sicherste RoadRep-Strategie für Deutschland ist nicht, die bestehende öffentliche Fahrerbewertungslogik möglichst knapp zu verändern.

Die bessere Strategie lautet:

> **RoadRep startet als privates Feedbacksystem mit verifizierter Einsicht, konsequenter Datenminimierung und starken Betroffenenrechten. Öffentliche Einzelprofile sind eine spätere, separat zu prüfende Funktion – nicht die Grundlage des Produkts.**
