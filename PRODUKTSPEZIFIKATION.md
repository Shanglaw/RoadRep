# Produktspezifikation: RoadRep (MVP)

**Status:** Umsetzbare Produktspezifikation, Version 1.1  
**Stand:** 9. August 2026  
**Produktname:** RoadRep  
**Claim:** **RoadRep – Bewerte die Fahrt. Nicht den Fahrer.**  
**Leitsatz:** **Bewerte das Fahrverhalten, nicht den Menschen.**

---

## 1. Kurzfassung

Die App ermöglicht es, ein Kfz-Kennzeichen exakt zu suchen und ausschließlich anhand fest vorgegebener Kategorien zu bewerten. Bewertet wird eine konkrete, selbst beobachtete Verkehrssituation – niemals die Persönlichkeit, Identität oder der vermeintliche Charakter des Fahrers. Ein Kennzeichen identifiziert außerdem nicht sicher die Person am Steuer: **Halter und Fahrer können unterschiedliche Personen sein.**

RoadRep führt Bewertungen zu einem Kennzeichen standardmäßig in einem **privaten Profil**. Nur ein verifizierter Berechtigter kann dieses Profil und dessen aggregierte Bewertungen einsehen. Eine öffentliche Darstellung ist ausschließlich nach einer gesonderten, freiwilligen und jederzeit widerrufbaren Freigabe möglich. Ein freigegebenes Profil enthält:

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
2. **Nachschauen:** Nach Verifizierung das eigene private Kennzeichenprofil ansehen; öffentliche Profile nur nach ausdrücklicher Freigabe des Berechtigten.
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
11. RoadRep behauptet oder suggeriert niemals, der Halter habe das beobachtete Fahrzeug geführt.
12. Öffentliche Aussagen beziehen sich immer auf aggregierte Beobachtungen zu einem Kennzeichen, nicht auf eine festgestellte Tatsache über Halter oder Fahrer.
13. Jedes Kennzeichenprofil ist standardmäßig privat und für andere Nutzer nicht einsehbar.
14. Anmeldung allein gewährt keinen Zugriff auf fremde private Kennzeichenprofile.
15. Eine öffentliche Profilfreigabe erfordert Verifizierung, gesonderte aktive Zustimmung und bleibt jederzeit widerrufbar.

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
- „Mein Kennzeichen“ beantragen und verifizieren
- privates Kennzeichenprofil ausschließlich dem verifizierten Berechtigten anzeigen
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

- rechtlich freigegebene öffentliche Profilfreigabe per aktivem Opt-in
- Vorschau, Bestätigung und sofortiger Widerruf der öffentlichen Freigabe
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
4. **Mein Kennzeichen**
5. **Konto und Hilfe**

### 7.2 Screens

| Screen | Zweck | Wichtigste Elemente |
|---|---|---|
| Start / Suche | Kennzeichen exakt eingeben | Länderwahl, Kennzeichenfeld, Suchen, „Fahrverhalten bewerten“ |
| Suchergebnis | Ziel prüfen | normalisierte Kennzeichenanzeige, öffentliche Freigabe erkennen, Bewertung starten |
| Privates Kennzeichenprofil | eigene aggregierte Wahrnehmung zeigen | RoadScore, Vertrauensstufe, Zeitraum, Kategorien, Sichtbarkeit |
| Öffentliches Kennzeichenprofil | freiwillig freigegebene aggregierte Ansicht | RoadScore, Vertrauensstufe, Kategorien, Pflicht-Hinweis, Melden-Link |
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
5. Bei öffentlichem `PUBLIC_OPT_IN`-Status öffnet sich das freigegebene aggregierte Profil.
6. Bei privatem oder unbekanntem Kennzeichen werden keinerlei Bewertungsdaten, Datenmengen oder Profilzustände offengelegt. Die App bietet nur „Fahrverhalten bewerten“ und „Als mein Kennzeichen verifizieren“ an.

**Wichtig:** Im MVP gibt es nur exakte Suche. Keine Teiltreffer, Autovervollständigung, öffentliche Listen oder Suchmaschinenindexierung von Kennzeichenprofilen.

