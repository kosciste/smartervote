-- please check 'create-database.sql' to see instructions how to setup the database

-- questions
insert into Election values('bc4c25b6-f1ae-45bc-b7ae-4b3fd10e9c29', 'Nationalratswahlen', current_timestamp, current_timestamp);
insert into QuestionSubject values('d3f718e8-29db-4274-8885-23a6c64e5da5', 'bc4c25b6-f1ae-45bc-b7ae-4b3fd10e9c29', 'Sozialstaat & Familie', current_timestamp, current_timestamp);
insert into Question values('a335650d-06b4-4e92-ba77-d5f8964ceb82', 'd3f718e8-29db-4274-8885-23a6c64e5da5', 'Befürworten Sie eine Erhöhung des Rentenalters (z.B. auf 67 Jahre)?', current_timestamp, current_timestamp);
insert into Question values('46df8b49-923c-4f91-8362-5196efbb71e2', 'd3f718e8-29db-4274-8885-23a6c64e5da5', 'Soll der Staat die Schaffung von familienergänzenden Betreuungsstrukturen finanziell stärker unterstützen?', current_timestamp, current_timestamp);
insert into Question values('5f277258-ba7b-492c-b451-673eaa5957c0', 'd3f718e8-29db-4274-8885-23a6c64e5da5', 'Eine Initiative fordert einen bezahlten Vaterschaftsurlaub von vier Wochen. Befürworten Sie dieses Anliegen?', current_timestamp, current_timestamp);
insert into Question values('007ebae0-31cb-40fb-93ad-c2f980caee14', 'd3f718e8-29db-4274-8885-23a6c64e5da5', 'Sollen die Renten der Pensionskasse durch eine Senkung des Umwandlungssatzes gekürzt und an die gestiegene Lebenserwartung angepasst werden?', current_timestamp, current_timestamp);
insert into Question values('8ae0f13d-e699-4617-a4ba-672e6ccc0edc', 'd3f718e8-29db-4274-8885-23a6c64e5da5', 'Befürworten Sie Bestrebungen in den Kantonen zur Senkung der Sozialhilfeleistungen?', current_timestamp, current_timestamp);
insert into Question values('dee756b8-f4f2-474a-88f4-e7f4fea7275a', 'd3f718e8-29db-4274-8885-23a6c64e5da5', 'Soll der Bund den gemeinnützigen Wohnungsbau verstärkt fördern?', current_timestamp, current_timestamp);
insert into QuestionSubject values('32fe8656-9e02-4a02-a8dc-fd68469b4195', 'bc4c25b6-f1ae-45bc-b7ae-4b3fd10e9c29', 'Gesundheitswesen', current_timestamp, current_timestamp);
insert into Question values('b8ec593e-93b8-4bab-95dd-cfff5c526d54', '32fe8656-9e02-4a02-a8dc-fd68469b4195', 'Sollen sich die Versicherten stärker an den Gesundheitskosten beteiligen (z.B. Erhöhung der Mindestfranchise)?', current_timestamp, current_timestamp);
insert into Question values('6f9db124-e0ae-409d-b943-5be0cbc836e5', '32fe8656-9e02-4a02-a8dc-fd68469b4195', 'Würden Sie die Einführung der Widerspruchslösung bei der Organspende befürworten?', current_timestamp, current_timestamp);
insert into Question values('616bf16a-470d-494e-ad8b-b230e80dafb3', '32fe8656-9e02-4a02-a8dc-fd68469b4195', 'Soll für Kinder eine Impfpflicht gemäss dem Schweizerischen Impfplan eingeführt werden?', current_timestamp, current_timestamp);
insert into Question values('6c05b44c-34de-48a4-8d3c-6015b268c456', '32fe8656-9e02-4a02-a8dc-fd68469b4195', 'Eine Initiative fordert, dass die Prämienverbilligung so ausgestaltet wird, dass niemand mehr als zehn Prozent des verfügbaren Einkommens für die Krankenkassenprämien aufwenden muss. Befürworten Sie dies?', current_timestamp, current_timestamp);
insert into Question values('3ac4a61c-f510-4d59-84cc-e957dbeedd8e', '32fe8656-9e02-4a02-a8dc-fd68469b4195', 'Eine Initiative möchte dem Bund mehr Kompetenzen geben, um Massnahmen zur Senkung der Gesundheitskosten zu ergreifen (Einführung einer Kostenbremse). Befürworten Sie dies?', current_timestamp, current_timestamp);
insert into QuestionSubject values('26e376c2-1528-4d1a-ad46-8d518cf26bb1', 'bc4c25b6-f1ae-45bc-b7ae-4b3fd10e9c29', 'Bildung', current_timestamp, current_timestamp);
insert into Question values('f4f5632d-00ae-4be2-aff8-c83da3c21519', '26e376c2-1528-4d1a-ad46-8d518cf26bb1', 'Soll sich der Staat stärker für gleiche Bildungschancen einsetzen (z.B. mit Nachhilfe-Gutscheinen für Schüler/-innen aus Familien mit geringem Einkommen)?', current_timestamp, current_timestamp);
insert into Question values('4917d24b-e50c-4fa9-ac12-37a0d298f41f', '26e376c2-1528-4d1a-ad46-8d518cf26bb1', 'Finden Sie es richtig, wenn Schulen Dispense aus religiösen Gründen für einzelne Fächer oder Veranstaltungen bewilligen (z.B. Sport- oder Sexualkundeunterricht)?', current_timestamp, current_timestamp);
insert into Question values('aee92954-3fab-449d-bc56-7ec47df873cb', '26e376c2-1528-4d1a-ad46-8d518cf26bb1', 'Soll der Bund die finanzielle Unterstützung für die berufliche Weiterbildung und Umschulung ausbauen?', current_timestamp, current_timestamp);
insert into Question values('19d57226-91df-4c5a-92f4-7b7d774ea8c4', '26e376c2-1528-4d1a-ad46-8d518cf26bb1', 'Gemäss dem Konzept der integrativen Schule werden Kinder mit Lernschwierigkeiten oder Behinderungen grundsätzlich in regulären Schulklassen unterrichtet. Befürworten Sie dies?', current_timestamp, current_timestamp);
insert into QuestionSubject values('2305a512-003e-4db6-9d1a-f77c29fb80d9', 'bc4c25b6-f1ae-45bc-b7ae-4b3fd10e9c29', 'Migration & Integration', current_timestamp, current_timestamp);
insert into Question values('81f2e7c9-6871-44e3-a432-b0fd050dd187', '2305a512-003e-4db6-9d1a-f77c29fb80d9', 'Sollen Ausländer/-innen, die seit mindestens zehn Jahren in der Schweiz leben, das Stimm- und Wahlrecht auf Gemeindeebene erhalten?', current_timestamp, current_timestamp);
insert into Question values('377a4b78-e58a-4d13-875f-817cd1693ece', '2305a512-003e-4db6-9d1a-f77c29fb80d9', 'Ist die Begrenzung der Einwanderung für Sie wichtiger als der Erhalt der Bilateralen Verträge mit der EU?', current_timestamp, current_timestamp);
insert into Question values('54e790a7-9741-408e-9327-3377df0e9b6e', '2305a512-003e-4db6-9d1a-f77c29fb80d9', 'Sollen Sans-Papiers einfacher einen geregelten Aufenthaltsstatus erhalten?', current_timestamp, current_timestamp);
insert into Question values('5dce5233-88d5-4b52-94de-6465ace4be98', '2305a512-003e-4db6-9d1a-f77c29fb80d9', 'Befürworten Sie eine weitere Verschärfung des Asylrechts?', current_timestamp, current_timestamp);
insert into Question values('63aa0cb7-202d-4c54-85ae-051e8249115d', '2305a512-003e-4db6-9d1a-f77c29fb80d9', 'Sollen die Anforderungen für Einbürgerungen erhöht werden?', current_timestamp, current_timestamp);
insert into Question values('fb59e236-0633-46ca-a8b5-c0d7596ee10e', '2305a512-003e-4db6-9d1a-f77c29fb80d9', 'Soll der Bund Ausländer/-innen bei der Integration stärker unterstützen?', current_timestamp, current_timestamp);
insert into QuestionSubject values('c1f61867-f5b8-4416-9eaf-fe07b6649dbc', 'bc4c25b6-f1ae-45bc-b7ae-4b3fd10e9c29', 'Gesellschaft & Ethik', current_timestamp, current_timestamp);
insert into Question values('154147b7-aff2-4ff1-89cf-fcd6616ca6d2', 'c1f61867-f5b8-4416-9eaf-fe07b6649dbc', 'Soll der Konsum von Cannabis legalisiert werden?', current_timestamp, current_timestamp);
insert into Question values('6e8b2868-8094-46d3-95be-2397eb9d5237', 'c1f61867-f5b8-4416-9eaf-fe07b6649dbc', 'Sollen gleichgeschlechtliche Paare in allen Bereichen die gleichen Rechte wie heterosexuelle Paare haben?', current_timestamp, current_timestamp);
insert into Question values('112cc8ee-b996-4b19-9192-9e82b92aae94', 'c1f61867-f5b8-4416-9eaf-fe07b6649dbc', 'Sollen die Regeln der Fortpflanzungsmedizin weiter gelockert werden?', current_timestamp, current_timestamp);
insert into Question values('60c4bebf-411f-456f-9eab-5afd98fde9c7', 'c1f61867-f5b8-4416-9eaf-fe07b6649dbc', 'Befürworten Sie eine strengere Kontrolle der Lohngleichheit von Frauen und Männern?', current_timestamp, current_timestamp);
insert into Question values('c393d2b5-6e50-4d7a-ad40-e112851e0711', 'c1f61867-f5b8-4416-9eaf-fe07b6649dbc', 'Würden Sie es befürworten, wenn in der Schweiz die direkte aktive Sterbehilfe durch eine/-n Arzt/Ärztin straffrei möglich wäre?', current_timestamp, current_timestamp);
insert into QuestionSubject values('2fa9b5e2-9a6f-4374-a405-d2cc12b16b34', 'bc4c25b6-f1ae-45bc-b7ae-4b3fd10e9c29', 'Finanzen & Steuern', current_timestamp, current_timestamp);
insert into Question values('38630605-5c28-4b5c-b042-93c43bf23ebc', '2fa9b5e2-9a6f-4374-a405-d2cc12b16b34', 'Haben für Sie Steuersenkungen auf Bundesebene in den nächsten vier Jahren Priorität?', current_timestamp, current_timestamp);
insert into Question values('cc721727-53e6-4b1c-9d85-c97c46b5422e', '2fa9b5e2-9a6f-4374-a405-d2cc12b16b34', 'Befürworten Sie eine weitergehende Reduktion der Beitragszahlungen finanzstarker Kantone an die finanzschwachen Kantone im Rahmen des Finanzausgleichs (NFA)?', current_timestamp, current_timestamp);
insert into Question values('ccb39a89-f63e-4537-90cd-e3186178ae1f', '2fa9b5e2-9a6f-4374-a405-d2cc12b16b34', 'Sollen Ehepaare getrennt als Einzelpersonen besteuert werden (Individualbesteuerung)?', current_timestamp, current_timestamp);
insert into Question values('b34bfec1-ee6c-46bc-9d52-99e90b59fe12', '2fa9b5e2-9a6f-4374-a405-d2cc12b16b34', 'Befürworten Sie eine Beschränkung des Wettbewerbs zwischen den Kantonen bei der Unternehmenssteuer?', current_timestamp, current_timestamp);
insert into QuestionSubject values('2517911d-1ede-4606-b767-bc855c3a096c', 'bc4c25b6-f1ae-45bc-b7ae-4b3fd10e9c29', 'Wirtschaft & Arbeit', current_timestamp, current_timestamp);
insert into Question values('6b7955fe-fb44-4b68-92b5-13aedcce4e76', '2517911d-1ede-4606-b767-bc855c3a096c', 'Sollen Privathaushalte ihren Stromanbieter frei wählen können (vollständige Liberalisierung des Strommarktes)?', current_timestamp, current_timestamp);
insert into Question values('204814c3-bf71-4b17-9727-c6d435976da6', '2517911d-1ede-4606-b767-bc855c3a096c', 'Befürworten Sie die Einführung eines für alle Arbeitnehmenden gültigen Mindestlohnes von CHF 4000 für eine Vollzeitstelle?', current_timestamp, current_timestamp);
insert into Question values('d118e4c3-08b7-4c8e-95de-81b8715b6f1d', '2517911d-1ede-4606-b767-bc855c3a096c', 'Sollen Schweizer Unternehmen durch die Einführung von Investitionskontrollen besser vor Übernahmen durch ausländische Käufer geschützt werden?', current_timestamp, current_timestamp);
insert into Question values('db255fa3-e68a-47b3-9651-a7cc95b33689', '2517911d-1ede-4606-b767-bc855c3a096c', 'Befürworten Sie eine vollständige Liberalisierung der Geschäftsöffnungszeiten?', current_timestamp, current_timestamp);
insert into Question values('42b30d8f-b8eb-46be-93ee-446f2d1d2706', '2517911d-1ede-4606-b767-bc855c3a096c', 'Soll der Kündigungsschutz für ältere Angestellte ausgebaut werden?', current_timestamp, current_timestamp);
insert into Question values('69126fb1-3e3f-4741-b6a4-91678103ccfe', '2517911d-1ede-4606-b767-bc855c3a096c', 'Soll der Bund das Service-Public-Angebot (z.B. ÖV-Verbindungen, Poststellen) in den ländlichen Regionen stärker fördern?', current_timestamp, current_timestamp);
insert into QuestionSubject values('038bd0b4-9531-419d-9e0d-9dba95161cec', 'bc4c25b6-f1ae-45bc-b7ae-4b3fd10e9c29', 'Digitalisierung', current_timestamp, current_timestamp);
insert into Question values('a4f7f094-e1ff-4280-aa2f-33e17fb03d07', '038bd0b4-9531-419d-9e0d-9dba95161cec', 'Soll der Ausbau des Mobilfunknetzes nach 5G-Standard weiter vorangetrieben werden?', current_timestamp, current_timestamp);
insert into Question values('9f8b49e7-cd35-4115-8e2a-a4bc71ceab78', '038bd0b4-9531-419d-9e0d-9dba95161cec', 'Sollen Online-Vermittlungsdienste (z.B. "Airbnb"-Unterkünfte, "Uber"-Taxidienste) stärker reguliert werden?', current_timestamp, current_timestamp);
insert into QuestionSubject values('d9e78527-cdfb-4ac8-978b-367081718a20', 'bc4c25b6-f1ae-45bc-b7ae-4b3fd10e9c29', 'Energie & Verkehr', current_timestamp, current_timestamp);
insert into Question values('df70cc34-0233-4ed5-89f4-5864507b42a4', 'd9e78527-cdfb-4ac8-978b-367081718a20', 'Eine Initiative fordert, dass die Schweiz ab 2050 auf die Verwendung fossiler Energieträger verzichtet. Unterstützen Sie dieses Anliegen?', current_timestamp, current_timestamp);
insert into Question values('4b4b663a-bc9c-4eb4-ba80-f86adc0951f9', 'd9e78527-cdfb-4ac8-978b-367081718a20', 'Bislang wird auf fossile Brennstoffe (z.B. Heizöl oder Erdgas) eine CO2-Abgabe erhoben. Soll diese Abgabe auch auf Treibstoffe (z.B. Benzin und Diesel) ausgeweitet werden?', current_timestamp, current_timestamp);
insert into Question values('231e38c1-fb35-4262-9a80-ea7a4d0a00ba', 'd9e78527-cdfb-4ac8-978b-367081718a20', 'Soll der Bund erneuerbare Energien stärker fördern?', current_timestamp, current_timestamp);
insert into Question values('57008dea-844d-44c7-8adc-6389295384c7', 'd9e78527-cdfb-4ac8-978b-367081718a20', 'Sollen stark befahrene Autobahnabschnitte auf sechs Spuren ausgebaut werden?', current_timestamp, current_timestamp);
insert into Question values('a214c6f9-029b-444d-82a0-8bc98a044a43', 'd9e78527-cdfb-4ac8-978b-367081718a20', 'Befürworten Sie die Einführung von "Road Pricing" für den motorisierten Individualverkehr auf vielbefahrenen Strassen?', current_timestamp, current_timestamp);
insert into QuestionSubject values('703d621d-85a3-4d2b-a1b0-acb1721a09b2', 'bc4c25b6-f1ae-45bc-b7ae-4b3fd10e9c29', 'Naturschutz', current_timestamp, current_timestamp);
insert into Question values('630e876e-62d7-498b-aae9-f8326e875369', '703d621d-85a3-4d2b-a1b0-acb1721a09b2', 'Befürworten Sie eine Lockerung der aktuell gültigen Schutzbestimmungen für Grossraubtiere (Luchs, Wolf, Bär)?', current_timestamp, current_timestamp);
insert into Question values('1521cd72-8dc2-463a-8cef-2c8c8166493b', '703d621d-85a3-4d2b-a1b0-acb1721a09b2', 'Soll das geltende Moratorium für gentechnisch veränderte Pflanzen und Tiere in der Schweizer Landwirtschaft über das Jahr 2021 hinaus verlängert werden?', current_timestamp, current_timestamp);
insert into Question values('4c411dfd-41e6-4c53-bb7b-37cc54c1c8e8', '703d621d-85a3-4d2b-a1b0-acb1721a09b2', 'Sollen nur noch Landwirte Direktzahlungen erhalten, die einen erweiterten ökologischen Leistungsnachweis erbringen (u.a. Verzicht auf synthetische Pestizide und Beschränkung des Antibiotika-Einsatzes)?', current_timestamp, current_timestamp);
insert into Question values('92bb831c-040f-4686-8acd-f42d8629ba7b', '703d621d-85a3-4d2b-a1b0-acb1721a09b2', 'Befürworten Sie einen Ausbau des Landschaftsschutzes (z.B. strengere Regeln zum Bauen ausserhalb bestehender Bauzonen)?', current_timestamp, current_timestamp);
insert into Question values('fe8d890a-abea-44fc-92fe-ba3678289387', '703d621d-85a3-4d2b-a1b0-acb1721a09b2', 'Befürworten Sie strengere Tierschutzregelungen für die Haltung von Nutztieren (z.B. permanenter Zugang zum Aussenbereich)?', current_timestamp, current_timestamp);
insert into QuestionSubject values('2ae96817-5b19-4e39-b14b-c59a2113d098', 'bc4c25b6-f1ae-45bc-b7ae-4b3fd10e9c29', 'Staatspolitik', current_timestamp, current_timestamp);
insert into Question values('4de87bed-0d07-419e-9991-32658cdb0a9d', '2ae96817-5b19-4e39-b14b-c59a2113d098', 'Soll die Finanzierung von Parteien sowie von Wahl- und Abstimmungskampagnen offengelegt werden müssen?', current_timestamp, current_timestamp);
insert into Question values('7570b82c-a85d-446c-9a92-5c0bb332a8a3', '2ae96817-5b19-4e39-b14b-c59a2113d098', 'Soll die Einführung der elektronischen Stimmabgabe bei Wahlen und Abstimmungen (E-Voting) weiter vorangetrieben werden?', current_timestamp, current_timestamp);
insert into Question values('b8b056d3-228d-4363-8f43-a1fed1da8695', '2ae96817-5b19-4e39-b14b-c59a2113d098', 'Befürworten Sie die Senkung des Stimmrechtsalters auf 16 Jahre?', current_timestamp, current_timestamp);
insert into QuestionSubject values('ee4660ce-2486-46a1-9291-8d7c3a65498b', 'bc4c25b6-f1ae-45bc-b7ae-4b3fd10e9c29', 'Sicherheit & Armee', current_timestamp, current_timestamp);
insert into Question values('5a08407a-ba00-4be3-bbc6-c50dc256d8f5', 'ee4660ce-2486-46a1-9291-8d7c3a65498b', 'Soll die Schweiz das Schengen-Abkommen mit der EU kündigen und wieder verstärkte Personenkontrollen direkt an der Grenze einführen?', current_timestamp, current_timestamp);
insert into Question values('cac14782-c714-49d4-803d-6bdfb7fb8707', 'ee4660ce-2486-46a1-9291-8d7c3a65498b', 'Soll auf die vom Bundesrat vorgeschlagene Verschärfung der Zulassungsbedingungen zum Zivildienst verzichtet werden?', current_timestamp, current_timestamp);
insert into Question values('3d723b44-2db7-4730-af04-6007ae7d2178', 'ee4660ce-2486-46a1-9291-8d7c3a65498b', 'Sollen Exporte von Kriegsmaterial aus der Schweiz verboten werden?', current_timestamp, current_timestamp);
insert into Question values('9a4f51df-c428-4a18-9055-511e0ae7b6d8', 'ee4660ce-2486-46a1-9291-8d7c3a65498b', 'Befürworten Sie die Beschaffung neuer Kampfflugzeuge für die Schweizer Armee?', current_timestamp, current_timestamp);
insert into Question values('fd1edc81-f470-4dbe-95cf-ea6ad5e85cf2', 'ee4660ce-2486-46a1-9291-8d7c3a65498b', 'Würden Sie eine Ausdehnung der rechtlichen Möglichkeiten zur Fahndung mittels DNA-Analyse befürworten?', current_timestamp, current_timestamp);
insert into QuestionSubject values('94eee13c-70e5-4096-89e4-9a53cb98592b', 'bc4c25b6-f1ae-45bc-b7ae-4b3fd10e9c29', 'Aussenbeziehungen', current_timestamp, current_timestamp);
insert into Question values('6e2740d2-ef18-4564-b8c7-9f7214308f81', '94eee13c-70e5-4096-89e4-9a53cb98592b', 'Soll die Schweiz Verhandlungen über den Beitritt zur EU aufnehmen?', current_timestamp, current_timestamp);
insert into Question values('926c446b-9db8-4b9c-a406-ed40dff69e34', '94eee13c-70e5-4096-89e4-9a53cb98592b', 'Soll der Bundesrat ein Freihandelsabkommen mit den USA anstreben?', current_timestamp, current_timestamp);
insert into Question values('eaa9530f-bb8c-453f-b634-c8599039e296', '94eee13c-70e5-4096-89e4-9a53cb98592b', 'Eine Initiative fordert, dass die Haftungsregeln für Unternehmen mit Sitz in der Schweiz in Bezug auf die Einhaltung von Menschenrechten und Umweltstandards im Ausland verschärft werden. Befürworten Sie dies?', current_timestamp, current_timestamp);
insert into Question values('bdc5f279-42bf-491c-b87a-409b3c7bff89', '94eee13c-70e5-4096-89e4-9a53cb98592b', 'Befürworten Sie die Kandidatur der Schweiz für einen Sitz im UNO-Sicherheitsrat?', current_timestamp, current_timestamp);

