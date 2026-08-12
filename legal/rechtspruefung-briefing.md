# RoadRep — Briefing für die Rechtsprüfung

**Zweck:** Dieses Dokument ist die Vorbereitung für einen Fachanwalt/eine Fachanwältin (Datenschutzrecht/Persönlichkeitsrecht) und/oder einen externen Datenschutzbeauftragten. Es ersetzt **keine** Rechtsberatung — genau wie die Produktspezifikation selbst (§22) das ausdrücklich festhält. Ziel ist, den Prüfaufwand zu verkürzen, nicht ihn zu ersetzen.

---

## 1. Was RoadRep macht (Kurzfassung für Erstkontakt)

RoadRep lässt Nutzer:innen selbst beobachtetes Fahrverhalten anhand eines Kennzeichens einer festen Kategorie zuordnen (positiv/neutral/negativ). Daraus entsteht pro Kennzeichen ein aggregierter „RoadScore". Kernprinzip: **privat und nicht durchsuchbar per Default** — nur exakte Kennzeichen-Suche, kein Ranking, kein Durchstöbern. Ein Profil wird nur sichtbar für:

- die verifizierte Halterin/den verifizierten Halter selbst (privat),
- jede:n, wenn die Halterin/der Halter freiwillig und widerruflich „öffentlich" freischaltet,
- gegenseitig verbundene „Freunde" (beide Seiten haben sich aktiv hinzugefügt).

Aktueller Stand: reiner Klick-Prototyp, Daten liegen nur lokal im Browser (`localStorage`), kein Server, keine echten Accounts, keine echte Besitznachweis-Prüfung.

---

## 2. Das zentrale Präzedenzfall-Risiko