### 8.2 Flow B: Fahrverhalten bewerten

1. Nutzer ist angemeldet und bestätigt das Kennzeichen.
2. Die App zeigt: „Bewerte nur, was du selbst beobachtet hast.“
3. Nutzer wählt **positiv**, **neutral** oder **negativ**.
4. Nutzer wählt genau eine Kategorie.
5. Die App zeigt eine kurze Definition der Kategorie.
6. Nutzer bestätigt, dass keine Bewertung während des Fahrens abgegeben wird.
7. Backend prüft Berechtigung, Rate Limits, Duplikate und Risikosignale.
8. Bei Erfolg wird die Beobachtung gespeichert. Sie wird nur dann aggregiert öffentlich dargestellt, wenn das Kennzeichen rechtlich freigegeben im Zustand `PUBLIC_OPT_IN` steht und alle Mindestschwellen erfüllt sind.

**Zielzeit:** unter 30 Sekunden ab geöffnetem Kennzeichenprofil.

### 8.3 Flow C: Privates Kennzeichenprofil ansehen

1. Zugriff erhält ausschließlich der angemeldete und für dieses Kennzeichen verifizierte Berechtigte.
2. Profil zeigt RoadScore nur bei ausreichender Datenbasis.
3. Unterhalb der Schwelle steht „Noch nicht genügend unabhängige Beobachtungen“.
4. Sichtbar sind Score-Bereich, Vertrauensstufe, Anzahl gültiger Beobachtungen, betrachteter Zeitraum und häufigste Kategorien.
5. Einzelne Beobachter, Zeitpunkte oder Orte werden nicht angezeigt.
6. Die Ansicht zeigt deutlich „Privat – nur für dich sichtbar“.
7. Eine öffentliche Freigabe wird nur angeboten, wenn sie für das jeweilige Land rechtlich aktiviert ist.

### 8.4 Flow D: Öffentliches Kennzeichenprofil ansehen

1. Das Profil ist nur erreichbar, wenn ein verifizierter Berechtigter es aktiv freigegeben hat.
2. Profil zeigt RoadScore nur bei ausreichender Datenbasis.
3. Unterhalb der Schwelle steht „Noch nicht genügend unabhängige Beobachtungen“.
4. Sichtbar sind Score-Bereich, Vertrauensstufe, Anzahl gültiger Beobachtungen, betrachteter Zeitraum und häufigste Kategorien.
5. Einzelne Beobachter, Zeitpunkte oder Orte werden nicht angezeigt.
6. Jede Profilansicht enthält unmittelbar beim Score den Hinweis: **„RoadRep bewertet beobachtetes Fahrverhalten. Die Bewertungen stellen keine Aussage über die Person oder den Halter des Fahrzeugs dar. Halter und Fahrer können unterschiedliche Personen sein.“**
7. Jede Profilansicht enthält „Profil oder Ergebnis melden“.

**Verbindliche Formulierung:** RoadRep schreibt beispielsweise „Für dieses Kennzeichen wurden sieben Beobachtungen der Kategorie ‚Fuhr deutlich zu schnell‘ abgegeben.“ Nicht zulässig sind Formulierungen wie „Der Halter ist ein Raser“, „Dieses Auto fährt immer zu schnell“ oder andere Aussagen, die Beobachtungen als bewiesene Tatsachen über eine Person darstellen.

### 8.5 Flow E: Mein Kennzeichen verifizieren

1. Nutzer beantragt die Zuordnung eines Kennzeichens.
2. Das System verlangt einen geeigneten Besitz-/Nutzungsnachweis nach dem rechtlich freigegebenen Verfahren.
3. Nachweisunterlagen werden getrennt verarbeitet und nach Abschluss unverzüglich nach der festgelegten Löschfrist entfernt.
4. Verifizierung verleiht keine Möglichkeit, Bewertungen selbst zu verändern.
5. Verifizierte Nutzer können Benachrichtigungen, Auskunft, Widerspruch und Moderationsprüfung anstoßen.