-- politicians
insert into Party values('78d47363-fb09-4041-9d2a-0e637b272b51', 'CVP Die Mitte', current_timestamp, current_timestamp);
insert into Party values('60294243-0aa1-4cf7-a54a-ac28bc429af9', 'FDP', current_timestamp, current_timestamp);
insert into Party values('daad81cf-ab2f-4432-ba4e-8ff57c0bb678', 'Grüne', current_timestamp, current_timestamp);
insert into Party values('e26fb46a-87ed-4c1d-8afe-d9e5d42308fd', 'SP', current_timestamp, current_timestamp);
insert into Party values('51cdefc2-0cf7-42f1-9df9-4e97dabab17d', 'SVP', current_timestamp, current_timestamp);

-- CVP Die Mitte
insert into Politician values('bb1d763b-ca76-4ac5-81ef-a98d4f34e669', '78d47363-fb09-4041-9d2a-0e637b272b51', 'Gretchen Gertraud', 1996, 'Female', 'Metzgerin', '1.jpg', current_timestamp, current_timestamp);
insert into Politician values('7d712000-ffc9-4703-a308-7aca6bb00554', '78d47363-fb09-4041-9d2a-0e637b272b51', 'Caroline Gunda', 1965, 'Female', 'Kauffrau', '2.jpg', current_timestamp, current_timestamp);
insert into Politician values('e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', '78d47363-fb09-4041-9d2a-0e637b272b51', 'Cornelia Brigitte', 1999, 'Female', 'Autohändlerin', '3.jpg', current_timestamp, current_timestamp);
insert into Politician values('9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', '78d47363-fb09-4041-9d2a-0e637b272b51', 'Rafael Finn', 1966, 'Male', 'IT Consultant', '19.jpg', current_timestamp, current_timestamp);
insert into Politician values('a882f183-0c6e-41a2-8745-ba9f570ecf8b', '78d47363-fb09-4041-9d2a-0e637b272b51', 'Ronald Michael', 1976, 'Male', 'Metzger', '20.jpg', current_timestamp, current_timestamp);
insert into Politician values('aed41ae7-e8d9-4944-aee1-ae138623bdd7', '78d47363-fb09-4041-9d2a-0e637b272b51', 'Gebhard Günter', 1987, 'Male', 'Radiomoderator', '21.jpg', current_timestamp, current_timestamp);

