-- RoadRep: Kategorien seeden
-- Exakt aus prototype/index.html, CATEGORIES-Array (Zeile ~412-437) übernommen — nicht neu erfunden.
-- level entspricht dem Client-Feld "level"; is_sensitive = true für alle Kategorien ab negativer Stufe 3.

INSERT INTO categories (key, label, type, weight, level, is_sensitive, definition) VALUES
('lets_merge','Ließ einfädeln','positiv',1,1,false,'Gab beim Reißverschluss oder Einfädeln erkennbar Vorrang.'),
('keeps_distance','Hielt guten Abstand','positiv',1,1,false,'Fuhr mit deutlichem, sicherem Abstand zum Vordermann.'),
('signals_well','Blinkte vorbildlich','positiv',1,1,false,'Setzte den Blinker frühzeitig und bei jedem Wechsel.'),
('considerate_driving','Fuhr rücksichtsvoll','positiv',2,2,false,'Verhielt sich insgesamt umsichtig gegenüber anderen Verkehrsteilnehmern.'),
('emergency_lane','Bildete eine Rettungsgasse','positiv',3,3,false,'Bildete bei Stau oder Stillstand rechtzeitig eine Rettungsgasse.'),
('helped_road_user','Half einem anderen Verkehrsteilnehmer','positiv',3,3,false,'Unterstützte aktiv einen anderen Verkehrsteilnehmer in einer Situation.'),
('parks_well','Parkte ordentlich','positiv',1,1,false,'Parkte sauber innerhalb der Markierung, ohne zu behindern.'),
('safe_bicycle_distance','Hielt guten Abstand zu Radfahrern','positiv',2,2,false,'Überholte Radfahrende mit ausreichend seitlichem Abstand.'),
('unusually_slow','Fuhr auffällig langsam','neutral',0,0,false,'Fuhr deutlich langsamer als der übrige Verkehrsfluss.'),
('late_at_light','Reagierte spät an der Ampel','neutral',0,0,false,'Fuhr erst mit spürbarer Verzögerung nach Grün los.'),
('very_loud_vehicle','Sehr lautes Fahrzeug','neutral',0,0,false,'Fahrzeug fiel durch ungewöhnlich hohe Lautstärke auf.'),
('unusual_vehicle','Auffälliges oder besonderes Fahrzeug','neutral',0,0,false,'Fahrzeug fiel optisch oder technisch besonders auf.'),
('no_signal','Blinkte nicht','negativ',-1,1,false,'Wechselte Fahrstreifen oder Richtung ohne Blinker.'),
('blocked_left_lane','Blockierte unnötig die linke Spur','negativ',-1,1,false,'Fuhr ohne Überholvorgang dauerhaft auf der linken Spur.'),
('obstructive_parking','Parkte behindernd','negativ',-1,1,false,'Parkte so, dass andere spürbar behindert wurden.'),
('frequent_lane_changes','Wechselte häufig die Spur','negativ',-1,1,false,'Wechselte auffällig oft und ohne erkennbaren Grund die Spur.'),
('clearly_too_fast','Fuhr deutlich zu schnell','negativ',-2,2,false,'Überschritt die zulässige Geschwindigkeit deutlich erkennbar.'),
('tailgating','Fuhr sehr dicht auf','negativ',-2,2,false,'Unterschritt den Sicherheitsabstand zum Vordermann klar erkennbar.'),
('abrupt_lane_change','Wechselte abrupt die Spur','negativ',-2,2,false,'Wechselte den Fahrstreifen ruckartig, ohne Rücksicht auf Nachfolgende.'),
('pressured_overtaking','Drängelte beim Überholen','negativ',-2,2,false,'Setzte beim Überholen andere spürbar unter Druck.'),
('phone_distraction','Wirkte durch ein Mobiltelefon abgelenkt','negativ',-3,3,true,'Wirkte sichtbar durch die Bedienung eines Mobiltelefons abgelenkt.'),
('unsafe_bicycle_pass','Überholte Radfahrer mit zu wenig Abstand','negativ',-3,3,true,'Überholte Radfahrende mit erkennbar zu geringem Seitenabstand.'),
('endangered_pedestrians','Gefährdete Fußgänger','negativ',-4,4,true,'Brachte zu Fuß Gehende erkennbar in eine gefährliche Situation.'),
('ran_red_light','Fuhr über Rot','negativ',-4,4,true,'Fuhr trotz roter Ampel erkennbar über die Haltelinie.'),
('blocked_emergency_lane','Behinderte eine Rettungsgasse','negativ',-5,5,true,'Behinderte eine gebildete oder benötigte Rettungsgasse.')
ON CONFLICT (key) DO NOTHING;

-- Verifikation: SELECT count(*) FROM categories; -- erwartet 25