Die Verifizierung weist nur die aktuelle Berechtigung zur Verwaltung des Kennzeichenprofils nach. Sie beweist weder, wer bei vergangenen Beobachtungen gefahren ist, noch überträgt sie Rechte an Bewertungen einzelner Fahrer.

### 8.6 Flow F: Profil freiwillig öffentlich machen (P1)

1. Nur ein verifizierter Berechtigter sieht die Option „Profil öffentlich machen“.
2. Die App zeigt eine Vorschau aller öffentlich sichtbaren Daten.
3. Die Freigabe ist standardmäßig ausgeschaltet und darf nicht mit anderen Erklärungen gebündelt werden.
4. Der Nutzer bestätigt aktiv: **„Ich möchte das aggregierte RoadRep-Profil dieses Kennzeichens freiwillig öffentlich anzeigen. Mir ist bekannt, dass Halter und Fahrer unterschiedliche Personen sein können. Ich kann die Freigabe jederzeit widerrufen.“**
5. Das Backend speichert Zeitpunkt, Textversion, Land und freigegebene Profilversion als Nachweis.
6. Nach Aktivierung wird ausschließlich die aggregierte Ansicht veröffentlicht.
7. „Öffentliche Freigabe beenden“ verbirgt das Profil sofort; eine erneute Freigabe erfordert eine neue Bestätigung.
8. Eine Kennzeichenveräußerung, Ummeldung, abgelaufene Verifizierung oder ein Widerspruch setzt den Zustand automatisch auf `PRIVATE` oder `SUSPENDED`.

### 8.7 Flow G: Melden oder widersprechen

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

Der numerische RoadScore wird erst ab **fünf gültigen Beobachtungen von mindestens drei unabhängigen Konten** angezeigt. Vorher steht „Noch…1778 tokens truncated…profile,
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

Die Verarbeitung bleibt datenschutzrechtlich relevant, obwohl RoadRep keine Namen veröffentlicht. Kennzeichenbezogene Daten können insbesondere in Verbindung mit weiteren Informationen auf Halter oder Fahrer zurückführbar sein. Für den geplanten öffentlichen Profilmodus muss deshalb vor dem Launch eine dokumentierte Prüfung der Rechtsgrundlage, Erforderlichkeit und Interessenabwägung erfolgen. Dabei sind unter anderem die vernünftigen Erwartungen betroffener Personen, Transparenz, Interventionsmöglichkeiten, Datenverkettung, Verarbeitungsdauer und Verarbeitungsumfang zu bewerten.

RoadRep startet unabhängig vom Ergebnis dieser Prüfung immer mit privaten Profilen. Eine rechtliche Freigabe des öffentlichen Modus erweitert nur die freiwillige Opt-in-Funktion; sie verändert nicht den privaten Standard. Wird auch die private Einzelansicht nicht freigegeben, darf RoadRep ausschließlich ausreichend aggregierte Statistiken auf Bezirks-/Regionsebene ohne Einzelkennzeichenprofil anbieten.

### 14.2 Schutz vor Denunziation und Prangerwirkung

RoadRep darf technisch und redaktionell nicht zu einer Plattform für öffentliche Anschuldigungen werden. Deshalb gelten zusätzlich folgende Regeln:

- keine Ranglisten wie „schlimmster Fahrer“, „Top-Raser“ oder vergleichbare Negativwettbewerbe,
- keine viralen Hervorhebungen einzelner negativ bewerteter Kennzeichen,
- keine Push-Nachrichten oder Feed-Einträge, die einzelne schwere Vorwürfe verbreiten,
- keine Aussagen über Schuld, Gesetzesverstöße, Charakter oder Identität,
- keine Anzeige einer einzelnen Bewertung als bestätigte Tatsache,
- keine exakten Beobachtungszeiten, Orte oder Fahrtverläufe,
- keine Suche nach Haltern oder Fahrern und keine Verknüpfung mit externen Personendaten,
- keine monetären Vorteile für besonders viele oder besonders negative Bewertungen,
- leicht auffindbare Melde-, Widerspruchs- und Prüfwege auf jedem Profil,
- sofortige vorläufige Einschränkung bei plausiblen Hinweisen auf Belästigung, Stalking oder koordinierte Rufschädigung.