-- FDP
insert into Politician values('c99a1451-3801-4ff3-b106-556196c019e3', '60294243-0aa1-4cf7-a54a-ac28bc429af9', 'Leonie Wibke', 1983, 'Female', 'Architektin', '4.jpg', current_timestamp, current_timestamp);
insert into Politician values('b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', '60294243-0aa1-4cf7-a54a-ac28bc429af9', 'Jasmin Lore', 1986, 'Female', 'Köchin', '5.jpg', current_timestamp, current_timestamp);
insert into Politician values('b7ee252a-66fe-43f1-8c31-cc44d123c1e3', '60294243-0aa1-4cf7-a54a-ac28bc429af9', 'Ruth Anja', 1989, 'Female', 'Komponistin', '6.jpg', current_timestamp, current_timestamp);
insert into Politician values('69a474b5-263c-4797-b451-87701c625291', '60294243-0aa1-4cf7-a54a-ac28bc429af9', 'Hermann Burkhard', 1975, 'Male', 'Theologe', '22.jpg', current_timestamp, current_timestamp);
insert into Politician values('2eb55491-aa91-47ed-9f68-42836101c334', '60294243-0aa1-4cf7-a54a-ac28bc429af9', 'Siegbert Helmuth', 1970, 'Male', 'Mathematiker', '23.jpg', current_timestamp, current_timestamp);
insert into Politician values('7c25649f-fe2b-47a7-83a5-b427ef5d7f27', '60294243-0aa1-4cf7-a54a-ac28bc429af9', 'Otmar Manu', 1982, 'Male', 'Versicherungsfachmann', '24.jpg', current_timestamp, current_timestamp);