**[fahrerbewertung.de](https://www.fahrerbewertung.de)** — strukturell ähnlichstes existierendes Angebot: Kennzeichen nach Durchschnittsnote bewerten. Ergebnis: **OVG Münster, Az. 16 A 770/17 (2017)** stufte das Portal als Online-Pranger ein, der das allgemeine Persönlichkeitsrecht verletzt (informationelle Selbstbestimmung). Die NRW-Datenschutzbehörde hatte vorher eingegriffen. Kernaussage des Urteils: **Bewertungen zu einem Kennzeichen dürfen praktisch nur die Halterin/der Halter selbst einsehen** — keine öffentliche Einsehbarkeit für Dritte ohne deren Zustimmung.

**Wie RoadRep sich im Konzept unterscheidet** (das muss die Prüfung bestätigen, nicht nur behaupten):
- privates Profil ist der Standard, nicht öffentlich einsehbar;
- Öffentlichmachung ist ein aktives, nicht vorausgewähltes Opt-in der Halterin/des Halters selbst, jederzeit widerruflich;
- kein Ranking, keine Liste, kein Durchstöbern — nur exakte Treffer;
- sensible Kategorien brauchen mehrere unabhängige Konten, bevor sie überhaupt in die öffentliche Auswertung einfließen;
- „Freunde"-Sichtbarkeit ist echt gegenseitig (beide Seiten aktiv), nicht einseitig erzwingbar.

**Was trotzdem offen ist:** Ob dieses Konzept rechtlich tatsächlich ausreicht, um das OVG-Münster-Risiko zu vermeiden, kann nur ein Anwalt beurteilen — insbesondere die öffentliche Opt-in-Variante bleibt nah am Kern des damaligen Urteils, auch wenn sie freiwillig ist.

---

## 3. Zwei getrennte Prüfungen (laut Spec §21 Launch-Checkliste)

Das sind unterschiedliche Prüfungen mit unterschiedlichen Fachleuten — nicht dieselbe Aufgabe:

### 3.1 Rechtsprüfung (Persönlichkeitsrecht, öffentliches Profil, Zielland)
Prüft, ob das Produkt in der geplanten Form rechtlich zulässig ist. Zentrale Fragen:
- Ist die private Profilansicht + das Verifizierungsverfahren für sich rechtlich unproblematisch?
- Reicht das Opt-in-Modell für die öffentliche Freigabe rechtlich aus?
- Können angemeldete Fremdnutzer private Profile tatsächlich nicht einsehen (technische Zusicherung + rechtliche Bewertung)?
- Beleidigungsrisiko bei negativen Kategorien (§ 185 StGB) — wie weit dürfen Kategoriebezeichnungen/Freitext gehen?
- Gilt das Konzept pro Zielland unterschiedlich (DE/AT/FR = DSGVO-Raum, aber nationales Persönlichkeitsrecht unterscheidet sich; UK = UK-GDPR, eigenständig seit Brexit; CH = eigenes DSG, nicht EU-DSGVO)?

### 3.2 Datenschutz-Folgenabschätzung / DSFA (Art. 35 DSGVO) bzw. dokumentierte Erforderlichkeitsprüfung
Eher technisch-dokumentarisch, oft vom Datenschutzbeauftragten statt vom Anwalt gemacht. Spricht einiges dafür, dass eine DSFA **verpflichtend** ist (nicht nur empfohlen), weil:
- systematische Bewertung/Profilbildung über ein (laut [ICO-Leitfaden](https://ico.org.uk/for-organisations/uk-gdpr-guidance-and-resources/personal-information-what-is-it/what-is-personal-data/can-we-identify-an-individual-indirectly/)) potenziell indirekt personenbezogenes Merkmal (Kennzeichen → Halter) stattfindet,
- Kategorien mit besonderer Sensibilität existieren (§ Kategorien-Definition der Spec),
- die Verarbeitung neuartig ist (kein etabliertes, unstrittiges Vorbild — im Gegenteil, das einzige Vorbild wurde gerichtlich gestoppt).

Diese DSFA sollte konkret dokumentieren: Verarbeitungszwecke, Datenflüsse (wer sieht was, wann, wie lange), Risiken pro Verarbeitungsschritt, Abhilfemaßnahmen (genau die Opt-in-/Mindestgruppengrößen-/Gegenseitigkeits-Mechanismen, die schon im Prototyp stecken).

---

## 4. Wer das prüfen sollte

- **Fachanwalt/-anwältin für Datenschutzrecht**, idealerweise mit Erfahrung im Bereich Persönlichkeitsrecht/Online-Plattformen (die fahrerbewertung.de-Causa ist ein gutes Gesprächseinstiegs-Beispiel, um schnell zu prüfen, ob jemand die Materie kennt).
- **Externer Datenschutzbeauftragter (DPO)** für die DSFA — kann dieselbe Kanzlei sein, muss aber nicht.
- Bei geplanter Mehrländer-Nutzung (aktuell DE/AT/FR/CH/GB im Prototyp real modelliert): pro Land, in dem die App tatsächlich live gehen soll, eine gesonderte Einschätzung — Startmarkt zuerst (laut Spec §20: „Länder außerhalb des ersten Startmarkts" ist explizit eine spätere Entscheidung).

---

## 5. Offene Fragen für die Prüfung (Auszug, zu ergänzen)

- Reicht ein „aktives Opt-in, jederzeit widerruflich" rechtlich, oder braucht öffentliche Sichtbarkeit zusätzliche Hürden (z. B. Wartefrist, erneute Bestätigung)?
- Ist die „Freunde"-Sichtbarkeit (gegenseitige private Freigabe ohne öffentliches Opt-in) rechtlich eine eigene Kategorie mit eigenen Anforderungen, oder fällt sie unter dieselbe Bewertung wie „privat"?
- Welche Rechtsgrundlage (Art. 6 DSGVO) trägt die Verarbeitung der beobachtenden Person UND der beobachteten Halterin/des Halters jeweils?
- Wie lange dürfen Beobachtungsdaten aufbewahrt werden (`retention_days` ist im technischen Gate aktuell `0` — muss inhaltlich gefüllt werden)?
- Welche Auskunfts-/Lösch-/Widerspruchsprozesse sind zwingend, bevor ein einziges echtes Profil live geht?
- **Besitznachweis-Verfahren für „Mein Kennzeichen"** (aktuell im Prototyp nur eine Selbstauskunfts-Checkbox, siehe §7). **Entschieden (11. August 2026):** Für die produktive App reicht die Checkbox nicht aus — das ist kein offener Punkt mehr, sondern eine feststehende Anforderung, bevor `private_claimed_profiles` für ein Land freigegeben wird (Spec §14.10, §23.5). Angedachte Zielrichtung: Foto der Zulassungsbescheinigung Teil I wird einmalig automatisiert geprüft (KI-/OCR-Lesung) und danach **nicht dauerhaft gespeichert** — nur ein Prüf-Vermerk (Zeitstempel + bestanden/nicht bestanden) bleibt, kein Bildinhalt. Das erfüllt Datenminimierung (Art. 5 Abs. 1c DSGVO) und Speicherbegrenzung (Art. 5 Abs. 1e DSGVO) deutlich besser als dauerhafte Ablage. **Wichtig, vom Anwalt zu bestätigen statt anzunehmen:**
  - „Nicht speichern" befreit nicht von der Pflicht, für die *transiente* Verarbeitung eine Rechtsgrundlage zu haben und die Nutzerin/den Nutzer zu informieren — auch kurzzeitiges Verarbeiten ist Verarbeitung im Sinne der DSGVO.
  - Wird ein externer KI-/OCR-Anbieter genutzt, braucht es einen Auftragsverarbeitungsvertrag (Art. 28 DSGVO) mit vertraglicher Zusicherung, dass auch der Anbieter das Bild nicht speichert/loggt — „wir speichern nicht" gilt sonst nur für die eigenen Systeme.
  - Identitätsnahe Dokumentenprüfung ist in EDSA-Leitlinien ein typisches Beispiel für DSFA-pflichtige Verarbeitung, unabhängig von der Speicherdauer.
  - Ein reiner Prüf-Vermerk ohne Bildinhalt muss im Streitfall (Übernahme-Widerspruch, §Übernahme-Flow) trotzdem als Nachweis ausreichen — sonst bleibt bei „ich habe nie verifiziert"-Vorwürfen nichts Belastbares übrig.
  Vor Umsetzung gesondert zu klären, nicht Teil dieses Prototyps (der Prototyp bildet weiterhin nur die Selbstauskunfts-Checkbox ab).

---

## 6. Referenzen (aus Spec §22 übernommen)

- [DSGVO – Volltext bei EUR-Lex](https://eur-lex.europa.eu/eli/reg/2016/679/oj/deu)
- [EDSA-Leitlinien 4/2019 – Datenschutz durch Technikgestaltung](https://www.edpb.europa.eu/documents/guideline/guidelines-42019-on-article-25-data-protection-by-design-and-by-default_de)
- [BfDI/DSK/VDA – Datenschutz bei Kraftfahrzeugen](https://www.bfdi.bund.de/SharedDocs/Pressemitteilungen/DE/2016/ErklaerungDSK_VDA_VernetzteKfz.html)
- [DSK – Positionspapier audiovisuelle Umgebungserfassung](https://www.datenschutzkonferenz-online.de/media/dskb/DSK_Positionspapier_audiovisuelle_Umgebungserfassung.pdf)
- [§ 185 StGB – Beleidigung](https://www.gesetze-im-internet.de/stgb/__185.html)
- [DSGVO Art. 3 – räumlicher Anwendungsbereich](https://eur-lex.europa.eu/legal-content/DE/TXT/HTML/?uri=CELEX:02016R0679-20160504)
- [ICO – Kennzeichen als indirekter Identifikator](https://ico.org.uk/for-organisations/uk-gdpr-guidance-and-resources/personal-information-what-is-it/what-is-personal-data/can-we-identify-an-individual-indirectly/)
- [Schweizer EDÖB – Betroffenenrechte](https://www.edoeb.admin.ch/en/knowing-and-asserting-my-rights)
- OVG Münster, Az. 16 A 770/17 — Urteil zu fahrerbewertung.de (über Sekundärquellen wie [LTO](https://www.lto.de/recht/nachrichten/n/online-pranger-fahrerbewertung-noten-autofahrer-kfz-halter-datenschutz) recherchiert; Originalurteil beim Anwalt anfordern)

---

## 7. Was das NICHT blockiert

Laut Spec-Launch-Checkliste (§21) ist die Rechtsprüfung ein Gate **vor Live-Betrieb mit echten Nutzerdaten**, nicht vor Weiterarbeit am Klick-Prototyp. Solange der Prototyp lokal, mit Fake-Daten und ohne echten Personenbezug läuft, blockiert nichts hier das weitere Single-User-Prototyping.

*Erstellt als Vorbereitungsmaterial, Stand: siehe Git-/Dateihistorie. Keine Rechtsberatung.*