Produkttexte verwenden ausschließlich Formulierungen wie „Beobachtungen zu diesem Kennzeichen“ oder „wurde von unabhängigen Konten ausgewählt“. Sie verwenden niemals „Der Fahrer ist …“ oder „Der Halter hat …“.

### 14.3 Privacy by Design

Die technische und organisatorische Gestaltung folgt Datenminimierung, Zweckbindung, Sicherheit, begrenzter Aufbewahrung und datenschutzfreundlichen Voreinstellungen. Diese Prinzipien werden nicht nachträglich ergänzt, sondern bereits in Architektur, UI und Standardkonfiguration umgesetzt.

### 14.4 Moderationsregeln

- Keine manuelle Erstellung neuer öffentlicher Freitextinhalte.
- Schwere Beobachtungen unterliegen Veröffentlichungsschwellen.
- Profile können bei glaubhaftem Manipulationsverdacht vorläufig verborgen werden.
- Moderatoren sehen nur die Daten, die sie für den Fall benötigen.
- Jede Entscheidung enthält festen Grundcode, Zeit, Bearbeiter und Ergebnis.
- Einsprüche werden von einer anderen Person geprüft, wenn organisatorisch möglich.
- Meldungen gegen geschützte oder besonders gefährdete Personen werden priorisiert.

### 14.5 Betroffenenrechte und Support

Das Produkt benötigt klar erreichbare Prozesse für:

- Information über die Verarbeitung,
- Auskunft,
- Berichtigung technischer Fehlzuordnungen,
- Löschprüfung,
- Einschränkung der Verarbeitung,
- Widerspruch,
- Beschwerde und Eskalation.

Die konkrete rechtliche Anspruchsprüfung ist keine automatische Produktentscheidung, sondern Teil eines dokumentierten Datenschutzprozesses.

### 14.6 Aufbewahrungsvorschlag

- gültige Beobachtungen: maximal 24 Monate, danach löschen oder vollständig anonymisieren,
- Missbrauchsschutz- und Netzwerkdaten: grundsätzlich höchstens 90 Tage,
- abgelehnte Bewertungsinhalte: höchstens 90 Tage für Einspruch und Missbrauchsanalyse,
- Moderationsnachweise: nach rechtlich festgelegtem Zweck und Löschkonzept,
- Verifizierungsdokumente: nur bis zum Abschluss plus kurze, rechtlich geprüfte Nachfrist.

Die Zeitabwertung des RoadScores ersetzt keine Löschung.

### 14.7 Sicherheit

- Verschlüsselung während Übertragung und Speicherung,
- rollenbasierte Rechte für Support und Moderation,
- Mehrfaktor-Authentifizierung für Administratoren,
- unveränderbares Audit-Protokoll für sensible Aktionen,
- Geheimnisse ausschließlich in einem Secret-Management-System,
- regelmäßige Backups und getestete Wiederherstellung,
- Schutz vor automatisierter Abfrage und massenhaftem Auslesen,
- keine Suchmaschinenindexierung von Einzelkennzeichenprofilen,
- Löschung eines Kontos entfernt oder anonymisiert dessen Zuordnung nach festgelegtem Konzept.

### 14.8 Notfallhinweis

Bei akuter Gefahr fordert die App ausdrücklich dazu auf, die App nicht während des Fahrens zu bedienen und bei Bedarf die zuständigen Notfall- oder Polizeistellen zu kontaktieren. Die App selbst nimmt keine Notfallmeldungen entgegen.

### 14.9 Internationales Rechts- und Freigabemodell

Datenschutz- und Persönlichkeitsrechtsrisiken bestehen nicht nur in Deutschland. RoadRep behandelt deshalb jedes Land als separaten Freigaberaum:

- **Deutschland:** DSGVO sowie deutsches Datenschutz-, Persönlichkeits-, Straf- und Digitaldienste-Recht.
- **EU/EWR:** gemeinsame DSGVO-Grundlage; nationale Regeln zu Persönlichkeitsrechten, Rufschädigung, Plattformpflichten und Rechtsbehelfen sind zusätzlich zu prüfen.
- **Großbritannien:** UK GDPR und Data Protection Act; die britische Datenschutzbehörde nennt Fahrzeugkennzeichen ausdrücklich als mögliche indirekte Identifikatoren.
- **Schweiz:** Schweizer Datenschutzgesetz mit eigenen Transparenz-, Auskunfts-, Berichtigungs- und Löschanforderungen.
- **Weitere Länder:** keine automatische Übernahme einer bestehenden Freigabe. Datenschutz, Verleumdungsrecht, Verbraucherrecht, Plattformpflichten und Fahrzeugregisterregeln werden je Land geprüft.

Auch ein Betreiber außerhalb Europas kann in den Anwendungsbereich der DSGVO fallen, wenn er Menschen in der EU Angebote macht oder deren Verhalten in der EU beobachtet. Unternehmenssitz und App-Store-Verfügbarkeit ersetzen deshalb keine Länderprüfung.

### 14.10 Technische Länderfreigaben

Rechtlich riskante Funktionen werden nicht fest in die App eingebaut, sondern serverseitig je Land freigeschaltet. Standardwert jeder nicht geprüften Funktion ist `false` beziehungsweise die datenschutzfreundlichste Einstellung.

```yaml
country: DE
legal_review_version: "pending"
private_claimed_profiles: false
public_profiles: false
public_score: false
sensitive_categories_public: false
regional_statistics: false
search_engine_indexing: false
retention_days: 0
```

Nach schriftlicher Freigabe werden nur die einzeln geprüften Werte aktiviert. Die Konfiguration enthält mindestens:

- freigegebene Profil- und Suchfunktionen,
- zulässige Kategorien und Veröffentlichungsschwellen,
- Aufbewahrungs- und Löschfristen,
- Mindestalter und Verifizierungsanforderungen,
- Pflichttexte, Einwilligungsversionen und Widerrufsregeln,
- zuständige Support-, Datenschutz- und Moderationswege,
- Datum, Umfang und Verantwortlichen der rechtlichen Freigabe.

Eine Länderfreigabe darf nicht durch Client-Manipulation, URL-Parameter, Sprachwahl oder Standortwechsel umgangen werden.

---

## 15. Priorisierte Umsetzung

### Phase 0: Freigaben und Grundlagen

1. Zielland und Kennzeichenformate festlegen.
2. Datenschutz- und Persönlichkeitsrechtsprüfung durchführen.
3. private Einsicht, öffentliche Freigabe und RoadScore jeweils separat rechtlich prüfen.
4. Länderregel mit standardmäßig deaktivierten Funktionen anlegen.
5. Kategorien, Definitionen und Moderationsrichtlinie redaktionell freigeben.
6. Lösch-, Auskunfts- und Sicherheitskonzept verabschieden.

### Phase 1: Sicheres Kern-MVP

1. Konto und verifizierte Anmeldung
2. exakte Kennzeichensuche und Normalisierung
3. „Mein Kennzeichen“-Verifizierung und private Profilansicht
4. Kennzeichenprofil mit Mindestdaten-Schwelle
5. Bewertungsablauf mit festen Kategorien
6. RoadScore Version 1 und tägliche Neuberechnung
7. Rate Limits und Basiserkennung von Missbrauch
8. Meldungs-, Widerspruchs- und Moderationsablauf
9. Datenschutz-, Hilfe- und Sicherheitsseiten
10. serverseitige Länderfreigaben mit sicheren Standardwerten

### Phase 2: Eigener Bezug und positive Bindung