-- Grüne
insert into Politician values('6f4467de-61c7-4da4-8437-81fd94f8caea', 'daad81cf-ab2f-4432-ba4e-8ff57c0bb678', 'Lydia Ingeburg', 1995, 'Female', 'Hausfrau', '7.jpg', current_timestamp, current_timestamp);
insert into Politician values('5499fac4-1366-469e-92fb-4c66b582ef47', 'daad81cf-ab2f-4432-ba4e-8ff57c0bb678', 'Irmhild Emilie', 1991, 'Female', 'Studentin', '8.jpg', current_timestamp, current_timestamp);
insert into Politician values('c84a3ac8-d177-47c3-9fd3-35fecf4296b7', 'daad81cf-ab2f-4432-ba4e-8ff57c0bb678', 'Helma Ulla', 1997, 'Female', 'IT Consultant', '9.jpg', current_timestamp, current_timestamp);
insert into Politician values('cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 'daad81cf-ab2f-4432-ba4e-8ff57c0bb678', 'Beat Lorenz', 1995, 'Male', 'Herausgeber', '25.jpg', current_timestamp, current_timestamp);
insert into Politician values('3fd910a0-57c0-4259-85c9-538b711bfb99', 'daad81cf-ab2f-4432-ba4e-8ff57c0bb678', 'Chris Mathias', 1990, 'Male', 'Radiomoderator', '26.jpg', current_timestamp, current_timestamp);
insert into Politician values('0069d8b1-47c7-4b78-b551-8f0347e43a1c', 'daad81cf-ab2f-4432-ba4e-8ff57c0bb678', 'Mathis Adolf', 1974, 'Male', 'Pflegefachmann', '27.jpg', current_timestamp, current_timestamp);

-- SP
insert into Politician values('c3860bfb-0975-4a07-941e-7ce550250b55', 'e26fb46a-87ed-4c1d-8afe-d9e5d42308fd', 'Regula Adelheid', 1978, 'Female', 'Metzgerin', '10.jpg', current_timestamp, current_timestamp);
insert into Politician values('0bf956b3-1094-4891-9fac-043b3bb4ddce', 'e26fb46a-87ed-4c1d-8afe-d9e5d42308fd', 'Susi Ulrike', 1975, 'Female', 'Radiomoderatorin', '11.jpg', current_timestamp, current_timestamp);
insert into Politician values('c0fffdd1-a230-44b4-b890-20ff4b09e58a', 'e26fb46a-87ed-4c1d-8afe-d9e5d42308fd', 'Else Sabrina', 1994, 'Female', 'Theologin', '12.jpg', current_timestamp, current_timestamp);
insert into Politician values('c02037b0-32ca-49b9-ae94-b29705191f3a', 'e26fb46a-87ed-4c1d-8afe-d9e5d42308fd', 'Christoph Winfried', 1982, 'Male', 'Metzger', '28.jpg', current_timestamp, current_timestamp);
insert into Politician values('867bd3ec-5599-472f-92a8-c06580340c65', 'e26fb46a-87ed-4c1d-8afe-d9e5d42308fd', 'Lars Sören', 1969, 'Male', 'Metzger', '29.jpg', current_timestamp, current_timestamp);
insert into Politician values('a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 'e26fb46a-87ed-4c1d-8afe-d9e5d42308fd', 'Georg Quirin', 1970, 'Male', 'Komponist', '30.jpg', current_timestamp, current_timestamp);

-- SVP
insert into Politician values('a044da59-0467-4dea-8e30-e0dee2b053a5', '51cdefc2-0cf7-42f1-9df9-4e97dabab17d', 'Karina Tatiana', 1992, 'Female', 'IT Consultant', '13.jpg', current_timestamp, current_timestamp);
insert into Politician values('817d113c-9874-4511-a5f3-08a256a7dfb8', '51cdefc2-0cf7-42f1-9df9-4e97dabab17d', 'Rebekka Luise', 1987, 'Female', 'Elektrikerin', '14.jpg', current_timestamp, current_timestamp);
insert into Politician values('04bbc8fd-b00e-428d-8a76-158d03394bf7', '51cdefc2-0cf7-42f1-9df9-4e97dabab17d', 'Carolin Iris', 1970, 'Female', 'Radiomoderatorin', '15.jpg', current_timestamp, current_timestamp);
insert into Politician values('4d7b74e2-503c-42cc-b86c-2a7b1b28b093', '51cdefc2-0cf7-42f1-9df9-4e97dabab17d', 'Robert Bertram', 1964, 'Male', 'Zugführer', '31.jpg', current_timestamp, current_timestamp);
insert into Politician values('840a8d98-56a5-4b79-b7db-019d60454b7d', '51cdefc2-0cf7-42f1-9df9-4e97dabab17d', 'Josef Philipp', 1962, 'Male', 'Radiomoderator', '32.jpg', current_timestamp, current_timestamp);
insert into Politician values('47f1e554-bf38-4a6e-a31d-023b57d35eaa', '51cdefc2-0cf7-42f1-9df9-4e97dabab17d', 'Ben Kuno', 1970, 'Male', 'Designer', '33.jpg', current_timestamp, current_timestamp);

--additional politicians that would require filled out question catalogues
--insert into Politician values('802f66ed-fd65-4d37-8177-dd7ec6938c4b', 'e26fb46a-87ed-4c1d-8afe-d9e5d42308fd', 'Pascal Abraham', 1967, 'Male', 'Architekt', '34.jpg', current_timestamp, current_timestamp);
--insert into Politician values('9178eee0-ee5e-4f13-88d4-43eea8aa9179', 'e26fb46a-87ed-4c1d-8afe-d9e5d42308fd', 'Eberhard Matthias', 1989, 'Male', 'Autohändler', '35.jpg', current_timestamp, current_timestamp);
--insert into Politician values('ab9a8281-5fe2-4efc-b2be-12ef35d57786', 'e26fb46a-87ed-4c1d-8afe-d9e5d42308fd', 'Kilian Carl', 1980, 'Male', 'Pflegefachmann', '36.jpg', current_timestamp, current_timestamp);
--insert into Politician values('dc1d49a5-a3b9-4ea9-90be-489930db6823', 'e26fb46a-87ed-4c1d-8afe-d9e5d42308fd', 'Arne Adelbert', 1960, 'Male', 'Kaufmann', '37.jpg', current_timestamp, current_timestamp);
--insert into Politician values('7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 'e26fb46a-87ed-4c1d-8afe-d9e5d42308fd', 'Franz Hugo', 1977, 'Male', 'Autohändler', '38.jpg', current_timestamp, current_timestamp);
--insert into Politician values('89678908-7e8d-4f9c-9c15-cbab24936a8e', 'e26fb46a-87ed-4c1d-8afe-d9e5d42308fd', 'Gereon Linus', 1994, 'Male', 'Komponist', '39.jpg', current_timestamp, current_timestamp);
--insert into Politician values('e4730035-205f-485e-bd91-23308b4b956e', 'e26fb46a-87ed-4c1d-8afe-d9e5d42308fd', 'Manu Hasso', 1972, 'Male', 'Architekt', '40.jpg', current_timestamp, current_timestamp);
--insert into Politician values('8eabc811-d976-4e85-95f2-a91f15ebf6c2', '51cdefc2-0cf7-42f1-9df9-4e97dabab17d', 'Gabriel Richard', 1981, 'Male', 'Designer', '41.jpg', current_timestamp, current_timestamp);
--insert into Politician values('667a75d5-f922-40a7-b0de-4b3b3b6cce08', '51cdefc2-0cf7-42f1-9df9-4e97dabab17d', 'Beat Leo', 1986, 'Male', 'Herausgeber', '42.jpg', current_timestamp, current_timestamp);
--insert into Politician values('6ecd0c78-d06f-4e33-93b6-24382cbc93e5', '51cdefc2-0cf7-42f1-9df9-4e97dabab17d', 'Justus Alwin', 1983, 'Male', 'Hausmann', '43.jpg', current_timestamp, current_timestamp);
--insert into Politician values('9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', '51cdefc2-0cf7-42f1-9df9-4e97dabab17d', 'Benedikt Samuel', 1982, 'Male', 'Kaufmann', '44.jpg', current_timestamp, current_timestamp);
--insert into Politician values('e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', '51cdefc2-0cf7-42f1-9df9-4e97dabab17d', 'Simon Michel', 1958, 'Male', 'Pflegefachmann', '45.jpg', current_timestamp, current_timestamp);
--insert into Politician values('94b21ab6-c285-49ed-ba31-b060d01eb498', '51cdefc2-0cf7-42f1-9df9-4e97dabab17d', 'Lars Gerhard', 1986, 'Male', 'IT Consultant', '46.jpg', current_timestamp, current_timestamp);
--insert into Politician values('aa2aa826-bc0f-4b0c-b36f-979b2b104e28', '51cdefc2-0cf7-42f1-9df9-4e97dabab17d', 'Wulf Erich', 1974, 'Male', 'Designer', '47.jpg', current_timestamp, current_timestamp);
--insert into Politician values('ef63f015-5776-4b1e-a458-3fc10534bac4', '51cdefc2-0cf7-42f1-9df9-4e97dabab17d', 'Gernot Dennis', 1994, 'Male', 'Designer', '48.jpg', current_timestamp, current_timestamp);
--insert into Politician values('8dee210a-cd6e-41fa-8191-52104772ec17', '51cdefc2-0cf7-42f1-9df9-4e97dabab17d', 'Oliver Clemens', 1979, 'Male', 'Architekt', '49.jpg', current_timestamp, current_timestamp);
--insert into Politician values('c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', '51cdefc2-0cf7-42f1-9df9-4e97dabab17d', 'Jupp Hartwig', 1969, 'Male', 'Hausmann', '50.jpg', current_timestamp, current_timestamp);

-- answered questions



-- Medienbeiträge

insert into MediaCoverage values('c72c5322-990c-452d-a1a1-ff1996ef6e80', 'bb1d763b-ca76-4ac5-81ef-a98d4f34e669', 'Skandal im Bundeshaus?', 'War Gretchen Gertraud verwickelt im letzten Skandal im Bundeshaus?', 'https://www.blick.ch/schweiz/bundesrat-plant-lockerungen-svp-will-noch-schneller-oeffnen-id16525651.html', '2021-05-16', current_timestamp, current_timestamp);
insert into MediaCoverage values('42c681b2-3935-41e8-8e3d-f809854874e2', '7d712000-ffc9-4703-a308-7aca6bb00554', 'Skandal im Bundeshaus?', 'War Caroline Gunda verwickelt im letzten Skandal im Bundeshaus?', 'https://www.20min.ch/story/sp-nationalraetin-will-suessigkeiten-an-supermarkt-kassen-verbieten-939292758252', '2021-05-16', current_timestamp, current_timestamp);
insert into MediaCoverage values('b1bd4b3d-3e4b-4926-83c4-cc2acc00e94d', 'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 'Ein Titel', 'Das ist die Beschreibung dieses Medienartikels.', 'https://www.20min.ch/', '2021-05-16', current_timestamp, current_timestamp);
insert into MediaCoverage values('6742531f-d3e1-4dca-bdde-9ae11c2cf4fb', 'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 'Der Titel', 'Das ist die Beschreibung dieses Medienartikels.', 'https://www.20min.ch/', '2021-03-12', current_timestamp, current_timestamp);
insert into MediaCoverage values('692b26cb-6e40-4db5-8aa3-9b12290d40d0', '6f4467de-61c7-4da4-8437-81fd94f8caea', 'Ein Titel', 'Das ist die Beschreibung dieses Medienartikels.', 'https://www.20min.ch/', '2021-03-11', current_timestamp, current_timestamp);
insert into MediaCoverage values('5ab91833-a2b3-4ea9-ac11-bab7e2167d35', 'c3860bfb-0975-4a07-941e-7ce550250b55', 'Ein Titel', 'Das ist die Beschreibung dieses Medienartikels.', 'https://www.20min.ch/', '2021-05-16', current_timestamp, current_timestamp);
insert into MediaCoverage values('718682f4-9c1c-494b-b41a-4a5519fd5e98', 'a044da59-0467-4dea-8e30-e0dee2b053a5', 'Der Titel', 'Das ist die Beschreibung dieses Medienartikels.', 'https://www.20min.ch/', '2021-03-12', current_timestamp, current_timestamp);
insert into MediaCoverage values('fa2d3429-8c65-4f7a-ba48-bf8e127faaf7', '04bbc8fd-b00e-428d-8a76-158d03394bf7', 'Ein Titel', 'Das ist die Beschreibung dieses Medienartikels.', 'https://www.20min.ch/', '2021-03-11', current_timestamp, current_timestamp);
insert into MediaCoverage values('644cd06c-e284-42cd-afe0-4a9913fc0d0b', '5bcc77e3-86a1-47b8-82c4-75443b5023c2', 'Ein Titel', 'Das ist die Beschreibung dieses Medienartikels.', 'https://www.20min.ch/', '2021-05-16', current_timestamp, current_timestamp);
insert into MediaCoverage values('3cfd31f9-d5e6-4118-aebd-877838896d2a', '621767cc-f8fb-4947-8e27-a3ec8512ddc6', 'Der Titel', 'Das ist die Beschreibung dieses Medienartikels.', 'https://www.20min.ch/', '2021-03-12', current_timestamp, current_timestamp);
insert into MediaCoverage values('8a9e6fef-fd8d-4840-9c99-f6ec37fecffa', '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', 'Ein Titel', 'Das ist die Beschreibung dieses Medienartikels.', 'https://www.20min.ch/', '2021-03-11', current_timestamp, current_timestamp);
insert into MediaCoverage values('295f0e05-5c9e-4e5d-bf3e-e7470bf91e93', 'a882f183-0c6e-41a2-8745-ba9f570ecf8b', 'Ein Titel', 'Das ist die Beschreibung dieses Medienartikels.', 'https://www.20min.ch/', '2021-05-16', current_timestamp, current_timestamp);
insert into MediaCoverage values('08838d5e-1ad9-4b8e-8e36-dcdfe6948373', 'aed41ae7-e8d9-4944-aee1-ae138623bdd7', 'Der Titel', 'Das ist die Beschreibung dieses Medienartikels.', 'https://www.20min.ch/', '2021-03-12', current_timestamp, current_timestamp);
insert into MediaCoverage values('f51c7429-95c6-4fc9-a8d5-7c0b5ab3daad', '2eb55491-aa91-47ed-9f68-42836101c334', 'Ein Titel', 'Das ist die Beschreibung dieses Medienartikels.', 'https://www.20min.ch/', '2021-03-11', current_timestamp, current_timestamp);