1. rechtlich freigegebener öffentlicher Opt-in mit Vorschau und sofortigem Widerruf
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
- Anmeldung allein ermöglicht keinen Zugriff auf fremde private Profile.
- Private oder unbekannte Kennzeichen liefern bei der Suche keine Bewertungszahl und keinen Hinweis auf die Existenz eines Profils.
- Nur ein verifizierter Berechtigter kann das private Profil eines Kennzeichens aufrufen.
- Öffentliche Profile existieren ausschließlich nach dokumentiertem Opt-in und können sofort widerrufen werden.
- Profile unterhalb der Mindestschwelle zeigen keinen numerischen Score.
- Kein Profil zeigt Nutzeridentitäten, exakte Orte oder einzelne Zeitpunkte.
- Jedes sichtbare Profil zeigt den verbindlichen Hinweis „Halter und Fahrer können unterschiedliche Personen sein“ unmittelbar beim Score.
- Öffentliche Texte stellen Beobachtungszahlen dar und enthalten keine Tatsachenbehauptung über Halter oder Fahrer.

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
- Autorisierungstests für private, öffentliche, gesperrte und nicht beanspruchte Profile
- Tests für Opt-in, Widerruf, abgelaufene Verifizierung und Länder-Feature-Flags
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
- Zugriff eines angemeldeten Fremdnutzers auf ein privates Profil,
- Widerruf während gleichzeitiger Profilaufrufe,
- Wechsel von `PUBLIC_OPT_IN` zu `PRIVATE` bei Kennzeichenveräußerung,
- nicht freigegebenes Land oder manipulierte Länderkennung.

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
| Standard-Sichtbarkeit | `PRIVATE` |
| Private Einsicht | ausschließlich für verifizierte Berechtigte |
| Anmeldung | gewährt keinen Zugriff auf fremde private Profile |
| Öffentliche Einzelprofile | nur nach Länderfreigabe und aktivem, dokumentiertem, widerruflichem Opt-in |
| Widerruf | verbirgt das Profil sofort |
| Suchmaschinen | keine Indexierung von Einzelkennzeichenprofilen |
| Internationalisierung | jede Funktion wird je Land separat rechtlich freigegeben |
| Monetarisierung | keine käufliche Score- oder Bewertungsbeeinflussung |

---

## 20. Offene Produktfragen nach dem MVP

Diese Fragen blockieren die technische Kernumsetzung nicht, werden aber erst nach Nutzungsdaten und erneuter Sicherheitsprüfung entschieden:

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
- [ ] private Profilansicht und Verifizierungsverfahren separat rechtlich freigegeben
- [ ] öffentliche Freigabe verwendet ein nicht vorausgewähltes, dokumentiertes Opt-in
- [ ] Widerruf verbirgt ein öffentliches Profil unverzüglich
- [ ] angemeldete Fremdnutzer können private Profile nicht einsehen
- [ ] nicht geprüfte Länder und Funktionen sind serverseitig deaktiviert
- [ ] Länderregeln lassen sich nicht über Sprache, URL oder Clientdaten umgehen
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
- [BfDI/DSK/VDA – Datenschutzrechtliche Aspekte bei der Nutzung vernetzter und nicht vernetzter Kraftfahrzeuge](https://www.bfdi.bund.de/SharedDocs/Pressemitteilungen/DE/2016/ErklaerungDSK_VDA_VernetzteKfz.html)
- [DSK – Positionspapier zur audiovisuellen Umgebungserfassung, insbesondere Kriterien der Interessenabwägung](https://www.datenschutzkonferenz-online.de/media/dskb/DSK_Positionspapier_audiovisuelle_Umgebungserfassung.pdf)
- [§ 185 StGB – Beleidigung, offizieller Gesetzestext](https://www.gesetze-im-internet.de/stgb/__185.html)
- [DSGVO Art. 3 – räumlicher Anwendungsbereich, im offiziellen EUR-Lex-Gesamttext](https://eur-lex.europa.eu/legal-content/DE/TXT/HTML/?uri=CELEX:02016R0679-20160504)
- [UK Information Commissioner – Autokennzeichen als möglicher indirekter Identifikator](https://ico.org.uk/for-organisations/uk-gdpr-guidance-and-resources/personal-information-what-is-it/what-is-personal-data/can-we-identify-an-individual-indirectly/)
- [Schweizer EDÖB – Auskunft, Berichtigung und Löschung personenbezogener Daten](https://www.edoeb.admin.ch/en/knowing-and-asserting-my-rights)

Diese Spezifikation ist eine Produkt- und Umsetzungsvorgabe, keine Rechtsberatung. Die rechtlichen Launch-Gates sind verbindliche Projektanforderungen.
