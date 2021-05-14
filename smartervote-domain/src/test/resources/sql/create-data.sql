-- please check 'create-database.sql' to see instructions how to setup the database

-- test data for algorithm test

insert into Election
values ('004c25b6-0000-0000-0000-4b3fd10e9c00', 'Algotestwahlen', current_timestamp, current_timestamp);
insert into QuestionSubject
values ('00f718e8-29db-4274-8885-23a6c64e5d00', '004c25b6-0000-0000-0000-4b3fd10e9c00', 'Subject1',
        current_timestamp, current_timestamp);
-- questions
insert into Election
values ('bc4c25b6-f1ae-45bc-b7ae-4b3fd10e9c29', 'Nationalratswahlen', current_timestamp, current_timestamp);
insert into QuestionSubject
values ('d3f718e8-29db-4274-8885-23a6c64e5da5', 'bc4c25b6-f1ae-45bc-b7ae-4b3fd10e9c29', 'Sozialstaat & Familie',
        current_timestamp, current_timestamp);
insert into Question
values ('a335650d-06b4-4e92-ba77-d5f8964ceb82', 'd3f718e8-29db-4274-8885-23a6c64e5da5',
        'Befürworten Sie eine Erhöhung des Rentenalters (z.B. auf 67 Jahre)?', current_timestamp, current_timestamp);
insert into Question
values ('46df8b49-923c-4f91-8362-5196efbb71e2', 'd3f718e8-29db-4274-8885-23a6c64e5da5',
        'Soll der Staat die Schaffung von familienergänzenden Betreuungsstrukturen finanziell stärker unterstützen?',
        current_timestamp, current_timestamp);
insert into Question
values ('5f277258-ba7b-492c-b451-673eaa5957c0', 'd3f718e8-29db-4274-8885-23a6c64e5da5',
        'Eine Initiative fordert einen bezahlten Vaterschaftsurlaub von vier Wochen. Befürworten Sie dieses Anliegen?',
        current_timestamp, current_timestamp);
insert into Question
values ('007ebae0-31cb-40fb-93ad-c2f980caee14', 'd3f718e8-29db-4274-8885-23a6c64e5da5',
        'Sollen die Renten der Pensionskasse durch eine Senkung des Umwandlungssatzes gekürzt und an die gestiegene Lebenserwartung angepasst werden?',
        current_timestamp, current_timestamp);
insert into Question
values ('8ae0f13d-e699-4617-a4ba-672e6ccc0edc', 'd3f718e8-29db-4274-8885-23a6c64e5da5',
        'Befürworten Sie Bestrebungen in den Kantonen zur Senkung der Sozialhilfeleistungen?', current_timestamp,
        current_timestamp);
insert into Question
values ('dee756b8-f4f2-474a-88f4-e7f4fea7275a', 'd3f718e8-29db-4274-8885-23a6c64e5da5',
        'Soll der Bund den gemeinnützigen Wohnungsbau verstärkt fördern?', current_timestamp, current_timestamp);
insert into QuestionSubject
values ('32fe8656-9e02-4a02-a8dc-fd68469b4195', 'bc4c25b6-f1ae-45bc-b7ae-4b3fd10e9c29', 'Gesundheitswesen',
        current_timestamp, current_timestamp);
insert into Question
values ('b8ec593e-93b8-4bab-95dd-cfff5c526d54', '32fe8656-9e02-4a02-a8dc-fd68469b4195',
        'Sollen sich die Versicherten stärker an den Gesundheitskosten beteiligen (z.B. Erhöhung der Mindestfranchise)?',
        current_timestamp, current_timestamp);
insert into Question
values ('6f9db124-e0ae-409d-b943-5be0cbc836e5', '32fe8656-9e02-4a02-a8dc-fd68469b4195',
        'Würden Sie die Einführung der Widerspruchslösung bei der Organspende befürworten?', current_timestamp,
        current_timestamp);
insert into Question
values ('616bf16a-470d-494e-ad8b-b230e80dafb3', '32fe8656-9e02-4a02-a8dc-fd68469b4195',
        'Soll für Kinder eine Impfpflicht gemäss dem Schweizerischen Impfplan eingeführt werden?', current_timestamp,
        current_timestamp);
insert into Question
values ('6c05b44c-34de-48a4-8d3c-6015b268c456', '32fe8656-9e02-4a02-a8dc-fd68469b4195',
        'Eine Initiative fordert, dass die Prämienverbilligung so ausgestaltet wird, dass niemand mehr als zehn Prozent des verfügbaren Einkommens für die Krankenkassenprämien aufwenden muss. Befürworten Sie dies?',
        current_timestamp, current_timestamp);
insert into Question
values ('3ac4a61c-f510-4d59-84cc-e957dbeedd8e', '32fe8656-9e02-4a02-a8dc-fd68469b4195',
        'Eine Initiative möchte dem Bund mehr Kompetenzen geben, um Massnahmen zur Senkung der Gesundheitskosten zu ergreifen (Einführung einer Kostenbremse). Befürworten Sie dies?',
        current_timestamp, current_timestamp);
insert into QuestionSubject
values ('26e376c2-1528-4d1a-ad46-8d518cf26bb1', 'bc4c25b6-f1ae-45bc-b7ae-4b3fd10e9c29', 'Bildung', current_timestamp,
        current_timestamp);
insert into Question
values ('f4f5632d-00ae-4be2-aff8-c83da3c21519', '26e376c2-1528-4d1a-ad46-8d518cf26bb1',
        'Soll sich der Staat stärker für gleiche Bildungschancen einsetzen (z.B. mit Nachhilfe-Gutscheinen für Schüler/-innen aus Familien mit geringem Einkommen)?',
        current_timestamp, current_timestamp);
insert into Question
values ('4917d24b-e50c-4fa9-ac12-37a0d298f41f', '26e376c2-1528-4d1a-ad46-8d518cf26bb1',
        'Finden Sie es richtig, wenn Schulen Dispense aus religiösen Gründen für einzelne Fächer oder Veranstaltungen bewilligen (z.B. Sport- oder Sexualkundeunterricht)?',
        current_timestamp, current_timestamp);
insert into Question
values ('aee92954-3fab-449d-bc56-7ec47df873cb', '26e376c2-1528-4d1a-ad46-8d518cf26bb1',
        'Soll der Bund die finanzielle Unterstützung für die berufliche Weiterbildung und Umschulung ausbauen?',
        current_timestamp, current_timestamp);
insert into Question
values ('19d57226-91df-4c5a-92f4-7b7d774ea8c4', '26e376c2-1528-4d1a-ad46-8d518cf26bb1',
        'Gemäss dem Konzept der integrativen Schule werden Kinder mit Lernschwierigkeiten oder Behinderungen grundsätzlich in regulären Schulklassen unterrichtet. Befürworten Sie dies?',
        current_timestamp, current_timestamp);
insert into QuestionSubject
values ('2305a512-003e-4db6-9d1a-f77c29fb80d9', 'bc4c25b6-f1ae-45bc-b7ae-4b3fd10e9c29', 'Migration & Integration',
        current_timestamp, current_timestamp);
insert into Question
values ('81f2e7c9-6871-44e3-a432-b0fd050dd187', '2305a512-003e-4db6-9d1a-f77c29fb80d9',
        'Sollen Ausländer/-innen, die seit mindestens zehn Jahren in der Schweiz leben, das Stimm- und Wahlrecht auf Gemeindeebene erhalten?',
        current_timestamp, current_timestamp);
insert into Question
values ('377a4b78-e58a-4d13-875f-817cd1693ece', '2305a512-003e-4db6-9d1a-f77c29fb80d9',
        'Ist die Begrenzung der Einwanderung für Sie wichtiger als der Erhalt der Bilateralen Verträge mit der EU?',
        current_timestamp, current_timestamp);
insert into Question
values ('54e790a7-9741-408e-9327-3377df0e9b6e', '2305a512-003e-4db6-9d1a-f77c29fb80d9',
        'Sollen Sans-Papiers einfacher einen geregelten Aufenthaltsstatus erhalten?', current_timestamp,
        current_timestamp);
insert into Question
values ('5dce5233-88d5-4b52-94de-6465ace4be98', '2305a512-003e-4db6-9d1a-f77c29fb80d9',
        'Befürworten Sie eine weitere Verschärfung des Asylrechts?', current_timestamp, current_timestamp);
insert into Question
values ('63aa0cb7-202d-4c54-85ae-051e8249115d', '2305a512-003e-4db6-9d1a-f77c29fb80d9',
        'Sollen die Anforderungen für Einbürgerungen erhöht werden?', current_timestamp, current_timestamp);
insert into Question
values ('fb59e236-0633-46ca-a8b5-c0d7596ee10e', '2305a512-003e-4db6-9d1a-f77c29fb80d9',
        'Soll der Bund Ausländer/-innen bei der Integration stärker unterstützen?', current_timestamp,
        current_timestamp);
insert into QuestionSubject
values ('c1f61867-f5b8-4416-9eaf-fe07b6649dbc', 'bc4c25b6-f1ae-45bc-b7ae-4b3fd10e9c29', 'Gesellschaft & Ethik',
        current_timestamp, current_timestamp);
insert into Question
values ('154147b7-aff2-4ff1-89cf-fcd6616ca6d2', 'c1f61867-f5b8-4416-9eaf-fe07b6649dbc',
        'Soll der Konsum von Cannabis legalisiert werden?', current_timestamp, current_timestamp);
insert into Question
values ('6e8b2868-8094-46d3-95be-2397eb9d5237', 'c1f61867-f5b8-4416-9eaf-fe07b6649dbc',
        'Sollen gleichgeschlechtliche Paare in allen Bereichen die gleichen Rechte wie heterosexuelle Paare haben?',
        current_timestamp, current_timestamp);
insert into Question
values ('112cc8ee-b996-4b19-9192-9e82b92aae94', 'c1f61867-f5b8-4416-9eaf-fe07b6649dbc',
        'Sollen die Regeln der Fortpflanzungsmedizin weiter gelockert werden?', current_timestamp, current_timestamp);
insert into Question
values ('60c4bebf-411f-456f-9eab-5afd98fde9c7', 'c1f61867-f5b8-4416-9eaf-fe07b6649dbc',
        'Befürworten Sie eine strengere Kontrolle der Lohngleichheit von Frauen und Männern?', current_timestamp,
        current_timestamp);
insert into Question
values ('c393d2b5-6e50-4d7a-ad40-e112851e0711', 'c1f61867-f5b8-4416-9eaf-fe07b6649dbc',
        'Würden Sie es befürworten, wenn in der Schweiz die direkte aktive Sterbehilfe durch eine/-n Arzt/Ärztin straffrei möglich wäre?',
        current_timestamp, current_timestamp);
insert into QuestionSubject
values ('2fa9b5e2-9a6f-4374-a405-d2cc12b16b34', 'bc4c25b6-f1ae-45bc-b7ae-4b3fd10e9c29', 'Finanzen & Steuern',
        current_timestamp, current_timestamp);
insert into Question
values ('38630605-5c28-4b5c-b042-93c43bf23ebc', '2fa9b5e2-9a6f-4374-a405-d2cc12b16b34',
        'Haben für Sie Steuersenkungen auf Bundesebene in den nächsten vier Jahren Priorität?', current_timestamp,
        current_timestamp);
insert into Question
values ('cc721727-53e6-4b1c-9d85-c97c46b5422e', '2fa9b5e2-9a6f-4374-a405-d2cc12b16b34',
        'Befürworten Sie eine weitergehende Reduktion der Beitragszahlungen finanzstarker Kantone an die finanzschwachen Kantone im Rahmen des Finanzausgleichs (NFA)?',
        current_timestamp, current_timestamp);
insert into Question
values ('ccb39a89-f63e-4537-90cd-e3186178ae1f', '2fa9b5e2-9a6f-4374-a405-d2cc12b16b34',
        'Sollen Ehepaare getrennt als Einzelpersonen besteuert werden (Individualbesteuerung)?', current_timestamp,
        current_timestamp);
insert into Question
values ('b34bfec1-ee6c-46bc-9d52-99e90b59fe12', '2fa9b5e2-9a6f-4374-a405-d2cc12b16b34',
        'Befürworten Sie eine Beschränkung des Wettbewerbs zwischen den Kantonen bei der Unternehmenssteuer?',
        current_timestamp, current_timestamp);
insert into QuestionSubject
values ('2517911d-1ede-4606-b767-bc855c3a096c', 'bc4c25b6-f1ae-45bc-b7ae-4b3fd10e9c29', 'Wirtschaft & Arbeit',
        current_timestamp, current_timestamp);
insert into Question
values ('6b7955fe-fb44-4b68-92b5-13aedcce4e76', '2517911d-1ede-4606-b767-bc855c3a096c',
        'Sollen Privathaushalte ihren Stromanbieter frei wählen können (vollständige Liberalisierung des Strommarktes)?',
        current_timestamp, current_timestamp);
insert into Question
values ('204814c3-bf71-4b17-9727-c6d435976da6', '2517911d-1ede-4606-b767-bc855c3a096c',
        'Befürworten Sie die Einführung eines für alle Arbeitnehmenden gültigen Mindestlohnes von CHF 4000 für eine Vollzeitstelle?',
        current_timestamp, current_timestamp);
insert into Question
values ('d118e4c3-08b7-4c8e-95de-81b8715b6f1d', '2517911d-1ede-4606-b767-bc855c3a096c',
        'Sollen Schweizer Unternehmen durch die Einführung von Investitionskontrollen besser vor Übernahmen durch ausländische Käufer geschützt werden?',
        current_timestamp, current_timestamp);
insert into Question
values ('db255fa3-e68a-47b3-9651-a7cc95b33689', '2517911d-1ede-4606-b767-bc855c3a096c',
        'Befürworten Sie eine vollständige Liberalisierung der Geschäftsöffnungszeiten?', current_timestamp,
        current_timestamp);
insert into Question
values ('42b30d8f-b8eb-46be-93ee-446f2d1d2706', '2517911d-1ede-4606-b767-bc855c3a096c',
        'Soll der Kündigungsschutz für ältere Angestellte ausgebaut werden?', current_timestamp, current_timestamp);
insert into Question
values ('69126fb1-3e3f-4741-b6a4-91678103ccfe', '2517911d-1ede-4606-b767-bc855c3a096c',
        'Soll der Bund das Service-Public-Angebot (z.B. ÖV-Verbindungen, Poststellen) in den ländlichen Regionen stärker fördern?',
        current_timestamp, current_timestamp);
insert into QuestionSubject
values ('038bd0b4-9531-419d-9e0d-9dba95161cec', 'bc4c25b6-f1ae-45bc-b7ae-4b3fd10e9c29', 'Digitalisierung',
        current_timestamp, current_timestamp);
insert into Question
values ('a4f7f094-e1ff-4280-aa2f-33e17fb03d07', '038bd0b4-9531-419d-9e0d-9dba95161cec',
        'Soll der Ausbau des Mobilfunknetzes nach 5G-Standard weiter vorangetrieben werden?', current_timestamp,
        current_timestamp);
insert into Question
values ('9f8b49e7-cd35-4115-8e2a-a4bc71ceab78', '038bd0b4-9531-419d-9e0d-9dba95161cec',
        'Sollen Online-Vermittlungsdienste (z.B. "Airbnb"-Unterkünfte, "Uber"-Taxidienste) stärker reguliert werden?',
        current_timestamp, current_timestamp);
insert into QuestionSubject
values ('d9e78527-cdfb-4ac8-978b-367081718a20', 'bc4c25b6-f1ae-45bc-b7ae-4b3fd10e9c29', 'Energie & Verkehr',
        current_timestamp, current_timestamp);
insert into Question
values ('df70cc34-0233-4ed5-89f4-5864507b42a4', 'd9e78527-cdfb-4ac8-978b-367081718a20',
        'Eine Initiative fordert, dass die Schweiz ab 2050 auf die Verwendung fossiler Energieträger verzichtet. Unterstützen Sie dieses Anliegen?',
        current_timestamp, current_timestamp);
insert into Question
values ('4b4b663a-bc9c-4eb4-ba80-f86adc0951f9', 'd9e78527-cdfb-4ac8-978b-367081718a20',
        'Bislang wird auf fossile Brennstoffe (z.B. Heizöl oder Erdgas) eine CO2-Abgabe erhoben. Soll diese Abgabe auch auf Treibstoffe (z.B. Benzin und Diesel) ausgeweitet werden?',
        current_timestamp, current_timestamp);
insert into Question
values ('231e38c1-fb35-4262-9a80-ea7a4d0a00ba', 'd9e78527-cdfb-4ac8-978b-367081718a20',
        'Soll der Bund erneuerbare Energien stärker fördern?', current_timestamp, current_timestamp);
insert into Question
values ('57008dea-844d-44c7-8adc-6389295384c7', 'd9e78527-cdfb-4ac8-978b-367081718a20',
        'Sollen stark befahrene Autobahnabschnitte auf sechs Spuren ausgebaut werden?', current_timestamp,
        current_timestamp);
insert into Question
values ('a214c6f9-029b-444d-82a0-8bc98a044a43', 'd9e78527-cdfb-4ac8-978b-367081718a20',
        'Befürworten Sie die Einführung von "Road Pricing" für den motorisierten Individualverkehr auf vielbefahrenen Strassen?',
        current_timestamp, current_timestamp);
insert into QuestionSubject
values ('703d621d-85a3-4d2b-a1b0-acb1721a09b2', 'bc4c25b6-f1ae-45bc-b7ae-4b3fd10e9c29', 'Naturschutz',
        current_timestamp, current_timestamp);
insert into Question
values ('630e876e-62d7-498b-aae9-f8326e875369', '703d621d-85a3-4d2b-a1b0-acb1721a09b2',
        'Befürworten Sie eine Lockerung der aktuell gültigen Schutzbestimmungen für Grossraubtiere (Luchs, Wolf, Bär)?',
        current_timestamp, current_timestamp);
insert into Question
values ('1521cd72-8dc2-463a-8cef-2c8c8166493b', '703d621d-85a3-4d2b-a1b0-acb1721a09b2',
        'Soll das geltende Moratorium für gentechnisch veränderte Pflanzen und Tiere in der Schweizer Landwirtschaft über das Jahr 2021 hinaus verlängert werden?',
        current_timestamp, current_timestamp);
insert into Question
values ('4c411dfd-41e6-4c53-bb7b-37cc54c1c8e8', '703d621d-85a3-4d2b-a1b0-acb1721a09b2',
        'Sollen nur noch Landwirte Direktzahlungen erhalten, die einen erweiterten ökologischen Leistungsnachweis erbringen (u.a. Verzicht auf synthetische Pestizide und Beschränkung des Antibiotika-Einsatzes)?',
        current_timestamp, current_timestamp);
insert into Question
values ('92bb831c-040f-4686-8acd-f42d8629ba7b', '703d621d-85a3-4d2b-a1b0-acb1721a09b2',
        'Befürworten Sie einen Ausbau des Landschaftsschutzes (z.B. strengere Regeln zum Bauen ausserhalb bestehender Bauzonen)?',
        current_timestamp, current_timestamp);
insert into Question
values ('fe8d890a-abea-44fc-92fe-ba3678289387', '703d621d-85a3-4d2b-a1b0-acb1721a09b2',
        'Befürworten Sie strengere Tierschutzregelungen für die Haltung von Nutztieren (z.B. permanenter Zugang zum Aussenbereich)?',
        current_timestamp, current_timestamp);
insert into QuestionSubject
values ('2ae96817-5b19-4e39-b14b-c59a2113d098', 'bc4c25b6-f1ae-45bc-b7ae-4b3fd10e9c29', 'Staatspolitik',
        current_timestamp, current_timestamp);
insert into Question
values ('4de87bed-0d07-419e-9991-32658cdb0a9d', '2ae96817-5b19-4e39-b14b-c59a2113d098',
        'Soll die Finanzierung von Parteien sowie von Wahl- und Abstimmungskampagnen offengelegt werden müssen?',
        current_timestamp, current_timestamp);
insert into Question
values ('7570b82c-a85d-446c-9a92-5c0bb332a8a3', '2ae96817-5b19-4e39-b14b-c59a2113d098',
        'Soll die Einführung der elektronischen Stimmabgabe bei Wahlen und Abstimmungen (E-Voting) weiter vorangetrieben werden?',
        current_timestamp, current_timestamp);
insert into Question
values ('b8b056d3-228d-4363-8f43-a1fed1da8695', '2ae96817-5b19-4e39-b14b-c59a2113d098',
        'Befürworten Sie die Senkung des Stimmrechtsalters auf 16 Jahre?', current_timestamp, current_timestamp);
insert into QuestionSubject
values ('ee4660ce-2486-46a1-9291-8d7c3a65498b', 'bc4c25b6-f1ae-45bc-b7ae-4b3fd10e9c29', 'Sicherheit & Armee',
        current_timestamp, current_timestamp);
insert into Question
values ('5a08407a-ba00-4be3-bbc6-c50dc256d8f5', 'ee4660ce-2486-46a1-9291-8d7c3a65498b',
        'Soll die Schweiz das Schengen-Abkommen mit der EU kündigen und wieder verstärkte Personenkontrollen direkt an der Grenze einführen?',
        current_timestamp, current_timestamp);
insert into Question
values ('cac14782-c714-49d4-803d-6bdfb7fb8707', 'ee4660ce-2486-46a1-9291-8d7c3a65498b',
        'Soll auf die vom Bundesrat vorgeschlagene Verschärfung der Zulassungsbedingungen zum Zivildienst verzichtet werden?',
        current_timestamp, current_timestamp);
insert into Question
values ('3d723b44-2db7-4730-af04-6007ae7d2178', 'ee4660ce-2486-46a1-9291-8d7c3a65498b',
        'Sollen Exporte von Kriegsmaterial aus der Schweiz verboten werden?', current_timestamp, current_timestamp);
insert into Question
values ('9a4f51df-c428-4a18-9055-511e0ae7b6d8', 'ee4660ce-2486-46a1-9291-8d7c3a65498b',
        'Befürworten Sie die Beschaffung neuer Kampfflugzeuge für die Schweizer Armee?', current_timestamp,
        current_timestamp);
insert into Question
values ('fd1edc81-f470-4dbe-95cf-ea6ad5e85cf2', 'ee4660ce-2486-46a1-9291-8d7c3a65498b',
        'Würden Sie eine Ausdehnung der rechtlichen Möglichkeiten zur Fahndung mittels DNA-Analyse befürworten?',
        current_timestamp, current_timestamp);
insert into QuestionSubject
values ('94eee13c-70e5-4096-89e4-9a53cb98592b', 'bc4c25b6-f1ae-45bc-b7ae-4b3fd10e9c29', 'Aussenbeziehungen',
        current_timestamp, current_timestamp);
insert into Question
values ('6e2740d2-ef18-4564-b8c7-9f7214308f81', '94eee13c-70e5-4096-89e4-9a53cb98592b',
        'Soll die Schweiz Verhandlungen über den Beitritt zur EU aufnehmen?', current_timestamp, current_timestamp);
insert into Question
values ('926c446b-9db8-4b9c-a406-ed40dff69e34', '94eee13c-70e5-4096-89e4-9a53cb98592b',
        'Soll der Bundesrat ein Freihandelsabkommen mit den USA anstreben?', current_timestamp, current_timestamp);
insert into Question
values ('eaa9530f-bb8c-453f-b634-c8599039e296', '94eee13c-70e5-4096-89e4-9a53cb98592b',
        'Eine Initiative fordert, dass die Haftungsregeln für Unternehmen mit Sitz in der Schweiz in Bezug auf die Einhaltung von Menschenrechten und Umweltstandards im Ausland verschärft werden. Befürworten Sie dies?',
        current_timestamp, current_timestamp);
insert into Question
values ('bdc5f279-42bf-491c-b87a-409b3c7bff89', '94eee13c-70e5-4096-89e4-9a53cb98592b',
        'Befürworten Sie die Kandidatur der Schweiz für einen Sitz im UNO-Sicherheitsrat?', current_timestamp,
        current_timestamp);

-- politicians
insert into Party
values ('78d47363-fb09-4041-9d2a-0e637b272b51', 'CVP Die Mitte', current_timestamp, current_timestamp);
insert into Party
values ('60294243-0aa1-4cf7-a54a-ac28bc429af9', 'FDP', current_timestamp, current_timestamp);
insert into Party
values ('daad81cf-ab2f-4432-ba4e-8ff57c0bb678', 'Grüne', current_timestamp, current_timestamp);
insert into Party
values ('e26fb46a-87ed-4c1d-8afe-d9e5d42308fd', 'SP', current_timestamp, current_timestamp);
insert into Party
values ('51cdefc2-0cf7-42f1-9df9-4e97dabab17d', 'SVP', current_timestamp, current_timestamp);
insert into Politician
values ('bb1d763b-ca76-4ac5-81ef-a98d4f34e669', '78d47363-fb09-4041-9d2a-0e637b272b51', 'Gretchen Gertraud', 1996,
        'Female', 'Metzgerin', '1.jpg', current_timestamp, current_timestamp);
insert into Politician
values ('7d712000-ffc9-4703-a308-7aca6bb00554', '78d47363-fb09-4041-9d2a-0e637b272b51', 'Caroline Gunda', 1965,
        'Female', 'Kauffrau', '2.jpg', current_timestamp, current_timestamp);
insert into Politician
values ('e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', '78d47363-fb09-4041-9d2a-0e637b272b51', 'Cornelia Brigitte', 1999,
        'Female', 'Autohändlerin', '3.jpg', current_timestamp, current_timestamp);
insert into Politician
values ('c99a1451-3801-4ff3-b106-556196c019e3', '78d47363-fb09-4041-9d2a-0e637b272b51', 'Leonie Wibke', 1983, 'Female',
        'Architektin', '4.jpg', current_timestamp, current_timestamp);
insert into Politician
values ('b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', '78d47363-fb09-4041-9d2a-0e637b272b51', 'Jasmin Lore', 1986, 'Female',
        'Köchin', '5.jpg', current_timestamp, current_timestamp);
insert into Politician
values ('b7ee252a-66fe-43f1-8c31-cc44d123c1e3', '78d47363-fb09-4041-9d2a-0e637b272b51', 'Ruth Anja', 1989, 'Female',
        'Komponistin', '6.jpg', current_timestamp, current_timestamp);
insert into Politician
values ('6f4467de-61c7-4da4-8437-81fd94f8caea', '78d47363-fb09-4041-9d2a-0e637b272b51', 'Lydia Ingeburg', 1995,
        'Female', 'Hausfrau', '7.jpg', current_timestamp, current_timestamp);
insert into Politician
values ('5499fac4-1366-469e-92fb-4c66b582ef47', '78d47363-fb09-4041-9d2a-0e637b272b51', 'Irmhild Emilie', 1991,
        'Female', 'Studentin', '8.jpg', current_timestamp, current_timestamp);
insert into Politician
values ('c84a3ac8-d177-47c3-9fd3-35fecf4296b7', '78d47363-fb09-4041-9d2a-0e637b272b51', 'Helma Ulla', 1997, 'Female',
        'IT Consultant', '9.jpg', current_timestamp, current_timestamp);
insert into Politician
values ('c3860bfb-0975-4a07-941e-7ce550250b55', '78d47363-fb09-4041-9d2a-0e637b272b51', 'Regula Adelheid', 1978,
        'Female', 'Metzgerin', '10.jpg', current_timestamp, current_timestamp);
insert into Politician
values ('0bf956b3-1094-4891-9fac-043b3bb4ddce', '60294243-0aa1-4cf7-a54a-ac28bc429af9', 'Susi Ulrike', 1975, 'Female',
        'Radiomoderatorin', '11.jpg', current_timestamp, current_timestamp);
insert into Politician
values ('c0fffdd1-a230-44b4-b890-20ff4b09e58a', '60294243-0aa1-4cf7-a54a-ac28bc429af9', 'Else Sabrina', 1994, 'Female',
        'Theologin', '12.jpg', current_timestamp, current_timestamp);
insert into Politician
values ('a044da59-0467-4dea-8e30-e0dee2b053a5', '60294243-0aa1-4cf7-a54a-ac28bc429af9', 'Karina Tatiana', 1992,
        'Female', 'IT Consultant', '13.jpg', current_timestamp, current_timestamp);
insert into Politician
values ('817d113c-9874-4511-a5f3-08a256a7dfb8', '60294243-0aa1-4cf7-a54a-ac28bc429af9', 'Rebekka Luise', 1987, 'Female',
        'Elektrikerin', '14.jpg', current_timestamp, current_timestamp);
insert into Politician
values ('04bbc8fd-b00e-428d-8a76-158d03394bf7', '60294243-0aa1-4cf7-a54a-ac28bc429af9', 'Carolin Iris', 1970, 'Female',
        'Radiomoderatorin', '15.jpg', current_timestamp, current_timestamp);
insert into Politician
values ('5bcc77e3-86a1-47b8-82c4-75443b5023c2', '60294243-0aa1-4cf7-a54a-ac28bc429af9', 'Ingeburg Elisabeth', 1993,
        'Female', 'Autohändlerin', '16.jpg', current_timestamp, current_timestamp);
insert into Politician
values ('621767cc-f8fb-4947-8e27-a3ec8512ddc6', '60294243-0aa1-4cf7-a54a-ac28bc429af9', 'Gertraud Diana', 1988,
        'Female', 'Elektrikerin', '17.jpg', current_timestamp, current_timestamp);
insert into Politician
values ('be3ff762-b466-4543-8a73-230729f51fd6', '60294243-0aa1-4cf7-a54a-ac28bc429af9', 'Cassandra Hermine', 1977,
        'Female', 'IT Consultant', '18.jpg', current_timestamp, current_timestamp);
insert into Politician
values ('9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', '60294243-0aa1-4cf7-a54a-ac28bc429af9', 'Rafael Finn', 1966, 'Male',
        'IT Consultant', '19.jpg', current_timestamp, current_timestamp);
insert into Politician
values ('a882f183-0c6e-41a2-8745-ba9f570ecf8b', '60294243-0aa1-4cf7-a54a-ac28bc429af9', 'Ronald Michael', 1976, 'Male',
        'Metzger', '20.jpg', current_timestamp, current_timestamp);
insert into Politician
values ('aed41ae7-e8d9-4944-aee1-ae138623bdd7', 'daad81cf-ab2f-4432-ba4e-8ff57c0bb678', 'Gebhard Günter', 1987, 'Male',
        'Radiomoderator', '21.jpg', current_timestamp, current_timestamp);
insert into Politician
values ('69a474b5-263c-4797-b451-87701c625291', 'daad81cf-ab2f-4432-ba4e-8ff57c0bb678', 'Hermann Burkhard', 1975,
        'Male', 'Theologe', '22.jpg', current_timestamp, current_timestamp);
insert into Politician
values ('2eb55491-aa91-47ed-9f68-42836101c334', 'daad81cf-ab2f-4432-ba4e-8ff57c0bb678', 'Siegbert Helmuth', 1970,
        'Male', 'Mathematiker', '23.jpg', current_timestamp, current_timestamp);
insert into Politician
values ('7c25649f-fe2b-47a7-83a5-b427ef5d7f27', 'daad81cf-ab2f-4432-ba4e-8ff57c0bb678', 'Otmar Manu', 1982, 'Male',
        'Versicherungsfachmann', '24.jpg', current_timestamp, current_timestamp);
insert into Politician
values ('cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 'daad81cf-ab2f-4432-ba4e-8ff57c0bb678', 'Beat Lorenz', 1995, 'Male',
        'Herausgeber', '25.jpg', current_timestamp, current_timestamp);
insert into Politician
values ('3fd910a0-57c0-4259-85c9-538b711bfb99', 'daad81cf-ab2f-4432-ba4e-8ff57c0bb678', 'Chris Mathias', 1990, 'Male',
        'Radiomoderator', '26.jpg', current_timestamp, current_timestamp);
insert into Politician
values ('0069d8b1-47c7-4b78-b551-8f0347e43a1c', 'daad81cf-ab2f-4432-ba4e-8ff57c0bb678', 'Mathis Adolf', 1974, 'Male',
        'Pflegefachmann', '27.jpg', current_timestamp, current_timestamp);
insert into Politician
values ('c02037b0-32ca-49b9-ae94-b29705191f3a', 'daad81cf-ab2f-4432-ba4e-8ff57c0bb678', 'Christoph Winfried', 1982,
        'Male', 'Metzger', '28.jpg', current_timestamp, current_timestamp);
insert into Politician
values ('867bd3ec-5599-472f-92a8-c06580340c65', 'daad81cf-ab2f-4432-ba4e-8ff57c0bb678', 'Lars Sören', 1969, 'Male',
        'Metzger', '29.jpg', current_timestamp, current_timestamp);
insert into Politician
values ('a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 'daad81cf-ab2f-4432-ba4e-8ff57c0bb678', 'Georg Quirin', 1970, 'Male',
        'Komponist', '30.jpg', current_timestamp, current_timestamp);
insert into Politician
values ('4d7b74e2-503c-42cc-b86c-2a7b1b28b093', 'e26fb46a-87ed-4c1d-8afe-d9e5d42308fd', 'Robert Bertram', 1964, 'Male',
        'Zugführer', '31.jpg', current_timestamp, current_timestamp);
insert into Politician
values ('840a8d98-56a5-4b79-b7db-019d60454b7d', 'e26fb46a-87ed-4c1d-8afe-d9e5d42308fd', 'Josef Philipp', 1962, 'Male',
        'Radiomoderator', '32.jpg', current_timestamp, current_timestamp);
insert into Politician
values ('47f1e554-bf38-4a6e-a31d-023b57d35eaa', 'e26fb46a-87ed-4c1d-8afe-d9e5d42308fd', 'Ben Kuno', 1970, 'Male',
        'Designer', '33.jpg', current_timestamp, current_timestamp);
insert into Politician
values ('802f66ed-fd65-4d37-8177-dd7ec6938c4b', 'e26fb46a-87ed-4c1d-8afe-d9e5d42308fd', 'Pascal Abraham', 1967, 'Male',
        'Architekt', '34.jpg', current_timestamp, current_timestamp);
insert into Politician
values ('9178eee0-ee5e-4f13-88d4-43eea8aa9179', 'e26fb46a-87ed-4c1d-8afe-d9e5d42308fd', 'Eberhard Matthias', 1989,
        'Male', 'Autohändler', '35.jpg', current_timestamp, current_timestamp);
insert into Politician
values ('ab9a8281-5fe2-4efc-b2be-12ef35d57786', 'e26fb46a-87ed-4c1d-8afe-d9e5d42308fd', 'Kilian Carl', 1980, 'Male',
        'Pflegefachmann', '36.jpg', current_timestamp, current_timestamp);
insert into Politician
values ('dc1d49a5-a3b9-4ea9-90be-489930db6823', 'e26fb46a-87ed-4c1d-8afe-d9e5d42308fd', 'Arne Adelbert', 1960, 'Male',
        'Kaufmann', '37.jpg', current_timestamp, current_timestamp);
insert into Politician
values ('7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 'e26fb46a-87ed-4c1d-8afe-d9e5d42308fd', 'Franz Hugo', 1977, 'Male',
        'Autohändler', '38.jpg', current_timestamp, current_timestamp);
insert into Politician
values ('89678908-7e8d-4f9c-9c15-cbab24936a8e', 'e26fb46a-87ed-4c1d-8afe-d9e5d42308fd', 'Gereon Linus', 1994, 'Male',
        'Komponist', '39.jpg', current_timestamp, current_timestamp);
insert into Politician
values ('e4730035-205f-485e-bd91-23308b4b956e', 'e26fb46a-87ed-4c1d-8afe-d9e5d42308fd', 'Manu Hasso', 1972, 'Male',
        'Architekt', '40.jpg', current_timestamp, current_timestamp);
insert into Politician
values ('8eabc811-d976-4e85-95f2-a91f15ebf6c2', '51cdefc2-0cf7-42f1-9df9-4e97dabab17d', 'Gabriel Richard', 1981, 'Male',
        'Designer', '41.jpg', current_timestamp, current_timestamp);
insert into Politician
values ('667a75d5-f922-40a7-b0de-4b3b3b6cce08', '51cdefc2-0cf7-42f1-9df9-4e97dabab17d', 'Beat Leo', 1986, 'Male',
        'Herausgeber', '42.jpg', current_timestamp, current_timestamp);
insert into Politician
values ('6ecd0c78-d06f-4e33-93b6-24382cbc93e5', '51cdefc2-0cf7-42f1-9df9-4e97dabab17d', 'Justus Alwin', 1983, 'Male',
        'Hausmann', '43.jpg', current_timestamp, current_timestamp);
insert into Politician
values ('9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', '51cdefc2-0cf7-42f1-9df9-4e97dabab17d', 'Benedikt Samuel', 1982, 'Male',
        'Kaufmann', '44.jpg', current_timestamp, current_timestamp);
insert into Politician
values ('e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', '51cdefc2-0cf7-42f1-9df9-4e97dabab17d', 'Simon Michel', 1958, 'Male',
        'Pflegefachmann', '45.jpg', current_timestamp, current_timestamp);
insert into Politician
values ('94b21ab6-c285-49ed-ba31-b060d01eb498', '51cdefc2-0cf7-42f1-9df9-4e97dabab17d', 'Lars Gerhard', 1986, 'Male',
        'IT Consultant', '46.jpg', current_timestamp, current_timestamp);
insert into Politician
values ('aa2aa826-bc0f-4b0c-b36f-979b2b104e28', '51cdefc2-0cf7-42f1-9df9-4e97dabab17d', 'Wulf Erich', 1974, 'Male',
        'Designer', '47.jpg', current_timestamp, current_timestamp);
insert into Politician
values ('ef63f015-5776-4b1e-a458-3fc10534bac4', '51cdefc2-0cf7-42f1-9df9-4e97dabab17d', 'Gernot Dennis', 1994, 'Male',
        'Designer', '48.jpg', current_timestamp, current_timestamp);
insert into Politician
values ('8dee210a-cd6e-41fa-8191-52104772ec17', '51cdefc2-0cf7-42f1-9df9-4e97dabab17d', 'Oliver Clemens', 1979, 'Male',
        'Architekt', '49.jpg', current_timestamp, current_timestamp);
insert into Politician
values ('c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', '51cdefc2-0cf7-42f1-9df9-4e97dabab17d', 'Jupp Hartwig', 1969, 'Male',
        'Hausmann', '50.jpg', current_timestamp, current_timestamp);

-- answered questions

-- politician 'bb1d763b-ca76-4ac5-81ef-a98d4f34e669'
insert into QuestionAnswer
values ('2d5f7b16-1edd-4139-a876-3c25e9e77fb0', 'a335650d-06b4-4e92-ba77-d5f8964ceb82',
        'bb1d763b-ca76-4ac5-81ef-a98d4f34e669', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4b230f1f-2693-4f49-8938-b70f959f582e', '46df8b49-923c-4f91-8362-5196efbb71e2',
        'bb1d763b-ca76-4ac5-81ef-a98d4f34e669', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('46a81a09-2096-46b7-a59d-81adc985dd9e', '5f277258-ba7b-492c-b451-673eaa5957c0',
        'bb1d763b-ca76-4ac5-81ef-a98d4f34e669', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('83698597-e0fd-46e8-bfd4-b3b1dbd6aa30', '007ebae0-31cb-40fb-93ad-c2f980caee14',
        'bb1d763b-ca76-4ac5-81ef-a98d4f34e669', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b603ddd7-d056-4e4d-99e8-f5e11f780fab', '8ae0f13d-e699-4617-a4ba-672e6ccc0edc',
        'bb1d763b-ca76-4ac5-81ef-a98d4f34e669', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('fbc788b0-7057-4a68-96da-c907f3141228', 'dee756b8-f4f2-474a-88f4-e7f4fea7275a',
        'bb1d763b-ca76-4ac5-81ef-a98d4f34e669', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('233215c3-664a-406a-b4f1-c3770a4026a5', 'b8ec593e-93b8-4bab-95dd-cfff5c526d54',
        'bb1d763b-ca76-4ac5-81ef-a98d4f34e669', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e97895ea-59d8-4232-8dc6-0f30e5d3a835', '6f9db124-e0ae-409d-b943-5be0cbc836e5',
        'bb1d763b-ca76-4ac5-81ef-a98d4f34e669', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('cb1ca082-0b74-4a92-a328-bcc91c30cf1b', '616bf16a-470d-494e-ad8b-b230e80dafb3',
        'bb1d763b-ca76-4ac5-81ef-a98d4f34e669', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('02570d15-bfc1-4122-90ce-b764816198ff', '6c05b44c-34de-48a4-8d3c-6015b268c456',
        'bb1d763b-ca76-4ac5-81ef-a98d4f34e669', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5f5ced2a-6f67-4f23-a027-6efe050268d8', '3ac4a61c-f510-4d59-84cc-e957dbeedd8e',
        'bb1d763b-ca76-4ac5-81ef-a98d4f34e669', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a50464ad-f0f3-490f-b762-1aeeb73c5d79', 'f4f5632d-00ae-4be2-aff8-c83da3c21519',
        'bb1d763b-ca76-4ac5-81ef-a98d4f34e669', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4985bf76-378c-4f76-acf9-20d00fdc5ed6', '4917d24b-e50c-4fa9-ac12-37a0d298f41f',
        'bb1d763b-ca76-4ac5-81ef-a98d4f34e669', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4317a28d-7fc1-4314-ab00-1ba6afee67c0', 'aee92954-3fab-449d-bc56-7ec47df873cb',
        'bb1d763b-ca76-4ac5-81ef-a98d4f34e669', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b2708a67-12ff-4de8-802b-2863d07be85c', '19d57226-91df-4c5a-92f4-7b7d774ea8c4',
        'bb1d763b-ca76-4ac5-81ef-a98d4f34e669', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('72b4b6e2-4c8b-455f-8e82-49b3a527b15c', '81f2e7c9-6871-44e3-a432-b0fd050dd187',
        'bb1d763b-ca76-4ac5-81ef-a98d4f34e669', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7f918b3e-cf65-443f-80ec-f35051ce5b70', '377a4b78-e58a-4d13-875f-817cd1693ece',
        'bb1d763b-ca76-4ac5-81ef-a98d4f34e669', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c9654386-4380-4707-8a16-2fcd0905c1be', '54e790a7-9741-408e-9327-3377df0e9b6e',
        'bb1d763b-ca76-4ac5-81ef-a98d4f34e669', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('cb9a27c0-e936-45f1-a1ac-562a67cdcc9a', '5dce5233-88d5-4b52-94de-6465ace4be98',
        'bb1d763b-ca76-4ac5-81ef-a98d4f34e669', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('20c7be41-8bad-4b8d-80c8-0956dd3cd552', '63aa0cb7-202d-4c54-85ae-051e8249115d',
        'bb1d763b-ca76-4ac5-81ef-a98d4f34e669', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('335aac19-b0e4-46f8-b73f-634325f595da', 'fb59e236-0633-46ca-a8b5-c0d7596ee10e',
        'bb1d763b-ca76-4ac5-81ef-a98d4f34e669', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1b18939d-5290-4e40-bffd-a843a9ddc59e', '154147b7-aff2-4ff1-89cf-fcd6616ca6d2',
        'bb1d763b-ca76-4ac5-81ef-a98d4f34e669', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0712bb00-6b28-4029-a748-dee394419d48', '6e8b2868-8094-46d3-95be-2397eb9d5237',
        'bb1d763b-ca76-4ac5-81ef-a98d4f34e669', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('faf16b85-b54c-4c80-98a1-f82af080d83b', '112cc8ee-b996-4b19-9192-9e82b92aae94',
        'bb1d763b-ca76-4ac5-81ef-a98d4f34e669', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c5163b23-e11f-4dae-80bd-e998e1713502', '60c4bebf-411f-456f-9eab-5afd98fde9c7',
        'bb1d763b-ca76-4ac5-81ef-a98d4f34e669', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6c507d20-8e04-4fde-a0bc-e344defbdfc8', 'c393d2b5-6e50-4d7a-ad40-e112851e0711',
        'bb1d763b-ca76-4ac5-81ef-a98d4f34e669', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8ace6432-4817-40ed-b8c2-b27c6ff08883', '38630605-5c28-4b5c-b042-93c43bf23ebc',
        'bb1d763b-ca76-4ac5-81ef-a98d4f34e669', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('53e4ca57-93d8-43f2-bb47-d044eef63d2c', 'cc721727-53e6-4b1c-9d85-c97c46b5422e',
        'bb1d763b-ca76-4ac5-81ef-a98d4f34e669', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('818c9f31-a006-407e-85ef-ab48799fe462', 'ccb39a89-f63e-4537-90cd-e3186178ae1f',
        'bb1d763b-ca76-4ac5-81ef-a98d4f34e669', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a1e908ef-2851-4fad-ab38-7a1d7909fd4e', 'b34bfec1-ee6c-46bc-9d52-99e90b59fe12',
        'bb1d763b-ca76-4ac5-81ef-a98d4f34e669', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6d874a66-30c0-4228-8928-78d73d254101', '6b7955fe-fb44-4b68-92b5-13aedcce4e76',
        'bb1d763b-ca76-4ac5-81ef-a98d4f34e669', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2c305158-9646-4883-9e53-6b36e1a5d2dc', '204814c3-bf71-4b17-9727-c6d435976da6',
        'bb1d763b-ca76-4ac5-81ef-a98d4f34e669', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('81e3d430-06dd-42ff-881f-a5817f4ea423', 'd118e4c3-08b7-4c8e-95de-81b8715b6f1d',
        'bb1d763b-ca76-4ac5-81ef-a98d4f34e669', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5c49d847-59ec-45ab-8fbf-5ea41a97dc06', 'db255fa3-e68a-47b3-9651-a7cc95b33689',
        'bb1d763b-ca76-4ac5-81ef-a98d4f34e669', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d91f30df-1388-41e7-963b-ea924d3f892f', '42b30d8f-b8eb-46be-93ee-446f2d1d2706',
        'bb1d763b-ca76-4ac5-81ef-a98d4f34e669', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8c3ab3f7-f450-4cc1-9f83-57949ff14fee', '69126fb1-3e3f-4741-b6a4-91678103ccfe',
        'bb1d763b-ca76-4ac5-81ef-a98d4f34e669', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5366ea8a-b8fa-4d6a-9b5c-08995dea953e', 'a4f7f094-e1ff-4280-aa2f-33e17fb03d07',
        'bb1d763b-ca76-4ac5-81ef-a98d4f34e669', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1b2c3fc4-f7e2-492e-b2e7-1d4740015f13', '9f8b49e7-cd35-4115-8e2a-a4bc71ceab78',
        'bb1d763b-ca76-4ac5-81ef-a98d4f34e669', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('17989e90-b55b-4484-82ed-598804e81a3b', 'df70cc34-0233-4ed5-89f4-5864507b42a4',
        'bb1d763b-ca76-4ac5-81ef-a98d4f34e669', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('608190e4-e07d-4ca8-92eb-979aee81bada', '4b4b663a-bc9c-4eb4-ba80-f86adc0951f9',
        'bb1d763b-ca76-4ac5-81ef-a98d4f34e669', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('99c9beb7-1ac8-4378-a1cc-7033ff7fb85c', '231e38c1-fb35-4262-9a80-ea7a4d0a00ba',
        'bb1d763b-ca76-4ac5-81ef-a98d4f34e669', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('031e4b23-902a-45e6-8e9b-63f1668af882', '57008dea-844d-44c7-8adc-6389295384c7',
        'bb1d763b-ca76-4ac5-81ef-a98d4f34e669', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e617457a-d627-485a-b5bd-753260409ada', 'a214c6f9-029b-444d-82a0-8bc98a044a43',
        'bb1d763b-ca76-4ac5-81ef-a98d4f34e669', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('cd7c3b90-7a0e-4b49-8ca1-8de46665c768', '630e876e-62d7-498b-aae9-f8326e875369',
        'bb1d763b-ca76-4ac5-81ef-a98d4f34e669', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2526a60c-c992-43ed-81a3-c30c58f6094d', '1521cd72-8dc2-463a-8cef-2c8c8166493b',
        'bb1d763b-ca76-4ac5-81ef-a98d4f34e669', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('fa0af9a6-f5d1-4e84-ae3e-3013afb4122a', '4c411dfd-41e6-4c53-bb7b-37cc54c1c8e8',
        'bb1d763b-ca76-4ac5-81ef-a98d4f34e669', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9295fff7-51c8-46c1-af19-963384269334', '92bb831c-040f-4686-8acd-f42d8629ba7b',
        'bb1d763b-ca76-4ac5-81ef-a98d4f34e669', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3fa143eb-53ec-4d5f-b638-a0bcb015adfa', 'fe8d890a-abea-44fc-92fe-ba3678289387',
        'bb1d763b-ca76-4ac5-81ef-a98d4f34e669', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('91671e19-64a6-4d99-9456-f549c23fa634', '4de87bed-0d07-419e-9991-32658cdb0a9d',
        'bb1d763b-ca76-4ac5-81ef-a98d4f34e669', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('fb8d6be7-f8ec-425d-9c55-039d5f78b695', '7570b82c-a85d-446c-9a92-5c0bb332a8a3',
        'bb1d763b-ca76-4ac5-81ef-a98d4f34e669', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('aa33ef9e-7262-44cf-9e80-d3de6b0f2ff2', 'b8b056d3-228d-4363-8f43-a1fed1da8695',
        'bb1d763b-ca76-4ac5-81ef-a98d4f34e669', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b34d6857-c83c-4c3c-b4f2-0871ae1fce87', '5a08407a-ba00-4be3-bbc6-c50dc256d8f5',
        'bb1d763b-ca76-4ac5-81ef-a98d4f34e669', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6ceedcac-62ee-4c5a-a5d7-c4797f1af753', 'cac14782-c714-49d4-803d-6bdfb7fb8707',
        'bb1d763b-ca76-4ac5-81ef-a98d4f34e669', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4f0b2945-4e31-4b7f-bbd6-b35d77ed6e70', '3d723b44-2db7-4730-af04-6007ae7d2178',
        'bb1d763b-ca76-4ac5-81ef-a98d4f34e669', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e6abdbc0-0c15-49af-805d-a6c9bf689f15', '9a4f51df-c428-4a18-9055-511e0ae7b6d8',
        'bb1d763b-ca76-4ac5-81ef-a98d4f34e669', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2a18501b-b0ba-4ee4-9c46-63ed77b9f0b5', 'fd1edc81-f470-4dbe-95cf-ea6ad5e85cf2',
        'bb1d763b-ca76-4ac5-81ef-a98d4f34e669', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7ca520a5-ebb9-46cf-acaa-94efdb554733', '6e2740d2-ef18-4564-b8c7-9f7214308f81',
        'bb1d763b-ca76-4ac5-81ef-a98d4f34e669', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('291bdaf7-88a0-452d-9ead-2e5a42ecf79f', '926c446b-9db8-4b9c-a406-ed40dff69e34',
        'bb1d763b-ca76-4ac5-81ef-a98d4f34e669', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('24211eb5-6ada-4b6c-8a5d-06bc499040d6', 'eaa9530f-bb8c-453f-b634-c8599039e296',
        'bb1d763b-ca76-4ac5-81ef-a98d4f34e669', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ac47d6bf-7816-41e6-81ee-572b631bca3c', 'bdc5f279-42bf-491c-b87a-409b3c7bff89',
        'bb1d763b-ca76-4ac5-81ef-a98d4f34e669', 2, current_timestamp, current_timestamp);

-- politician '7d712000-ffc9-4703-a308-7aca6bb00554'
insert into QuestionAnswer
values ('fddfa5f6-d024-4399-8c89-3968a1bbc6b0', 'a335650d-06b4-4e92-ba77-d5f8964ceb82',
        '7d712000-ffc9-4703-a308-7aca6bb00554', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('58afc634-1262-44c8-8962-c8ff7fdad023', '46df8b49-923c-4f91-8362-5196efbb71e2',
        '7d712000-ffc9-4703-a308-7aca6bb00554', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5faef1f6-9565-40f2-8880-7cdd6de6e680', '5f277258-ba7b-492c-b451-673eaa5957c0',
        '7d712000-ffc9-4703-a308-7aca6bb00554', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4c1159d9-6498-4564-bac5-acff807d53e3', '007ebae0-31cb-40fb-93ad-c2f980caee14',
        '7d712000-ffc9-4703-a308-7aca6bb00554', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5b97c1a2-16a0-498e-bfc9-c32ba0a682a4', '8ae0f13d-e699-4617-a4ba-672e6ccc0edc',
        '7d712000-ffc9-4703-a308-7aca6bb00554', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('14a3cfdd-15c1-47a6-abd8-1f6074121103', 'dee756b8-f4f2-474a-88f4-e7f4fea7275a',
        '7d712000-ffc9-4703-a308-7aca6bb00554', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('59653584-1053-46ba-966a-ed978e5f97b8', 'b8ec593e-93b8-4bab-95dd-cfff5c526d54',
        '7d712000-ffc9-4703-a308-7aca6bb00554', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a9d35e2a-e516-440c-97cb-cf3df95c6793', '6f9db124-e0ae-409d-b943-5be0cbc836e5',
        '7d712000-ffc9-4703-a308-7aca6bb00554', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e3398683-6049-4a28-a0f7-391f1456faae', '616bf16a-470d-494e-ad8b-b230e80dafb3',
        '7d712000-ffc9-4703-a308-7aca6bb00554', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('112aa59b-f679-440c-9cf6-27c7f2fba3b6', '6c05b44c-34de-48a4-8d3c-6015b268c456',
        '7d712000-ffc9-4703-a308-7aca6bb00554', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7d0d30a6-3602-49e9-9b05-0bf7c251a9e9', '3ac4a61c-f510-4d59-84cc-e957dbeedd8e',
        '7d712000-ffc9-4703-a308-7aca6bb00554', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('97da42b0-ca9d-41ad-a3f3-b84fb77c6b1e', 'f4f5632d-00ae-4be2-aff8-c83da3c21519',
        '7d712000-ffc9-4703-a308-7aca6bb00554', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ed98f987-8b21-45cb-9f24-f16032b3e93f', '4917d24b-e50c-4fa9-ac12-37a0d298f41f',
        '7d712000-ffc9-4703-a308-7aca6bb00554', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a7e296a6-994b-41f9-a0eb-02bbd7f2c74b', 'aee92954-3fab-449d-bc56-7ec47df873cb',
        '7d712000-ffc9-4703-a308-7aca6bb00554', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1c2d01df-5ee8-416f-ba2d-45a9323b3c75', '19d57226-91df-4c5a-92f4-7b7d774ea8c4',
        '7d712000-ffc9-4703-a308-7aca6bb00554', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4f0a1456-4ce4-4a87-ae7c-88596a20b891', '81f2e7c9-6871-44e3-a432-b0fd050dd187',
        '7d712000-ffc9-4703-a308-7aca6bb00554', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('892119f9-9ddd-49a2-8206-b55f57b793b9', '377a4b78-e58a-4d13-875f-817cd1693ece',
        '7d712000-ffc9-4703-a308-7aca6bb00554', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7396f15e-28f8-4058-83d4-769a1c30ddbd', '54e790a7-9741-408e-9327-3377df0e9b6e',
        '7d712000-ffc9-4703-a308-7aca6bb00554', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('80d465b6-ba1a-477a-b137-705dde17c89c', '5dce5233-88d5-4b52-94de-6465ace4be98',
        '7d712000-ffc9-4703-a308-7aca6bb00554', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4c68f336-fe45-436b-8cda-bf0e53bf09d7', '63aa0cb7-202d-4c54-85ae-051e8249115d',
        '7d712000-ffc9-4703-a308-7aca6bb00554', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('08c487c0-6a4c-47d3-907e-2b2751932dac', 'fb59e236-0633-46ca-a8b5-c0d7596ee10e',
        '7d712000-ffc9-4703-a308-7aca6bb00554', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('163cc792-356d-4954-a037-2ec0e02aa3f0', '154147b7-aff2-4ff1-89cf-fcd6616ca6d2',
        '7d712000-ffc9-4703-a308-7aca6bb00554', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('31fecd19-6439-4e60-806e-ec6ad4c4c96e', '6e8b2868-8094-46d3-95be-2397eb9d5237',
        '7d712000-ffc9-4703-a308-7aca6bb00554', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('770b20f4-7065-4a71-9ae4-fb4c879b0900', '112cc8ee-b996-4b19-9192-9e82b92aae94',
        '7d712000-ffc9-4703-a308-7aca6bb00554', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ccb6e07d-cf47-4d20-9f81-bdfab561a2fd', '60c4bebf-411f-456f-9eab-5afd98fde9c7',
        '7d712000-ffc9-4703-a308-7aca6bb00554', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c518851e-77e6-4403-80f4-d9be9d8c779d', 'c393d2b5-6e50-4d7a-ad40-e112851e0711',
        '7d712000-ffc9-4703-a308-7aca6bb00554', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ba70d5a2-62c7-429e-bd2c-a38e84c1c9c4', '38630605-5c28-4b5c-b042-93c43bf23ebc',
        '7d712000-ffc9-4703-a308-7aca6bb00554', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('53dc2a04-71bb-4433-8a9f-e364486523c1', 'cc721727-53e6-4b1c-9d85-c97c46b5422e',
        '7d712000-ffc9-4703-a308-7aca6bb00554', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a40c5111-5af3-436e-a2bf-1482baffedb0', 'ccb39a89-f63e-4537-90cd-e3186178ae1f',
        '7d712000-ffc9-4703-a308-7aca6bb00554', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4944ecb9-6cc4-4838-aea7-d52faad57c97', 'b34bfec1-ee6c-46bc-9d52-99e90b59fe12',
        '7d712000-ffc9-4703-a308-7aca6bb00554', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('87971254-c3bc-49a5-826f-ebe2f8dabb1d', '6b7955fe-fb44-4b68-92b5-13aedcce4e76',
        '7d712000-ffc9-4703-a308-7aca6bb00554', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4c0f57f0-704a-4713-a055-42e21a3bedee', '204814c3-bf71-4b17-9727-c6d435976da6',
        '7d712000-ffc9-4703-a308-7aca6bb00554', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('cfa818b0-c7cb-42ef-a905-980592a16c7e', 'd118e4c3-08b7-4c8e-95de-81b8715b6f1d',
        '7d712000-ffc9-4703-a308-7aca6bb00554', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ce160f25-0d63-42d1-9216-59fd6ad3e6d1', 'db255fa3-e68a-47b3-9651-a7cc95b33689',
        '7d712000-ffc9-4703-a308-7aca6bb00554', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('588d8f87-f09a-44cf-b1d9-989b42c16b9f', '42b30d8f-b8eb-46be-93ee-446f2d1d2706',
        '7d712000-ffc9-4703-a308-7aca6bb00554', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('be8f11fa-96fb-4257-9325-a3f0061c4501', '69126fb1-3e3f-4741-b6a4-91678103ccfe',
        '7d712000-ffc9-4703-a308-7aca6bb00554', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('cc468410-b2cb-45b9-b2d3-7db913beeb3f', 'a4f7f094-e1ff-4280-aa2f-33e17fb03d07',
        '7d712000-ffc9-4703-a308-7aca6bb00554', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('80bf5f6b-51b9-486f-9a1f-94861d530f77', '9f8b49e7-cd35-4115-8e2a-a4bc71ceab78',
        '7d712000-ffc9-4703-a308-7aca6bb00554', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ea844026-b596-467c-b8d8-e4f2d1f04e95', 'df70cc34-0233-4ed5-89f4-5864507b42a4',
        '7d712000-ffc9-4703-a308-7aca6bb00554', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8076b17c-41ef-4c03-84e5-a9f04785278e', '4b4b663a-bc9c-4eb4-ba80-f86adc0951f9',
        '7d712000-ffc9-4703-a308-7aca6bb00554', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('98701441-acaa-47a1-ba57-a3b28617b471', '231e38c1-fb35-4262-9a80-ea7a4d0a00ba',
        '7d712000-ffc9-4703-a308-7aca6bb00554', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4aa9ed2d-2743-493f-b149-ad289eba61ea', '57008dea-844d-44c7-8adc-6389295384c7',
        '7d712000-ffc9-4703-a308-7aca6bb00554', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d3e2b9b2-c2b3-4a15-a8ec-07dc08473e80', 'a214c6f9-029b-444d-82a0-8bc98a044a43',
        '7d712000-ffc9-4703-a308-7aca6bb00554', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('20c01798-7ef2-45df-876d-24aa0640472f', '630e876e-62d7-498b-aae9-f8326e875369',
        '7d712000-ffc9-4703-a308-7aca6bb00554', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3efcc776-f570-4540-84cf-85b233198e31', '1521cd72-8dc2-463a-8cef-2c8c8166493b',
        '7d712000-ffc9-4703-a308-7aca6bb00554', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c79145c3-1265-4137-94ef-6ebfa1d7a6fe', '4c411dfd-41e6-4c53-bb7b-37cc54c1c8e8',
        '7d712000-ffc9-4703-a308-7aca6bb00554', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('be860859-259d-4e44-a723-c0ba6d4976e3', '92bb831c-040f-4686-8acd-f42d8629ba7b',
        '7d712000-ffc9-4703-a308-7aca6bb00554', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d820a11d-1f95-4cda-a1a4-eda1b4c5622d', 'fe8d890a-abea-44fc-92fe-ba3678289387',
        '7d712000-ffc9-4703-a308-7aca6bb00554', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('325a9734-3662-409c-bc14-22371cd5f0d9', '4de87bed-0d07-419e-9991-32658cdb0a9d',
        '7d712000-ffc9-4703-a308-7aca6bb00554', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d10ea5a6-1b12-45ad-9be1-5728e537fed3', '7570b82c-a85d-446c-9a92-5c0bb332a8a3',
        '7d712000-ffc9-4703-a308-7aca6bb00554', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('be12dc90-7cea-47f1-a2ae-0605db7860ff', 'b8b056d3-228d-4363-8f43-a1fed1da8695',
        '7d712000-ffc9-4703-a308-7aca6bb00554', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('515eedce-70c5-4b15-8a64-28b043dcb082', '5a08407a-ba00-4be3-bbc6-c50dc256d8f5',
        '7d712000-ffc9-4703-a308-7aca6bb00554', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('212d8b56-a1d6-4d2b-b5f0-e7d47224996d', 'cac14782-c714-49d4-803d-6bdfb7fb8707',
        '7d712000-ffc9-4703-a308-7aca6bb00554', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e82d24af-749b-4985-8f7d-a180cf62a94e', '3d723b44-2db7-4730-af04-6007ae7d2178',
        '7d712000-ffc9-4703-a308-7aca6bb00554', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c3ef88cb-1c5e-4873-81c9-01342621bd36', '9a4f51df-c428-4a18-9055-511e0ae7b6d8',
        '7d712000-ffc9-4703-a308-7aca6bb00554', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8ca520ab-8cfe-4368-9092-c8fe1927f20e', 'fd1edc81-f470-4dbe-95cf-ea6ad5e85cf2',
        '7d712000-ffc9-4703-a308-7aca6bb00554', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('959ce1d9-bfaf-4d26-bf4a-c3d21a4577e7', '6e2740d2-ef18-4564-b8c7-9f7214308f81',
        '7d712000-ffc9-4703-a308-7aca6bb00554', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('adaf462f-7add-425c-a75c-7532efc20ce1', '926c446b-9db8-4b9c-a406-ed40dff69e34',
        '7d712000-ffc9-4703-a308-7aca6bb00554', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8e5988cf-f739-4203-9c49-2ba2317c3ffb', 'eaa9530f-bb8c-453f-b634-c8599039e296',
        '7d712000-ffc9-4703-a308-7aca6bb00554', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('cbf9a43d-f9e4-4d01-bfad-c8750481806d', 'bdc5f279-42bf-491c-b87a-409b3c7bff89',
        '7d712000-ffc9-4703-a308-7aca6bb00554', 1, current_timestamp, current_timestamp);

-- politician 'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03'
insert into QuestionAnswer
values ('5c7771fd-1f1a-498e-8ef9-343e54ca1d1b', 'a335650d-06b4-4e92-ba77-d5f8964ceb82',
        'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9870fb2a-0cf0-473f-98b4-1557d74835a7', '46df8b49-923c-4f91-8362-5196efbb71e2',
        'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('605240a4-42cd-49e8-82c2-387da9f625d2', '5f277258-ba7b-492c-b451-673eaa5957c0',
        'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('be8e5c9a-d0cf-46fe-b052-315c76aec2fb', '007ebae0-31cb-40fb-93ad-c2f980caee14',
        'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b30916a2-7320-4407-8cfb-6b11efd3604d', '8ae0f13d-e699-4617-a4ba-672e6ccc0edc',
        'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('36ac8b21-4673-4163-ac2b-3c7726b4eafe', 'dee756b8-f4f2-474a-88f4-e7f4fea7275a',
        'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ccdc8240-f68f-451b-85ee-3720eb4a6541', 'b8ec593e-93b8-4bab-95dd-cfff5c526d54',
        'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b725dbcd-ee12-430b-a97b-a87dba98dd5b', '6f9db124-e0ae-409d-b943-5be0cbc836e5',
        'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ec88eba2-715c-49ac-9da1-f26138ed9e81', '616bf16a-470d-494e-ad8b-b230e80dafb3',
        'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('33e1cee5-63ae-45e1-81a6-f81c24b138d7', '6c05b44c-34de-48a4-8d3c-6015b268c456',
        'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c525fff0-92d1-490a-a2bb-904efb497460', '3ac4a61c-f510-4d59-84cc-e957dbeedd8e',
        'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f1919340-cfa6-4630-a7af-1056c979037b', 'f4f5632d-00ae-4be2-aff8-c83da3c21519',
        'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3b9d5723-a62b-409a-8595-2c50ef8b89b5', '4917d24b-e50c-4fa9-ac12-37a0d298f41f',
        'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1604a364-5504-46d6-84cf-ca3ba2317d12', 'aee92954-3fab-449d-bc56-7ec47df873cb',
        'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2367d5bc-9ebc-47f5-b648-4fcc176e67fb', '19d57226-91df-4c5a-92f4-7b7d774ea8c4',
        'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('80a2bdc9-0b15-4191-a04f-5719f453b970', '81f2e7c9-6871-44e3-a432-b0fd050dd187',
        'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('fd69ca7a-1cb2-4b77-af23-c576a94e9cfb', '377a4b78-e58a-4d13-875f-817cd1693ece',
        'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6f4514f1-02d2-4de3-a438-ff2a2e664ea1', '54e790a7-9741-408e-9327-3377df0e9b6e',
        'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b7f61be3-c53c-40c2-9e08-b3696c19e026', '5dce5233-88d5-4b52-94de-6465ace4be98',
        'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('dee9b6b8-b664-4ba8-be29-b0177914ccbd', '63aa0cb7-202d-4c54-85ae-051e8249115d',
        'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5b19866c-8af3-40c5-acf8-418c2de6f2a3', 'fb59e236-0633-46ca-a8b5-c0d7596ee10e',
        'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7add0d4c-d28e-42cb-8e5b-2321122d5b4e', '154147b7-aff2-4ff1-89cf-fcd6616ca6d2',
        'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e416476c-9c7c-4ee3-b815-d9211a8e85ee', '6e8b2868-8094-46d3-95be-2397eb9d5237',
        'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('cb155232-0056-45c5-ade9-fc50f23097d9', '112cc8ee-b996-4b19-9192-9e82b92aae94',
        'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ad68b98f-e2d1-4989-950e-6d4155f11bf1', '60c4bebf-411f-456f-9eab-5afd98fde9c7',
        'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1472a9ff-bbb5-4311-b968-f87b4be269e7', 'c393d2b5-6e50-4d7a-ad40-e112851e0711',
        'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('86da258c-bead-449f-95b9-49e8f8b9c6fc', '38630605-5c28-4b5c-b042-93c43bf23ebc',
        'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('69bd4738-2a73-45b7-ab85-438ca684800e', 'cc721727-53e6-4b1c-9d85-c97c46b5422e',
        'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f9acb956-6510-45fc-8d1e-81981aa9d4ff', 'ccb39a89-f63e-4537-90cd-e3186178ae1f',
        'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6b2307c4-b14f-43d0-8790-c71b1646ea9a', 'b34bfec1-ee6c-46bc-9d52-99e90b59fe12',
        'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ef41e773-95a7-4483-8457-52aa77298a9c', '6b7955fe-fb44-4b68-92b5-13aedcce4e76',
        'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d3d94509-7320-4aef-8910-61e63a2835a4', '204814c3-bf71-4b17-9727-c6d435976da6',
        'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('724410bc-7766-4dbe-b841-4168803edb83', 'd118e4c3-08b7-4c8e-95de-81b8715b6f1d',
        'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f6728778-fbe2-4443-8191-b2edc0b394f7', 'db255fa3-e68a-47b3-9651-a7cc95b33689',
        'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4e0b677c-d007-40c4-a0c6-44d07d62b1d4', '42b30d8f-b8eb-46be-93ee-446f2d1d2706',
        'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('71f7ad3c-0267-4062-b887-49f5e0e0f599', '69126fb1-3e3f-4741-b6a4-91678103ccfe',
        'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2e26c6d4-8402-47d3-879b-43eb654e8b5b', 'a4f7f094-e1ff-4280-aa2f-33e17fb03d07',
        'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0f9f964c-01cd-490c-a34f-79bf6ac1c0ba', '9f8b49e7-cd35-4115-8e2a-a4bc71ceab78',
        'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('af8103b1-58d8-4b56-958b-9e39875a411a', 'df70cc34-0233-4ed5-89f4-5864507b42a4',
        'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('11cf1a85-b1a9-4efe-91b8-a083d4e9cc0b', '4b4b663a-bc9c-4eb4-ba80-f86adc0951f9',
        'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7405cc58-a43f-4f0f-bbfd-73e02303759d', '231e38c1-fb35-4262-9a80-ea7a4d0a00ba',
        'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('add882c1-963a-4d84-b3a0-5a1b7e2b2040', '57008dea-844d-44c7-8adc-6389295384c7',
        'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3043eeb8-ebd1-47cf-89f1-9dd292323faf', 'a214c6f9-029b-444d-82a0-8bc98a044a43',
        'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b0b19dc0-9922-4629-a60e-a069b56fbb2b', '630e876e-62d7-498b-aae9-f8326e875369',
        'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7fea255c-d7a8-443e-a3d6-2e995c64f703', '1521cd72-8dc2-463a-8cef-2c8c8166493b',
        'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8ba7cf39-b404-4f3e-9e90-355d2528ab97', '4c411dfd-41e6-4c53-bb7b-37cc54c1c8e8',
        'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0b05bd1b-6b31-4951-8b43-8b9fa14f8b97', '92bb831c-040f-4686-8acd-f42d8629ba7b',
        'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('dd531d70-52a5-493e-b7d1-8aae45abe8a8', 'fe8d890a-abea-44fc-92fe-ba3678289387',
        'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a63b3f81-c2c9-46c4-a5f5-7b9b2262523c', '4de87bed-0d07-419e-9991-32658cdb0a9d',
        'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a6a509b2-0ce6-4fd3-b136-3915be0a5d10', '7570b82c-a85d-446c-9a92-5c0bb332a8a3',
        'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('79f9d224-e30d-4719-8eab-732f084ad38c', 'b8b056d3-228d-4363-8f43-a1fed1da8695',
        'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4ede2912-680e-49c2-8f10-6c674999c0ad', '5a08407a-ba00-4be3-bbc6-c50dc256d8f5',
        'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ade34a30-bbb7-44ef-8619-a7b29b7cf2d4', 'cac14782-c714-49d4-803d-6bdfb7fb8707',
        'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('eb86d5f7-8f9f-4b54-b99f-64684bbd81a2', '3d723b44-2db7-4730-af04-6007ae7d2178',
        'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('aa12b433-5d2a-48f9-bb91-91960743eb24', '9a4f51df-c428-4a18-9055-511e0ae7b6d8',
        'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9f668e1f-d9f9-4674-a09a-52aafaa8aba7', 'fd1edc81-f470-4dbe-95cf-ea6ad5e85cf2',
        'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('112e8626-1c7b-4d0f-b224-225ace2c9ee2', '6e2740d2-ef18-4564-b8c7-9f7214308f81',
        'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('adc47d1a-eefc-475f-84ae-634fc1482347', '926c446b-9db8-4b9c-a406-ed40dff69e34',
        'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('eccce5bb-9fb3-4833-b91e-058243d8bbef', 'eaa9530f-bb8c-453f-b634-c8599039e296',
        'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f6ac3e7a-c72c-47ed-a0cd-5a83e96ae1e6', 'bdc5f279-42bf-491c-b87a-409b3c7bff89',
        'e868ccc3-50eb-4d54-a8f2-dec07b1c9f03', 2, current_timestamp, current_timestamp);

-- politician 'c99a1451-3801-4ff3-b106-556196c019e3'
insert into QuestionAnswer
values ('cc9c746e-1549-4f9d-8a8d-014e2ac7e0ea', 'a335650d-06b4-4e92-ba77-d5f8964ceb82',
        'c99a1451-3801-4ff3-b106-556196c019e3', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('11381be7-42ee-4a1a-a8aa-ba9edcd7dea1', '46df8b49-923c-4f91-8362-5196efbb71e2',
        'c99a1451-3801-4ff3-b106-556196c019e3', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('364f8b86-46d9-4034-ba30-96886f02165d', '5f277258-ba7b-492c-b451-673eaa5957c0',
        'c99a1451-3801-4ff3-b106-556196c019e3', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('adf97051-e1b3-4629-b9a9-d05fe6ce126b', '007ebae0-31cb-40fb-93ad-c2f980caee14',
        'c99a1451-3801-4ff3-b106-556196c019e3', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5f013a62-87b4-4d60-8d93-0882f40260f9', '8ae0f13d-e699-4617-a4ba-672e6ccc0edc',
        'c99a1451-3801-4ff3-b106-556196c019e3', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6169de95-e895-4aaf-9952-2402f89b5372', 'dee756b8-f4f2-474a-88f4-e7f4fea7275a',
        'c99a1451-3801-4ff3-b106-556196c019e3', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('da95384a-fcd8-4766-b7c9-4a6304832875', 'b8ec593e-93b8-4bab-95dd-cfff5c526d54',
        'c99a1451-3801-4ff3-b106-556196c019e3', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c69074bf-96c6-44e8-8057-c226ddfa9b31', '6f9db124-e0ae-409d-b943-5be0cbc836e5',
        'c99a1451-3801-4ff3-b106-556196c019e3', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f3cc3966-955f-418f-bc5f-6f9150453daa', '616bf16a-470d-494e-ad8b-b230e80dafb3',
        'c99a1451-3801-4ff3-b106-556196c019e3', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('cafc1e0e-e07b-46c0-8dba-e3be5aa23d19', '6c05b44c-34de-48a4-8d3c-6015b268c456',
        'c99a1451-3801-4ff3-b106-556196c019e3', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f94e159b-ebd1-4267-a335-3e69f24214ac', '3ac4a61c-f510-4d59-84cc-e957dbeedd8e',
        'c99a1451-3801-4ff3-b106-556196c019e3', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e4d9cba3-5b7e-4493-90dc-af6ea1cbf1ef', 'f4f5632d-00ae-4be2-aff8-c83da3c21519',
        'c99a1451-3801-4ff3-b106-556196c019e3', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3c54008d-8635-4b77-895e-a49a9370382b', '4917d24b-e50c-4fa9-ac12-37a0d298f41f',
        'c99a1451-3801-4ff3-b106-556196c019e3', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('edb9d49c-ce22-4f56-abf1-253452e5913c', 'aee92954-3fab-449d-bc56-7ec47df873cb',
        'c99a1451-3801-4ff3-b106-556196c019e3', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('71bdc0fa-12ed-41e1-bf85-c44360e2a4f4', '19d57226-91df-4c5a-92f4-7b7d774ea8c4',
        'c99a1451-3801-4ff3-b106-556196c019e3', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8ea3954e-6ff1-458c-810e-8c8bda1f8909', '81f2e7c9-6871-44e3-a432-b0fd050dd187',
        'c99a1451-3801-4ff3-b106-556196c019e3', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d652f1cf-659f-44cf-8e15-f24601e5f60b', '377a4b78-e58a-4d13-875f-817cd1693ece',
        'c99a1451-3801-4ff3-b106-556196c019e3', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('fc7e4c04-cb30-4a90-a1b4-42df43b656e9', '54e790a7-9741-408e-9327-3377df0e9b6e',
        'c99a1451-3801-4ff3-b106-556196c019e3', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('dfbf9a1c-4d76-4156-9746-f8b6c89a12bb', '5dce5233-88d5-4b52-94de-6465ace4be98',
        'c99a1451-3801-4ff3-b106-556196c019e3', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9684a4ab-2f47-47e9-adf1-ecdfa0808037', '63aa0cb7-202d-4c54-85ae-051e8249115d',
        'c99a1451-3801-4ff3-b106-556196c019e3', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3f4ff16c-21d9-4bdd-998a-f5b27cacf069', 'fb59e236-0633-46ca-a8b5-c0d7596ee10e',
        'c99a1451-3801-4ff3-b106-556196c019e3', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e9156ddd-fb9d-48e3-98d7-b4646a077143', '154147b7-aff2-4ff1-89cf-fcd6616ca6d2',
        'c99a1451-3801-4ff3-b106-556196c019e3', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3853b8bd-636a-4571-8cce-367a82178aba', '6e8b2868-8094-46d3-95be-2397eb9d5237',
        'c99a1451-3801-4ff3-b106-556196c019e3', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9c38fcd0-2e96-45b1-9d92-8b794c9df878', '112cc8ee-b996-4b19-9192-9e82b92aae94',
        'c99a1451-3801-4ff3-b106-556196c019e3', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('688fb715-965f-4cb2-b56a-8faacd7a6e14', '60c4bebf-411f-456f-9eab-5afd98fde9c7',
        'c99a1451-3801-4ff3-b106-556196c019e3', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c3737fa3-7098-4ee6-b28f-2efb98586790', 'c393d2b5-6e50-4d7a-ad40-e112851e0711',
        'c99a1451-3801-4ff3-b106-556196c019e3', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a3a0857e-02d7-452c-92b9-34e291bd2dfa', '38630605-5c28-4b5c-b042-93c43bf23ebc',
        'c99a1451-3801-4ff3-b106-556196c019e3', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d401e53e-798e-46ff-b65d-27911ebc589d', 'cc721727-53e6-4b1c-9d85-c97c46b5422e',
        'c99a1451-3801-4ff3-b106-556196c019e3', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0cd6fee0-7cf3-4371-86cc-4c37259c5f7d', 'ccb39a89-f63e-4537-90cd-e3186178ae1f',
        'c99a1451-3801-4ff3-b106-556196c019e3', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('cd345418-2d8d-4010-99df-3f5fc137d59a', 'b34bfec1-ee6c-46bc-9d52-99e90b59fe12',
        'c99a1451-3801-4ff3-b106-556196c019e3', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a422e5e6-d85b-4ae6-97ab-ca7f74da731c', '6b7955fe-fb44-4b68-92b5-13aedcce4e76',
        'c99a1451-3801-4ff3-b106-556196c019e3', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('bad32850-8a6e-497b-a68c-b82d1d1a7576', '204814c3-bf71-4b17-9727-c6d435976da6',
        'c99a1451-3801-4ff3-b106-556196c019e3', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7e98322e-f150-46e2-addc-6f2f8dcc4c9d', 'd118e4c3-08b7-4c8e-95de-81b8715b6f1d',
        'c99a1451-3801-4ff3-b106-556196c019e3', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4fcad82d-f0f0-458a-9e6a-ae91d471f261', 'db255fa3-e68a-47b3-9651-a7cc95b33689',
        'c99a1451-3801-4ff3-b106-556196c019e3', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e5e244a3-3087-4a30-9080-79d3465718d4', '42b30d8f-b8eb-46be-93ee-446f2d1d2706',
        'c99a1451-3801-4ff3-b106-556196c019e3', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('17bae6c7-863c-489c-8239-c5bf2cd1b178', '69126fb1-3e3f-4741-b6a4-91678103ccfe',
        'c99a1451-3801-4ff3-b106-556196c019e3', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('81f92f47-7a12-44ef-aa3f-676f87a437bf', 'a4f7f094-e1ff-4280-aa2f-33e17fb03d07',
        'c99a1451-3801-4ff3-b106-556196c019e3', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a8c48a9e-67c3-458b-9982-0e98ebe2255c', '9f8b49e7-cd35-4115-8e2a-a4bc71ceab78',
        'c99a1451-3801-4ff3-b106-556196c019e3', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('acedcf38-677f-4b14-9c53-235f7cf53a94', 'df70cc34-0233-4ed5-89f4-5864507b42a4',
        'c99a1451-3801-4ff3-b106-556196c019e3', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('71674635-bd6e-4aeb-a5cd-7c19ac8c1af7', '4b4b663a-bc9c-4eb4-ba80-f86adc0951f9',
        'c99a1451-3801-4ff3-b106-556196c019e3', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5cc13675-ae68-45f8-a398-4905549ec859', '231e38c1-fb35-4262-9a80-ea7a4d0a00ba',
        'c99a1451-3801-4ff3-b106-556196c019e3', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('117775bd-542c-460c-afa9-e8affdc4e924', '57008dea-844d-44c7-8adc-6389295384c7',
        'c99a1451-3801-4ff3-b106-556196c019e3', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('183ffb5f-37e2-40bb-876b-bbee1476a4a5', 'a214c6f9-029b-444d-82a0-8bc98a044a43',
        'c99a1451-3801-4ff3-b106-556196c019e3', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e32bc2dd-1135-44e4-a010-ccb143b42a64', '630e876e-62d7-498b-aae9-f8326e875369',
        'c99a1451-3801-4ff3-b106-556196c019e3', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c7fe9e55-d759-4d1e-b53b-c7493760619e', '1521cd72-8dc2-463a-8cef-2c8c8166493b',
        'c99a1451-3801-4ff3-b106-556196c019e3', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('855ecbdc-e35d-45ad-a8dd-4a8fdd0ce879', '4c411dfd-41e6-4c53-bb7b-37cc54c1c8e8',
        'c99a1451-3801-4ff3-b106-556196c019e3', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6ce578db-d9d9-43d4-9b5b-bdb44f4ea54a', '92bb831c-040f-4686-8acd-f42d8629ba7b',
        'c99a1451-3801-4ff3-b106-556196c019e3', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7dbcc28b-fd47-4065-a7b5-46735b628ffb', 'fe8d890a-abea-44fc-92fe-ba3678289387',
        'c99a1451-3801-4ff3-b106-556196c019e3', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('26a426e6-c440-4a6a-b593-bd4abb87e0cc', '4de87bed-0d07-419e-9991-32658cdb0a9d',
        'c99a1451-3801-4ff3-b106-556196c019e3', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('787ea845-4fa8-422a-879c-4685e6f3618c', '7570b82c-a85d-446c-9a92-5c0bb332a8a3',
        'c99a1451-3801-4ff3-b106-556196c019e3', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('76ca8839-6943-45c0-a04a-e9f533a75cb2', 'b8b056d3-228d-4363-8f43-a1fed1da8695',
        'c99a1451-3801-4ff3-b106-556196c019e3', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('21554b5b-3852-4b6d-a37f-0de54e6ba017', '5a08407a-ba00-4be3-bbc6-c50dc256d8f5',
        'c99a1451-3801-4ff3-b106-556196c019e3', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('820220fe-e8f9-40ac-8d5e-6d615e0bfdda', 'cac14782-c714-49d4-803d-6bdfb7fb8707',
        'c99a1451-3801-4ff3-b106-556196c019e3', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('51374a38-fbdc-4acb-9290-345816c05f77', '3d723b44-2db7-4730-af04-6007ae7d2178',
        'c99a1451-3801-4ff3-b106-556196c019e3', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b53c9499-7b13-4b6d-9a83-bbda08437bd6', '9a4f51df-c428-4a18-9055-511e0ae7b6d8',
        'c99a1451-3801-4ff3-b106-556196c019e3', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c6c64130-e9ab-4eba-af1a-c574c5e51d9e', 'fd1edc81-f470-4dbe-95cf-ea6ad5e85cf2',
        'c99a1451-3801-4ff3-b106-556196c019e3', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ea68e367-07c8-42f7-81aa-e872639b70f7', '6e2740d2-ef18-4564-b8c7-9f7214308f81',
        'c99a1451-3801-4ff3-b106-556196c019e3', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f70f45bf-30a3-40db-a32c-90f1a112e50c', '926c446b-9db8-4b9c-a406-ed40dff69e34',
        'c99a1451-3801-4ff3-b106-556196c019e3', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('94c8de57-ca0c-4977-bb61-8dfb64e1408a', 'eaa9530f-bb8c-453f-b634-c8599039e296',
        'c99a1451-3801-4ff3-b106-556196c019e3', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6b3bb1db-1461-4e6f-913f-e016f1ad1214', 'bdc5f279-42bf-491c-b87a-409b3c7bff89',
        'c99a1451-3801-4ff3-b106-556196c019e3', 4, current_timestamp, current_timestamp);

-- politician 'b1b0d773-64d6-4b2c-aa76-0a6ba38cd664'
insert into QuestionAnswer
values ('54049bc6-15dc-4737-ae9f-892cf43eec4d', 'a335650d-06b4-4e92-ba77-d5f8964ceb82',
        'b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('84a38469-e2cf-497d-b127-bd59cd6650c1', '46df8b49-923c-4f91-8362-5196efbb71e2',
        'b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a97d4890-c1c4-4647-b62f-351b62fff690', '5f277258-ba7b-492c-b451-673eaa5957c0',
        'b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('588bfeb7-4843-46ba-b8fe-08b55ac86bb0', '007ebae0-31cb-40fb-93ad-c2f980caee14',
        'b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('afd9c345-e2e3-4254-87a1-e26fc2d1d188', '8ae0f13d-e699-4617-a4ba-672e6ccc0edc',
        'b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('189867ee-5ff6-4b79-abde-af3a3f560e47', 'dee756b8-f4f2-474a-88f4-e7f4fea7275a',
        'b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('94a1bc73-40d3-41e4-9785-e12e51e1d73d', 'b8ec593e-93b8-4bab-95dd-cfff5c526d54',
        'b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a3002d4b-0828-4bd8-a822-29fa4fc33236', '6f9db124-e0ae-409d-b943-5be0cbc836e5',
        'b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f14023d7-101b-4fa1-b79e-ed58265cdb4c', '616bf16a-470d-494e-ad8b-b230e80dafb3',
        'b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3967ce8e-5738-4353-a862-5839b4ee70cb', '6c05b44c-34de-48a4-8d3c-6015b268c456',
        'b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d4650881-1253-4384-98f3-336f44a2734c', '3ac4a61c-f510-4d59-84cc-e957dbeedd8e',
        'b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7c3816ee-6479-4aac-8f16-a84cb4fbe3f2', 'f4f5632d-00ae-4be2-aff8-c83da3c21519',
        'b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('86230b13-2976-4f48-b21c-8857f42c171e', '4917d24b-e50c-4fa9-ac12-37a0d298f41f',
        'b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0200860d-5a59-4d08-bc88-d102bf05a55e', 'aee92954-3fab-449d-bc56-7ec47df873cb',
        'b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7907dc84-60b9-4dab-82de-c30547f6d9bb', '19d57226-91df-4c5a-92f4-7b7d774ea8c4',
        'b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2886978f-badd-46fe-9d51-1c17e8a673b4', '81f2e7c9-6871-44e3-a432-b0fd050dd187',
        'b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('314dd6e3-00c5-4d85-933f-ac64d5af4b4e', '377a4b78-e58a-4d13-875f-817cd1693ece',
        'b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0c80faa2-22e5-42b2-b118-0883b4deb2c5', '54e790a7-9741-408e-9327-3377df0e9b6e',
        'b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('01699925-1e84-41c7-95be-ec143bac9a29', '5dce5233-88d5-4b52-94de-6465ace4be98',
        'b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('66d69109-50f7-4b93-9db0-5df7dd5c3988', '63aa0cb7-202d-4c54-85ae-051e8249115d',
        'b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('52f41db9-ffac-413e-b630-6298650cfb3d', 'fb59e236-0633-46ca-a8b5-c0d7596ee10e',
        'b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f8d2c009-b843-4d28-a870-3bc6e4184db3', '154147b7-aff2-4ff1-89cf-fcd6616ca6d2',
        'b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2607ec3e-fa14-49fe-b30b-4c5eb05374f4', '6e8b2868-8094-46d3-95be-2397eb9d5237',
        'b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('37d8b42a-2e9a-4eb1-b96e-7d120a844c65', '112cc8ee-b996-4b19-9192-9e82b92aae94',
        'b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('621339a3-8f58-43b3-9648-36ea3fab6a39', '60c4bebf-411f-456f-9eab-5afd98fde9c7',
        'b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a9d7cf19-cc6e-497f-804f-de3bb16aeaca', 'c393d2b5-6e50-4d7a-ad40-e112851e0711',
        'b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('85a3df95-4b3a-4df8-af74-0bfc1ccb5438', '38630605-5c28-4b5c-b042-93c43bf23ebc',
        'b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0217a9d4-07e4-46a8-8c93-be3c331977f9', 'cc721727-53e6-4b1c-9d85-c97c46b5422e',
        'b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5fbf8c56-32df-4194-bf1e-4e6f844a467f', 'ccb39a89-f63e-4537-90cd-e3186178ae1f',
        'b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e9d13cb0-81d8-4bcf-82e7-37f4781fb861', 'b34bfec1-ee6c-46bc-9d52-99e90b59fe12',
        'b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b32a4e62-ecd7-481c-82bf-d9e1e456a9fa', '6b7955fe-fb44-4b68-92b5-13aedcce4e76',
        'b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d365a388-2920-4fb1-9d6c-0a8080bc36f7', '204814c3-bf71-4b17-9727-c6d435976da6',
        'b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('017c0b56-15ab-4d2f-80b6-8fddc91dcc93', 'd118e4c3-08b7-4c8e-95de-81b8715b6f1d',
        'b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3f173ea2-460c-438c-aaca-a5d53030d311', 'db255fa3-e68a-47b3-9651-a7cc95b33689',
        'b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('abe9b599-9e32-4c02-a3ba-68d03dd315e7', '42b30d8f-b8eb-46be-93ee-446f2d1d2706',
        'b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b14e2260-64cf-4be9-9967-5c4ad5cbf5d2', '69126fb1-3e3f-4741-b6a4-91678103ccfe',
        'b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6422fead-264c-4c6b-90c5-6ee1b5447ae1', 'a4f7f094-e1ff-4280-aa2f-33e17fb03d07',
        'b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('17d7f257-2860-4e09-8702-e387646efa08', '9f8b49e7-cd35-4115-8e2a-a4bc71ceab78',
        'b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('26833db5-d8bd-4f4c-bd81-1f325304bb03', 'df70cc34-0233-4ed5-89f4-5864507b42a4',
        'b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f447cfe6-49e7-4b95-bd17-fe9a400da8f9', '4b4b663a-bc9c-4eb4-ba80-f86adc0951f9',
        'b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b3b9cb72-529a-441c-b60b-d448eeedb24a', '231e38c1-fb35-4262-9a80-ea7a4d0a00ba',
        'b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('782424ac-e652-49b3-998d-6cd1d21c4e46', '57008dea-844d-44c7-8adc-6389295384c7',
        'b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('481193ba-6c77-420f-bf8d-0c725b2214bc', 'a214c6f9-029b-444d-82a0-8bc98a044a43',
        'b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e75915bb-808a-4686-ba82-9d9c78438296', '630e876e-62d7-498b-aae9-f8326e875369',
        'b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0770f6ae-a359-40c7-b756-e0f04fd6b855', '1521cd72-8dc2-463a-8cef-2c8c8166493b',
        'b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('58510b93-9b9e-4135-a850-219224e5f078', '4c411dfd-41e6-4c53-bb7b-37cc54c1c8e8',
        'b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6c45eab7-e189-478c-8d22-d54457f9de16', '92bb831c-040f-4686-8acd-f42d8629ba7b',
        'b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e31136f6-ac69-446f-b576-9355ef259c4f', 'fe8d890a-abea-44fc-92fe-ba3678289387',
        'b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1afeddb1-4dc0-47fc-9432-7ac77ae3aa29', '4de87bed-0d07-419e-9991-32658cdb0a9d',
        'b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('63fedfc8-c93d-4a41-b1dd-69f7b026b1ae', '7570b82c-a85d-446c-9a92-5c0bb332a8a3',
        'b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c58da464-67da-4752-9bea-51cb2cc46bda', 'b8b056d3-228d-4363-8f43-a1fed1da8695',
        'b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9a8fb6fe-3dcc-4aab-9a8e-7e5917c9746c', '5a08407a-ba00-4be3-bbc6-c50dc256d8f5',
        'b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3555bf3d-7bfc-44c6-8b25-47f5beddf3ce', 'cac14782-c714-49d4-803d-6bdfb7fb8707',
        'b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2f99dfaa-77df-4289-9e1e-aca2b421cb26', '3d723b44-2db7-4730-af04-6007ae7d2178',
        'b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d7c58cf1-40dd-4053-985d-c671044e6f5e', '9a4f51df-c428-4a18-9055-511e0ae7b6d8',
        'b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4d311850-a062-4674-87db-1ef38ce17dc9', 'fd1edc81-f470-4dbe-95cf-ea6ad5e85cf2',
        'b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1f39bb9e-28f3-44a5-abcc-bbb5cbc469fd', '6e2740d2-ef18-4564-b8c7-9f7214308f81',
        'b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('976159cb-ef6a-4ad1-8690-058172e4b009', '926c446b-9db8-4b9c-a406-ed40dff69e34',
        'b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('23b87c09-0079-4238-89fb-53eeea871a3f', 'eaa9530f-bb8c-453f-b634-c8599039e296',
        'b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('43433a36-c807-4398-88f1-0f834137d55d', 'bdc5f279-42bf-491c-b87a-409b3c7bff89',
        'b1b0d773-64d6-4b2c-aa76-0a6ba38cd664', 1, current_timestamp, current_timestamp);

-- politician 'b7ee252a-66fe-43f1-8c31-cc44d123c1e3'
insert into QuestionAnswer
values ('fdcae5ab-f711-4463-bc8f-de461631db8a', 'a335650d-06b4-4e92-ba77-d5f8964ceb82',
        'b7ee252a-66fe-43f1-8c31-cc44d123c1e3', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7e2e8c42-3d33-46d1-862f-c43c2237bb74', '46df8b49-923c-4f91-8362-5196efbb71e2',
        'b7ee252a-66fe-43f1-8c31-cc44d123c1e3', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f610befa-73cf-4ce9-abd3-b172f40c5cd0', '5f277258-ba7b-492c-b451-673eaa5957c0',
        'b7ee252a-66fe-43f1-8c31-cc44d123c1e3', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('633191e4-02da-4d44-86ef-b50a4f659763', '007ebae0-31cb-40fb-93ad-c2f980caee14',
        'b7ee252a-66fe-43f1-8c31-cc44d123c1e3', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('24f13e33-41c7-4193-870e-d48ad84dd3c4', '8ae0f13d-e699-4617-a4ba-672e6ccc0edc',
        'b7ee252a-66fe-43f1-8c31-cc44d123c1e3', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('977cde5a-751b-4694-815b-24fed5f1651a', 'dee756b8-f4f2-474a-88f4-e7f4fea7275a',
        'b7ee252a-66fe-43f1-8c31-cc44d123c1e3', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('dca7e2b2-4a34-49eb-8dff-0b4934fc6b46', 'b8ec593e-93b8-4bab-95dd-cfff5c526d54',
        'b7ee252a-66fe-43f1-8c31-cc44d123c1e3', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('12a90dbd-e57c-47b7-a1ae-2552a3568685', '6f9db124-e0ae-409d-b943-5be0cbc836e5',
        'b7ee252a-66fe-43f1-8c31-cc44d123c1e3', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('888aa7ba-622b-44fe-99e2-46e769b65d77', '616bf16a-470d-494e-ad8b-b230e80dafb3',
        'b7ee252a-66fe-43f1-8c31-cc44d123c1e3', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8c88bd7c-d12a-42da-8f1a-82f79192cc31', '6c05b44c-34de-48a4-8d3c-6015b268c456',
        'b7ee252a-66fe-43f1-8c31-cc44d123c1e3', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7dd48ffe-4e5f-4ffc-915d-8a997c37f159', '3ac4a61c-f510-4d59-84cc-e957dbeedd8e',
        'b7ee252a-66fe-43f1-8c31-cc44d123c1e3', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4a9ca148-4fd9-4fda-8050-119ac4533e94', 'f4f5632d-00ae-4be2-aff8-c83da3c21519',
        'b7ee252a-66fe-43f1-8c31-cc44d123c1e3', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('abade5ca-23dc-42da-ad37-fb8b4ed68d74', '4917d24b-e50c-4fa9-ac12-37a0d298f41f',
        'b7ee252a-66fe-43f1-8c31-cc44d123c1e3', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d7c88411-967e-4518-82ff-268c3c067a42', 'aee92954-3fab-449d-bc56-7ec47df873cb',
        'b7ee252a-66fe-43f1-8c31-cc44d123c1e3', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('456f2f37-8df2-4790-81d5-c16a63bf5f45', '19d57226-91df-4c5a-92f4-7b7d774ea8c4',
        'b7ee252a-66fe-43f1-8c31-cc44d123c1e3', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0882aa27-ebb3-4916-845b-5903e8d11f9a', '81f2e7c9-6871-44e3-a432-b0fd050dd187',
        'b7ee252a-66fe-43f1-8c31-cc44d123c1e3', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c45fa1a8-f331-4f28-bb81-350850364c5a', '377a4b78-e58a-4d13-875f-817cd1693ece',
        'b7ee252a-66fe-43f1-8c31-cc44d123c1e3', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1599ffaf-4788-4a8c-8971-0462e95bd9be', '54e790a7-9741-408e-9327-3377df0e9b6e',
        'b7ee252a-66fe-43f1-8c31-cc44d123c1e3', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e3b8f839-f825-4c65-822e-b92dfa27b830', '5dce5233-88d5-4b52-94de-6465ace4be98',
        'b7ee252a-66fe-43f1-8c31-cc44d123c1e3', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2d1fba91-2865-4309-9991-65016458dffc', '63aa0cb7-202d-4c54-85ae-051e8249115d',
        'b7ee252a-66fe-43f1-8c31-cc44d123c1e3', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d58dc710-23d9-4fe8-a4c5-680415e882f2', 'fb59e236-0633-46ca-a8b5-c0d7596ee10e',
        'b7ee252a-66fe-43f1-8c31-cc44d123c1e3', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6065a78e-a7dd-422a-95ac-d7a534629de2', '154147b7-aff2-4ff1-89cf-fcd6616ca6d2',
        'b7ee252a-66fe-43f1-8c31-cc44d123c1e3', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('29c22591-cdc2-4dc1-b8b8-cd4363baec87', '6e8b2868-8094-46d3-95be-2397eb9d5237',
        'b7ee252a-66fe-43f1-8c31-cc44d123c1e3', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('96fbf3eb-219a-430a-9459-627a68b16714', '112cc8ee-b996-4b19-9192-9e82b92aae94',
        'b7ee252a-66fe-43f1-8c31-cc44d123c1e3', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('243a994f-0b64-4d36-b06f-62917049da6f', '60c4bebf-411f-456f-9eab-5afd98fde9c7',
        'b7ee252a-66fe-43f1-8c31-cc44d123c1e3', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e79bff0c-d5e2-429b-adb4-679886b301f9', 'c393d2b5-6e50-4d7a-ad40-e112851e0711',
        'b7ee252a-66fe-43f1-8c31-cc44d123c1e3', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('90fb7284-2ba1-408a-a7cc-cdf84f151942', '38630605-5c28-4b5c-b042-93c43bf23ebc',
        'b7ee252a-66fe-43f1-8c31-cc44d123c1e3', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('13ae2149-4373-48d7-9481-b0a2f8a43b96', 'cc721727-53e6-4b1c-9d85-c97c46b5422e',
        'b7ee252a-66fe-43f1-8c31-cc44d123c1e3', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c47d5994-0c4e-4a3a-9a9e-a8ea5598cf06', 'ccb39a89-f63e-4537-90cd-e3186178ae1f',
        'b7ee252a-66fe-43f1-8c31-cc44d123c1e3', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e79a7f14-520c-4912-8e4c-7e3420077f1b', 'b34bfec1-ee6c-46bc-9d52-99e90b59fe12',
        'b7ee252a-66fe-43f1-8c31-cc44d123c1e3', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c620380f-ff24-4be2-af0f-db5d81e3197f', '6b7955fe-fb44-4b68-92b5-13aedcce4e76',
        'b7ee252a-66fe-43f1-8c31-cc44d123c1e3', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4fe4fd22-8693-4510-8dfc-ff574db6007f', '204814c3-bf71-4b17-9727-c6d435976da6',
        'b7ee252a-66fe-43f1-8c31-cc44d123c1e3', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('083001ea-bd8c-49c1-a005-313ea965413f', 'd118e4c3-08b7-4c8e-95de-81b8715b6f1d',
        'b7ee252a-66fe-43f1-8c31-cc44d123c1e3', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e68156de-ba78-4fa3-a208-c7a811f57a4c', 'db255fa3-e68a-47b3-9651-a7cc95b33689',
        'b7ee252a-66fe-43f1-8c31-cc44d123c1e3', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e995d686-b122-49c8-8ff0-2acce92e71c3', '42b30d8f-b8eb-46be-93ee-446f2d1d2706',
        'b7ee252a-66fe-43f1-8c31-cc44d123c1e3', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('32a33db3-850b-4d4b-a719-a41cf5525756', '69126fb1-3e3f-4741-b6a4-91678103ccfe',
        'b7ee252a-66fe-43f1-8c31-cc44d123c1e3', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('990799f4-7149-4c87-ba96-3e472aa2c903', 'a4f7f094-e1ff-4280-aa2f-33e17fb03d07',
        'b7ee252a-66fe-43f1-8c31-cc44d123c1e3', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3fb10d02-fc28-409d-9994-905a2743d28d', '9f8b49e7-cd35-4115-8e2a-a4bc71ceab78',
        'b7ee252a-66fe-43f1-8c31-cc44d123c1e3', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a99eecb0-845a-4635-8e0b-21a086404a70', 'df70cc34-0233-4ed5-89f4-5864507b42a4',
        'b7ee252a-66fe-43f1-8c31-cc44d123c1e3', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e51e2606-726b-4539-b3e3-c995761f73d9', '4b4b663a-bc9c-4eb4-ba80-f86adc0951f9',
        'b7ee252a-66fe-43f1-8c31-cc44d123c1e3', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5dfa7213-21f0-4e6d-856b-b089c7d3afaa', '231e38c1-fb35-4262-9a80-ea7a4d0a00ba',
        'b7ee252a-66fe-43f1-8c31-cc44d123c1e3', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0e7d7b56-0d14-48da-9f32-33f29556b839', '57008dea-844d-44c7-8adc-6389295384c7',
        'b7ee252a-66fe-43f1-8c31-cc44d123c1e3', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('82017620-c108-4ee9-8d24-d699068332ad', 'a214c6f9-029b-444d-82a0-8bc98a044a43',
        'b7ee252a-66fe-43f1-8c31-cc44d123c1e3', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('30b38ccb-6042-4074-ace1-4cdd01d66292', '630e876e-62d7-498b-aae9-f8326e875369',
        'b7ee252a-66fe-43f1-8c31-cc44d123c1e3', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('64d2d289-2948-4055-b28d-778f91166565', '1521cd72-8dc2-463a-8cef-2c8c8166493b',
        'b7ee252a-66fe-43f1-8c31-cc44d123c1e3', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c7edba4f-8a40-4fce-a5b3-9de1bd2d8b7a', '4c411dfd-41e6-4c53-bb7b-37cc54c1c8e8',
        'b7ee252a-66fe-43f1-8c31-cc44d123c1e3', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ee25813e-f98c-4163-997d-eb683f202ebc', '92bb831c-040f-4686-8acd-f42d8629ba7b',
        'b7ee252a-66fe-43f1-8c31-cc44d123c1e3', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5190e2e8-1484-4bea-9c17-d9de2afbdf36', 'fe8d890a-abea-44fc-92fe-ba3678289387',
        'b7ee252a-66fe-43f1-8c31-cc44d123c1e3', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d1878345-381d-46d0-be88-5ee4622c7387', '4de87bed-0d07-419e-9991-32658cdb0a9d',
        'b7ee252a-66fe-43f1-8c31-cc44d123c1e3', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('252ddc20-39df-4f85-9e16-c822c27a1722', '7570b82c-a85d-446c-9a92-5c0bb332a8a3',
        'b7ee252a-66fe-43f1-8c31-cc44d123c1e3', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7ce241ae-6a63-4073-b930-4ee5423882bf', 'b8b056d3-228d-4363-8f43-a1fed1da8695',
        'b7ee252a-66fe-43f1-8c31-cc44d123c1e3', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d522ca8f-3678-4b34-986b-d94efa472a85', '5a08407a-ba00-4be3-bbc6-c50dc256d8f5',
        'b7ee252a-66fe-43f1-8c31-cc44d123c1e3', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3f1ee053-6dda-46d2-b685-691293fdb0b5', 'cac14782-c714-49d4-803d-6bdfb7fb8707',
        'b7ee252a-66fe-43f1-8c31-cc44d123c1e3', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('bd47f5f3-4079-4e8e-acaa-31af410b8279', '3d723b44-2db7-4730-af04-6007ae7d2178',
        'b7ee252a-66fe-43f1-8c31-cc44d123c1e3', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('16e7619f-975a-4391-941c-e101d43d82c5', '9a4f51df-c428-4a18-9055-511e0ae7b6d8',
        'b7ee252a-66fe-43f1-8c31-cc44d123c1e3', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f6e963c9-99d7-4825-8a5f-24c8c2c75d91', 'fd1edc81-f470-4dbe-95cf-ea6ad5e85cf2',
        'b7ee252a-66fe-43f1-8c31-cc44d123c1e3', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a84d7091-ece7-4b58-af47-4e50659fb602', '6e2740d2-ef18-4564-b8c7-9f7214308f81',
        'b7ee252a-66fe-43f1-8c31-cc44d123c1e3', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('424ee82c-48ba-49e8-a255-6bc28220a37b', '926c446b-9db8-4b9c-a406-ed40dff69e34',
        'b7ee252a-66fe-43f1-8c31-cc44d123c1e3', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('99012cf6-9ff8-4d1c-9dbb-e259678f06be', 'eaa9530f-bb8c-453f-b634-c8599039e296',
        'b7ee252a-66fe-43f1-8c31-cc44d123c1e3', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1404fc53-9d79-4117-a7f4-73129fcf4ffa', 'bdc5f279-42bf-491c-b87a-409b3c7bff89',
        'b7ee252a-66fe-43f1-8c31-cc44d123c1e3', 1, current_timestamp, current_timestamp);

-- politician '6f4467de-61c7-4da4-8437-81fd94f8caea'
insert into QuestionAnswer
values ('9eda9ffe-0767-4116-ae49-26bcf35c61c0', 'a335650d-06b4-4e92-ba77-d5f8964ceb82',
        '6f4467de-61c7-4da4-8437-81fd94f8caea', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('52a9db7b-eb4e-42d0-a365-e962c8d2ad25', '46df8b49-923c-4f91-8362-5196efbb71e2',
        '6f4467de-61c7-4da4-8437-81fd94f8caea', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('88003e97-d861-497e-8192-ffdb2b686cee', '5f277258-ba7b-492c-b451-673eaa5957c0',
        '6f4467de-61c7-4da4-8437-81fd94f8caea', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4f315bc4-73d3-4975-a69e-ec972eafd433', '007ebae0-31cb-40fb-93ad-c2f980caee14',
        '6f4467de-61c7-4da4-8437-81fd94f8caea', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3ea51247-f167-46c3-8cca-81a734261834', '8ae0f13d-e699-4617-a4ba-672e6ccc0edc',
        '6f4467de-61c7-4da4-8437-81fd94f8caea', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ebf5faf1-cc0d-49de-bb01-052d17c7cd24', 'dee756b8-f4f2-474a-88f4-e7f4fea7275a',
        '6f4467de-61c7-4da4-8437-81fd94f8caea', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b44c5bef-40b4-4e38-95c8-c21516ec138b', 'b8ec593e-93b8-4bab-95dd-cfff5c526d54',
        '6f4467de-61c7-4da4-8437-81fd94f8caea', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8b3385ce-c3d8-4042-b941-8fe7d055c938', '6f9db124-e0ae-409d-b943-5be0cbc836e5',
        '6f4467de-61c7-4da4-8437-81fd94f8caea', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f690d201-0155-4a1b-8aea-05e47e33659d', '616bf16a-470d-494e-ad8b-b230e80dafb3',
        '6f4467de-61c7-4da4-8437-81fd94f8caea', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f040543c-7676-4cc1-9774-a445df83a2c6', '6c05b44c-34de-48a4-8d3c-6015b268c456',
        '6f4467de-61c7-4da4-8437-81fd94f8caea', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1ce12e68-5ab6-4769-b86e-7103bcf78fe4', '3ac4a61c-f510-4d59-84cc-e957dbeedd8e',
        '6f4467de-61c7-4da4-8437-81fd94f8caea', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b21c2aa4-8279-4ba5-a9ee-1d6bb75737a3', 'f4f5632d-00ae-4be2-aff8-c83da3c21519',
        '6f4467de-61c7-4da4-8437-81fd94f8caea', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('34fa92c8-5a29-48d1-8872-3d67e51a2618', '4917d24b-e50c-4fa9-ac12-37a0d298f41f',
        '6f4467de-61c7-4da4-8437-81fd94f8caea', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5f20ac2c-05a9-4e83-a305-67c61b29d1f6', 'aee92954-3fab-449d-bc56-7ec47df873cb',
        '6f4467de-61c7-4da4-8437-81fd94f8caea', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('21acfc67-1f92-4c3b-87aa-4aadce6229d8', '19d57226-91df-4c5a-92f4-7b7d774ea8c4',
        '6f4467de-61c7-4da4-8437-81fd94f8caea', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a8fb5528-28b1-4f16-8474-3bc1ab6e2ec2', '81f2e7c9-6871-44e3-a432-b0fd050dd187',
        '6f4467de-61c7-4da4-8437-81fd94f8caea', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('cd6b6310-6f77-453d-b4a2-82596c0c90a7', '377a4b78-e58a-4d13-875f-817cd1693ece',
        '6f4467de-61c7-4da4-8437-81fd94f8caea', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9260c8c6-ae8e-4478-a175-5cf324921772', '54e790a7-9741-408e-9327-3377df0e9b6e',
        '6f4467de-61c7-4da4-8437-81fd94f8caea', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9d5a27c3-7eaa-46bb-b12b-a149d8f98120', '5dce5233-88d5-4b52-94de-6465ace4be98',
        '6f4467de-61c7-4da4-8437-81fd94f8caea', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ab47cd09-7a2c-48ef-a83e-a2a5db6145d0', '63aa0cb7-202d-4c54-85ae-051e8249115d',
        '6f4467de-61c7-4da4-8437-81fd94f8caea', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('39c85949-7e8f-4b2b-adf1-d909daec2637', 'fb59e236-0633-46ca-a8b5-c0d7596ee10e',
        '6f4467de-61c7-4da4-8437-81fd94f8caea', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2f857066-d7f4-4295-92a2-7def4999ceb8', '154147b7-aff2-4ff1-89cf-fcd6616ca6d2',
        '6f4467de-61c7-4da4-8437-81fd94f8caea', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8cc6f6e2-2be7-40e2-b521-8d0b2dbc04fb', '6e8b2868-8094-46d3-95be-2397eb9d5237',
        '6f4467de-61c7-4da4-8437-81fd94f8caea', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b0227123-7217-4a87-bde4-3125a9b1f50a', '112cc8ee-b996-4b19-9192-9e82b92aae94',
        '6f4467de-61c7-4da4-8437-81fd94f8caea', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f750d4f9-afaf-48e6-bcbb-135ceeefd35f', '60c4bebf-411f-456f-9eab-5afd98fde9c7',
        '6f4467de-61c7-4da4-8437-81fd94f8caea', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2e3492b8-8193-4bf6-bcd3-a55bc4363ab0', 'c393d2b5-6e50-4d7a-ad40-e112851e0711',
        '6f4467de-61c7-4da4-8437-81fd94f8caea', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('17aa4de1-9ba7-4a58-9fe8-5ca24ce4644b', '38630605-5c28-4b5c-b042-93c43bf23ebc',
        '6f4467de-61c7-4da4-8437-81fd94f8caea', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('fa686c22-f3a4-4771-9016-04ada5cb03d6', 'cc721727-53e6-4b1c-9d85-c97c46b5422e',
        '6f4467de-61c7-4da4-8437-81fd94f8caea', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0a3d8f1e-b18a-4b11-9df1-850152ef0790', 'ccb39a89-f63e-4537-90cd-e3186178ae1f',
        '6f4467de-61c7-4da4-8437-81fd94f8caea', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2d1bc526-2c15-48ae-a17c-d40bde13d3dc', 'b34bfec1-ee6c-46bc-9d52-99e90b59fe12',
        '6f4467de-61c7-4da4-8437-81fd94f8caea', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('dcc80d81-c52b-4224-8336-28364926172e', '6b7955fe-fb44-4b68-92b5-13aedcce4e76',
        '6f4467de-61c7-4da4-8437-81fd94f8caea', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4a02418d-9048-41e8-aa49-8c6e36348579', '204814c3-bf71-4b17-9727-c6d435976da6',
        '6f4467de-61c7-4da4-8437-81fd94f8caea', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('59e9bed7-3494-4dc1-912b-990004050bb3', 'd118e4c3-08b7-4c8e-95de-81b8715b6f1d',
        '6f4467de-61c7-4da4-8437-81fd94f8caea', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c295d425-4038-4561-bb83-c142dc67677a', 'db255fa3-e68a-47b3-9651-a7cc95b33689',
        '6f4467de-61c7-4da4-8437-81fd94f8caea', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e3e1b90b-d889-4e22-b565-6cd31fde93d5', '42b30d8f-b8eb-46be-93ee-446f2d1d2706',
        '6f4467de-61c7-4da4-8437-81fd94f8caea', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('81913137-7167-4ed7-819f-f718fdf4cab0', '69126fb1-3e3f-4741-b6a4-91678103ccfe',
        '6f4467de-61c7-4da4-8437-81fd94f8caea', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('70df7593-d7dc-4900-ad20-0978e40206d0', 'a4f7f094-e1ff-4280-aa2f-33e17fb03d07',
        '6f4467de-61c7-4da4-8437-81fd94f8caea', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1993615d-6b34-4a29-90aa-593f4956df91', '9f8b49e7-cd35-4115-8e2a-a4bc71ceab78',
        '6f4467de-61c7-4da4-8437-81fd94f8caea', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8648e75d-bec0-484d-920a-2009d77d3c38', 'df70cc34-0233-4ed5-89f4-5864507b42a4',
        '6f4467de-61c7-4da4-8437-81fd94f8caea', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3474787f-1215-4193-b15b-2cf66bc0d714', '4b4b663a-bc9c-4eb4-ba80-f86adc0951f9',
        '6f4467de-61c7-4da4-8437-81fd94f8caea', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('02bd2d7c-db4e-4630-839b-8155d1e6648d', '231e38c1-fb35-4262-9a80-ea7a4d0a00ba',
        '6f4467de-61c7-4da4-8437-81fd94f8caea', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('59c44294-fe6a-4aa8-8afe-1088bdf8639a', '57008dea-844d-44c7-8adc-6389295384c7',
        '6f4467de-61c7-4da4-8437-81fd94f8caea', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f49fdd98-fc72-41d2-a945-b8c7dc88f2d7', 'a214c6f9-029b-444d-82a0-8bc98a044a43',
        '6f4467de-61c7-4da4-8437-81fd94f8caea', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('60b8d1bf-3345-4a0d-b19a-09a966ffe1f5', '630e876e-62d7-498b-aae9-f8326e875369',
        '6f4467de-61c7-4da4-8437-81fd94f8caea', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('978b6bc7-c75a-462d-aaa3-dbd2d725f1f7', '1521cd72-8dc2-463a-8cef-2c8c8166493b',
        '6f4467de-61c7-4da4-8437-81fd94f8caea', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c241a85c-a76c-491d-a3d4-d61ecf60eaf9', '4c411dfd-41e6-4c53-bb7b-37cc54c1c8e8',
        '6f4467de-61c7-4da4-8437-81fd94f8caea', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5d6e71d9-b373-44fa-97b9-4f6bac94a516', '92bb831c-040f-4686-8acd-f42d8629ba7b',
        '6f4467de-61c7-4da4-8437-81fd94f8caea', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('05e7680e-3f90-4e2b-a6e0-24b8e4999229', 'fe8d890a-abea-44fc-92fe-ba3678289387',
        '6f4467de-61c7-4da4-8437-81fd94f8caea', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('fc095d76-bb87-4715-ace9-8f67219219b3', '4de87bed-0d07-419e-9991-32658cdb0a9d',
        '6f4467de-61c7-4da4-8437-81fd94f8caea', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ee099c82-b496-48a9-b219-533ab0113ac9', '7570b82c-a85d-446c-9a92-5c0bb332a8a3',
        '6f4467de-61c7-4da4-8437-81fd94f8caea', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e724a58f-7828-4ec8-ae5c-7ace04edae18', 'b8b056d3-228d-4363-8f43-a1fed1da8695',
        '6f4467de-61c7-4da4-8437-81fd94f8caea', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ca04bf80-96a7-449d-b1b9-2cab888f4424', '5a08407a-ba00-4be3-bbc6-c50dc256d8f5',
        '6f4467de-61c7-4da4-8437-81fd94f8caea', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('68b60a8d-0810-4cee-bcaa-9c8cab3c05af', 'cac14782-c714-49d4-803d-6bdfb7fb8707',
        '6f4467de-61c7-4da4-8437-81fd94f8caea', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('507f147f-aa5f-4fd6-bf52-dcf52e47b909', '3d723b44-2db7-4730-af04-6007ae7d2178',
        '6f4467de-61c7-4da4-8437-81fd94f8caea', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4a91d42b-f8e8-456a-a64d-57177e74c0d7', '9a4f51df-c428-4a18-9055-511e0ae7b6d8',
        '6f4467de-61c7-4da4-8437-81fd94f8caea', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c056ccf0-fa3b-44bb-b760-f382de12b5dd', 'fd1edc81-f470-4dbe-95cf-ea6ad5e85cf2',
        '6f4467de-61c7-4da4-8437-81fd94f8caea', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('bbea492c-f160-4ef3-b4da-abfedfbf61a0', '6e2740d2-ef18-4564-b8c7-9f7214308f81',
        '6f4467de-61c7-4da4-8437-81fd94f8caea', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('aee1f62c-4f46-4e58-9fef-ab1987e835fa', '926c446b-9db8-4b9c-a406-ed40dff69e34',
        '6f4467de-61c7-4da4-8437-81fd94f8caea', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1ca6369f-e79d-43f1-a25e-343e1e25869f', 'eaa9530f-bb8c-453f-b634-c8599039e296',
        '6f4467de-61c7-4da4-8437-81fd94f8caea', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('316fa32e-5485-4183-9fec-2705f49ff1c7', 'bdc5f279-42bf-491c-b87a-409b3c7bff89',
        '6f4467de-61c7-4da4-8437-81fd94f8caea', 3, current_timestamp, current_timestamp);

-- politician '5499fac4-1366-469e-92fb-4c66b582ef47'
insert into QuestionAnswer
values ('f2b707a1-f7b4-4263-9759-e3f95fc91cef', 'a335650d-06b4-4e92-ba77-d5f8964ceb82',
        '5499fac4-1366-469e-92fb-4c66b582ef47', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('15006528-dab5-48f3-8379-e70c568f0b6e', '46df8b49-923c-4f91-8362-5196efbb71e2',
        '5499fac4-1366-469e-92fb-4c66b582ef47', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('599aada2-43cf-4c50-8283-42b83eea84bd', '5f277258-ba7b-492c-b451-673eaa5957c0',
        '5499fac4-1366-469e-92fb-4c66b582ef47', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('245c36d1-014f-4824-8f3d-3612c3dc2540', '007ebae0-31cb-40fb-93ad-c2f980caee14',
        '5499fac4-1366-469e-92fb-4c66b582ef47', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('042fb8fa-fd35-498e-8e92-189a07dea0b0', '8ae0f13d-e699-4617-a4ba-672e6ccc0edc',
        '5499fac4-1366-469e-92fb-4c66b582ef47', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f85ed839-9d84-4505-99e2-c833f2265ee5', 'dee756b8-f4f2-474a-88f4-e7f4fea7275a',
        '5499fac4-1366-469e-92fb-4c66b582ef47', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('76983dfd-405b-4959-a4fe-634111c2f271', 'b8ec593e-93b8-4bab-95dd-cfff5c526d54',
        '5499fac4-1366-469e-92fb-4c66b582ef47', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c914421d-7b64-4ed9-9f69-f31e9bbe49f6', '6f9db124-e0ae-409d-b943-5be0cbc836e5',
        '5499fac4-1366-469e-92fb-4c66b582ef47', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a601c7cb-b8e5-4381-a437-cb659dddf54a', '616bf16a-470d-494e-ad8b-b230e80dafb3',
        '5499fac4-1366-469e-92fb-4c66b582ef47', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('bbf86e1c-c037-420b-8da1-c1fcd9e90d26', '6c05b44c-34de-48a4-8d3c-6015b268c456',
        '5499fac4-1366-469e-92fb-4c66b582ef47', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('72b9f963-2a65-4a50-9d28-b9f4bd2ec9f6', '3ac4a61c-f510-4d59-84cc-e957dbeedd8e',
        '5499fac4-1366-469e-92fb-4c66b582ef47', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e22bc89e-e634-48d7-88c5-3644ce5f05bc', 'f4f5632d-00ae-4be2-aff8-c83da3c21519',
        '5499fac4-1366-469e-92fb-4c66b582ef47', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2386cce5-bcd4-464e-a746-d65c7558798d', '4917d24b-e50c-4fa9-ac12-37a0d298f41f',
        '5499fac4-1366-469e-92fb-4c66b582ef47', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1a42cb5d-bc01-4b0a-8612-8ca2a7a20a27', 'aee92954-3fab-449d-bc56-7ec47df873cb',
        '5499fac4-1366-469e-92fb-4c66b582ef47', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9c35fe01-d0b2-48f4-b513-f206f500dfee', '19d57226-91df-4c5a-92f4-7b7d774ea8c4',
        '5499fac4-1366-469e-92fb-4c66b582ef47', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ca7db560-5025-4b2b-af5f-c53f4e8d3611', '81f2e7c9-6871-44e3-a432-b0fd050dd187',
        '5499fac4-1366-469e-92fb-4c66b582ef47', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('cde2de10-92f9-48a9-80b9-d85028def04b', '377a4b78-e58a-4d13-875f-817cd1693ece',
        '5499fac4-1366-469e-92fb-4c66b582ef47', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('78f2ccb9-6d66-447c-a89b-447ddd37e03d', '54e790a7-9741-408e-9327-3377df0e9b6e',
        '5499fac4-1366-469e-92fb-4c66b582ef47', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a47d7909-208a-4512-8b29-0847603ea1fd', '5dce5233-88d5-4b52-94de-6465ace4be98',
        '5499fac4-1366-469e-92fb-4c66b582ef47', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('75f81e37-d320-4056-b395-5b7c115bc625', '63aa0cb7-202d-4c54-85ae-051e8249115d',
        '5499fac4-1366-469e-92fb-4c66b582ef47', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a07853f7-0104-4fa9-8703-210e7181aa42', 'fb59e236-0633-46ca-a8b5-c0d7596ee10e',
        '5499fac4-1366-469e-92fb-4c66b582ef47', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c486d40c-be3a-418a-a951-49db38754582', '154147b7-aff2-4ff1-89cf-fcd6616ca6d2',
        '5499fac4-1366-469e-92fb-4c66b582ef47', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('cb15735f-f5cf-4af5-a1b5-b55080747c30', '6e8b2868-8094-46d3-95be-2397eb9d5237',
        '5499fac4-1366-469e-92fb-4c66b582ef47', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('72e2daf3-94f6-49fb-bdf9-e3aa8667461b', '112cc8ee-b996-4b19-9192-9e82b92aae94',
        '5499fac4-1366-469e-92fb-4c66b582ef47', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0d3447db-82b3-4552-996c-e40ce069b0dc', '60c4bebf-411f-456f-9eab-5afd98fde9c7',
        '5499fac4-1366-469e-92fb-4c66b582ef47', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('bb6aca25-e468-4a61-ab35-1844c08303e0', 'c393d2b5-6e50-4d7a-ad40-e112851e0711',
        '5499fac4-1366-469e-92fb-4c66b582ef47', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('30de1f88-978c-4a7c-ae7f-55a62ae0ced6', '38630605-5c28-4b5c-b042-93c43bf23ebc',
        '5499fac4-1366-469e-92fb-4c66b582ef47', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c595d7bb-20e4-495a-8e62-7cf802716101', 'cc721727-53e6-4b1c-9d85-c97c46b5422e',
        '5499fac4-1366-469e-92fb-4c66b582ef47', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6f79695a-14da-49d6-a731-4df805f5963a', 'ccb39a89-f63e-4537-90cd-e3186178ae1f',
        '5499fac4-1366-469e-92fb-4c66b582ef47', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('48e784b2-8b8a-4c94-8567-dac53a8c9859', 'b34bfec1-ee6c-46bc-9d52-99e90b59fe12',
        '5499fac4-1366-469e-92fb-4c66b582ef47', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('90cbac31-6172-436c-95ae-c634da343dcc', '6b7955fe-fb44-4b68-92b5-13aedcce4e76',
        '5499fac4-1366-469e-92fb-4c66b582ef47', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f32c0bc9-7b93-4c85-8c0e-d631a44c7354', '204814c3-bf71-4b17-9727-c6d435976da6',
        '5499fac4-1366-469e-92fb-4c66b582ef47', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('54b3dbe6-b093-4912-86a7-4d99f52d4c16', 'd118e4c3-08b7-4c8e-95de-81b8715b6f1d',
        '5499fac4-1366-469e-92fb-4c66b582ef47', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c8e77631-81ab-41d8-a6a6-2f0a0c12ccda', 'db255fa3-e68a-47b3-9651-a7cc95b33689',
        '5499fac4-1366-469e-92fb-4c66b582ef47', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9559de78-be19-4ddf-bd2a-1e4474acef4a', '42b30d8f-b8eb-46be-93ee-446f2d1d2706',
        '5499fac4-1366-469e-92fb-4c66b582ef47', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3c31ffca-92d6-4e59-ac60-95e871ea10d7', '69126fb1-3e3f-4741-b6a4-91678103ccfe',
        '5499fac4-1366-469e-92fb-4c66b582ef47', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('54608f37-b5fd-44eb-af8a-2d2df2335c89', 'a4f7f094-e1ff-4280-aa2f-33e17fb03d07',
        '5499fac4-1366-469e-92fb-4c66b582ef47', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('634005b5-2ac2-4967-9d2e-0430e240fb52', '9f8b49e7-cd35-4115-8e2a-a4bc71ceab78',
        '5499fac4-1366-469e-92fb-4c66b582ef47', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ecd45657-c279-4e95-9d5b-854804c6fcfa', 'df70cc34-0233-4ed5-89f4-5864507b42a4',
        '5499fac4-1366-469e-92fb-4c66b582ef47', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('83ec3259-f3a2-4682-80a4-19103f7574a3', '4b4b663a-bc9c-4eb4-ba80-f86adc0951f9',
        '5499fac4-1366-469e-92fb-4c66b582ef47', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f48355da-182a-4ea4-a1e4-a8c763f000a7', '231e38c1-fb35-4262-9a80-ea7a4d0a00ba',
        '5499fac4-1366-469e-92fb-4c66b582ef47', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('004e9b36-3db7-416c-b225-dc748fe7fe68', '57008dea-844d-44c7-8adc-6389295384c7',
        '5499fac4-1366-469e-92fb-4c66b582ef47', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b8bf4db3-7b33-4517-a6c0-ff7dc507f3a2', 'a214c6f9-029b-444d-82a0-8bc98a044a43',
        '5499fac4-1366-469e-92fb-4c66b582ef47', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('26a25da9-0b60-4d34-a6c9-f1b7261f43d1', '630e876e-62d7-498b-aae9-f8326e875369',
        '5499fac4-1366-469e-92fb-4c66b582ef47', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d4f49e41-9a3f-49a9-8671-28f30668930d', '1521cd72-8dc2-463a-8cef-2c8c8166493b',
        '5499fac4-1366-469e-92fb-4c66b582ef47', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b2ecd3fd-2abb-41d0-9f1f-356ce20727e2', '4c411dfd-41e6-4c53-bb7b-37cc54c1c8e8',
        '5499fac4-1366-469e-92fb-4c66b582ef47', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3ceac4ff-46d2-495b-9c9f-eacacd9cd146', '92bb831c-040f-4686-8acd-f42d8629ba7b',
        '5499fac4-1366-469e-92fb-4c66b582ef47', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e94daef7-ebcf-4f86-a115-48c337c32b28', 'fe8d890a-abea-44fc-92fe-ba3678289387',
        '5499fac4-1366-469e-92fb-4c66b582ef47', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('530d9a38-1cff-460b-82af-2180d4feebd4', '4de87bed-0d07-419e-9991-32658cdb0a9d',
        '5499fac4-1366-469e-92fb-4c66b582ef47', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c948c703-1e1c-4117-abb3-5f3c400f6e2c', '7570b82c-a85d-446c-9a92-5c0bb332a8a3',
        '5499fac4-1366-469e-92fb-4c66b582ef47', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4e00c8d8-9ad2-41de-b32e-c1afdc50b7b8', 'b8b056d3-228d-4363-8f43-a1fed1da8695',
        '5499fac4-1366-469e-92fb-4c66b582ef47', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8ef99309-2f57-4fca-9bc9-1d8a0a221bd6', '5a08407a-ba00-4be3-bbc6-c50dc256d8f5',
        '5499fac4-1366-469e-92fb-4c66b582ef47', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('def0a04d-f98a-44e6-add7-256399c5b43b', 'cac14782-c714-49d4-803d-6bdfb7fb8707',
        '5499fac4-1366-469e-92fb-4c66b582ef47', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('fd11dc6b-5dac-400b-a3b2-b64a0457d526', '3d723b44-2db7-4730-af04-6007ae7d2178',
        '5499fac4-1366-469e-92fb-4c66b582ef47', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d679fcc1-1401-49e8-9237-139a9db0d895', '9a4f51df-c428-4a18-9055-511e0ae7b6d8',
        '5499fac4-1366-469e-92fb-4c66b582ef47', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('531be52d-76d9-4722-a706-24ef701d9053', 'fd1edc81-f470-4dbe-95cf-ea6ad5e85cf2',
        '5499fac4-1366-469e-92fb-4c66b582ef47', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d4b59b4b-30d8-4c8e-91cf-6fa084d9838a', '6e2740d2-ef18-4564-b8c7-9f7214308f81',
        '5499fac4-1366-469e-92fb-4c66b582ef47', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2c0ae67b-204c-481c-bdee-67cfc77057be', '926c446b-9db8-4b9c-a406-ed40dff69e34',
        '5499fac4-1366-469e-92fb-4c66b582ef47', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('530a9d8e-6e1c-4ec2-a6df-fe5bc933703a', 'eaa9530f-bb8c-453f-b634-c8599039e296',
        '5499fac4-1366-469e-92fb-4c66b582ef47', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e852313b-7e5a-4fe1-b48a-4df6e7430755', 'bdc5f279-42bf-491c-b87a-409b3c7bff89',
        '5499fac4-1366-469e-92fb-4c66b582ef47', 2, current_timestamp, current_timestamp);

-- politician 'c84a3ac8-d177-47c3-9fd3-35fecf4296b7'
insert into QuestionAnswer
values ('cfe4fcc8-2919-4ea9-a95b-ca13a28b24cd', 'a335650d-06b4-4e92-ba77-d5f8964ceb82',
        'c84a3ac8-d177-47c3-9fd3-35fecf4296b7', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d8c65574-e386-42ac-9463-cd72412e80e0', '46df8b49-923c-4f91-8362-5196efbb71e2',
        'c84a3ac8-d177-47c3-9fd3-35fecf4296b7', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('93d76b2b-d48a-481c-9494-8d973d2660f4', '5f277258-ba7b-492c-b451-673eaa5957c0',
        'c84a3ac8-d177-47c3-9fd3-35fecf4296b7', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('456053e8-ec8c-41ad-a228-8f7f02635632', '007ebae0-31cb-40fb-93ad-c2f980caee14',
        'c84a3ac8-d177-47c3-9fd3-35fecf4296b7', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5fd032dc-526c-44e4-84fb-88d011aee55b', '8ae0f13d-e699-4617-a4ba-672e6ccc0edc',
        'c84a3ac8-d177-47c3-9fd3-35fecf4296b7', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('776be7c7-9b94-44c4-ac2f-04277ed3c74b', 'dee756b8-f4f2-474a-88f4-e7f4fea7275a',
        'c84a3ac8-d177-47c3-9fd3-35fecf4296b7', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('79a8cbf6-6465-4fdd-b0d9-f56151e0b065', 'b8ec593e-93b8-4bab-95dd-cfff5c526d54',
        'c84a3ac8-d177-47c3-9fd3-35fecf4296b7', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b9406886-751f-4fa4-911b-b7d8c2cfcc9c', '6f9db124-e0ae-409d-b943-5be0cbc836e5',
        'c84a3ac8-d177-47c3-9fd3-35fecf4296b7', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d10de938-4c0e-49e9-a281-953c8ffd591c', '616bf16a-470d-494e-ad8b-b230e80dafb3',
        'c84a3ac8-d177-47c3-9fd3-35fecf4296b7', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('10089f61-36ef-4a3e-8463-ec0b66054b96', '6c05b44c-34de-48a4-8d3c-6015b268c456',
        'c84a3ac8-d177-47c3-9fd3-35fecf4296b7', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1e45b8d1-2717-4fd2-9882-f1218f81cc48', '3ac4a61c-f510-4d59-84cc-e957dbeedd8e',
        'c84a3ac8-d177-47c3-9fd3-35fecf4296b7', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a44b4028-b27e-4cf9-9a0f-cdc85c450b81', 'f4f5632d-00ae-4be2-aff8-c83da3c21519',
        'c84a3ac8-d177-47c3-9fd3-35fecf4296b7', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4b92443b-0351-4334-9799-c5a139f4780b', '4917d24b-e50c-4fa9-ac12-37a0d298f41f',
        'c84a3ac8-d177-47c3-9fd3-35fecf4296b7', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8403b960-687c-4d70-93a1-01606d6c0844', 'aee92954-3fab-449d-bc56-7ec47df873cb',
        'c84a3ac8-d177-47c3-9fd3-35fecf4296b7', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1d04ee69-d340-4e6b-917f-6e6e69f7b55a', '19d57226-91df-4c5a-92f4-7b7d774ea8c4',
        'c84a3ac8-d177-47c3-9fd3-35fecf4296b7', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6fe44991-4c6c-4ae5-9f69-26495ee2e9a0', '81f2e7c9-6871-44e3-a432-b0fd050dd187',
        'c84a3ac8-d177-47c3-9fd3-35fecf4296b7', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a4743542-39c3-4f27-b5e9-0ffa9ad9fb19', '377a4b78-e58a-4d13-875f-817cd1693ece',
        'c84a3ac8-d177-47c3-9fd3-35fecf4296b7', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5de28f97-ded7-4e20-81cb-5fbe44bcd341', '54e790a7-9741-408e-9327-3377df0e9b6e',
        'c84a3ac8-d177-47c3-9fd3-35fecf4296b7', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d937e424-125a-45d9-992e-e7bd1f47a693', '5dce5233-88d5-4b52-94de-6465ace4be98',
        'c84a3ac8-d177-47c3-9fd3-35fecf4296b7', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1c1c0784-d0d2-471a-bf88-d5bb28f6eda4', '63aa0cb7-202d-4c54-85ae-051e8249115d',
        'c84a3ac8-d177-47c3-9fd3-35fecf4296b7', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f3c744e8-f347-448c-91aa-4965614fea2e', 'fb59e236-0633-46ca-a8b5-c0d7596ee10e',
        'c84a3ac8-d177-47c3-9fd3-35fecf4296b7', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ff1c6dce-3c2c-401b-aeb2-f4f9d5a35478', '154147b7-aff2-4ff1-89cf-fcd6616ca6d2',
        'c84a3ac8-d177-47c3-9fd3-35fecf4296b7', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5cecd477-fdae-4160-8915-7747de79043f', '6e8b2868-8094-46d3-95be-2397eb9d5237',
        'c84a3ac8-d177-47c3-9fd3-35fecf4296b7', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f1c9af43-b76b-4e7e-a9eb-11056dcc9486', '112cc8ee-b996-4b19-9192-9e82b92aae94',
        'c84a3ac8-d177-47c3-9fd3-35fecf4296b7', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1c233744-6181-4964-8967-b5a03cde96a8', '60c4bebf-411f-456f-9eab-5afd98fde9c7',
        'c84a3ac8-d177-47c3-9fd3-35fecf4296b7', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1f612e6f-644a-4753-814e-5b19670568ea', 'c393d2b5-6e50-4d7a-ad40-e112851e0711',
        'c84a3ac8-d177-47c3-9fd3-35fecf4296b7', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1b0c682d-fa6d-455d-87bd-efaf0eb64d75', '38630605-5c28-4b5c-b042-93c43bf23ebc',
        'c84a3ac8-d177-47c3-9fd3-35fecf4296b7', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9b750b48-a3cd-442c-bb58-6b0485d525df', 'cc721727-53e6-4b1c-9d85-c97c46b5422e',
        'c84a3ac8-d177-47c3-9fd3-35fecf4296b7', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('036d4f48-532a-4eef-ad7e-18881218589a', 'ccb39a89-f63e-4537-90cd-e3186178ae1f',
        'c84a3ac8-d177-47c3-9fd3-35fecf4296b7', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('56c68f88-d066-49d9-a5dd-3d5401879399', 'b34bfec1-ee6c-46bc-9d52-99e90b59fe12',
        'c84a3ac8-d177-47c3-9fd3-35fecf4296b7', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('78096d41-dde0-43f8-ac7b-e553c040caa1', '6b7955fe-fb44-4b68-92b5-13aedcce4e76',
        'c84a3ac8-d177-47c3-9fd3-35fecf4296b7', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('cca24862-f99c-42af-ab81-cae45ceff25a', '204814c3-bf71-4b17-9727-c6d435976da6',
        'c84a3ac8-d177-47c3-9fd3-35fecf4296b7', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('dfcb4981-508c-4f10-bc09-ce703d7b4d77', 'd118e4c3-08b7-4c8e-95de-81b8715b6f1d',
        'c84a3ac8-d177-47c3-9fd3-35fecf4296b7', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('25da75fd-5156-4366-a5bd-31e245bad558', 'db255fa3-e68a-47b3-9651-a7cc95b33689',
        'c84a3ac8-d177-47c3-9fd3-35fecf4296b7', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c0c9e7d6-b1b1-4fa4-bcde-03bbf4748a58', '42b30d8f-b8eb-46be-93ee-446f2d1d2706',
        'c84a3ac8-d177-47c3-9fd3-35fecf4296b7', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8d6a3888-d521-48ea-a5da-c29205df0f27', '69126fb1-3e3f-4741-b6a4-91678103ccfe',
        'c84a3ac8-d177-47c3-9fd3-35fecf4296b7', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2d243975-f060-4ede-a7cd-81483458696c', 'a4f7f094-e1ff-4280-aa2f-33e17fb03d07',
        'c84a3ac8-d177-47c3-9fd3-35fecf4296b7', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('fb216e5c-4dff-44ab-ae0c-e60d5e4537d3', '9f8b49e7-cd35-4115-8e2a-a4bc71ceab78',
        'c84a3ac8-d177-47c3-9fd3-35fecf4296b7', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c14b46b7-da3f-4123-9577-a6fe84d265e7', 'df70cc34-0233-4ed5-89f4-5864507b42a4',
        'c84a3ac8-d177-47c3-9fd3-35fecf4296b7', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('56a8d707-cbcb-4896-8fe6-3c1c83edf29e', '4b4b663a-bc9c-4eb4-ba80-f86adc0951f9',
        'c84a3ac8-d177-47c3-9fd3-35fecf4296b7', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2e7a948d-04f3-4d9d-84c8-60a822578f95', '231e38c1-fb35-4262-9a80-ea7a4d0a00ba',
        'c84a3ac8-d177-47c3-9fd3-35fecf4296b7', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('87d9a45f-19d9-4912-b29a-0209c4436ddf', '57008dea-844d-44c7-8adc-6389295384c7',
        'c84a3ac8-d177-47c3-9fd3-35fecf4296b7', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3a201db6-5b16-4b48-9664-cba109e75fda', 'a214c6f9-029b-444d-82a0-8bc98a044a43',
        'c84a3ac8-d177-47c3-9fd3-35fecf4296b7', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c066951b-9d8a-4c33-9fb0-3b764a42dd33', '630e876e-62d7-498b-aae9-f8326e875369',
        'c84a3ac8-d177-47c3-9fd3-35fecf4296b7', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1f86e0d5-b344-4b47-966f-91e59172f60b', '1521cd72-8dc2-463a-8cef-2c8c8166493b',
        'c84a3ac8-d177-47c3-9fd3-35fecf4296b7', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('feb392ff-60e9-4431-9c59-32ec0752bf97', '4c411dfd-41e6-4c53-bb7b-37cc54c1c8e8',
        'c84a3ac8-d177-47c3-9fd3-35fecf4296b7', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f3783a12-f376-4170-91a0-d2e23e3998fe', '92bb831c-040f-4686-8acd-f42d8629ba7b',
        'c84a3ac8-d177-47c3-9fd3-35fecf4296b7', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ac5cb3be-d175-4ebf-a6e4-3e922f18ce03', 'fe8d890a-abea-44fc-92fe-ba3678289387',
        'c84a3ac8-d177-47c3-9fd3-35fecf4296b7', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('318d4704-8dc8-4e53-bfc0-5c2026c73972', '4de87bed-0d07-419e-9991-32658cdb0a9d',
        'c84a3ac8-d177-47c3-9fd3-35fecf4296b7', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0245a4d0-4057-40c8-a802-cad58d4249ce', '7570b82c-a85d-446c-9a92-5c0bb332a8a3',
        'c84a3ac8-d177-47c3-9fd3-35fecf4296b7', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b03b2024-40d4-4ce1-bc42-6b85edfa1aff', 'b8b056d3-228d-4363-8f43-a1fed1da8695',
        'c84a3ac8-d177-47c3-9fd3-35fecf4296b7', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c955d08c-5d62-4979-b94c-bb2ee646edb6', '5a08407a-ba00-4be3-bbc6-c50dc256d8f5',
        'c84a3ac8-d177-47c3-9fd3-35fecf4296b7', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9dab241c-5d52-4681-a7ac-ad0ab4dc622c', 'cac14782-c714-49d4-803d-6bdfb7fb8707',
        'c84a3ac8-d177-47c3-9fd3-35fecf4296b7', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d95fcdc5-6ed1-4795-9a0d-0e6bd5d67c76', '3d723b44-2db7-4730-af04-6007ae7d2178',
        'c84a3ac8-d177-47c3-9fd3-35fecf4296b7', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0f9fd7aa-b6c2-41f2-a23c-c86807cc3112', '9a4f51df-c428-4a18-9055-511e0ae7b6d8',
        'c84a3ac8-d177-47c3-9fd3-35fecf4296b7', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('614cc453-8865-497c-8ae9-428ff03de781', 'fd1edc81-f470-4dbe-95cf-ea6ad5e85cf2',
        'c84a3ac8-d177-47c3-9fd3-35fecf4296b7', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6ab5ae9e-7bfa-4e25-a502-03be509f7d7a', '6e2740d2-ef18-4564-b8c7-9f7214308f81',
        'c84a3ac8-d177-47c3-9fd3-35fecf4296b7', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4a8db3aa-0c63-4473-83bf-5e9514022c1e', '926c446b-9db8-4b9c-a406-ed40dff69e34',
        'c84a3ac8-d177-47c3-9fd3-35fecf4296b7', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7e3391ba-ee9e-4996-9d6b-8e9e53be2c5e', 'eaa9530f-bb8c-453f-b634-c8599039e296',
        'c84a3ac8-d177-47c3-9fd3-35fecf4296b7', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('cd9ad3e7-af7f-41b4-96d4-cc87724491d4', 'bdc5f279-42bf-491c-b87a-409b3c7bff89',
        'c84a3ac8-d177-47c3-9fd3-35fecf4296b7', 1, current_timestamp, current_timestamp);

-- politician 'c3860bfb-0975-4a07-941e-7ce550250b55'
insert into QuestionAnswer
values ('c9cb628d-37ae-4893-90c8-7b9a3a4f19fb', 'a335650d-06b4-4e92-ba77-d5f8964ceb82',
        'c3860bfb-0975-4a07-941e-7ce550250b55', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1a8c7395-3d46-47d7-9af2-2dbf15e58ff2', '46df8b49-923c-4f91-8362-5196efbb71e2',
        'c3860bfb-0975-4a07-941e-7ce550250b55', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6c8ff4b9-74b9-4cf0-924f-61363db6b698', '5f277258-ba7b-492c-b451-673eaa5957c0',
        'c3860bfb-0975-4a07-941e-7ce550250b55', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2be28581-8cbb-4237-9972-18d48d2e0a9e', '007ebae0-31cb-40fb-93ad-c2f980caee14',
        'c3860bfb-0975-4a07-941e-7ce550250b55', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8c84cc2c-66c9-4b73-b4e0-c6db060cec31', '8ae0f13d-e699-4617-a4ba-672e6ccc0edc',
        'c3860bfb-0975-4a07-941e-7ce550250b55', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('44607271-b59c-400e-880f-b3b9989d0f84', 'dee756b8-f4f2-474a-88f4-e7f4fea7275a',
        'c3860bfb-0975-4a07-941e-7ce550250b55', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('fbee89cb-0b9d-4290-a93d-718897a92a54', 'b8ec593e-93b8-4bab-95dd-cfff5c526d54',
        'c3860bfb-0975-4a07-941e-7ce550250b55', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('71a2fb78-29ac-4fb2-a064-9b5630c74eb1', '6f9db124-e0ae-409d-b943-5be0cbc836e5',
        'c3860bfb-0975-4a07-941e-7ce550250b55', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ec92867a-45c0-406f-8201-f70eb53ee73e', '616bf16a-470d-494e-ad8b-b230e80dafb3',
        'c3860bfb-0975-4a07-941e-7ce550250b55', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d52de2ad-8e87-46df-bde3-97cd050bba4a', '6c05b44c-34de-48a4-8d3c-6015b268c456',
        'c3860bfb-0975-4a07-941e-7ce550250b55', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4b7f751e-39e5-4136-b7f5-6bf9c691419d', '3ac4a61c-f510-4d59-84cc-e957dbeedd8e',
        'c3860bfb-0975-4a07-941e-7ce550250b55', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('50b7dd22-e16e-4471-8f4f-b97d8b4ed36c', 'f4f5632d-00ae-4be2-aff8-c83da3c21519',
        'c3860bfb-0975-4a07-941e-7ce550250b55', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('aa887436-67bc-4afc-8c0c-a0c360c83122', '4917d24b-e50c-4fa9-ac12-37a0d298f41f',
        'c3860bfb-0975-4a07-941e-7ce550250b55', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('10ed1d2c-6902-478e-ab3e-5dd8cdd37a1d', 'aee92954-3fab-449d-bc56-7ec47df873cb',
        'c3860bfb-0975-4a07-941e-7ce550250b55', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('417dd615-cec6-436d-be33-473ca7e8a8ab', '19d57226-91df-4c5a-92f4-7b7d774ea8c4',
        'c3860bfb-0975-4a07-941e-7ce550250b55', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5f8b16f6-d946-4e5b-ac6f-c554d66a8620', '81f2e7c9-6871-44e3-a432-b0fd050dd187',
        'c3860bfb-0975-4a07-941e-7ce550250b55', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3dd50c96-aba0-4e16-a4bf-188eee4a7a36', '377a4b78-e58a-4d13-875f-817cd1693ece',
        'c3860bfb-0975-4a07-941e-7ce550250b55', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9e28998a-9467-4017-acd3-ba0741d1f3a7', '54e790a7-9741-408e-9327-3377df0e9b6e',
        'c3860bfb-0975-4a07-941e-7ce550250b55', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b5caa6ad-974d-450e-892f-91fa1a6184bc', '5dce5233-88d5-4b52-94de-6465ace4be98',
        'c3860bfb-0975-4a07-941e-7ce550250b55', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6977b09c-001c-464a-8289-5cb4ff4fa1c2', '63aa0cb7-202d-4c54-85ae-051e8249115d',
        'c3860bfb-0975-4a07-941e-7ce550250b55', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('01555adc-352c-4306-b195-a0f4fed59d1f', 'fb59e236-0633-46ca-a8b5-c0d7596ee10e',
        'c3860bfb-0975-4a07-941e-7ce550250b55', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('392ac123-b92d-4ae6-8d28-bfcc8ce13038', '154147b7-aff2-4ff1-89cf-fcd6616ca6d2',
        'c3860bfb-0975-4a07-941e-7ce550250b55', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3b5e0a72-d643-4636-946f-67276820950a', '6e8b2868-8094-46d3-95be-2397eb9d5237',
        'c3860bfb-0975-4a07-941e-7ce550250b55', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('609c8f96-d66f-4820-90d2-040c27831123', '112cc8ee-b996-4b19-9192-9e82b92aae94',
        'c3860bfb-0975-4a07-941e-7ce550250b55', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('498de134-bdb3-499e-a7d1-5d6b169a7423', '60c4bebf-411f-456f-9eab-5afd98fde9c7',
        'c3860bfb-0975-4a07-941e-7ce550250b55', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('19cec320-62d8-4a46-98de-978bd9e1e663', 'c393d2b5-6e50-4d7a-ad40-e112851e0711',
        'c3860bfb-0975-4a07-941e-7ce550250b55', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('54982ee2-42bf-47b7-9ef1-c38d21d71a69', '38630605-5c28-4b5c-b042-93c43bf23ebc',
        'c3860bfb-0975-4a07-941e-7ce550250b55', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b09a1bda-c396-44bd-b14e-b16feea90475', 'cc721727-53e6-4b1c-9d85-c97c46b5422e',
        'c3860bfb-0975-4a07-941e-7ce550250b55', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f863cc8c-8e97-4a02-93fe-034997c98bbf', 'ccb39a89-f63e-4537-90cd-e3186178ae1f',
        'c3860bfb-0975-4a07-941e-7ce550250b55', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6cc2f26c-43d8-467e-9936-a96bfb9b110e', 'b34bfec1-ee6c-46bc-9d52-99e90b59fe12',
        'c3860bfb-0975-4a07-941e-7ce550250b55', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c4517193-287c-4d92-bd0e-3e04718bc9b6', '6b7955fe-fb44-4b68-92b5-13aedcce4e76',
        'c3860bfb-0975-4a07-941e-7ce550250b55', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('703e1090-faf3-4392-b532-479a068bbf83', '204814c3-bf71-4b17-9727-c6d435976da6',
        'c3860bfb-0975-4a07-941e-7ce550250b55', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('73bf1a9a-007a-45da-b122-19cb73043b82', 'd118e4c3-08b7-4c8e-95de-81b8715b6f1d',
        'c3860bfb-0975-4a07-941e-7ce550250b55', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('510c54dc-4f5b-4b91-a8c0-d5e75d18bec4', 'db255fa3-e68a-47b3-9651-a7cc95b33689',
        'c3860bfb-0975-4a07-941e-7ce550250b55', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c03e051a-a4f3-4a0d-964a-37e2faad9189', '42b30d8f-b8eb-46be-93ee-446f2d1d2706',
        'c3860bfb-0975-4a07-941e-7ce550250b55', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b70eb47b-702b-4503-9ab4-311690fcf9a2', '69126fb1-3e3f-4741-b6a4-91678103ccfe',
        'c3860bfb-0975-4a07-941e-7ce550250b55', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a91e4d5e-0e46-4c9e-9f73-a62126896fca', 'a4f7f094-e1ff-4280-aa2f-33e17fb03d07',
        'c3860bfb-0975-4a07-941e-7ce550250b55', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c69305f2-e354-4c7a-beee-e4569d60d042', '9f8b49e7-cd35-4115-8e2a-a4bc71ceab78',
        'c3860bfb-0975-4a07-941e-7ce550250b55', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('eb7ec619-42f0-410f-8aab-42497aa9c426', 'df70cc34-0233-4ed5-89f4-5864507b42a4',
        'c3860bfb-0975-4a07-941e-7ce550250b55', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('99d28939-3ebb-47f9-8353-55a69cdcca30', '4b4b663a-bc9c-4eb4-ba80-f86adc0951f9',
        'c3860bfb-0975-4a07-941e-7ce550250b55', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8a1bd9b7-bf7d-43d2-90a4-e403acc5dc39', '231e38c1-fb35-4262-9a80-ea7a4d0a00ba',
        'c3860bfb-0975-4a07-941e-7ce550250b55', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2587d297-fb5a-4cab-9247-929ed1eeea83', '57008dea-844d-44c7-8adc-6389295384c7',
        'c3860bfb-0975-4a07-941e-7ce550250b55', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('cd1237e0-6462-43d5-b713-553a17c565ad', 'a214c6f9-029b-444d-82a0-8bc98a044a43',
        'c3860bfb-0975-4a07-941e-7ce550250b55', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('33c9adb6-aba1-434b-9009-a88a8ad9a71c', '630e876e-62d7-498b-aae9-f8326e875369',
        'c3860bfb-0975-4a07-941e-7ce550250b55', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8f0e9386-5d20-4ce9-9141-aa48c0129e38', '1521cd72-8dc2-463a-8cef-2c8c8166493b',
        'c3860bfb-0975-4a07-941e-7ce550250b55', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2b8d60ef-6b85-4179-a0bc-37f9320d8dff', '4c411dfd-41e6-4c53-bb7b-37cc54c1c8e8',
        'c3860bfb-0975-4a07-941e-7ce550250b55', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c9310834-8054-4bb8-bed8-d7deca9dc832', '92bb831c-040f-4686-8acd-f42d8629ba7b',
        'c3860bfb-0975-4a07-941e-7ce550250b55', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3045b04e-edc5-447a-a6ca-a3bda88f7530', 'fe8d890a-abea-44fc-92fe-ba3678289387',
        'c3860bfb-0975-4a07-941e-7ce550250b55', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ed5418d2-9358-42fe-9f8f-2e15aa314c82', '4de87bed-0d07-419e-9991-32658cdb0a9d',
        'c3860bfb-0975-4a07-941e-7ce550250b55', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('75dd676c-aa6d-4ce5-88e7-baa349eacd68', '7570b82c-a85d-446c-9a92-5c0bb332a8a3',
        'c3860bfb-0975-4a07-941e-7ce550250b55', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('cbd29341-a03b-48cc-a505-02a53124764a', 'b8b056d3-228d-4363-8f43-a1fed1da8695',
        'c3860bfb-0975-4a07-941e-7ce550250b55', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('59cdc80d-2d5d-469f-b9d4-54ebba578cad', '5a08407a-ba00-4be3-bbc6-c50dc256d8f5',
        'c3860bfb-0975-4a07-941e-7ce550250b55', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a2b0c30c-141d-493d-8695-e96c682699d4', 'cac14782-c714-49d4-803d-6bdfb7fb8707',
        'c3860bfb-0975-4a07-941e-7ce550250b55', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0d9a2a84-604c-47c6-bca1-4cbbe079327e', '3d723b44-2db7-4730-af04-6007ae7d2178',
        'c3860bfb-0975-4a07-941e-7ce550250b55', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f79ee150-1a0b-400e-8725-c84d86e8be6b', '9a4f51df-c428-4a18-9055-511e0ae7b6d8',
        'c3860bfb-0975-4a07-941e-7ce550250b55', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e599f1de-ab3d-460b-8863-ec2f51e88121', 'fd1edc81-f470-4dbe-95cf-ea6ad5e85cf2',
        'c3860bfb-0975-4a07-941e-7ce550250b55', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4cd2ee87-e366-4495-a05b-ebfdd513a581', '6e2740d2-ef18-4564-b8c7-9f7214308f81',
        'c3860bfb-0975-4a07-941e-7ce550250b55', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('908dbc81-7195-44e1-a04e-16af8f99ecc0', '926c446b-9db8-4b9c-a406-ed40dff69e34',
        'c3860bfb-0975-4a07-941e-7ce550250b55', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('823a2fd9-2ae1-462b-87d3-f93bc74b8640', 'eaa9530f-bb8c-453f-b634-c8599039e296',
        'c3860bfb-0975-4a07-941e-7ce550250b55', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('37f5056c-4a50-43eb-87b1-a7190e0537f4', 'bdc5f279-42bf-491c-b87a-409b3c7bff89',
        'c3860bfb-0975-4a07-941e-7ce550250b55', 1, current_timestamp, current_timestamp);

-- politician '0bf956b3-1094-4891-9fac-043b3bb4ddce'
insert into QuestionAnswer
values ('45c03e96-db6b-4771-a196-d1c95c48f6ae', 'a335650d-06b4-4e92-ba77-d5f8964ceb82',
        '0bf956b3-1094-4891-9fac-043b3bb4ddce', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2bf8b62f-e4e7-4c23-8931-93fd21c2cc38', '46df8b49-923c-4f91-8362-5196efbb71e2',
        '0bf956b3-1094-4891-9fac-043b3bb4ddce', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a4664b55-06fe-4fa1-9f35-edf6541bcca0', '5f277258-ba7b-492c-b451-673eaa5957c0',
        '0bf956b3-1094-4891-9fac-043b3bb4ddce', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b1eb3bcf-7b97-435a-be2a-fbac03a3f14a', '007ebae0-31cb-40fb-93ad-c2f980caee14',
        '0bf956b3-1094-4891-9fac-043b3bb4ddce', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('941c505b-3466-42cb-b2b0-4d7ce2e9945f', '8ae0f13d-e699-4617-a4ba-672e6ccc0edc',
        '0bf956b3-1094-4891-9fac-043b3bb4ddce', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b54cac92-42c2-4f00-8a1f-7f3183ebff80', 'dee756b8-f4f2-474a-88f4-e7f4fea7275a',
        '0bf956b3-1094-4891-9fac-043b3bb4ddce', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ef947b0d-c6ce-4e7e-8b09-5891f225d4a2', 'b8ec593e-93b8-4bab-95dd-cfff5c526d54',
        '0bf956b3-1094-4891-9fac-043b3bb4ddce', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f2cea5ea-c5ff-43e8-96e3-7b8b79ada6e0', '6f9db124-e0ae-409d-b943-5be0cbc836e5',
        '0bf956b3-1094-4891-9fac-043b3bb4ddce', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9d1ecf88-b4eb-4ff5-8039-0444c20c8e7b', '616bf16a-470d-494e-ad8b-b230e80dafb3',
        '0bf956b3-1094-4891-9fac-043b3bb4ddce', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5a26d2ff-b025-46f1-8f7b-d3c91b8ade8c', '6c05b44c-34de-48a4-8d3c-6015b268c456',
        '0bf956b3-1094-4891-9fac-043b3bb4ddce', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c8363601-b729-4454-99c9-76789bde53a2', '3ac4a61c-f510-4d59-84cc-e957dbeedd8e',
        '0bf956b3-1094-4891-9fac-043b3bb4ddce', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c0206807-993b-4c60-a8ff-a2ed5016f89d', 'f4f5632d-00ae-4be2-aff8-c83da3c21519',
        '0bf956b3-1094-4891-9fac-043b3bb4ddce', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('304f5e59-5020-4191-94ec-b56333e83360', '4917d24b-e50c-4fa9-ac12-37a0d298f41f',
        '0bf956b3-1094-4891-9fac-043b3bb4ddce', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a9ba90f4-a327-4d66-9857-474b1235b66d', 'aee92954-3fab-449d-bc56-7ec47df873cb',
        '0bf956b3-1094-4891-9fac-043b3bb4ddce', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f7c26ae4-fd77-436e-80a8-ddad83954765', '19d57226-91df-4c5a-92f4-7b7d774ea8c4',
        '0bf956b3-1094-4891-9fac-043b3bb4ddce', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ac405252-9fc3-4d2c-89c0-53a143504ddf', '81f2e7c9-6871-44e3-a432-b0fd050dd187',
        '0bf956b3-1094-4891-9fac-043b3bb4ddce', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('97555b96-cdfc-4d2b-b999-74b28b2ab985', '377a4b78-e58a-4d13-875f-817cd1693ece',
        '0bf956b3-1094-4891-9fac-043b3bb4ddce', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f502837e-a5e5-4d40-bfc9-4420158543aa', '54e790a7-9741-408e-9327-3377df0e9b6e',
        '0bf956b3-1094-4891-9fac-043b3bb4ddce', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e7ae31d0-0aff-40e7-b4a0-914079c3fe0e', '5dce5233-88d5-4b52-94de-6465ace4be98',
        '0bf956b3-1094-4891-9fac-043b3bb4ddce', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e33e7884-b2d9-4256-95f2-df66d9fc7788', '63aa0cb7-202d-4c54-85ae-051e8249115d',
        '0bf956b3-1094-4891-9fac-043b3bb4ddce', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('06f037ea-1859-45a0-836b-925c18c4b02d', 'fb59e236-0633-46ca-a8b5-c0d7596ee10e',
        '0bf956b3-1094-4891-9fac-043b3bb4ddce', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f71abe31-b616-446a-8b71-f77cf38e021a', '154147b7-aff2-4ff1-89cf-fcd6616ca6d2',
        '0bf956b3-1094-4891-9fac-043b3bb4ddce', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b82f081e-41b2-4fb4-908f-9f29b6da9d22', '6e8b2868-8094-46d3-95be-2397eb9d5237',
        '0bf956b3-1094-4891-9fac-043b3bb4ddce', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('321976e1-dd8f-47c0-98dd-abc590a93868', '112cc8ee-b996-4b19-9192-9e82b92aae94',
        '0bf956b3-1094-4891-9fac-043b3bb4ddce', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('00af48fc-a25b-45e4-ab6b-7471ab0229b4', '60c4bebf-411f-456f-9eab-5afd98fde9c7',
        '0bf956b3-1094-4891-9fac-043b3bb4ddce', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6f016251-ae92-41f3-a738-7a198e92b68b', 'c393d2b5-6e50-4d7a-ad40-e112851e0711',
        '0bf956b3-1094-4891-9fac-043b3bb4ddce', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f9a18b07-9dde-49e3-b452-4ba0b5ec7735', '38630605-5c28-4b5c-b042-93c43bf23ebc',
        '0bf956b3-1094-4891-9fac-043b3bb4ddce', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7a1474dc-b614-40f5-aafa-68725bf5f460', 'cc721727-53e6-4b1c-9d85-c97c46b5422e',
        '0bf956b3-1094-4891-9fac-043b3bb4ddce', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('04035fc3-a718-4d3c-8fe6-06bbf92c6ace', 'ccb39a89-f63e-4537-90cd-e3186178ae1f',
        '0bf956b3-1094-4891-9fac-043b3bb4ddce', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d0b69012-b9da-4e8e-8faf-5be0fd8e39b1', 'b34bfec1-ee6c-46bc-9d52-99e90b59fe12',
        '0bf956b3-1094-4891-9fac-043b3bb4ddce', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('cee35081-a02a-4320-941d-850536e8305b', '6b7955fe-fb44-4b68-92b5-13aedcce4e76',
        '0bf956b3-1094-4891-9fac-043b3bb4ddce', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b76656af-e679-448f-977f-ef75119903c2', '204814c3-bf71-4b17-9727-c6d435976da6',
        '0bf956b3-1094-4891-9fac-043b3bb4ddce', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('11f88445-7583-49e1-a2b8-f9aa04a211c4', 'd118e4c3-08b7-4c8e-95de-81b8715b6f1d',
        '0bf956b3-1094-4891-9fac-043b3bb4ddce', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7d984db3-6b34-4915-8358-d9e7dbba4b43', 'db255fa3-e68a-47b3-9651-a7cc95b33689',
        '0bf956b3-1094-4891-9fac-043b3bb4ddce', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('764bc1a4-017b-4bec-9f10-4481479b1773', '42b30d8f-b8eb-46be-93ee-446f2d1d2706',
        '0bf956b3-1094-4891-9fac-043b3bb4ddce', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('75907b8e-fd3c-43f7-9bc8-db3adb195c8c', '69126fb1-3e3f-4741-b6a4-91678103ccfe',
        '0bf956b3-1094-4891-9fac-043b3bb4ddce', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4b3f6727-4bae-4f95-9197-f6a3c1c1330b', 'a4f7f094-e1ff-4280-aa2f-33e17fb03d07',
        '0bf956b3-1094-4891-9fac-043b3bb4ddce', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('db0f8dcf-ac76-42b8-b4e4-9d72d58ea425', '9f8b49e7-cd35-4115-8e2a-a4bc71ceab78',
        '0bf956b3-1094-4891-9fac-043b3bb4ddce', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9b3af10d-724e-4e08-aa56-dc6e91817b31', 'df70cc34-0233-4ed5-89f4-5864507b42a4',
        '0bf956b3-1094-4891-9fac-043b3bb4ddce', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d719bb5c-a341-4353-b79e-314e670e68fd', '4b4b663a-bc9c-4eb4-ba80-f86adc0951f9',
        '0bf956b3-1094-4891-9fac-043b3bb4ddce', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b8c426eb-fe2f-4474-be23-4d1ac9e1a092', '231e38c1-fb35-4262-9a80-ea7a4d0a00ba',
        '0bf956b3-1094-4891-9fac-043b3bb4ddce', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c904df1e-2c3e-483e-97d0-250ea486fb3c', '57008dea-844d-44c7-8adc-6389295384c7',
        '0bf956b3-1094-4891-9fac-043b3bb4ddce', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5e875f6a-b2a1-4c06-945a-925b07c17f75', 'a214c6f9-029b-444d-82a0-8bc98a044a43',
        '0bf956b3-1094-4891-9fac-043b3bb4ddce', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('19f62bf5-13f9-42de-8439-4a7a4d8f2d80', '630e876e-62d7-498b-aae9-f8326e875369',
        '0bf956b3-1094-4891-9fac-043b3bb4ddce', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('fb8663c1-aaf9-4072-92ee-cb286166c1bd', '1521cd72-8dc2-463a-8cef-2c8c8166493b',
        '0bf956b3-1094-4891-9fac-043b3bb4ddce', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('53b9cf50-c192-48b6-8f80-78effabd1586', '4c411dfd-41e6-4c53-bb7b-37cc54c1c8e8',
        '0bf956b3-1094-4891-9fac-043b3bb4ddce', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e61ed754-9dda-412d-984e-c00c5cde81e5', '92bb831c-040f-4686-8acd-f42d8629ba7b',
        '0bf956b3-1094-4891-9fac-043b3bb4ddce', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5a369189-3bed-456f-99db-a5eb8ba6e2c0', 'fe8d890a-abea-44fc-92fe-ba3678289387',
        '0bf956b3-1094-4891-9fac-043b3bb4ddce', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('bbc16e45-b5a7-4138-bac2-b10a1aa0cf08', '4de87bed-0d07-419e-9991-32658cdb0a9d',
        '0bf956b3-1094-4891-9fac-043b3bb4ddce', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('fbbd84cb-7ebd-4d56-89e0-feb5b574547e', '7570b82c-a85d-446c-9a92-5c0bb332a8a3',
        '0bf956b3-1094-4891-9fac-043b3bb4ddce', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('306c2caf-c803-4688-a42c-ad1343a185af', 'b8b056d3-228d-4363-8f43-a1fed1da8695',
        '0bf956b3-1094-4891-9fac-043b3bb4ddce', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a5aabcab-fab2-4d9f-87d5-e0718a143095', '5a08407a-ba00-4be3-bbc6-c50dc256d8f5',
        '0bf956b3-1094-4891-9fac-043b3bb4ddce', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d6b8899b-1d30-4f76-b312-58c664961cee', 'cac14782-c714-49d4-803d-6bdfb7fb8707',
        '0bf956b3-1094-4891-9fac-043b3bb4ddce', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9b111df3-d471-427a-8c43-afa5a2d5daf6', '3d723b44-2db7-4730-af04-6007ae7d2178',
        '0bf956b3-1094-4891-9fac-043b3bb4ddce', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('cc44ccdb-da1d-470e-9a1f-89fa88018a9b', '9a4f51df-c428-4a18-9055-511e0ae7b6d8',
        '0bf956b3-1094-4891-9fac-043b3bb4ddce', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b977abb2-94f9-491a-bbad-4b8e80902c1d', 'fd1edc81-f470-4dbe-95cf-ea6ad5e85cf2',
        '0bf956b3-1094-4891-9fac-043b3bb4ddce', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('469085a4-708c-40b0-8255-21feb4d678b6', '6e2740d2-ef18-4564-b8c7-9f7214308f81',
        '0bf956b3-1094-4891-9fac-043b3bb4ddce', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4e76956d-7355-414b-ae1e-15600473f786', '926c446b-9db8-4b9c-a406-ed40dff69e34',
        '0bf956b3-1094-4891-9fac-043b3bb4ddce', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('85f07787-f7cb-42ff-9319-1aa722c953e8', 'eaa9530f-bb8c-453f-b634-c8599039e296',
        '0bf956b3-1094-4891-9fac-043b3bb4ddce', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a6375d32-1c77-4bf9-86b9-512245f7d42b', 'bdc5f279-42bf-491c-b87a-409b3c7bff89',
        '0bf956b3-1094-4891-9fac-043b3bb4ddce', 2, current_timestamp, current_timestamp);

-- politician 'c0fffdd1-a230-44b4-b890-20ff4b09e58a'
insert into QuestionAnswer
values ('e9502b8d-24d8-478e-bf5f-d79d66afdca4', 'a335650d-06b4-4e92-ba77-d5f8964ceb82',
        'c0fffdd1-a230-44b4-b890-20ff4b09e58a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('43905caf-230b-4f0d-b984-2e94de6cebe3', '46df8b49-923c-4f91-8362-5196efbb71e2',
        'c0fffdd1-a230-44b4-b890-20ff4b09e58a', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2e0fc09d-1294-41b0-84eb-32bde85e5fea', '5f277258-ba7b-492c-b451-673eaa5957c0',
        'c0fffdd1-a230-44b4-b890-20ff4b09e58a', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('256a4069-966e-45bc-bcb9-b840f832e632', '007ebae0-31cb-40fb-93ad-c2f980caee14',
        'c0fffdd1-a230-44b4-b890-20ff4b09e58a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('51a43939-99d0-4396-8144-ac4a344c16ee', '8ae0f13d-e699-4617-a4ba-672e6ccc0edc',
        'c0fffdd1-a230-44b4-b890-20ff4b09e58a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1c49aa10-623d-454b-a188-2f1863c15837', 'dee756b8-f4f2-474a-88f4-e7f4fea7275a',
        'c0fffdd1-a230-44b4-b890-20ff4b09e58a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9f3cac24-74d2-409c-b7c8-77da67f5a1d0', 'b8ec593e-93b8-4bab-95dd-cfff5c526d54',
        'c0fffdd1-a230-44b4-b890-20ff4b09e58a', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1d9a3353-347d-4c3b-a9e6-2a731b786149', '6f9db124-e0ae-409d-b943-5be0cbc836e5',
        'c0fffdd1-a230-44b4-b890-20ff4b09e58a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('be4526c9-c7ec-4d66-ad51-a8516116dae2', '616bf16a-470d-494e-ad8b-b230e80dafb3',
        'c0fffdd1-a230-44b4-b890-20ff4b09e58a', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d8333e4c-9fb2-4e2d-b11c-e4c4522c0729', '6c05b44c-34de-48a4-8d3c-6015b268c456',
        'c0fffdd1-a230-44b4-b890-20ff4b09e58a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c4f3fe34-b128-4e8b-a2ff-df229e97af68', '3ac4a61c-f510-4d59-84cc-e957dbeedd8e',
        'c0fffdd1-a230-44b4-b890-20ff4b09e58a', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f81597e0-4ece-4baa-82ed-5fa29aa09204', 'f4f5632d-00ae-4be2-aff8-c83da3c21519',
        'c0fffdd1-a230-44b4-b890-20ff4b09e58a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a2e8ad0b-72d6-4f52-aef9-bdd9d5bfe53c', '4917d24b-e50c-4fa9-ac12-37a0d298f41f',
        'c0fffdd1-a230-44b4-b890-20ff4b09e58a', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3ee50aa7-30e7-4442-85b0-6e90968f7fb4', 'aee92954-3fab-449d-bc56-7ec47df873cb',
        'c0fffdd1-a230-44b4-b890-20ff4b09e58a', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('24c82f6d-834b-432c-8f90-b3411cf024aa', '19d57226-91df-4c5a-92f4-7b7d774ea8c4',
        'c0fffdd1-a230-44b4-b890-20ff4b09e58a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('805559f3-bb31-4f73-99a2-5c11147c559f', '81f2e7c9-6871-44e3-a432-b0fd050dd187',
        'c0fffdd1-a230-44b4-b890-20ff4b09e58a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5167edd6-7ab7-4ad4-bb80-f190ee385280', '377a4b78-e58a-4d13-875f-817cd1693ece',
        'c0fffdd1-a230-44b4-b890-20ff4b09e58a', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('daf05094-c3c8-4fbe-a026-fafe1ffd2173', '54e790a7-9741-408e-9327-3377df0e9b6e',
        'c0fffdd1-a230-44b4-b890-20ff4b09e58a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b6da5b63-2587-489e-aa32-aec6f323b995', '5dce5233-88d5-4b52-94de-6465ace4be98',
        'c0fffdd1-a230-44b4-b890-20ff4b09e58a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('24061c55-0e5c-4ad6-876d-ede59df3a007', '63aa0cb7-202d-4c54-85ae-051e8249115d',
        'c0fffdd1-a230-44b4-b890-20ff4b09e58a', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ecbfcbff-d7ea-4ec7-8111-b6b454b82f92', 'fb59e236-0633-46ca-a8b5-c0d7596ee10e',
        'c0fffdd1-a230-44b4-b890-20ff4b09e58a', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('18077c96-e1f8-4d32-875a-58b0e7c9dfa7', '154147b7-aff2-4ff1-89cf-fcd6616ca6d2',
        'c0fffdd1-a230-44b4-b890-20ff4b09e58a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ece4c1f3-4eaa-4cb5-8295-6551de98809b', '6e8b2868-8094-46d3-95be-2397eb9d5237',
        'c0fffdd1-a230-44b4-b890-20ff4b09e58a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0dfe2ecb-d5c0-487a-a109-97211fa72c16', '112cc8ee-b996-4b19-9192-9e82b92aae94',
        'c0fffdd1-a230-44b4-b890-20ff4b09e58a', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('890cf1e9-99a1-4f42-9676-b17c22f6c653', '60c4bebf-411f-456f-9eab-5afd98fde9c7',
        'c0fffdd1-a230-44b4-b890-20ff4b09e58a', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7b9b8e5b-0adb-4011-abee-e1e68b3ba796', 'c393d2b5-6e50-4d7a-ad40-e112851e0711',
        'c0fffdd1-a230-44b4-b890-20ff4b09e58a', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a449cf59-c9f6-4b0c-8b46-0713c973066c', '38630605-5c28-4b5c-b042-93c43bf23ebc',
        'c0fffdd1-a230-44b4-b890-20ff4b09e58a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e03c56ce-9400-4a86-8455-693f7bc15f55', 'cc721727-53e6-4b1c-9d85-c97c46b5422e',
        'c0fffdd1-a230-44b4-b890-20ff4b09e58a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a62eb43f-40c1-46c9-8d12-7985efc3fde1', 'ccb39a89-f63e-4537-90cd-e3186178ae1f',
        'c0fffdd1-a230-44b4-b890-20ff4b09e58a', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('144cd66f-be5e-4934-8881-48732c458892', 'b34bfec1-ee6c-46bc-9d52-99e90b59fe12',
        'c0fffdd1-a230-44b4-b890-20ff4b09e58a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('bcf99e98-07aa-4501-9c57-08d6c0b7566a', '6b7955fe-fb44-4b68-92b5-13aedcce4e76',
        'c0fffdd1-a230-44b4-b890-20ff4b09e58a', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c22ad076-7580-4989-90f5-3613f7c322d3', '204814c3-bf71-4b17-9727-c6d435976da6',
        'c0fffdd1-a230-44b4-b890-20ff4b09e58a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('71d16698-1d8f-47e1-900c-c2b5f89660f2', 'd118e4c3-08b7-4c8e-95de-81b8715b6f1d',
        'c0fffdd1-a230-44b4-b890-20ff4b09e58a', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a0f6bfd5-ff28-4797-9bdf-45934035d8e5', 'db255fa3-e68a-47b3-9651-a7cc95b33689',
        'c0fffdd1-a230-44b4-b890-20ff4b09e58a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('cb7e6d90-8868-4ef3-9f1b-a7dde9baa4a6', '42b30d8f-b8eb-46be-93ee-446f2d1d2706',
        'c0fffdd1-a230-44b4-b890-20ff4b09e58a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b9a51b3b-c664-495a-a3de-e5df86b4aae6', '69126fb1-3e3f-4741-b6a4-91678103ccfe',
        'c0fffdd1-a230-44b4-b890-20ff4b09e58a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('bf1165b0-e5c0-4cf1-bcd6-efcfeffef722', 'a4f7f094-e1ff-4280-aa2f-33e17fb03d07',
        'c0fffdd1-a230-44b4-b890-20ff4b09e58a', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('df42e602-3591-494f-811a-88e4edc093fc', '9f8b49e7-cd35-4115-8e2a-a4bc71ceab78',
        'c0fffdd1-a230-44b4-b890-20ff4b09e58a', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8be23a35-2691-47ba-a819-b676de2ae769', 'df70cc34-0233-4ed5-89f4-5864507b42a4',
        'c0fffdd1-a230-44b4-b890-20ff4b09e58a', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('bd728495-34ac-4656-9118-40ccb30dcbc3', '4b4b663a-bc9c-4eb4-ba80-f86adc0951f9',
        'c0fffdd1-a230-44b4-b890-20ff4b09e58a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('01debec9-d6f4-42cb-bbd2-05af753aaee2', '231e38c1-fb35-4262-9a80-ea7a4d0a00ba',
        'c0fffdd1-a230-44b4-b890-20ff4b09e58a', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8d2cb32c-04f7-4a5a-bb56-2ae783879247', '57008dea-844d-44c7-8adc-6389295384c7',
        'c0fffdd1-a230-44b4-b890-20ff4b09e58a', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('13cbb0a4-20b0-4610-a010-c3ee7737e37a', 'a214c6f9-029b-444d-82a0-8bc98a044a43',
        'c0fffdd1-a230-44b4-b890-20ff4b09e58a', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('40d7e7b5-75af-4c11-ae90-d9fad6abc053', '630e876e-62d7-498b-aae9-f8326e875369',
        'c0fffdd1-a230-44b4-b890-20ff4b09e58a', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b42294a7-66ee-4002-8cc3-93f042422b27', '1521cd72-8dc2-463a-8cef-2c8c8166493b',
        'c0fffdd1-a230-44b4-b890-20ff4b09e58a', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('dadd561f-f37d-4939-b0cf-b1da4dfc75a9', '4c411dfd-41e6-4c53-bb7b-37cc54c1c8e8',
        'c0fffdd1-a230-44b4-b890-20ff4b09e58a', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9cd42f49-663f-496d-b371-1426d847574e', '92bb831c-040f-4686-8acd-f42d8629ba7b',
        'c0fffdd1-a230-44b4-b890-20ff4b09e58a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ef6db1b5-b67e-484f-a66e-72dba37bb2c7', 'fe8d890a-abea-44fc-92fe-ba3678289387',
        'c0fffdd1-a230-44b4-b890-20ff4b09e58a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('996688da-b574-4d21-8285-cc9c14954f60', '4de87bed-0d07-419e-9991-32658cdb0a9d',
        'c0fffdd1-a230-44b4-b890-20ff4b09e58a', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('bc7e93b4-56ee-42a5-a880-e468b5472da1', '7570b82c-a85d-446c-9a92-5c0bb332a8a3',
        'c0fffdd1-a230-44b4-b890-20ff4b09e58a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b279512d-7e82-4e17-9a9c-da0bec12c182', 'b8b056d3-228d-4363-8f43-a1fed1da8695',
        'c0fffdd1-a230-44b4-b890-20ff4b09e58a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e6d97c6f-a9af-42f4-acc2-75deba7d7e46', '5a08407a-ba00-4be3-bbc6-c50dc256d8f5',
        'c0fffdd1-a230-44b4-b890-20ff4b09e58a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('69344d64-66f4-4f82-9ddc-c72533cf728f', 'cac14782-c714-49d4-803d-6bdfb7fb8707',
        'c0fffdd1-a230-44b4-b890-20ff4b09e58a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6536c441-fa43-4fc7-89f5-075a470441ae', '3d723b44-2db7-4730-af04-6007ae7d2178',
        'c0fffdd1-a230-44b4-b890-20ff4b09e58a', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b5e97503-195d-4d88-b3a9-d1a9bb689b74', '9a4f51df-c428-4a18-9055-511e0ae7b6d8',
        'c0fffdd1-a230-44b4-b890-20ff4b09e58a', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('96aa56e7-57ea-4487-a94b-0cec64720916', 'fd1edc81-f470-4dbe-95cf-ea6ad5e85cf2',
        'c0fffdd1-a230-44b4-b890-20ff4b09e58a', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4ea19c74-e13e-4522-901a-bd66f4fc5160', '6e2740d2-ef18-4564-b8c7-9f7214308f81',
        'c0fffdd1-a230-44b4-b890-20ff4b09e58a', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a6f3b576-a2c1-452c-a81f-f8f6ce6d9d80', '926c446b-9db8-4b9c-a406-ed40dff69e34',
        'c0fffdd1-a230-44b4-b890-20ff4b09e58a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ef0a221d-9465-4180-a7c0-ef9031a25d63', 'eaa9530f-bb8c-453f-b634-c8599039e296',
        'c0fffdd1-a230-44b4-b890-20ff4b09e58a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('731532aa-b25c-45f0-ab80-574312b0e9b3', 'bdc5f279-42bf-491c-b87a-409b3c7bff89',
        'c0fffdd1-a230-44b4-b890-20ff4b09e58a', 2, current_timestamp, current_timestamp);

-- politician 'a044da59-0467-4dea-8e30-e0dee2b053a5'
insert into QuestionAnswer
values ('43c91ef7-3cb0-439b-967d-8c16b3bd0ac6', 'a335650d-06b4-4e92-ba77-d5f8964ceb82',
        'a044da59-0467-4dea-8e30-e0dee2b053a5', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d1c30f19-ad73-443a-9367-e4e08e871fc4', '46df8b49-923c-4f91-8362-5196efbb71e2',
        'a044da59-0467-4dea-8e30-e0dee2b053a5', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('33bdf150-1175-42e2-a75b-14c23ab57168', '5f277258-ba7b-492c-b451-673eaa5957c0',
        'a044da59-0467-4dea-8e30-e0dee2b053a5', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('38510c67-810c-4fc1-94fd-7ce2187fc6bd', '007ebae0-31cb-40fb-93ad-c2f980caee14',
        'a044da59-0467-4dea-8e30-e0dee2b053a5', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('022d3e2b-9371-43f3-bfa1-76a021c572a0', '8ae0f13d-e699-4617-a4ba-672e6ccc0edc',
        'a044da59-0467-4dea-8e30-e0dee2b053a5', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('482bbb21-4a49-4720-bf47-e495221656a7', 'dee756b8-f4f2-474a-88f4-e7f4fea7275a',
        'a044da59-0467-4dea-8e30-e0dee2b053a5', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('165cd362-4acc-46b5-ba5d-62a71e3d226d', 'b8ec593e-93b8-4bab-95dd-cfff5c526d54',
        'a044da59-0467-4dea-8e30-e0dee2b053a5', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6a28b3b9-723f-4ec1-9950-fc410d1d3d90', '6f9db124-e0ae-409d-b943-5be0cbc836e5',
        'a044da59-0467-4dea-8e30-e0dee2b053a5', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6900800e-de8c-4823-bd7d-87b9b2a34f3c', '616bf16a-470d-494e-ad8b-b230e80dafb3',
        'a044da59-0467-4dea-8e30-e0dee2b053a5', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ec976afe-610a-4c12-a294-5aec0f8c1c6b', '6c05b44c-34de-48a4-8d3c-6015b268c456',
        'a044da59-0467-4dea-8e30-e0dee2b053a5', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('11461f73-f9b9-426b-9323-956a12a5f9ab', '3ac4a61c-f510-4d59-84cc-e957dbeedd8e',
        'a044da59-0467-4dea-8e30-e0dee2b053a5', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9fc8dac5-5717-41ae-8b1d-62f981a91ad1', 'f4f5632d-00ae-4be2-aff8-c83da3c21519',
        'a044da59-0467-4dea-8e30-e0dee2b053a5', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3940d6dd-03f0-47ce-9b8a-1607ab02e12e', '4917d24b-e50c-4fa9-ac12-37a0d298f41f',
        'a044da59-0467-4dea-8e30-e0dee2b053a5', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('51321e2a-0c2b-473c-8297-bd0dd9db056f', 'aee92954-3fab-449d-bc56-7ec47df873cb',
        'a044da59-0467-4dea-8e30-e0dee2b053a5', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('017e9a9d-7acc-4d28-bebb-62ec4655fa0e', '19d57226-91df-4c5a-92f4-7b7d774ea8c4',
        'a044da59-0467-4dea-8e30-e0dee2b053a5', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4d7a5661-4612-4871-9023-7f4dd86839f3', '81f2e7c9-6871-44e3-a432-b0fd050dd187',
        'a044da59-0467-4dea-8e30-e0dee2b053a5', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9e83c030-d1f1-4773-9209-f993c22b3d80', '377a4b78-e58a-4d13-875f-817cd1693ece',
        'a044da59-0467-4dea-8e30-e0dee2b053a5', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f78517d0-bc9a-47b4-9dc1-028e4af6a515', '54e790a7-9741-408e-9327-3377df0e9b6e',
        'a044da59-0467-4dea-8e30-e0dee2b053a5', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1f475158-4342-422c-882d-f39f6b29bb72', '5dce5233-88d5-4b52-94de-6465ace4be98',
        'a044da59-0467-4dea-8e30-e0dee2b053a5', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('bd1944bc-dd0b-4f28-9ea4-e1bb439f6ee8', '63aa0cb7-202d-4c54-85ae-051e8249115d',
        'a044da59-0467-4dea-8e30-e0dee2b053a5', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('26fb2270-4092-4a0d-92b7-564d620637cf', 'fb59e236-0633-46ca-a8b5-c0d7596ee10e',
        'a044da59-0467-4dea-8e30-e0dee2b053a5', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0e58d00e-69c2-4aab-b95a-7bb5db16ad81', '154147b7-aff2-4ff1-89cf-fcd6616ca6d2',
        'a044da59-0467-4dea-8e30-e0dee2b053a5', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('22b34731-2085-4218-8d7b-49279ce14c6e', '6e8b2868-8094-46d3-95be-2397eb9d5237',
        'a044da59-0467-4dea-8e30-e0dee2b053a5', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('15dba490-0d68-43f0-a0c5-68ca5ae59cd6', '112cc8ee-b996-4b19-9192-9e82b92aae94',
        'a044da59-0467-4dea-8e30-e0dee2b053a5', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4443e314-8d60-4a56-8400-5c0e3c1a5c7e', '60c4bebf-411f-456f-9eab-5afd98fde9c7',
        'a044da59-0467-4dea-8e30-e0dee2b053a5', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e0ed1511-f263-4766-a71f-d8af6118603b', 'c393d2b5-6e50-4d7a-ad40-e112851e0711',
        'a044da59-0467-4dea-8e30-e0dee2b053a5', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('aaa7a998-f63f-475c-b8ee-c234518f55e1', '38630605-5c28-4b5c-b042-93c43bf23ebc',
        'a044da59-0467-4dea-8e30-e0dee2b053a5', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f327ffec-700a-4195-a51a-62eef916a328', 'cc721727-53e6-4b1c-9d85-c97c46b5422e',
        'a044da59-0467-4dea-8e30-e0dee2b053a5', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('48a85c2e-039a-48e3-817a-dc214ad2997b', 'ccb39a89-f63e-4537-90cd-e3186178ae1f',
        'a044da59-0467-4dea-8e30-e0dee2b053a5', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('18dd0856-adb9-4c96-8712-1e2cec3eac29', 'b34bfec1-ee6c-46bc-9d52-99e90b59fe12',
        'a044da59-0467-4dea-8e30-e0dee2b053a5', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0bae758a-92c4-40f5-bb80-e08a312868e9', '6b7955fe-fb44-4b68-92b5-13aedcce4e76',
        'a044da59-0467-4dea-8e30-e0dee2b053a5', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('74f7355d-9839-4d4c-8287-7763503bf22f', '204814c3-bf71-4b17-9727-c6d435976da6',
        'a044da59-0467-4dea-8e30-e0dee2b053a5', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('19e83a94-6745-4d11-9e4e-f66e46d07e79', 'd118e4c3-08b7-4c8e-95de-81b8715b6f1d',
        'a044da59-0467-4dea-8e30-e0dee2b053a5', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b34fc8ab-80b5-4079-ba52-8c23f2d3c181', 'db255fa3-e68a-47b3-9651-a7cc95b33689',
        'a044da59-0467-4dea-8e30-e0dee2b053a5', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e1ee00dc-b4aa-4012-9e2f-4a2640dfc7a6', '42b30d8f-b8eb-46be-93ee-446f2d1d2706',
        'a044da59-0467-4dea-8e30-e0dee2b053a5', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('210b15fd-ebb4-476c-8ead-e6a034f133f7', '69126fb1-3e3f-4741-b6a4-91678103ccfe',
        'a044da59-0467-4dea-8e30-e0dee2b053a5', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8b17467e-5510-4723-9d7f-f937ac713680', 'a4f7f094-e1ff-4280-aa2f-33e17fb03d07',
        'a044da59-0467-4dea-8e30-e0dee2b053a5', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a48378b0-7695-4c1e-9161-ad4376c82d34', '9f8b49e7-cd35-4115-8e2a-a4bc71ceab78',
        'a044da59-0467-4dea-8e30-e0dee2b053a5', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('24351e3c-6134-46ab-bbf5-fd657c75d5aa', 'df70cc34-0233-4ed5-89f4-5864507b42a4',
        'a044da59-0467-4dea-8e30-e0dee2b053a5', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ac5ec40f-b837-4ea0-9022-2136809fc9f9', '4b4b663a-bc9c-4eb4-ba80-f86adc0951f9',
        'a044da59-0467-4dea-8e30-e0dee2b053a5', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1b20dca3-0c9c-4936-98cd-8df1818be734', '231e38c1-fb35-4262-9a80-ea7a4d0a00ba',
        'a044da59-0467-4dea-8e30-e0dee2b053a5', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e8a96094-af43-4d93-909f-9037bba22e02', '57008dea-844d-44c7-8adc-6389295384c7',
        'a044da59-0467-4dea-8e30-e0dee2b053a5', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c99b9e80-1e6c-493d-bdb5-15b00f33d42c', 'a214c6f9-029b-444d-82a0-8bc98a044a43',
        'a044da59-0467-4dea-8e30-e0dee2b053a5', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('bd0ba0f5-986c-46f6-ad3b-a7970b81d794', '630e876e-62d7-498b-aae9-f8326e875369',
        'a044da59-0467-4dea-8e30-e0dee2b053a5', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4abd6b7e-080a-4b22-9817-824ba365b9c3', '1521cd72-8dc2-463a-8cef-2c8c8166493b',
        'a044da59-0467-4dea-8e30-e0dee2b053a5', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1f0a2f5d-ddb6-4e92-b2ef-9070eb37e34c', '4c411dfd-41e6-4c53-bb7b-37cc54c1c8e8',
        'a044da59-0467-4dea-8e30-e0dee2b053a5', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6c51ac69-d28b-44ea-855b-1f6c7cb5b042', '92bb831c-040f-4686-8acd-f42d8629ba7b',
        'a044da59-0467-4dea-8e30-e0dee2b053a5', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('956099ee-5e9b-4d7e-8991-75e48f8bd3f4', 'fe8d890a-abea-44fc-92fe-ba3678289387',
        'a044da59-0467-4dea-8e30-e0dee2b053a5', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('99a5c05a-b8da-4fb3-b878-6002122f69e4', '4de87bed-0d07-419e-9991-32658cdb0a9d',
        'a044da59-0467-4dea-8e30-e0dee2b053a5', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('cbe6bb07-3227-466c-b832-7982d742b7b9', '7570b82c-a85d-446c-9a92-5c0bb332a8a3',
        'a044da59-0467-4dea-8e30-e0dee2b053a5', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5b9fc3fe-b98d-464e-802b-4e89e0debd93', 'b8b056d3-228d-4363-8f43-a1fed1da8695',
        'a044da59-0467-4dea-8e30-e0dee2b053a5', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4dfaee99-60c2-4e2c-96d9-fbe8df924ab2', '5a08407a-ba00-4be3-bbc6-c50dc256d8f5',
        'a044da59-0467-4dea-8e30-e0dee2b053a5', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3bde5881-2f6b-493d-90f5-232414fc7e40', 'cac14782-c714-49d4-803d-6bdfb7fb8707',
        'a044da59-0467-4dea-8e30-e0dee2b053a5', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c8cc6155-4e78-42b9-bf71-42863f104a4a', '3d723b44-2db7-4730-af04-6007ae7d2178',
        'a044da59-0467-4dea-8e30-e0dee2b053a5', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d4c18847-267b-423a-a18c-f09620559ccc', '9a4f51df-c428-4a18-9055-511e0ae7b6d8',
        'a044da59-0467-4dea-8e30-e0dee2b053a5', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('32e1ce34-3dce-4a2f-a319-2f4d64d09720', 'fd1edc81-f470-4dbe-95cf-ea6ad5e85cf2',
        'a044da59-0467-4dea-8e30-e0dee2b053a5', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5631874d-03d2-4c7d-bce2-8e770b90b6c8', '6e2740d2-ef18-4564-b8c7-9f7214308f81',
        'a044da59-0467-4dea-8e30-e0dee2b053a5', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('31283a4a-1e59-45fe-bc1b-942a20cc75a1', '926c446b-9db8-4b9c-a406-ed40dff69e34',
        'a044da59-0467-4dea-8e30-e0dee2b053a5', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('54f9a8cc-eb4f-4ca6-979c-5ce7cc686aef', 'eaa9530f-bb8c-453f-b634-c8599039e296',
        'a044da59-0467-4dea-8e30-e0dee2b053a5', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4fcd31be-4e57-4845-b266-5dc440faa7fe', 'bdc5f279-42bf-491c-b87a-409b3c7bff89',
        'a044da59-0467-4dea-8e30-e0dee2b053a5', 3, current_timestamp, current_timestamp);

-- politician '817d113c-9874-4511-a5f3-08a256a7dfb8'
insert into QuestionAnswer
values ('981e5047-4db1-496b-86f5-f7995c3761cf', 'a335650d-06b4-4e92-ba77-d5f8964ceb82',
        '817d113c-9874-4511-a5f3-08a256a7dfb8', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8afefc16-e964-431e-98b2-f3d1ebe2c2ef', '46df8b49-923c-4f91-8362-5196efbb71e2',
        '817d113c-9874-4511-a5f3-08a256a7dfb8', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('880293ff-50a1-49d3-b365-2a646ecb9f68', '5f277258-ba7b-492c-b451-673eaa5957c0',
        '817d113c-9874-4511-a5f3-08a256a7dfb8', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ed3018f2-38f6-4076-aab2-da1529255394', '007ebae0-31cb-40fb-93ad-c2f980caee14',
        '817d113c-9874-4511-a5f3-08a256a7dfb8', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9168e6ac-3976-4c13-93cf-21a5c6af6f62', '8ae0f13d-e699-4617-a4ba-672e6ccc0edc',
        '817d113c-9874-4511-a5f3-08a256a7dfb8', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('638a5164-070f-421f-893a-e47cabeee859', 'dee756b8-f4f2-474a-88f4-e7f4fea7275a',
        '817d113c-9874-4511-a5f3-08a256a7dfb8', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8db1bf35-b2fe-40d1-bc4b-6ae4f4ff87d0', 'b8ec593e-93b8-4bab-95dd-cfff5c526d54',
        '817d113c-9874-4511-a5f3-08a256a7dfb8', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a08b411c-7de6-452c-9412-14c803b299c2', '6f9db124-e0ae-409d-b943-5be0cbc836e5',
        '817d113c-9874-4511-a5f3-08a256a7dfb8', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5dc2cc53-444b-4581-936d-6262baf234bd', '616bf16a-470d-494e-ad8b-b230e80dafb3',
        '817d113c-9874-4511-a5f3-08a256a7dfb8', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4d734507-ab42-4f93-bb45-d25e7ba48ee9', '6c05b44c-34de-48a4-8d3c-6015b268c456',
        '817d113c-9874-4511-a5f3-08a256a7dfb8', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('638734b7-c728-4320-86bd-354e667b93b8', '3ac4a61c-f510-4d59-84cc-e957dbeedd8e',
        '817d113c-9874-4511-a5f3-08a256a7dfb8', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e0260634-a59b-45ff-ad14-dd440f5b46f1', 'f4f5632d-00ae-4be2-aff8-c83da3c21519',
        '817d113c-9874-4511-a5f3-08a256a7dfb8', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('15e27c84-b120-474c-9707-08dabe859815', '4917d24b-e50c-4fa9-ac12-37a0d298f41f',
        '817d113c-9874-4511-a5f3-08a256a7dfb8', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4997bbf2-3a61-415e-9c6e-e842dd9e1339', 'aee92954-3fab-449d-bc56-7ec47df873cb',
        '817d113c-9874-4511-a5f3-08a256a7dfb8', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('cc88e8ce-73c2-4baa-a3b7-bb1cb36c6ed1', '19d57226-91df-4c5a-92f4-7b7d774ea8c4',
        '817d113c-9874-4511-a5f3-08a256a7dfb8', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('045d7fdf-6e89-40d0-b7e0-d62e4f01e398', '81f2e7c9-6871-44e3-a432-b0fd050dd187',
        '817d113c-9874-4511-a5f3-08a256a7dfb8', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b7c0b5e6-a15e-403f-af01-90dce4d3ae0d', '377a4b78-e58a-4d13-875f-817cd1693ece',
        '817d113c-9874-4511-a5f3-08a256a7dfb8', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('553f650f-5ecc-43d7-9bce-ba83e1a0c539', '54e790a7-9741-408e-9327-3377df0e9b6e',
        '817d113c-9874-4511-a5f3-08a256a7dfb8', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('83fe7c70-f9b2-4930-a7fc-fa0b6a872ebc', '5dce5233-88d5-4b52-94de-6465ace4be98',
        '817d113c-9874-4511-a5f3-08a256a7dfb8', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8628e40f-d843-47e7-9d5c-971d1c45dbe6', '63aa0cb7-202d-4c54-85ae-051e8249115d',
        '817d113c-9874-4511-a5f3-08a256a7dfb8', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b6593b99-fbeb-4f4b-b4d9-e39b36168dec', 'fb59e236-0633-46ca-a8b5-c0d7596ee10e',
        '817d113c-9874-4511-a5f3-08a256a7dfb8', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a80ac68a-1350-4346-b52e-7e48e2cb5d9b', '154147b7-aff2-4ff1-89cf-fcd6616ca6d2',
        '817d113c-9874-4511-a5f3-08a256a7dfb8', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('36f7d786-d32a-418c-992f-ec0a34578400', '6e8b2868-8094-46d3-95be-2397eb9d5237',
        '817d113c-9874-4511-a5f3-08a256a7dfb8', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c7000a7d-f377-49f0-b3f5-79196651f88d', '112cc8ee-b996-4b19-9192-9e82b92aae94',
        '817d113c-9874-4511-a5f3-08a256a7dfb8', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e7bea5f7-7494-46f5-af87-95732b98ba92', '60c4bebf-411f-456f-9eab-5afd98fde9c7',
        '817d113c-9874-4511-a5f3-08a256a7dfb8', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ece2c6a8-5e43-406c-a4ae-4080d10fb109', 'c393d2b5-6e50-4d7a-ad40-e112851e0711',
        '817d113c-9874-4511-a5f3-08a256a7dfb8', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c51d1e8b-b2aa-416f-9bbb-6fee0df136e2', '38630605-5c28-4b5c-b042-93c43bf23ebc',
        '817d113c-9874-4511-a5f3-08a256a7dfb8', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1ccf20a2-8f61-46f7-9136-cc50f773c403', 'cc721727-53e6-4b1c-9d85-c97c46b5422e',
        '817d113c-9874-4511-a5f3-08a256a7dfb8', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('71359ffd-cf9d-460c-8502-8cb73d347afa', 'ccb39a89-f63e-4537-90cd-e3186178ae1f',
        '817d113c-9874-4511-a5f3-08a256a7dfb8', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ae3d5900-c8c5-4bf2-ab80-2fdd3cddd6f0', 'b34bfec1-ee6c-46bc-9d52-99e90b59fe12',
        '817d113c-9874-4511-a5f3-08a256a7dfb8', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('daceec81-4366-400e-ab77-738124d399e9', '6b7955fe-fb44-4b68-92b5-13aedcce4e76',
        '817d113c-9874-4511-a5f3-08a256a7dfb8', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('96642dbe-68d7-4228-b2ca-d005aae4a8d4', '204814c3-bf71-4b17-9727-c6d435976da6',
        '817d113c-9874-4511-a5f3-08a256a7dfb8', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('caf4fa9c-0c6a-4944-827c-78c686a31326', 'd118e4c3-08b7-4c8e-95de-81b8715b6f1d',
        '817d113c-9874-4511-a5f3-08a256a7dfb8', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a2851c4c-56d6-4cee-afa4-a3880c0aa1f3', 'db255fa3-e68a-47b3-9651-a7cc95b33689',
        '817d113c-9874-4511-a5f3-08a256a7dfb8', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('defdb4e6-1040-4a70-a709-12e182aa33f8', '42b30d8f-b8eb-46be-93ee-446f2d1d2706',
        '817d113c-9874-4511-a5f3-08a256a7dfb8', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c86b94eb-a617-4762-9ab8-721dcebf4244', '69126fb1-3e3f-4741-b6a4-91678103ccfe',
        '817d113c-9874-4511-a5f3-08a256a7dfb8', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b3e1ff72-8b63-489c-96a0-cc2ee9f67c24', 'a4f7f094-e1ff-4280-aa2f-33e17fb03d07',
        '817d113c-9874-4511-a5f3-08a256a7dfb8', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0e18f02a-1073-4495-980d-8ceee94fb41e', '9f8b49e7-cd35-4115-8e2a-a4bc71ceab78',
        '817d113c-9874-4511-a5f3-08a256a7dfb8', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2d37eeec-fe82-4c64-8e47-c37569d2dea2', 'df70cc34-0233-4ed5-89f4-5864507b42a4',
        '817d113c-9874-4511-a5f3-08a256a7dfb8', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('69530115-08e1-4742-aa76-1a928214c2ae', '4b4b663a-bc9c-4eb4-ba80-f86adc0951f9',
        '817d113c-9874-4511-a5f3-08a256a7dfb8', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e5728d1a-a37f-4b12-a658-ae5d85d4ea4b', '231e38c1-fb35-4262-9a80-ea7a4d0a00ba',
        '817d113c-9874-4511-a5f3-08a256a7dfb8', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('760f789e-5b50-42ec-9f94-3def76571d9d', '57008dea-844d-44c7-8adc-6389295384c7',
        '817d113c-9874-4511-a5f3-08a256a7dfb8', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7e001741-5f27-4aa6-b038-b86170aeb049', 'a214c6f9-029b-444d-82a0-8bc98a044a43',
        '817d113c-9874-4511-a5f3-08a256a7dfb8', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e8fdcc1e-8544-4836-8e1f-a131947cd095', '630e876e-62d7-498b-aae9-f8326e875369',
        '817d113c-9874-4511-a5f3-08a256a7dfb8', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('dbe18335-2d35-45b8-8d1e-a8e47e6d34c7', '1521cd72-8dc2-463a-8cef-2c8c8166493b',
        '817d113c-9874-4511-a5f3-08a256a7dfb8', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8d2789c1-9c1b-4868-939e-4c0478f12a81', '4c411dfd-41e6-4c53-bb7b-37cc54c1c8e8',
        '817d113c-9874-4511-a5f3-08a256a7dfb8', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('73c6252c-185a-43e9-b2dd-cc0a3a11e433', '92bb831c-040f-4686-8acd-f42d8629ba7b',
        '817d113c-9874-4511-a5f3-08a256a7dfb8', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('78a956ca-1589-4828-be2d-71f02d63fcb1', 'fe8d890a-abea-44fc-92fe-ba3678289387',
        '817d113c-9874-4511-a5f3-08a256a7dfb8', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('240b66a8-bc5a-496a-82e8-448e29e5a864', '4de87bed-0d07-419e-9991-32658cdb0a9d',
        '817d113c-9874-4511-a5f3-08a256a7dfb8', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b6598331-8484-4348-9f30-f46aaea30829', '7570b82c-a85d-446c-9a92-5c0bb332a8a3',
        '817d113c-9874-4511-a5f3-08a256a7dfb8', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f94c81be-3891-49b0-86ff-636289db0daa', 'b8b056d3-228d-4363-8f43-a1fed1da8695',
        '817d113c-9874-4511-a5f3-08a256a7dfb8', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('15928c40-3a85-4092-95b6-26629b40ec64', '5a08407a-ba00-4be3-bbc6-c50dc256d8f5',
        '817d113c-9874-4511-a5f3-08a256a7dfb8', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7e5414bd-5a4f-47d5-bd1e-411dfcdbcd63', 'cac14782-c714-49d4-803d-6bdfb7fb8707',
        '817d113c-9874-4511-a5f3-08a256a7dfb8', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b260f6b6-c6ac-41d6-ab1e-0537ecd2f041', '3d723b44-2db7-4730-af04-6007ae7d2178',
        '817d113c-9874-4511-a5f3-08a256a7dfb8', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c1fe2f44-7957-4995-bad3-d47dbdb221ca', '9a4f51df-c428-4a18-9055-511e0ae7b6d8',
        '817d113c-9874-4511-a5f3-08a256a7dfb8', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b0147169-ea55-498a-82b8-307253abeb5d', 'fd1edc81-f470-4dbe-95cf-ea6ad5e85cf2',
        '817d113c-9874-4511-a5f3-08a256a7dfb8', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6cc310c0-ddd8-4eea-835d-cfd844a92d59', '6e2740d2-ef18-4564-b8c7-9f7214308f81',
        '817d113c-9874-4511-a5f3-08a256a7dfb8', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5ce27feb-6e5c-4cc3-8d55-2fdcffc1e465', '926c446b-9db8-4b9c-a406-ed40dff69e34',
        '817d113c-9874-4511-a5f3-08a256a7dfb8', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('93dd4807-fcf0-445c-91c9-96b45ed0394e', 'eaa9530f-bb8c-453f-b634-c8599039e296',
        '817d113c-9874-4511-a5f3-08a256a7dfb8', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d0b24ab8-d13b-45db-893b-679e3985ec6a', 'bdc5f279-42bf-491c-b87a-409b3c7bff89',
        '817d113c-9874-4511-a5f3-08a256a7dfb8', 3, current_timestamp, current_timestamp);

-- politician '04bbc8fd-b00e-428d-8a76-158d03394bf7'
insert into QuestionAnswer
values ('0adcd7de-1e51-4c8a-abc3-d8e8be892a2a', 'a335650d-06b4-4e92-ba77-d5f8964ceb82',
        '04bbc8fd-b00e-428d-8a76-158d03394bf7', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('30db0d62-460b-4814-ac17-8df72782ee77', '46df8b49-923c-4f91-8362-5196efbb71e2',
        '04bbc8fd-b00e-428d-8a76-158d03394bf7', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('79c740c6-375a-4363-9b1b-48f38fc4f355', '5f277258-ba7b-492c-b451-673eaa5957c0',
        '04bbc8fd-b00e-428d-8a76-158d03394bf7', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('920d29b4-0db9-44dc-a80a-c4e878bb213d', '007ebae0-31cb-40fb-93ad-c2f980caee14',
        '04bbc8fd-b00e-428d-8a76-158d03394bf7', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d228f98d-c896-43e2-b664-4114c707a54b', '8ae0f13d-e699-4617-a4ba-672e6ccc0edc',
        '04bbc8fd-b00e-428d-8a76-158d03394bf7', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a239db29-ed4e-4ae6-ad52-8089c5f56a2e', 'dee756b8-f4f2-474a-88f4-e7f4fea7275a',
        '04bbc8fd-b00e-428d-8a76-158d03394bf7', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c4de50ce-af78-4c7d-91d1-d0ceceeeb9bf', 'b8ec593e-93b8-4bab-95dd-cfff5c526d54',
        '04bbc8fd-b00e-428d-8a76-158d03394bf7', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b5dd0a3d-0c8a-4789-8165-ef791efac583', '6f9db124-e0ae-409d-b943-5be0cbc836e5',
        '04bbc8fd-b00e-428d-8a76-158d03394bf7', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('380d7d1f-083f-4e1a-a2ff-e61ba6d5d8d0', '616bf16a-470d-494e-ad8b-b230e80dafb3',
        '04bbc8fd-b00e-428d-8a76-158d03394bf7', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9937ca95-1035-4a24-b050-7538ea8c91b9', '6c05b44c-34de-48a4-8d3c-6015b268c456',
        '04bbc8fd-b00e-428d-8a76-158d03394bf7', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1a76d276-0160-4a6c-8822-118c8a122c80', '3ac4a61c-f510-4d59-84cc-e957dbeedd8e',
        '04bbc8fd-b00e-428d-8a76-158d03394bf7', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0e1afb65-dd09-418b-aec5-aa3f59715bc5', 'f4f5632d-00ae-4be2-aff8-c83da3c21519',
        '04bbc8fd-b00e-428d-8a76-158d03394bf7', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('01c79997-f15a-4232-b9f8-01bfeb546886', '4917d24b-e50c-4fa9-ac12-37a0d298f41f',
        '04bbc8fd-b00e-428d-8a76-158d03394bf7', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('aff3f518-8804-42f5-9e19-4e5fe8c2ae05', 'aee92954-3fab-449d-bc56-7ec47df873cb',
        '04bbc8fd-b00e-428d-8a76-158d03394bf7', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c3ef12b5-3c67-42c2-a1cf-b5d9ec37daff', '19d57226-91df-4c5a-92f4-7b7d774ea8c4',
        '04bbc8fd-b00e-428d-8a76-158d03394bf7', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2a2ea41b-a482-4c46-a6ef-792697f89625', '81f2e7c9-6871-44e3-a432-b0fd050dd187',
        '04bbc8fd-b00e-428d-8a76-158d03394bf7', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b6f7cab6-0a96-4205-858f-fdf762164db5', '377a4b78-e58a-4d13-875f-817cd1693ece',
        '04bbc8fd-b00e-428d-8a76-158d03394bf7', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6722a6f5-e8fe-49c0-a508-270a536c548e', '54e790a7-9741-408e-9327-3377df0e9b6e',
        '04bbc8fd-b00e-428d-8a76-158d03394bf7', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a9e6c8b9-e262-4527-9c5c-8de8a9233e8f', '5dce5233-88d5-4b52-94de-6465ace4be98',
        '04bbc8fd-b00e-428d-8a76-158d03394bf7', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6dcf339f-1b87-4ed2-b564-f265a0fef0e9', '63aa0cb7-202d-4c54-85ae-051e8249115d',
        '04bbc8fd-b00e-428d-8a76-158d03394bf7', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a520639c-fa22-42d4-b6f9-2dd3e5bf552f', 'fb59e236-0633-46ca-a8b5-c0d7596ee10e',
        '04bbc8fd-b00e-428d-8a76-158d03394bf7', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4e5a43f8-ef26-4bc6-aecc-37d19710e803', '154147b7-aff2-4ff1-89cf-fcd6616ca6d2',
        '04bbc8fd-b00e-428d-8a76-158d03394bf7', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e8feb727-21bf-4bcf-9598-097a3d6a1a82', '6e8b2868-8094-46d3-95be-2397eb9d5237',
        '04bbc8fd-b00e-428d-8a76-158d03394bf7', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6d8cb3fc-bb42-4d99-8fc6-2ac2ad32c54e', '112cc8ee-b996-4b19-9192-9e82b92aae94',
        '04bbc8fd-b00e-428d-8a76-158d03394bf7', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7b61a6fb-6ac1-47e3-ba61-937a492b1452', '60c4bebf-411f-456f-9eab-5afd98fde9c7',
        '04bbc8fd-b00e-428d-8a76-158d03394bf7', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('08b9207a-ab3a-4b01-a332-7aec65ba92ad', 'c393d2b5-6e50-4d7a-ad40-e112851e0711',
        '04bbc8fd-b00e-428d-8a76-158d03394bf7', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8754d3ef-e3b5-4005-ba27-094756358bd8', '38630605-5c28-4b5c-b042-93c43bf23ebc',
        '04bbc8fd-b00e-428d-8a76-158d03394bf7', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9074522b-4f71-41b7-839b-9658e0a65019', 'cc721727-53e6-4b1c-9d85-c97c46b5422e',
        '04bbc8fd-b00e-428d-8a76-158d03394bf7', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('625a5f2d-e871-4bc9-ac89-bdb77528dad7', 'ccb39a89-f63e-4537-90cd-e3186178ae1f',
        '04bbc8fd-b00e-428d-8a76-158d03394bf7', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('70dcbdea-b77a-4a7a-8074-a0dae75ffac1', 'b34bfec1-ee6c-46bc-9d52-99e90b59fe12',
        '04bbc8fd-b00e-428d-8a76-158d03394bf7', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('cf221530-6f74-44cd-a45c-3faaf0980ea9', '6b7955fe-fb44-4b68-92b5-13aedcce4e76',
        '04bbc8fd-b00e-428d-8a76-158d03394bf7', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('66cfa02e-bd10-4bc5-8ef0-69089eeb6bc3', '204814c3-bf71-4b17-9727-c6d435976da6',
        '04bbc8fd-b00e-428d-8a76-158d03394bf7', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d0a07965-e056-467a-b30c-fc7096b08d2f', 'd118e4c3-08b7-4c8e-95de-81b8715b6f1d',
        '04bbc8fd-b00e-428d-8a76-158d03394bf7', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('dff993ca-2c10-4c11-93ce-2c7b1fadd089', 'db255fa3-e68a-47b3-9651-a7cc95b33689',
        '04bbc8fd-b00e-428d-8a76-158d03394bf7', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('bf6ec954-2689-4921-9288-25cb3d9692bf', '42b30d8f-b8eb-46be-93ee-446f2d1d2706',
        '04bbc8fd-b00e-428d-8a76-158d03394bf7', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('12596d34-d866-4990-bbae-5bce5ac66b36', '69126fb1-3e3f-4741-b6a4-91678103ccfe',
        '04bbc8fd-b00e-428d-8a76-158d03394bf7', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7fc8ba63-89c1-4013-bd60-a39071e1bdce', 'a4f7f094-e1ff-4280-aa2f-33e17fb03d07',
        '04bbc8fd-b00e-428d-8a76-158d03394bf7', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('25cc3dbe-99dd-44a9-8831-b00a2fddddce', '9f8b49e7-cd35-4115-8e2a-a4bc71ceab78',
        '04bbc8fd-b00e-428d-8a76-158d03394bf7', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('868318a8-5e76-49fe-bcde-f9c695b2e45b', 'df70cc34-0233-4ed5-89f4-5864507b42a4',
        '04bbc8fd-b00e-428d-8a76-158d03394bf7', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7fbc1ea0-b852-4790-8131-8990636aa862', '4b4b663a-bc9c-4eb4-ba80-f86adc0951f9',
        '04bbc8fd-b00e-428d-8a76-158d03394bf7', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('272983f8-17cb-4549-805c-18bd1469ac24', '231e38c1-fb35-4262-9a80-ea7a4d0a00ba',
        '04bbc8fd-b00e-428d-8a76-158d03394bf7', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8598f27e-a09b-4e88-bbef-da38f1be0e84', '57008dea-844d-44c7-8adc-6389295384c7',
        '04bbc8fd-b00e-428d-8a76-158d03394bf7', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('fd154d38-406e-474b-844e-d8be40466b29', 'a214c6f9-029b-444d-82a0-8bc98a044a43',
        '04bbc8fd-b00e-428d-8a76-158d03394bf7', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9f8fd48b-976b-4748-9ba7-545472489eab', '630e876e-62d7-498b-aae9-f8326e875369',
        '04bbc8fd-b00e-428d-8a76-158d03394bf7', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4e99fddc-29ad-4ec5-9481-485f20175c2b', '1521cd72-8dc2-463a-8cef-2c8c8166493b',
        '04bbc8fd-b00e-428d-8a76-158d03394bf7', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('76470b39-7293-4fee-ad88-e048e201407b', '4c411dfd-41e6-4c53-bb7b-37cc54c1c8e8',
        '04bbc8fd-b00e-428d-8a76-158d03394bf7', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('99a30d66-8eb1-45c0-a166-ec2e5aec8d02', '92bb831c-040f-4686-8acd-f42d8629ba7b',
        '04bbc8fd-b00e-428d-8a76-158d03394bf7', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('587398db-1271-4e50-8e8d-5ad0908763de', 'fe8d890a-abea-44fc-92fe-ba3678289387',
        '04bbc8fd-b00e-428d-8a76-158d03394bf7', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('60ca8c2b-4d9a-4cad-9c33-0ca6e5c37e5f', '4de87bed-0d07-419e-9991-32658cdb0a9d',
        '04bbc8fd-b00e-428d-8a76-158d03394bf7', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('721828c9-5dc7-4ca3-9a72-4ce23c161994', '7570b82c-a85d-446c-9a92-5c0bb332a8a3',
        '04bbc8fd-b00e-428d-8a76-158d03394bf7', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('00bec7c7-c456-411d-a3af-975928935f5f', 'b8b056d3-228d-4363-8f43-a1fed1da8695',
        '04bbc8fd-b00e-428d-8a76-158d03394bf7', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d14cd606-8aa8-4572-af13-394ebc49f5c3', '5a08407a-ba00-4be3-bbc6-c50dc256d8f5',
        '04bbc8fd-b00e-428d-8a76-158d03394bf7', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1d486a2f-a709-4262-bd45-d2fae9220c0a', 'cac14782-c714-49d4-803d-6bdfb7fb8707',
        '04bbc8fd-b00e-428d-8a76-158d03394bf7', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('180d63e2-5b40-4332-8425-3a5d1525505c', '3d723b44-2db7-4730-af04-6007ae7d2178',
        '04bbc8fd-b00e-428d-8a76-158d03394bf7', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a0a29140-2551-4431-979e-64893964ac44', '9a4f51df-c428-4a18-9055-511e0ae7b6d8',
        '04bbc8fd-b00e-428d-8a76-158d03394bf7', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c4ac7daa-efa2-4327-9232-a5c2a9f190d4', 'fd1edc81-f470-4dbe-95cf-ea6ad5e85cf2',
        '04bbc8fd-b00e-428d-8a76-158d03394bf7', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('54130c7f-9920-4450-bd57-e22ec4678f5c', '6e2740d2-ef18-4564-b8c7-9f7214308f81',
        '04bbc8fd-b00e-428d-8a76-158d03394bf7', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e4814985-c707-4e92-9b1e-9f6528cb9832', '926c446b-9db8-4b9c-a406-ed40dff69e34',
        '04bbc8fd-b00e-428d-8a76-158d03394bf7', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('659d7137-27b6-4a3f-b8f1-056d3d2fda33', 'eaa9530f-bb8c-453f-b634-c8599039e296',
        '04bbc8fd-b00e-428d-8a76-158d03394bf7', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b7fc2711-6f48-4476-93ca-bc44d6bd725a', 'bdc5f279-42bf-491c-b87a-409b3c7bff89',
        '04bbc8fd-b00e-428d-8a76-158d03394bf7', 4, current_timestamp, current_timestamp);

-- politician '5bcc77e3-86a1-47b8-82c4-75443b5023c2'
insert into QuestionAnswer
values ('bf13d747-0bcc-4230-91ed-2a443cf710b7', 'a335650d-06b4-4e92-ba77-d5f8964ceb82',
        '5bcc77e3-86a1-47b8-82c4-75443b5023c2', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('737344ed-4364-4e96-bea7-6e96b44a39b0', '46df8b49-923c-4f91-8362-5196efbb71e2',
        '5bcc77e3-86a1-47b8-82c4-75443b5023c2', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('77901ab6-3f1a-4888-b0ac-a26f624b4908', '5f277258-ba7b-492c-b451-673eaa5957c0',
        '5bcc77e3-86a1-47b8-82c4-75443b5023c2', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('00fc1321-ec43-46bb-aa1a-0894348052e8', '007ebae0-31cb-40fb-93ad-c2f980caee14',
        '5bcc77e3-86a1-47b8-82c4-75443b5023c2', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9e9d6f14-07c1-466c-972c-4e382a2e424e', '8ae0f13d-e699-4617-a4ba-672e6ccc0edc',
        '5bcc77e3-86a1-47b8-82c4-75443b5023c2', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('04637bf7-11e3-4b45-8d2c-5545a7848617', 'dee756b8-f4f2-474a-88f4-e7f4fea7275a',
        '5bcc77e3-86a1-47b8-82c4-75443b5023c2', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('49671e5c-1c9d-4d5a-954a-7e48e5daff87', 'b8ec593e-93b8-4bab-95dd-cfff5c526d54',
        '5bcc77e3-86a1-47b8-82c4-75443b5023c2', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7659f804-f973-49df-b229-45f114abab10', '6f9db124-e0ae-409d-b943-5be0cbc836e5',
        '5bcc77e3-86a1-47b8-82c4-75443b5023c2', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b8989710-b298-4735-a2ff-d02ff7884438', '616bf16a-470d-494e-ad8b-b230e80dafb3',
        '5bcc77e3-86a1-47b8-82c4-75443b5023c2', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3a8f989f-49fc-4452-a9e1-e5a4cc252d80', '6c05b44c-34de-48a4-8d3c-6015b268c456',
        '5bcc77e3-86a1-47b8-82c4-75443b5023c2', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('395fa9c0-dabe-4273-a502-15e20bd7517b', '3ac4a61c-f510-4d59-84cc-e957dbeedd8e',
        '5bcc77e3-86a1-47b8-82c4-75443b5023c2', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ece1d6f2-cbf6-4f5d-a658-522e8f0a5980', 'f4f5632d-00ae-4be2-aff8-c83da3c21519',
        '5bcc77e3-86a1-47b8-82c4-75443b5023c2', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('fd726cb5-f621-47b5-8a1f-dabf5862ab38', '4917d24b-e50c-4fa9-ac12-37a0d298f41f',
        '5bcc77e3-86a1-47b8-82c4-75443b5023c2', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('124f6dfd-5a41-4d2a-b7ff-9734a2202ed1', 'aee92954-3fab-449d-bc56-7ec47df873cb',
        '5bcc77e3-86a1-47b8-82c4-75443b5023c2', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('34442cba-940e-4347-9c85-fef1d67cce15', '19d57226-91df-4c5a-92f4-7b7d774ea8c4',
        '5bcc77e3-86a1-47b8-82c4-75443b5023c2', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('36ae22bd-be80-443a-abcf-44c7c4224ff2', '81f2e7c9-6871-44e3-a432-b0fd050dd187',
        '5bcc77e3-86a1-47b8-82c4-75443b5023c2', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e44d93ad-8ce1-4c2d-948d-8d896e7accb1', '377a4b78-e58a-4d13-875f-817cd1693ece',
        '5bcc77e3-86a1-47b8-82c4-75443b5023c2', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('da8c2b29-02d0-4c2b-825e-bbe60488ec08', '54e790a7-9741-408e-9327-3377df0e9b6e',
        '5bcc77e3-86a1-47b8-82c4-75443b5023c2', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a2ba7293-00b6-472b-a19a-8ab4e1f11992', '5dce5233-88d5-4b52-94de-6465ace4be98',
        '5bcc77e3-86a1-47b8-82c4-75443b5023c2', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f550fad6-25e7-47d4-a6c2-965951982e1b', '63aa0cb7-202d-4c54-85ae-051e8249115d',
        '5bcc77e3-86a1-47b8-82c4-75443b5023c2', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('88fa5d57-bcfc-4d86-9634-07351e6c9787', 'fb59e236-0633-46ca-a8b5-c0d7596ee10e',
        '5bcc77e3-86a1-47b8-82c4-75443b5023c2', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1c69ee96-6125-4c9f-b2e2-a72d9d84d995', '154147b7-aff2-4ff1-89cf-fcd6616ca6d2',
        '5bcc77e3-86a1-47b8-82c4-75443b5023c2', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2311e3b9-f586-4778-9740-a694b74f73a8', '6e8b2868-8094-46d3-95be-2397eb9d5237',
        '5bcc77e3-86a1-47b8-82c4-75443b5023c2', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7c5572f5-9760-4d44-94bd-7917cb2db8ec', '112cc8ee-b996-4b19-9192-9e82b92aae94',
        '5bcc77e3-86a1-47b8-82c4-75443b5023c2', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('67c6ef36-7d13-4557-837a-b228c571a242', '60c4bebf-411f-456f-9eab-5afd98fde9c7',
        '5bcc77e3-86a1-47b8-82c4-75443b5023c2', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9b7c8934-3259-44d3-9181-7d58d852d2ee', 'c393d2b5-6e50-4d7a-ad40-e112851e0711',
        '5bcc77e3-86a1-47b8-82c4-75443b5023c2', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('74639e11-79cc-4311-8f7f-2e97d4cabc7e', '38630605-5c28-4b5c-b042-93c43bf23ebc',
        '5bcc77e3-86a1-47b8-82c4-75443b5023c2', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('da5e2dbb-d14d-48d0-b639-5e96046d78d9', 'cc721727-53e6-4b1c-9d85-c97c46b5422e',
        '5bcc77e3-86a1-47b8-82c4-75443b5023c2', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('93e21762-735a-4d2a-a53f-fbbf6e0a4e52', 'ccb39a89-f63e-4537-90cd-e3186178ae1f',
        '5bcc77e3-86a1-47b8-82c4-75443b5023c2', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('641aa2c2-8047-4d01-b6ad-6df3b01c0f8e', 'b34bfec1-ee6c-46bc-9d52-99e90b59fe12',
        '5bcc77e3-86a1-47b8-82c4-75443b5023c2', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8542daf7-a4a2-4207-80bb-a94faa07b910', '6b7955fe-fb44-4b68-92b5-13aedcce4e76',
        '5bcc77e3-86a1-47b8-82c4-75443b5023c2', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('14db6670-386e-4895-a361-d1818c8c8241', '204814c3-bf71-4b17-9727-c6d435976da6',
        '5bcc77e3-86a1-47b8-82c4-75443b5023c2', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e47c93ca-d09f-4cbe-95fc-9c40ade5abed', 'd118e4c3-08b7-4c8e-95de-81b8715b6f1d',
        '5bcc77e3-86a1-47b8-82c4-75443b5023c2', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('820a906b-4748-4778-9d40-2f6acfca0449', 'db255fa3-e68a-47b3-9651-a7cc95b33689',
        '5bcc77e3-86a1-47b8-82c4-75443b5023c2', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('24b14699-3aa5-4f20-9da7-7ad4eb1f939f', '42b30d8f-b8eb-46be-93ee-446f2d1d2706',
        '5bcc77e3-86a1-47b8-82c4-75443b5023c2', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('17794bf4-5c14-49c2-b919-0b7cda982c77', '69126fb1-3e3f-4741-b6a4-91678103ccfe',
        '5bcc77e3-86a1-47b8-82c4-75443b5023c2', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('05843513-b540-4c2b-9431-265d725c9e25', 'a4f7f094-e1ff-4280-aa2f-33e17fb03d07',
        '5bcc77e3-86a1-47b8-82c4-75443b5023c2', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ccd1e179-6b1e-4084-9d74-ca80bab3df35', '9f8b49e7-cd35-4115-8e2a-a4bc71ceab78',
        '5bcc77e3-86a1-47b8-82c4-75443b5023c2', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('12240ed5-6bee-43c6-8853-9b3a26df956f', 'df70cc34-0233-4ed5-89f4-5864507b42a4',
        '5bcc77e3-86a1-47b8-82c4-75443b5023c2', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3083deb2-8eb7-4943-86a7-083cf73493b4', '4b4b663a-bc9c-4eb4-ba80-f86adc0951f9',
        '5bcc77e3-86a1-47b8-82c4-75443b5023c2', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d34ef95a-5aef-48f7-8748-6aec0bdadb9a', '231e38c1-fb35-4262-9a80-ea7a4d0a00ba',
        '5bcc77e3-86a1-47b8-82c4-75443b5023c2', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ef3956ee-3350-47d8-b870-9d55ab99bcfa', '57008dea-844d-44c7-8adc-6389295384c7',
        '5bcc77e3-86a1-47b8-82c4-75443b5023c2', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e1f485e2-bbd2-49d4-8856-0c31a9214567', 'a214c6f9-029b-444d-82a0-8bc98a044a43',
        '5bcc77e3-86a1-47b8-82c4-75443b5023c2', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('55f89715-6c6c-49af-9bfc-5b48fea8a20b', '630e876e-62d7-498b-aae9-f8326e875369',
        '5bcc77e3-86a1-47b8-82c4-75443b5023c2', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('31af1fea-c979-4064-bf75-aad6d3a0948b', '1521cd72-8dc2-463a-8cef-2c8c8166493b',
        '5bcc77e3-86a1-47b8-82c4-75443b5023c2', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('cc8fbff4-5545-4d75-b67a-0ca7414553f6', '4c411dfd-41e6-4c53-bb7b-37cc54c1c8e8',
        '5bcc77e3-86a1-47b8-82c4-75443b5023c2', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('358f3852-df31-4ae4-9c4d-492d18055fd6', '92bb831c-040f-4686-8acd-f42d8629ba7b',
        '5bcc77e3-86a1-47b8-82c4-75443b5023c2', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5dfca8d4-bce4-4fb7-bb50-f24f3a9bb4cc', 'fe8d890a-abea-44fc-92fe-ba3678289387',
        '5bcc77e3-86a1-47b8-82c4-75443b5023c2', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ae9976df-2cfc-46dd-8de6-45e72ae3559c', '4de87bed-0d07-419e-9991-32658cdb0a9d',
        '5bcc77e3-86a1-47b8-82c4-75443b5023c2', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('bb1c315f-3009-460d-ae39-3f75ded7536d', '7570b82c-a85d-446c-9a92-5c0bb332a8a3',
        '5bcc77e3-86a1-47b8-82c4-75443b5023c2', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e9e6bcf8-3966-4824-ac0e-16e441b2e740', 'b8b056d3-228d-4363-8f43-a1fed1da8695',
        '5bcc77e3-86a1-47b8-82c4-75443b5023c2', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c40ea2a5-39a9-4397-8089-69565bf93100', '5a08407a-ba00-4be3-bbc6-c50dc256d8f5',
        '5bcc77e3-86a1-47b8-82c4-75443b5023c2', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e45cb26c-8db0-46e7-b376-98ebca865249', 'cac14782-c714-49d4-803d-6bdfb7fb8707',
        '5bcc77e3-86a1-47b8-82c4-75443b5023c2', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('35847656-d63f-46aa-aa83-f1013d12f666', '3d723b44-2db7-4730-af04-6007ae7d2178',
        '5bcc77e3-86a1-47b8-82c4-75443b5023c2', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('10775adc-3520-4b82-89ef-1f9b21a535e4', '9a4f51df-c428-4a18-9055-511e0ae7b6d8',
        '5bcc77e3-86a1-47b8-82c4-75443b5023c2', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b74a7513-a8b5-4e91-96ad-d4ea19806c48', 'fd1edc81-f470-4dbe-95cf-ea6ad5e85cf2',
        '5bcc77e3-86a1-47b8-82c4-75443b5023c2', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('80bb5ed7-6f8a-4e38-b1b1-3428e6c4ebd4', '6e2740d2-ef18-4564-b8c7-9f7214308f81',
        '5bcc77e3-86a1-47b8-82c4-75443b5023c2', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ad529c17-a4d6-4f9a-8a29-2b7c6ae298af', '926c446b-9db8-4b9c-a406-ed40dff69e34',
        '5bcc77e3-86a1-47b8-82c4-75443b5023c2', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('320c8faf-2186-4f5b-99da-332d90964f99', 'eaa9530f-bb8c-453f-b634-c8599039e296',
        '5bcc77e3-86a1-47b8-82c4-75443b5023c2', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c632442f-0722-4219-aa38-8f737f631067', 'bdc5f279-42bf-491c-b87a-409b3c7bff89',
        '5bcc77e3-86a1-47b8-82c4-75443b5023c2', 2, current_timestamp, current_timestamp);

-- politician '621767cc-f8fb-4947-8e27-a3ec8512ddc6'
insert into QuestionAnswer
values ('cbe7f924-2fdf-45f6-9b61-d6bfe435d101', 'a335650d-06b4-4e92-ba77-d5f8964ceb82',
        '621767cc-f8fb-4947-8e27-a3ec8512ddc6', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('55e1adf9-65e0-45a7-8ca2-e61526868cb5', '46df8b49-923c-4f91-8362-5196efbb71e2',
        '621767cc-f8fb-4947-8e27-a3ec8512ddc6', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f9ebc3f5-1e45-4150-896f-53f6cb8dec53', '5f277258-ba7b-492c-b451-673eaa5957c0',
        '621767cc-f8fb-4947-8e27-a3ec8512ddc6', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('de3dc0a8-1ee4-4f65-9882-96d6d3e1a463', '007ebae0-31cb-40fb-93ad-c2f980caee14',
        '621767cc-f8fb-4947-8e27-a3ec8512ddc6', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8dc54222-2f1b-4c35-a85d-529536a334fb', '8ae0f13d-e699-4617-a4ba-672e6ccc0edc',
        '621767cc-f8fb-4947-8e27-a3ec8512ddc6', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('74914f70-2b11-4ca2-a85b-940b2057965d', 'dee756b8-f4f2-474a-88f4-e7f4fea7275a',
        '621767cc-f8fb-4947-8e27-a3ec8512ddc6', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2b799529-6f70-4eba-a85e-5ae9e358d6d1', 'b8ec593e-93b8-4bab-95dd-cfff5c526d54',
        '621767cc-f8fb-4947-8e27-a3ec8512ddc6', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2a09bd47-1efe-49e8-8934-ea2b2262ffef', '6f9db124-e0ae-409d-b943-5be0cbc836e5',
        '621767cc-f8fb-4947-8e27-a3ec8512ddc6', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a0ee07f3-a35a-4273-963a-22040304b71d', '616bf16a-470d-494e-ad8b-b230e80dafb3',
        '621767cc-f8fb-4947-8e27-a3ec8512ddc6', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('61c67176-e240-45f0-a92e-9d04f382735a', '6c05b44c-34de-48a4-8d3c-6015b268c456',
        '621767cc-f8fb-4947-8e27-a3ec8512ddc6', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1aebaaeb-67b4-4a74-bcc5-3263d2653c52', '3ac4a61c-f510-4d59-84cc-e957dbeedd8e',
        '621767cc-f8fb-4947-8e27-a3ec8512ddc6', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('be785d33-5dd0-4817-9be8-9873e7e6bf40', 'f4f5632d-00ae-4be2-aff8-c83da3c21519',
        '621767cc-f8fb-4947-8e27-a3ec8512ddc6', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('77dd98f4-468e-4c50-904f-17c59c7bcf0e', '4917d24b-e50c-4fa9-ac12-37a0d298f41f',
        '621767cc-f8fb-4947-8e27-a3ec8512ddc6', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('93d44c86-7489-484f-ab9e-691976f30a86', 'aee92954-3fab-449d-bc56-7ec47df873cb',
        '621767cc-f8fb-4947-8e27-a3ec8512ddc6', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('bd405b20-0414-4c6b-af8a-475ac0689516', '19d57226-91df-4c5a-92f4-7b7d774ea8c4',
        '621767cc-f8fb-4947-8e27-a3ec8512ddc6', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('546375ec-bb18-4280-ab74-a9d8cbed28dd', '81f2e7c9-6871-44e3-a432-b0fd050dd187',
        '621767cc-f8fb-4947-8e27-a3ec8512ddc6', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f8e603a3-3467-422d-b83b-7010436f9972', '377a4b78-e58a-4d13-875f-817cd1693ece',
        '621767cc-f8fb-4947-8e27-a3ec8512ddc6', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c4e86601-7d36-4425-a0db-8c3693a31533', '54e790a7-9741-408e-9327-3377df0e9b6e',
        '621767cc-f8fb-4947-8e27-a3ec8512ddc6', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1f546f6c-ccff-4436-80c4-a84c63b6d21e', '5dce5233-88d5-4b52-94de-6465ace4be98',
        '621767cc-f8fb-4947-8e27-a3ec8512ddc6', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a2e24948-2ad6-4e9f-82a7-759e528ea7cd', '63aa0cb7-202d-4c54-85ae-051e8249115d',
        '621767cc-f8fb-4947-8e27-a3ec8512ddc6', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7ef5e328-5898-4a96-82e9-1976b18c97a2', 'fb59e236-0633-46ca-a8b5-c0d7596ee10e',
        '621767cc-f8fb-4947-8e27-a3ec8512ddc6', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1137c0eb-26ab-4a95-a014-5d7a4bd55084', '154147b7-aff2-4ff1-89cf-fcd6616ca6d2',
        '621767cc-f8fb-4947-8e27-a3ec8512ddc6', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e365b78c-f01a-49ad-9750-7a75c47ecfab', '6e8b2868-8094-46d3-95be-2397eb9d5237',
        '621767cc-f8fb-4947-8e27-a3ec8512ddc6', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a43f7c6b-a8c4-4c98-9230-4e253ba546d7', '112cc8ee-b996-4b19-9192-9e82b92aae94',
        '621767cc-f8fb-4947-8e27-a3ec8512ddc6', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ef8febeb-bb9b-4ad6-9020-29c5257ebed3', '60c4bebf-411f-456f-9eab-5afd98fde9c7',
        '621767cc-f8fb-4947-8e27-a3ec8512ddc6', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7b0035f0-1ef7-4fb4-8636-12b683c8c11f', 'c393d2b5-6e50-4d7a-ad40-e112851e0711',
        '621767cc-f8fb-4947-8e27-a3ec8512ddc6', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ce36e4cf-ca46-4e7c-b244-f5d7428c2425', '38630605-5c28-4b5c-b042-93c43bf23ebc',
        '621767cc-f8fb-4947-8e27-a3ec8512ddc6', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e22bf626-d324-4d3c-ac25-537844af6a1b', 'cc721727-53e6-4b1c-9d85-c97c46b5422e',
        '621767cc-f8fb-4947-8e27-a3ec8512ddc6', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3998bbaa-08a9-442a-8c1b-cb07acd6f997', 'ccb39a89-f63e-4537-90cd-e3186178ae1f',
        '621767cc-f8fb-4947-8e27-a3ec8512ddc6', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1474bc65-f3ac-4980-8205-d85891fdb9e7', 'b34bfec1-ee6c-46bc-9d52-99e90b59fe12',
        '621767cc-f8fb-4947-8e27-a3ec8512ddc6', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('02bedbdd-1f63-409f-84b0-c82af9e2912c', '6b7955fe-fb44-4b68-92b5-13aedcce4e76',
        '621767cc-f8fb-4947-8e27-a3ec8512ddc6', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('aff3df14-4f31-46af-bee6-b4ed898ad3ae', '204814c3-bf71-4b17-9727-c6d435976da6',
        '621767cc-f8fb-4947-8e27-a3ec8512ddc6', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b86bd6eb-ce36-4bfb-a1dd-96c61068ee9a', 'd118e4c3-08b7-4c8e-95de-81b8715b6f1d',
        '621767cc-f8fb-4947-8e27-a3ec8512ddc6', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b1e68a52-6b5a-425a-8e1a-5908e1e294f4', 'db255fa3-e68a-47b3-9651-a7cc95b33689',
        '621767cc-f8fb-4947-8e27-a3ec8512ddc6', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('dbe3573b-6230-4185-a2bc-1176e8fa12fb', '42b30d8f-b8eb-46be-93ee-446f2d1d2706',
        '621767cc-f8fb-4947-8e27-a3ec8512ddc6', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e6dd7ce0-e322-4bd1-9e31-c2756c3c46ba', '69126fb1-3e3f-4741-b6a4-91678103ccfe',
        '621767cc-f8fb-4947-8e27-a3ec8512ddc6', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('197ee209-3361-4edf-93b9-dcad4b1ccdad', 'a4f7f094-e1ff-4280-aa2f-33e17fb03d07',
        '621767cc-f8fb-4947-8e27-a3ec8512ddc6', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('57c471e1-e01a-4bf8-9a13-5dd1594251c0', '9f8b49e7-cd35-4115-8e2a-a4bc71ceab78',
        '621767cc-f8fb-4947-8e27-a3ec8512ddc6', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('857dcbb2-ea8a-4f2c-831c-7fedb67b5da5', 'df70cc34-0233-4ed5-89f4-5864507b42a4',
        '621767cc-f8fb-4947-8e27-a3ec8512ddc6', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ce44d5e6-5b5c-4714-b262-0bd91d007f30', '4b4b663a-bc9c-4eb4-ba80-f86adc0951f9',
        '621767cc-f8fb-4947-8e27-a3ec8512ddc6', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8dc002a0-0f77-41ff-ab21-7ea920dd7355', '231e38c1-fb35-4262-9a80-ea7a4d0a00ba',
        '621767cc-f8fb-4947-8e27-a3ec8512ddc6', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('143607de-f85d-4c83-97cb-71fe40ee73bc', '57008dea-844d-44c7-8adc-6389295384c7',
        '621767cc-f8fb-4947-8e27-a3ec8512ddc6', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('38d0d820-2187-43a9-b4c9-9054fc548d15', 'a214c6f9-029b-444d-82a0-8bc98a044a43',
        '621767cc-f8fb-4947-8e27-a3ec8512ddc6', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b364276e-fe51-4aa5-b180-bf9744286cb8', '630e876e-62d7-498b-aae9-f8326e875369',
        '621767cc-f8fb-4947-8e27-a3ec8512ddc6', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b7f7762a-4eb1-41da-8fa3-afc7ed70cddf', '1521cd72-8dc2-463a-8cef-2c8c8166493b',
        '621767cc-f8fb-4947-8e27-a3ec8512ddc6', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3a295391-646e-4b09-b4c9-1c96d751db31', '4c411dfd-41e6-4c53-bb7b-37cc54c1c8e8',
        '621767cc-f8fb-4947-8e27-a3ec8512ddc6', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d9f3f995-8b9d-4803-8ad8-a0842a86ddf7', '92bb831c-040f-4686-8acd-f42d8629ba7b',
        '621767cc-f8fb-4947-8e27-a3ec8512ddc6', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9a2f15df-7dc2-4ea8-856f-5a07c10759c7', 'fe8d890a-abea-44fc-92fe-ba3678289387',
        '621767cc-f8fb-4947-8e27-a3ec8512ddc6', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d06b621e-0b09-46aa-8c32-0778dd1af35c', '4de87bed-0d07-419e-9991-32658cdb0a9d',
        '621767cc-f8fb-4947-8e27-a3ec8512ddc6', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('224a8737-fd2c-4b13-8aeb-b840b61a1e85', '7570b82c-a85d-446c-9a92-5c0bb332a8a3',
        '621767cc-f8fb-4947-8e27-a3ec8512ddc6', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a6c36781-73e9-415b-85a6-91d799b83832', 'b8b056d3-228d-4363-8f43-a1fed1da8695',
        '621767cc-f8fb-4947-8e27-a3ec8512ddc6', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('79f0921c-a610-4d79-98ac-700f0d443229', '5a08407a-ba00-4be3-bbc6-c50dc256d8f5',
        '621767cc-f8fb-4947-8e27-a3ec8512ddc6', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b0928238-f7f7-4dd7-afb5-64361dc92402', 'cac14782-c714-49d4-803d-6bdfb7fb8707',
        '621767cc-f8fb-4947-8e27-a3ec8512ddc6', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3ddb4bc7-6b14-4b64-b225-6d3b51a5a30d', '3d723b44-2db7-4730-af04-6007ae7d2178',
        '621767cc-f8fb-4947-8e27-a3ec8512ddc6', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('33618db4-5f94-4368-bf27-3f47c788d354', '9a4f51df-c428-4a18-9055-511e0ae7b6d8',
        '621767cc-f8fb-4947-8e27-a3ec8512ddc6', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('513bd22e-3489-49b3-bba1-371336907c6c', 'fd1edc81-f470-4dbe-95cf-ea6ad5e85cf2',
        '621767cc-f8fb-4947-8e27-a3ec8512ddc6', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('02effed3-3c75-435c-855f-13e9474b452c', '6e2740d2-ef18-4564-b8c7-9f7214308f81',
        '621767cc-f8fb-4947-8e27-a3ec8512ddc6', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ae8b50d3-3b67-478c-a331-1310c30ab8a3', '926c446b-9db8-4b9c-a406-ed40dff69e34',
        '621767cc-f8fb-4947-8e27-a3ec8512ddc6', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ef05126f-42a5-4ca6-baf8-3582c93fb37e', 'eaa9530f-bb8c-453f-b634-c8599039e296',
        '621767cc-f8fb-4947-8e27-a3ec8512ddc6', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ececc016-7408-4d8e-b55f-15ea2db7211a', 'bdc5f279-42bf-491c-b87a-409b3c7bff89',
        '621767cc-f8fb-4947-8e27-a3ec8512ddc6', 1, current_timestamp, current_timestamp);

-- politician 'be3ff762-b466-4543-8a73-230729f51fd6'
insert into QuestionAnswer
values ('e8cd4192-7565-427f-8461-d130a8933643', 'a335650d-06b4-4e92-ba77-d5f8964ceb82',
        'be3ff762-b466-4543-8a73-230729f51fd6', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7aa71103-8436-4b39-96c8-bdb3ea76dfd9', '46df8b49-923c-4f91-8362-5196efbb71e2',
        'be3ff762-b466-4543-8a73-230729f51fd6', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0bf8b960-24bf-4fc0-8671-6cf614ed54d0', '5f277258-ba7b-492c-b451-673eaa5957c0',
        'be3ff762-b466-4543-8a73-230729f51fd6', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4cfa241d-dac3-489c-9065-463912a98cc1', '007ebae0-31cb-40fb-93ad-c2f980caee14',
        'be3ff762-b466-4543-8a73-230729f51fd6', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('55c7f719-55e1-4f65-88f4-cb6ac82f1c62', '8ae0f13d-e699-4617-a4ba-672e6ccc0edc',
        'be3ff762-b466-4543-8a73-230729f51fd6', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7ae06a8e-ed9f-49e2-9e8c-6855a180181e', 'dee756b8-f4f2-474a-88f4-e7f4fea7275a',
        'be3ff762-b466-4543-8a73-230729f51fd6', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('db0d3d01-7cdc-4eef-a4af-e6de7be8e135', 'b8ec593e-93b8-4bab-95dd-cfff5c526d54',
        'be3ff762-b466-4543-8a73-230729f51fd6', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f3027cef-8bb7-47d5-9a91-20edcab30759', '6f9db124-e0ae-409d-b943-5be0cbc836e5',
        'be3ff762-b466-4543-8a73-230729f51fd6', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5ca13c3e-72e2-4f58-88da-ade1295fccc4', '616bf16a-470d-494e-ad8b-b230e80dafb3',
        'be3ff762-b466-4543-8a73-230729f51fd6', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3ba3a7b3-fdd6-487f-8701-bac43a63633f', '6c05b44c-34de-48a4-8d3c-6015b268c456',
        'be3ff762-b466-4543-8a73-230729f51fd6', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('90f1f08a-c522-4aed-8101-d746e6ee2644', '3ac4a61c-f510-4d59-84cc-e957dbeedd8e',
        'be3ff762-b466-4543-8a73-230729f51fd6', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('337d0728-4829-4fe6-87d8-f77d092581bb', 'f4f5632d-00ae-4be2-aff8-c83da3c21519',
        'be3ff762-b466-4543-8a73-230729f51fd6', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0aac5507-9454-408b-b7ce-05427ac0cbf7', '4917d24b-e50c-4fa9-ac12-37a0d298f41f',
        'be3ff762-b466-4543-8a73-230729f51fd6', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b76d51a0-a576-46ff-a202-617d53f62a64', 'aee92954-3fab-449d-bc56-7ec47df873cb',
        'be3ff762-b466-4543-8a73-230729f51fd6', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('72b44470-f4a5-421e-bae3-4a9db41c7fa0', '19d57226-91df-4c5a-92f4-7b7d774ea8c4',
        'be3ff762-b466-4543-8a73-230729f51fd6', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('86cc0dcc-4566-4c88-8042-2546b5d60978', '81f2e7c9-6871-44e3-a432-b0fd050dd187',
        'be3ff762-b466-4543-8a73-230729f51fd6', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('38f36023-885a-48f3-9794-bd75ec8a2682', '377a4b78-e58a-4d13-875f-817cd1693ece',
        'be3ff762-b466-4543-8a73-230729f51fd6', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0cfb34f7-8f2c-4899-9944-4d93dab6c203', '54e790a7-9741-408e-9327-3377df0e9b6e',
        'be3ff762-b466-4543-8a73-230729f51fd6', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('fc442da9-e036-4271-83b5-07fe36487592', '5dce5233-88d5-4b52-94de-6465ace4be98',
        'be3ff762-b466-4543-8a73-230729f51fd6', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('13e44097-5db9-4b44-84ef-9869fd222974', '63aa0cb7-202d-4c54-85ae-051e8249115d',
        'be3ff762-b466-4543-8a73-230729f51fd6', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8f3e345e-bf18-44ee-bd52-f8b5e357ea47', 'fb59e236-0633-46ca-a8b5-c0d7596ee10e',
        'be3ff762-b466-4543-8a73-230729f51fd6', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c2101b82-b816-44ae-bfd2-813c4dabc640', '154147b7-aff2-4ff1-89cf-fcd6616ca6d2',
        'be3ff762-b466-4543-8a73-230729f51fd6', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8ce4c023-2402-48d5-b354-ce9c84359cea', '6e8b2868-8094-46d3-95be-2397eb9d5237',
        'be3ff762-b466-4543-8a73-230729f51fd6', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d0d8aaa1-515c-434d-9090-1b0a1c8fc90c', '112cc8ee-b996-4b19-9192-9e82b92aae94',
        'be3ff762-b466-4543-8a73-230729f51fd6', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0eb0c7e6-5a67-4109-8a71-96dd4f64d725', '60c4bebf-411f-456f-9eab-5afd98fde9c7',
        'be3ff762-b466-4543-8a73-230729f51fd6', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c9af4f09-b147-4957-a9b0-c16083a10662', 'c393d2b5-6e50-4d7a-ad40-e112851e0711',
        'be3ff762-b466-4543-8a73-230729f51fd6', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7c212d5a-b062-49d0-97bc-c7bc1c817571', '38630605-5c28-4b5c-b042-93c43bf23ebc',
        'be3ff762-b466-4543-8a73-230729f51fd6', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6ebeb59c-3834-4633-8dfd-87e32160c3f3', 'cc721727-53e6-4b1c-9d85-c97c46b5422e',
        'be3ff762-b466-4543-8a73-230729f51fd6', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9f1b1528-c9fd-48bd-81ce-7a63b8b7502f', 'ccb39a89-f63e-4537-90cd-e3186178ae1f',
        'be3ff762-b466-4543-8a73-230729f51fd6', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('185f29a4-d98e-473b-8fc7-14dd5641b9cd', 'b34bfec1-ee6c-46bc-9d52-99e90b59fe12',
        'be3ff762-b466-4543-8a73-230729f51fd6', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('20a7f157-3e63-46bf-8c27-2c6a1de4266e', '6b7955fe-fb44-4b68-92b5-13aedcce4e76',
        'be3ff762-b466-4543-8a73-230729f51fd6', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1f3df48c-c151-48c6-9dc4-f4f7e6c6bd35', '204814c3-bf71-4b17-9727-c6d435976da6',
        'be3ff762-b466-4543-8a73-230729f51fd6', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('06153278-6fcd-4bad-9e71-d15bdd2c86ef', 'd118e4c3-08b7-4c8e-95de-81b8715b6f1d',
        'be3ff762-b466-4543-8a73-230729f51fd6', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9b301eaa-eeee-4686-a752-d7ef3f1fe841', 'db255fa3-e68a-47b3-9651-a7cc95b33689',
        'be3ff762-b466-4543-8a73-230729f51fd6', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6fafb939-4929-4133-8f93-4ada1f12c7cb', '42b30d8f-b8eb-46be-93ee-446f2d1d2706',
        'be3ff762-b466-4543-8a73-230729f51fd6', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('414bf462-59d3-43db-83b1-20a7c06e1154', '69126fb1-3e3f-4741-b6a4-91678103ccfe',
        'be3ff762-b466-4543-8a73-230729f51fd6', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c3d3f141-6046-4031-9a8a-c6606d495f93', 'a4f7f094-e1ff-4280-aa2f-33e17fb03d07',
        'be3ff762-b466-4543-8a73-230729f51fd6', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('752be58b-727e-4d58-937a-3e506cde1a2a', '9f8b49e7-cd35-4115-8e2a-a4bc71ceab78',
        'be3ff762-b466-4543-8a73-230729f51fd6', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('28f3bc6e-8ec1-442f-aa7b-bb83333666fe', 'df70cc34-0233-4ed5-89f4-5864507b42a4',
        'be3ff762-b466-4543-8a73-230729f51fd6', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('039df91e-2e10-4bfd-8b60-28af28e5b762', '4b4b663a-bc9c-4eb4-ba80-f86adc0951f9',
        'be3ff762-b466-4543-8a73-230729f51fd6', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0749ecd1-66fc-4733-b576-2e6f84d15438', '231e38c1-fb35-4262-9a80-ea7a4d0a00ba',
        'be3ff762-b466-4543-8a73-230729f51fd6', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4525f08e-9cb8-4d29-a1f0-48dfd1f0a9f9', '57008dea-844d-44c7-8adc-6389295384c7',
        'be3ff762-b466-4543-8a73-230729f51fd6', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('acbb47d6-acda-4ee7-b3a0-df9405f33cd1', 'a214c6f9-029b-444d-82a0-8bc98a044a43',
        'be3ff762-b466-4543-8a73-230729f51fd6', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4f9261e7-6fb1-4537-9b5f-d099016f36e3', '630e876e-62d7-498b-aae9-f8326e875369',
        'be3ff762-b466-4543-8a73-230729f51fd6', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('590b8e6a-4aa2-470d-917c-a81ec8656c8e', '1521cd72-8dc2-463a-8cef-2c8c8166493b',
        'be3ff762-b466-4543-8a73-230729f51fd6', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f9e26628-d486-456f-8b39-637bec88ca59', '4c411dfd-41e6-4c53-bb7b-37cc54c1c8e8',
        'be3ff762-b466-4543-8a73-230729f51fd6', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9aa729dd-645f-47af-b3b7-6a3518b1838b', '92bb831c-040f-4686-8acd-f42d8629ba7b',
        'be3ff762-b466-4543-8a73-230729f51fd6', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('62fea897-6ecb-4ced-9b08-aa9383c93fe0', 'fe8d890a-abea-44fc-92fe-ba3678289387',
        'be3ff762-b466-4543-8a73-230729f51fd6', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2b6141c0-6fdc-40b0-9159-cfd73fed741a', '4de87bed-0d07-419e-9991-32658cdb0a9d',
        'be3ff762-b466-4543-8a73-230729f51fd6', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('07106028-0433-4cf4-b9b3-9a9b45b85dbe', '7570b82c-a85d-446c-9a92-5c0bb332a8a3',
        'be3ff762-b466-4543-8a73-230729f51fd6', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('fac50f47-4a4a-46c1-8946-ddcec27821cc', 'b8b056d3-228d-4363-8f43-a1fed1da8695',
        'be3ff762-b466-4543-8a73-230729f51fd6', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('fac953e9-843c-4c9a-9154-4f0b039ed830', '5a08407a-ba00-4be3-bbc6-c50dc256d8f5',
        'be3ff762-b466-4543-8a73-230729f51fd6', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('be0358c4-eced-45e3-a949-1d4acc6c475e', 'cac14782-c714-49d4-803d-6bdfb7fb8707',
        'be3ff762-b466-4543-8a73-230729f51fd6', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d1244446-2fc1-40ab-aae0-a0ba85b50cf9', '3d723b44-2db7-4730-af04-6007ae7d2178',
        'be3ff762-b466-4543-8a73-230729f51fd6', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c9512019-79d4-40a1-a8be-ad6dfd90269a', '9a4f51df-c428-4a18-9055-511e0ae7b6d8',
        'be3ff762-b466-4543-8a73-230729f51fd6', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5408304e-52f1-436e-a417-5ed07df2f048', 'fd1edc81-f470-4dbe-95cf-ea6ad5e85cf2',
        'be3ff762-b466-4543-8a73-230729f51fd6', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8b519eae-2524-4f3c-bdd9-4eaf12e5f9ac', '6e2740d2-ef18-4564-b8c7-9f7214308f81',
        'be3ff762-b466-4543-8a73-230729f51fd6', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8b0094d5-f606-46a6-9c4e-b37f9aaf4cf1', '926c446b-9db8-4b9c-a406-ed40dff69e34',
        'be3ff762-b466-4543-8a73-230729f51fd6', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a54c1f70-f6ea-46ec-b7fe-e8fcd5ab225e', 'eaa9530f-bb8c-453f-b634-c8599039e296',
        'be3ff762-b466-4543-8a73-230729f51fd6', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0688f97b-1600-465e-a615-3806e68f150b', 'bdc5f279-42bf-491c-b87a-409b3c7bff89',
        'be3ff762-b466-4543-8a73-230729f51fd6', 3, current_timestamp, current_timestamp);

-- politician '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc'
insert into QuestionAnswer
values ('ca5ebffa-5465-4da5-a5fe-9052924d1cca', 'a335650d-06b4-4e92-ba77-d5f8964ceb82',
        '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f1ea03fe-0dd5-42a7-aa1e-351a9279d228', '46df8b49-923c-4f91-8362-5196efbb71e2',
        '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5fbcb6dc-7caf-4d6b-a1ab-1e248f7a5dc7', '5f277258-ba7b-492c-b451-673eaa5957c0',
        '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('67d38359-1534-49fd-acb5-0bbedf9b87db', '007ebae0-31cb-40fb-93ad-c2f980caee14',
        '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a8db3369-6b91-484a-b550-6501425d460a', '8ae0f13d-e699-4617-a4ba-672e6ccc0edc',
        '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a2486923-3af6-4239-a9fe-078c6748761d', 'dee756b8-f4f2-474a-88f4-e7f4fea7275a',
        '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('68d7cf69-96cb-433b-9c72-bf99d1cbc337', 'b8ec593e-93b8-4bab-95dd-cfff5c526d54',
        '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3ed8b2cb-390b-47e4-a641-32b472fc8760', '6f9db124-e0ae-409d-b943-5be0cbc836e5',
        '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('dede0f2b-c4e7-4c55-aeb7-5ae33abf6339', '616bf16a-470d-494e-ad8b-b230e80dafb3',
        '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7e405160-aadb-414d-b82a-3705774e15e1', '6c05b44c-34de-48a4-8d3c-6015b268c456',
        '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ff6ea487-b469-4970-b659-71d04999d01f', '3ac4a61c-f510-4d59-84cc-e957dbeedd8e',
        '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4b04a0ef-09d9-4d04-ba2f-b67c0f255ef0', 'f4f5632d-00ae-4be2-aff8-c83da3c21519',
        '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('23cba4e4-1ecd-4daf-85b6-24d5a957407a', '4917d24b-e50c-4fa9-ac12-37a0d298f41f',
        '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6b61ef16-9240-4fc7-88b6-21614542a315', 'aee92954-3fab-449d-bc56-7ec47df873cb',
        '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('63219572-30fb-4e92-b43b-2ccd80ee5094', '19d57226-91df-4c5a-92f4-7b7d774ea8c4',
        '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d3e500ba-858a-44cf-805d-b84901faa029', '81f2e7c9-6871-44e3-a432-b0fd050dd187',
        '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('28152f81-ffa9-4d6c-bd05-d73ccb2aa816', '377a4b78-e58a-4d13-875f-817cd1693ece',
        '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e19427d1-3d7e-4c50-95cf-388787eb5d9f', '54e790a7-9741-408e-9327-3377df0e9b6e',
        '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b5fa9d00-285b-46d7-b6aa-9ba2455e2a3d', '5dce5233-88d5-4b52-94de-6465ace4be98',
        '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('94c55a74-9b81-490c-aade-2746dc12c2e7', '63aa0cb7-202d-4c54-85ae-051e8249115d',
        '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d1b894c2-4566-430e-9c9d-71ddbf9549ac', 'fb59e236-0633-46ca-a8b5-c0d7596ee10e',
        '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('14ab9769-f9af-4f08-81f1-448a3015770d', '154147b7-aff2-4ff1-89cf-fcd6616ca6d2',
        '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1a2e1f45-c3ba-44ce-bdab-e2375d1d1877', '6e8b2868-8094-46d3-95be-2397eb9d5237',
        '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3abb091d-4d36-4c43-8352-b72ecd4d1b79', '112cc8ee-b996-4b19-9192-9e82b92aae94',
        '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('858801cd-7ea7-4a69-ab8b-18fc348058a9', '60c4bebf-411f-456f-9eab-5afd98fde9c7',
        '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7c4e8e23-55b8-43bf-950b-b2dac7be8a0d', 'c393d2b5-6e50-4d7a-ad40-e112851e0711',
        '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('17fe6402-6f01-42f8-9f5a-c84f107d7f38', '38630605-5c28-4b5c-b042-93c43bf23ebc',
        '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0c53e3bc-6c4e-42e2-8d78-23257e7cec7c', 'cc721727-53e6-4b1c-9d85-c97c46b5422e',
        '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('bbe084de-5c65-430f-825a-c44742441847', 'ccb39a89-f63e-4537-90cd-e3186178ae1f',
        '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b7177765-99da-4f94-8ad4-b53b599d0c8a', 'b34bfec1-ee6c-46bc-9d52-99e90b59fe12',
        '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('255a8f08-cbc6-48fd-9d40-347922ef7f0c', '6b7955fe-fb44-4b68-92b5-13aedcce4e76',
        '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c0bd23e1-e608-496d-85a2-64f9484a4c7c', '204814c3-bf71-4b17-9727-c6d435976da6',
        '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ea0bdc91-c341-4c05-ae42-6c39bdc93545', 'd118e4c3-08b7-4c8e-95de-81b8715b6f1d',
        '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9b5a2e00-72e6-44b3-a63b-24584f9faf7b', 'db255fa3-e68a-47b3-9651-a7cc95b33689',
        '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f0ba0466-1b27-4bfa-a74a-744b2cc2b16c', '42b30d8f-b8eb-46be-93ee-446f2d1d2706',
        '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0acbe3a3-e042-48a0-bbd8-b9a00ed01863', '69126fb1-3e3f-4741-b6a4-91678103ccfe',
        '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('84525c9a-6b24-4405-9c4e-f698ee02ce91', 'a4f7f094-e1ff-4280-aa2f-33e17fb03d07',
        '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0e9dd5a6-db0f-4403-a12a-580d4f9438ff', '9f8b49e7-cd35-4115-8e2a-a4bc71ceab78',
        '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6ac3de3d-f2da-4642-b99d-209dc7698b3c', 'df70cc34-0233-4ed5-89f4-5864507b42a4',
        '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0f607515-fad4-435f-acab-2a97c5495415', '4b4b663a-bc9c-4eb4-ba80-f86adc0951f9',
        '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f37eb928-d1bf-4664-bb22-532319335d9b', '231e38c1-fb35-4262-9a80-ea7a4d0a00ba',
        '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('13261f1b-8e56-4739-b0fd-c7f3de231526', '57008dea-844d-44c7-8adc-6389295384c7',
        '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('927c8df8-1d29-4314-98f0-010fa0f5eb2c', 'a214c6f9-029b-444d-82a0-8bc98a044a43',
        '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6850ddd7-1ad1-405c-81aa-cc51887a1723', '630e876e-62d7-498b-aae9-f8326e875369',
        '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('078a4e18-c917-4e73-a3bb-2dee43cbd2c7', '1521cd72-8dc2-463a-8cef-2c8c8166493b',
        '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('09a0da66-6be2-46a3-9cc1-ace35430ad04', '4c411dfd-41e6-4c53-bb7b-37cc54c1c8e8',
        '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0d437e55-ecfc-4218-adfa-eaa51a1a717f', '92bb831c-040f-4686-8acd-f42d8629ba7b',
        '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4070e20d-43de-4c23-873a-eaa7af52037c', 'fe8d890a-abea-44fc-92fe-ba3678289387',
        '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('86692281-198f-4a82-8557-40865b290e9c', '4de87bed-0d07-419e-9991-32658cdb0a9d',
        '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e3d91622-c779-4dec-96ca-fd7637be0ff4', '7570b82c-a85d-446c-9a92-5c0bb332a8a3',
        '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f5ef15ad-a6cd-479c-a43f-ebfc94188da0', 'b8b056d3-228d-4363-8f43-a1fed1da8695',
        '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ea1f5b6e-ac11-4694-9d4e-6be70292c5ad', '5a08407a-ba00-4be3-bbc6-c50dc256d8f5',
        '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('dd55cd2a-cf76-4bea-bb87-570130d56d8a', 'cac14782-c714-49d4-803d-6bdfb7fb8707',
        '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8d3160e8-bb3d-496f-ba9c-058e48a0b67d', '3d723b44-2db7-4730-af04-6007ae7d2178',
        '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a77b6e2d-fad3-4186-a71c-d032284c4e0d', '9a4f51df-c428-4a18-9055-511e0ae7b6d8',
        '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('fa44c6c3-1b4e-4574-9b1e-2e17f5106199', 'fd1edc81-f470-4dbe-95cf-ea6ad5e85cf2',
        '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0f4f42d3-8848-45b8-9e67-a173b7470c85', '6e2740d2-ef18-4564-b8c7-9f7214308f81',
        '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f836b84b-e7ca-4298-b125-65220daa982b', '926c446b-9db8-4b9c-a406-ed40dff69e34',
        '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('369048a6-dd01-4116-82da-f7546b25415d', 'eaa9530f-bb8c-453f-b634-c8599039e296',
        '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('233601af-eedc-43c2-abef-b269eef77da3', 'bdc5f279-42bf-491c-b87a-409b3c7bff89',
        '9017a1c3-6d81-4393-8b8c-5f68fd78f6fc', 2, current_timestamp, current_timestamp);

-- politician 'a882f183-0c6e-41a2-8745-ba9f570ecf8b'
insert into QuestionAnswer
values ('76ce2adf-659c-4b98-86d0-bb3ea73a368b', 'a335650d-06b4-4e92-ba77-d5f8964ceb82',
        'a882f183-0c6e-41a2-8745-ba9f570ecf8b', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('287860b5-7787-4fd5-a189-9a2372765130', '46df8b49-923c-4f91-8362-5196efbb71e2',
        'a882f183-0c6e-41a2-8745-ba9f570ecf8b', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ca6208eb-97e0-4490-89bc-932ec2588b93', '5f277258-ba7b-492c-b451-673eaa5957c0',
        'a882f183-0c6e-41a2-8745-ba9f570ecf8b', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('20b56858-6cac-4b8a-823e-ff486fd48764', '007ebae0-31cb-40fb-93ad-c2f980caee14',
        'a882f183-0c6e-41a2-8745-ba9f570ecf8b', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3ebb1c2a-b801-448c-abcb-98307f2dfa0c', '8ae0f13d-e699-4617-a4ba-672e6ccc0edc',
        'a882f183-0c6e-41a2-8745-ba9f570ecf8b', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('707fb364-5821-42f7-ad09-9872b328e600', 'dee756b8-f4f2-474a-88f4-e7f4fea7275a',
        'a882f183-0c6e-41a2-8745-ba9f570ecf8b', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('51fa83b3-93f6-45c4-9526-cd228e816ee5', 'b8ec593e-93b8-4bab-95dd-cfff5c526d54',
        'a882f183-0c6e-41a2-8745-ba9f570ecf8b', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2d5493e5-6031-4784-8b78-59ffed47614f', '6f9db124-e0ae-409d-b943-5be0cbc836e5',
        'a882f183-0c6e-41a2-8745-ba9f570ecf8b', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('706f90f2-b458-4150-b080-0785db62a62d', '616bf16a-470d-494e-ad8b-b230e80dafb3',
        'a882f183-0c6e-41a2-8745-ba9f570ecf8b', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9514c5c5-eebf-4357-a0c6-5cd8d1922ceb', '6c05b44c-34de-48a4-8d3c-6015b268c456',
        'a882f183-0c6e-41a2-8745-ba9f570ecf8b', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c90ea61d-54af-4871-a2f0-a6242b71e106', '3ac4a61c-f510-4d59-84cc-e957dbeedd8e',
        'a882f183-0c6e-41a2-8745-ba9f570ecf8b', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('66fe002a-9f60-4c2f-b8b8-894c5383e93a', 'f4f5632d-00ae-4be2-aff8-c83da3c21519',
        'a882f183-0c6e-41a2-8745-ba9f570ecf8b', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7c1b542a-504f-40f5-8e80-aabb1e980426', '4917d24b-e50c-4fa9-ac12-37a0d298f41f',
        'a882f183-0c6e-41a2-8745-ba9f570ecf8b', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('85fc7aa6-bae4-40cc-a408-68bd855c8344', 'aee92954-3fab-449d-bc56-7ec47df873cb',
        'a882f183-0c6e-41a2-8745-ba9f570ecf8b', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b1f90c1c-2c96-4ab7-85b4-22aee94dc5aa', '19d57226-91df-4c5a-92f4-7b7d774ea8c4',
        'a882f183-0c6e-41a2-8745-ba9f570ecf8b', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0a802109-b197-4d1b-bd01-3556512265e8', '81f2e7c9-6871-44e3-a432-b0fd050dd187',
        'a882f183-0c6e-41a2-8745-ba9f570ecf8b', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('06b5d4c5-918c-495e-8518-e6b6a2bfc3ac', '377a4b78-e58a-4d13-875f-817cd1693ece',
        'a882f183-0c6e-41a2-8745-ba9f570ecf8b', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5de870b4-f7fb-45d6-9306-94c56155a75c', '54e790a7-9741-408e-9327-3377df0e9b6e',
        'a882f183-0c6e-41a2-8745-ba9f570ecf8b', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ba29c1ec-24c3-4ab7-96c4-741749637b1f', '5dce5233-88d5-4b52-94de-6465ace4be98',
        'a882f183-0c6e-41a2-8745-ba9f570ecf8b', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b3875dda-2eaf-4147-b98d-b776dfbb4668', '63aa0cb7-202d-4c54-85ae-051e8249115d',
        'a882f183-0c6e-41a2-8745-ba9f570ecf8b', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('74a81e85-2408-4798-a1b1-0c89f5dc21bf', 'fb59e236-0633-46ca-a8b5-c0d7596ee10e',
        'a882f183-0c6e-41a2-8745-ba9f570ecf8b', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('eaf72654-78fe-4a67-b40b-273329abe460', '154147b7-aff2-4ff1-89cf-fcd6616ca6d2',
        'a882f183-0c6e-41a2-8745-ba9f570ecf8b', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a8074b0b-d8ad-4584-a673-98b4d6a81ebe', '6e8b2868-8094-46d3-95be-2397eb9d5237',
        'a882f183-0c6e-41a2-8745-ba9f570ecf8b', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('cfa56983-2a2b-4880-a2d2-592b8828e2b4', '112cc8ee-b996-4b19-9192-9e82b92aae94',
        'a882f183-0c6e-41a2-8745-ba9f570ecf8b', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0091aaab-db5a-4b8c-8b08-cf8af93d70ac', '60c4bebf-411f-456f-9eab-5afd98fde9c7',
        'a882f183-0c6e-41a2-8745-ba9f570ecf8b', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f481dd2f-a8ab-4e0c-b377-03aedf15cca8', 'c393d2b5-6e50-4d7a-ad40-e112851e0711',
        'a882f183-0c6e-41a2-8745-ba9f570ecf8b', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2a9cd841-5a45-4478-9cc1-7966a201337a', '38630605-5c28-4b5c-b042-93c43bf23ebc',
        'a882f183-0c6e-41a2-8745-ba9f570ecf8b', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6f66c256-c253-4591-ac0c-0413b4e45bd2', 'cc721727-53e6-4b1c-9d85-c97c46b5422e',
        'a882f183-0c6e-41a2-8745-ba9f570ecf8b', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('daa0e93a-5c65-4255-b134-2cee09b12b31', 'ccb39a89-f63e-4537-90cd-e3186178ae1f',
        'a882f183-0c6e-41a2-8745-ba9f570ecf8b', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c22fc968-6632-490e-8c3a-4aa31575be55', 'b34bfec1-ee6c-46bc-9d52-99e90b59fe12',
        'a882f183-0c6e-41a2-8745-ba9f570ecf8b', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9b7aa5a0-fd8a-4ab3-9a6d-c7808a65186e', '6b7955fe-fb44-4b68-92b5-13aedcce4e76',
        'a882f183-0c6e-41a2-8745-ba9f570ecf8b', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7f6ffa0d-f2a4-499b-a0bb-02f5b58e5d48', '204814c3-bf71-4b17-9727-c6d435976da6',
        'a882f183-0c6e-41a2-8745-ba9f570ecf8b', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('79661c9b-2ee0-4f3e-8d1d-35ea63b06eb6', 'd118e4c3-08b7-4c8e-95de-81b8715b6f1d',
        'a882f183-0c6e-41a2-8745-ba9f570ecf8b', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a26b830a-5d76-4f83-ae5b-fd4b1b9ac976', 'db255fa3-e68a-47b3-9651-a7cc95b33689',
        'a882f183-0c6e-41a2-8745-ba9f570ecf8b', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4c12c5b4-233b-41c6-86a0-3733ad01e364', '42b30d8f-b8eb-46be-93ee-446f2d1d2706',
        'a882f183-0c6e-41a2-8745-ba9f570ecf8b', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('16920e65-37b2-4a38-9562-131fb79c4a8a', '69126fb1-3e3f-4741-b6a4-91678103ccfe',
        'a882f183-0c6e-41a2-8745-ba9f570ecf8b', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b275a74c-3c1b-4abf-8e0b-60de837080b2', 'a4f7f094-e1ff-4280-aa2f-33e17fb03d07',
        'a882f183-0c6e-41a2-8745-ba9f570ecf8b', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0fb903db-2623-4c03-8887-78958ad0bc41', '9f8b49e7-cd35-4115-8e2a-a4bc71ceab78',
        'a882f183-0c6e-41a2-8745-ba9f570ecf8b', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('537eb480-7d3c-4be6-ab39-bd2564dd2377', 'df70cc34-0233-4ed5-89f4-5864507b42a4',
        'a882f183-0c6e-41a2-8745-ba9f570ecf8b', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('39953b89-f5ba-46a3-8f0b-425bca9f5cfe', '4b4b663a-bc9c-4eb4-ba80-f86adc0951f9',
        'a882f183-0c6e-41a2-8745-ba9f570ecf8b', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('afb91a76-964b-48c6-81fd-41a83655fa15', '231e38c1-fb35-4262-9a80-ea7a4d0a00ba',
        'a882f183-0c6e-41a2-8745-ba9f570ecf8b', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('bb5713a4-7214-485b-9014-4f23b65a8601', '57008dea-844d-44c7-8adc-6389295384c7',
        'a882f183-0c6e-41a2-8745-ba9f570ecf8b', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('773c6480-b70c-46ef-a710-dfb956c49b20', 'a214c6f9-029b-444d-82a0-8bc98a044a43',
        'a882f183-0c6e-41a2-8745-ba9f570ecf8b', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('45c94cf6-b281-43dc-bf24-9c67985e5660', '630e876e-62d7-498b-aae9-f8326e875369',
        'a882f183-0c6e-41a2-8745-ba9f570ecf8b', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5eb77b82-0441-457e-98a3-04548215bfda', '1521cd72-8dc2-463a-8cef-2c8c8166493b',
        'a882f183-0c6e-41a2-8745-ba9f570ecf8b', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a5601d10-b303-4b1c-ad92-e853adde41c5', '4c411dfd-41e6-4c53-bb7b-37cc54c1c8e8',
        'a882f183-0c6e-41a2-8745-ba9f570ecf8b', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1ed9265e-7278-402e-9de2-7e047e4336f3', '92bb831c-040f-4686-8acd-f42d8629ba7b',
        'a882f183-0c6e-41a2-8745-ba9f570ecf8b', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('cb40f045-289e-4b27-b702-6ac63c8d4c1b', 'fe8d890a-abea-44fc-92fe-ba3678289387',
        'a882f183-0c6e-41a2-8745-ba9f570ecf8b', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('477e1d6b-b11e-4b3c-a5a8-7bf5c1176063', '4de87bed-0d07-419e-9991-32658cdb0a9d',
        'a882f183-0c6e-41a2-8745-ba9f570ecf8b', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7715f4f6-70f0-4f41-af93-165b912a6839', '7570b82c-a85d-446c-9a92-5c0bb332a8a3',
        'a882f183-0c6e-41a2-8745-ba9f570ecf8b', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7fa6650e-55b4-4861-93ee-9e0226e2ec5c', 'b8b056d3-228d-4363-8f43-a1fed1da8695',
        'a882f183-0c6e-41a2-8745-ba9f570ecf8b', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6ec107d7-e13b-4dc9-8e20-072876118977', '5a08407a-ba00-4be3-bbc6-c50dc256d8f5',
        'a882f183-0c6e-41a2-8745-ba9f570ecf8b', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c279c493-6386-42a9-b5f6-769749647075', 'cac14782-c714-49d4-803d-6bdfb7fb8707',
        'a882f183-0c6e-41a2-8745-ba9f570ecf8b', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('16912398-0ae2-478a-a622-36e0c98af688', '3d723b44-2db7-4730-af04-6007ae7d2178',
        'a882f183-0c6e-41a2-8745-ba9f570ecf8b', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5597c9fe-c03c-405b-ab64-4e052bc26e42', '9a4f51df-c428-4a18-9055-511e0ae7b6d8',
        'a882f183-0c6e-41a2-8745-ba9f570ecf8b', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8650c9f2-b250-406e-8dd7-d553e2e2a8cd', 'fd1edc81-f470-4dbe-95cf-ea6ad5e85cf2',
        'a882f183-0c6e-41a2-8745-ba9f570ecf8b', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a48421bc-cd16-4068-acd8-0ab1cae49618', '6e2740d2-ef18-4564-b8c7-9f7214308f81',
        'a882f183-0c6e-41a2-8745-ba9f570ecf8b', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ec9915be-b063-45f9-a69d-889457eb3d0c', '926c446b-9db8-4b9c-a406-ed40dff69e34',
        'a882f183-0c6e-41a2-8745-ba9f570ecf8b', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e6453e20-75da-4bb6-90aa-8125aeb19495', 'eaa9530f-bb8c-453f-b634-c8599039e296',
        'a882f183-0c6e-41a2-8745-ba9f570ecf8b', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b269fe94-43e9-4351-80e1-b80100429db9', 'bdc5f279-42bf-491c-b87a-409b3c7bff89',
        'a882f183-0c6e-41a2-8745-ba9f570ecf8b', 1, current_timestamp, current_timestamp);

-- politician 'aed41ae7-e8d9-4944-aee1-ae138623bdd7'
insert into QuestionAnswer
values ('b39695d6-eb32-4e31-9a40-2ead337e0485', 'a335650d-06b4-4e92-ba77-d5f8964ceb82',
        'aed41ae7-e8d9-4944-aee1-ae138623bdd7', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7dc97e17-706a-4bcc-9969-dd487cd1b59e', '46df8b49-923c-4f91-8362-5196efbb71e2',
        'aed41ae7-e8d9-4944-aee1-ae138623bdd7', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d4b0b772-5179-47cc-be9d-25f6ddfd1e43', '5f277258-ba7b-492c-b451-673eaa5957c0',
        'aed41ae7-e8d9-4944-aee1-ae138623bdd7', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4c95ea29-a7ee-46bf-b7c3-4172e3aef324', '007ebae0-31cb-40fb-93ad-c2f980caee14',
        'aed41ae7-e8d9-4944-aee1-ae138623bdd7', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0fc19076-5b1b-4818-ab8d-2d3e4276645f', '8ae0f13d-e699-4617-a4ba-672e6ccc0edc',
        'aed41ae7-e8d9-4944-aee1-ae138623bdd7', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b89dadd3-3b89-4929-bf73-3b90d45dcd9c', 'dee756b8-f4f2-474a-88f4-e7f4fea7275a',
        'aed41ae7-e8d9-4944-aee1-ae138623bdd7', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c6f9f908-7f7e-47e0-a485-05f16b3ddac5', 'b8ec593e-93b8-4bab-95dd-cfff5c526d54',
        'aed41ae7-e8d9-4944-aee1-ae138623bdd7', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('cd761fd8-8c78-47cd-8cb4-66af9dfb55fb', '6f9db124-e0ae-409d-b943-5be0cbc836e5',
        'aed41ae7-e8d9-4944-aee1-ae138623bdd7', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b44a86cd-b39a-46a2-a3ef-64a31a18f4f6', '616bf16a-470d-494e-ad8b-b230e80dafb3',
        'aed41ae7-e8d9-4944-aee1-ae138623bdd7', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b0c9546c-a260-4792-8735-55fad01b20a5', '6c05b44c-34de-48a4-8d3c-6015b268c456',
        'aed41ae7-e8d9-4944-aee1-ae138623bdd7', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6cdd4404-5223-4062-8d3b-3c99b8019648', '3ac4a61c-f510-4d59-84cc-e957dbeedd8e',
        'aed41ae7-e8d9-4944-aee1-ae138623bdd7', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e51a21d8-3e01-4e47-997e-d71fd58e11e1', 'f4f5632d-00ae-4be2-aff8-c83da3c21519',
        'aed41ae7-e8d9-4944-aee1-ae138623bdd7', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('da5904e9-da20-41ec-897e-80078cb39679', '4917d24b-e50c-4fa9-ac12-37a0d298f41f',
        'aed41ae7-e8d9-4944-aee1-ae138623bdd7', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('32e9e932-c2ec-4c86-b5e6-360044843f66', 'aee92954-3fab-449d-bc56-7ec47df873cb',
        'aed41ae7-e8d9-4944-aee1-ae138623bdd7', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('56ced1fd-b3ab-49e2-af3b-1fecde5883df', '19d57226-91df-4c5a-92f4-7b7d774ea8c4',
        'aed41ae7-e8d9-4944-aee1-ae138623bdd7', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2006a6c9-6688-4bf4-bc77-c948675dc218', '81f2e7c9-6871-44e3-a432-b0fd050dd187',
        'aed41ae7-e8d9-4944-aee1-ae138623bdd7', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a160e8a7-6729-4e68-b7ca-ba82d1488abc', '377a4b78-e58a-4d13-875f-817cd1693ece',
        'aed41ae7-e8d9-4944-aee1-ae138623bdd7', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8ee248b2-3df2-45c7-92db-b1a28ff963ad', '54e790a7-9741-408e-9327-3377df0e9b6e',
        'aed41ae7-e8d9-4944-aee1-ae138623bdd7', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('afa6efca-ecf8-49cb-9508-d91fb21fdec8', '5dce5233-88d5-4b52-94de-6465ace4be98',
        'aed41ae7-e8d9-4944-aee1-ae138623bdd7', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6a2d7574-f019-4167-9ef2-6e06959d4f71', '63aa0cb7-202d-4c54-85ae-051e8249115d',
        'aed41ae7-e8d9-4944-aee1-ae138623bdd7', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('915205d8-2cd5-490e-b770-fcd6a9255beb', 'fb59e236-0633-46ca-a8b5-c0d7596ee10e',
        'aed41ae7-e8d9-4944-aee1-ae138623bdd7', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('acc4a85a-6b8f-414d-969e-fef502d93028', '154147b7-aff2-4ff1-89cf-fcd6616ca6d2',
        'aed41ae7-e8d9-4944-aee1-ae138623bdd7', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3bee3c7a-3d79-4b8b-a7eb-2d388fd76221', '6e8b2868-8094-46d3-95be-2397eb9d5237',
        'aed41ae7-e8d9-4944-aee1-ae138623bdd7', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2114b331-22f0-4f7e-8ccd-f3df06189aec', '112cc8ee-b996-4b19-9192-9e82b92aae94',
        'aed41ae7-e8d9-4944-aee1-ae138623bdd7', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('015ac4c2-499c-4673-b0a2-a1bf307eaefd', '60c4bebf-411f-456f-9eab-5afd98fde9c7',
        'aed41ae7-e8d9-4944-aee1-ae138623bdd7', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a9eed44d-9523-4590-be36-a32f71fe7ce4', 'c393d2b5-6e50-4d7a-ad40-e112851e0711',
        'aed41ae7-e8d9-4944-aee1-ae138623bdd7', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('dc603663-77b9-411a-860a-b4d3e482e839', '38630605-5c28-4b5c-b042-93c43bf23ebc',
        'aed41ae7-e8d9-4944-aee1-ae138623bdd7', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('81f05159-1a05-4819-b627-debd8ab8ac87', 'cc721727-53e6-4b1c-9d85-c97c46b5422e',
        'aed41ae7-e8d9-4944-aee1-ae138623bdd7', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ed1e32e6-ae72-4b53-9af6-1c9afccca6ce', 'ccb39a89-f63e-4537-90cd-e3186178ae1f',
        'aed41ae7-e8d9-4944-aee1-ae138623bdd7', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d66d9c40-c657-4171-aaab-c98d65fb2663', 'b34bfec1-ee6c-46bc-9d52-99e90b59fe12',
        'aed41ae7-e8d9-4944-aee1-ae138623bdd7', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3dd1494d-9472-4b99-8725-adad698282b1', '6b7955fe-fb44-4b68-92b5-13aedcce4e76',
        'aed41ae7-e8d9-4944-aee1-ae138623bdd7', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('039b2310-1c26-423e-bf09-517098e10b79', '204814c3-bf71-4b17-9727-c6d435976da6',
        'aed41ae7-e8d9-4944-aee1-ae138623bdd7', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('33021c78-4658-4b72-82ac-3b87695f3ef5', 'd118e4c3-08b7-4c8e-95de-81b8715b6f1d',
        'aed41ae7-e8d9-4944-aee1-ae138623bdd7', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('76350e2e-6654-40e4-80a9-2c2ffcd43081', 'db255fa3-e68a-47b3-9651-a7cc95b33689',
        'aed41ae7-e8d9-4944-aee1-ae138623bdd7', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9bf0efe5-a487-4fd6-acdc-ced73a66268a', '42b30d8f-b8eb-46be-93ee-446f2d1d2706',
        'aed41ae7-e8d9-4944-aee1-ae138623bdd7', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('87c25fbe-6c67-4d32-8e5b-54b36a9f49f1', '69126fb1-3e3f-4741-b6a4-91678103ccfe',
        'aed41ae7-e8d9-4944-aee1-ae138623bdd7', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('71339802-664b-466a-ace9-2541bc0db767', 'a4f7f094-e1ff-4280-aa2f-33e17fb03d07',
        'aed41ae7-e8d9-4944-aee1-ae138623bdd7', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d5b01084-6cf1-48d0-94bb-83ddebe3d646', '9f8b49e7-cd35-4115-8e2a-a4bc71ceab78',
        'aed41ae7-e8d9-4944-aee1-ae138623bdd7', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a6f9628a-e210-4a55-a37f-3ed60af6f7e7', 'df70cc34-0233-4ed5-89f4-5864507b42a4',
        'aed41ae7-e8d9-4944-aee1-ae138623bdd7', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9c71cd0e-a55a-4a26-b8ee-537005cc1dbc', '4b4b663a-bc9c-4eb4-ba80-f86adc0951f9',
        'aed41ae7-e8d9-4944-aee1-ae138623bdd7', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0f9c22d1-882b-497d-948c-a26093474d40', '231e38c1-fb35-4262-9a80-ea7a4d0a00ba',
        'aed41ae7-e8d9-4944-aee1-ae138623bdd7', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('23aabe71-0105-48df-a558-cd5e57db0b39', '57008dea-844d-44c7-8adc-6389295384c7',
        'aed41ae7-e8d9-4944-aee1-ae138623bdd7', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('af18be75-c710-442f-97e2-0857dce103f6', 'a214c6f9-029b-444d-82a0-8bc98a044a43',
        'aed41ae7-e8d9-4944-aee1-ae138623bdd7', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('658bb11e-7d01-4091-8807-ec8e5f9c3724', '630e876e-62d7-498b-aae9-f8326e875369',
        'aed41ae7-e8d9-4944-aee1-ae138623bdd7', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d89d5faa-16fc-4a18-9b9d-6d39bc7d6bee', '1521cd72-8dc2-463a-8cef-2c8c8166493b',
        'aed41ae7-e8d9-4944-aee1-ae138623bdd7', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d3d77626-cee8-4b4c-a42f-62c6c4dc169b', '4c411dfd-41e6-4c53-bb7b-37cc54c1c8e8',
        'aed41ae7-e8d9-4944-aee1-ae138623bdd7', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('05aa81d3-2487-4b10-bd9d-33ce1ef1df2b', '92bb831c-040f-4686-8acd-f42d8629ba7b',
        'aed41ae7-e8d9-4944-aee1-ae138623bdd7', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e9814311-a50c-4cb5-8c99-cdb199460f86', 'fe8d890a-abea-44fc-92fe-ba3678289387',
        'aed41ae7-e8d9-4944-aee1-ae138623bdd7', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b9d42f92-ec8d-45fe-b169-f8457fccc6a2', '4de87bed-0d07-419e-9991-32658cdb0a9d',
        'aed41ae7-e8d9-4944-aee1-ae138623bdd7', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b6bfb36f-3656-4f3e-b96c-0a337da42475', '7570b82c-a85d-446c-9a92-5c0bb332a8a3',
        'aed41ae7-e8d9-4944-aee1-ae138623bdd7', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c3139908-8fc3-4a77-899b-0beaa53cf658', 'b8b056d3-228d-4363-8f43-a1fed1da8695',
        'aed41ae7-e8d9-4944-aee1-ae138623bdd7', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('503cef45-0f37-455f-9789-fa38a1c888cd', '5a08407a-ba00-4be3-bbc6-c50dc256d8f5',
        'aed41ae7-e8d9-4944-aee1-ae138623bdd7', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ae6f5933-e687-4812-89c3-b33dafe9344e', 'cac14782-c714-49d4-803d-6bdfb7fb8707',
        'aed41ae7-e8d9-4944-aee1-ae138623bdd7', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('27bd700f-bed6-436d-9003-ba1f29e12921', '3d723b44-2db7-4730-af04-6007ae7d2178',
        'aed41ae7-e8d9-4944-aee1-ae138623bdd7', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('acfedb7c-29ea-4f6c-8fd9-3d7a279ed226', '9a4f51df-c428-4a18-9055-511e0ae7b6d8',
        'aed41ae7-e8d9-4944-aee1-ae138623bdd7', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('09044927-c524-4363-a56a-e976205fb7b6', 'fd1edc81-f470-4dbe-95cf-ea6ad5e85cf2',
        'aed41ae7-e8d9-4944-aee1-ae138623bdd7', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ee493692-71cd-4f16-84ff-c7a9acc09a69', '6e2740d2-ef18-4564-b8c7-9f7214308f81',
        'aed41ae7-e8d9-4944-aee1-ae138623bdd7', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d11004d2-01e7-43bc-951a-1c6621f6f6ca', '926c446b-9db8-4b9c-a406-ed40dff69e34',
        'aed41ae7-e8d9-4944-aee1-ae138623bdd7', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('35597563-4134-4a5e-af61-9b4efa1a9714', 'eaa9530f-bb8c-453f-b634-c8599039e296',
        'aed41ae7-e8d9-4944-aee1-ae138623bdd7', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5308f595-7bdc-4e41-aa9c-3831d92fc8ee', 'bdc5f279-42bf-491c-b87a-409b3c7bff89',
        'aed41ae7-e8d9-4944-aee1-ae138623bdd7', 1, current_timestamp, current_timestamp);

-- politician '69a474b5-263c-4797-b451-87701c625291'
insert into QuestionAnswer
values ('4698d27a-0bf7-41dc-bf2f-b7100e6c4d61', 'a335650d-06b4-4e92-ba77-d5f8964ceb82',
        '69a474b5-263c-4797-b451-87701c625291', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f8a7c38c-c2af-4904-aa06-65b2797c85d3', '46df8b49-923c-4f91-8362-5196efbb71e2',
        '69a474b5-263c-4797-b451-87701c625291', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('679655ea-6092-493a-8116-9aef6e4fa139', '5f277258-ba7b-492c-b451-673eaa5957c0',
        '69a474b5-263c-4797-b451-87701c625291', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('50bce2b9-a012-425d-a9ed-dfa315d217aa', '007ebae0-31cb-40fb-93ad-c2f980caee14',
        '69a474b5-263c-4797-b451-87701c625291', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b80dbbe6-4e71-4589-ad1a-aded2cca9502', '8ae0f13d-e699-4617-a4ba-672e6ccc0edc',
        '69a474b5-263c-4797-b451-87701c625291', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c8f02337-7407-4266-a1fa-b745f4d8370c', 'dee756b8-f4f2-474a-88f4-e7f4fea7275a',
        '69a474b5-263c-4797-b451-87701c625291', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2ae6910b-0a08-4b2c-a32f-79a3cee2f114', 'b8ec593e-93b8-4bab-95dd-cfff5c526d54',
        '69a474b5-263c-4797-b451-87701c625291', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a06f969b-db86-4958-a3b1-4971ed7f4514', '6f9db124-e0ae-409d-b943-5be0cbc836e5',
        '69a474b5-263c-4797-b451-87701c625291', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7362fb19-1aac-4619-bb9c-103827cfa73a', '616bf16a-470d-494e-ad8b-b230e80dafb3',
        '69a474b5-263c-4797-b451-87701c625291', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('26d10611-8f33-4fa9-bf7b-661cecd458f2', '6c05b44c-34de-48a4-8d3c-6015b268c456',
        '69a474b5-263c-4797-b451-87701c625291', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1d6ce8b3-e6e2-4efb-9c23-15e329053359', '3ac4a61c-f510-4d59-84cc-e957dbeedd8e',
        '69a474b5-263c-4797-b451-87701c625291', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3378e526-1bed-4e11-84f2-449dc10e0589', 'f4f5632d-00ae-4be2-aff8-c83da3c21519',
        '69a474b5-263c-4797-b451-87701c625291', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('005955d0-5bb6-4e9d-a220-7d014465a074', '4917d24b-e50c-4fa9-ac12-37a0d298f41f',
        '69a474b5-263c-4797-b451-87701c625291', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b0883c87-7434-4a0e-b732-ef50922e670b', 'aee92954-3fab-449d-bc56-7ec47df873cb',
        '69a474b5-263c-4797-b451-87701c625291', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c03219a7-a882-4d98-80bd-bdc46f6a31ad', '19d57226-91df-4c5a-92f4-7b7d774ea8c4',
        '69a474b5-263c-4797-b451-87701c625291', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4b3a3a5f-f52e-4e9c-8d79-2a3b624ecefe', '81f2e7c9-6871-44e3-a432-b0fd050dd187',
        '69a474b5-263c-4797-b451-87701c625291', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3d109bd2-d820-467f-8863-4badf1816362', '377a4b78-e58a-4d13-875f-817cd1693ece',
        '69a474b5-263c-4797-b451-87701c625291', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4d6bc65b-5825-4dcf-82ff-0ef1fb70e164', '54e790a7-9741-408e-9327-3377df0e9b6e',
        '69a474b5-263c-4797-b451-87701c625291', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1d9c4e29-1c85-451a-98d4-f5f71bf3abe9', '5dce5233-88d5-4b52-94de-6465ace4be98',
        '69a474b5-263c-4797-b451-87701c625291', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('fb3a93b0-6065-4aba-8107-f56fd4671913', '63aa0cb7-202d-4c54-85ae-051e8249115d',
        '69a474b5-263c-4797-b451-87701c625291', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('acea6c7c-5720-4057-81c6-434eb49e0ca5', 'fb59e236-0633-46ca-a8b5-c0d7596ee10e',
        '69a474b5-263c-4797-b451-87701c625291', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3f776f2b-67fb-45cb-a45e-8f1849bac0f8', '154147b7-aff2-4ff1-89cf-fcd6616ca6d2',
        '69a474b5-263c-4797-b451-87701c625291', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4ba9b1b1-12c8-4d85-9c29-45e453958dbf', '6e8b2868-8094-46d3-95be-2397eb9d5237',
        '69a474b5-263c-4797-b451-87701c625291', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f27b574b-5f9b-4dc4-89d5-a74d66e4c59a', '112cc8ee-b996-4b19-9192-9e82b92aae94',
        '69a474b5-263c-4797-b451-87701c625291', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ca1bcf10-4667-4a94-b695-5f0fe46dcda9', '60c4bebf-411f-456f-9eab-5afd98fde9c7',
        '69a474b5-263c-4797-b451-87701c625291', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('33a142d4-5794-400c-888d-25ff938fb61e', 'c393d2b5-6e50-4d7a-ad40-e112851e0711',
        '69a474b5-263c-4797-b451-87701c625291', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2473c493-441d-45d1-98c0-70aa6e51c4d9', '38630605-5c28-4b5c-b042-93c43bf23ebc',
        '69a474b5-263c-4797-b451-87701c625291', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f566c07f-3bd2-4c8b-8899-44cf228f1bec', 'cc721727-53e6-4b1c-9d85-c97c46b5422e',
        '69a474b5-263c-4797-b451-87701c625291', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0eb783a8-4518-4e57-9e55-2cab3f9ff138', 'ccb39a89-f63e-4537-90cd-e3186178ae1f',
        '69a474b5-263c-4797-b451-87701c625291', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d7dd3bc4-edf4-4808-b57b-754a88da61d4', 'b34bfec1-ee6c-46bc-9d52-99e90b59fe12',
        '69a474b5-263c-4797-b451-87701c625291', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('45bc69c4-f8c0-4144-87ed-186e9f9e29b2', '6b7955fe-fb44-4b68-92b5-13aedcce4e76',
        '69a474b5-263c-4797-b451-87701c625291', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7499b1d0-1470-4c9f-9959-b68a88533675', '204814c3-bf71-4b17-9727-c6d435976da6',
        '69a474b5-263c-4797-b451-87701c625291', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ca772b96-afed-4ef5-8a55-66f941ee37b3', 'd118e4c3-08b7-4c8e-95de-81b8715b6f1d',
        '69a474b5-263c-4797-b451-87701c625291', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('824bb8c6-4188-4f0d-b73f-0a6a6f84d37d', 'db255fa3-e68a-47b3-9651-a7cc95b33689',
        '69a474b5-263c-4797-b451-87701c625291', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e55d5bb7-185b-43bc-85ea-e73632e26aca', '42b30d8f-b8eb-46be-93ee-446f2d1d2706',
        '69a474b5-263c-4797-b451-87701c625291', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4f7c2f67-8866-40da-9689-fd947e14b033', '69126fb1-3e3f-4741-b6a4-91678103ccfe',
        '69a474b5-263c-4797-b451-87701c625291', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('824ccc04-a8f4-4aee-a753-3e506ef1f885', 'a4f7f094-e1ff-4280-aa2f-33e17fb03d07',
        '69a474b5-263c-4797-b451-87701c625291', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a7f442f6-fc34-4418-9637-9b66b4f0de8c', '9f8b49e7-cd35-4115-8e2a-a4bc71ceab78',
        '69a474b5-263c-4797-b451-87701c625291', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a18e53d3-f08d-4846-9b1b-dd831f136b4a', 'df70cc34-0233-4ed5-89f4-5864507b42a4',
        '69a474b5-263c-4797-b451-87701c625291', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('37069276-917c-44b2-a369-f3aced541717', '4b4b663a-bc9c-4eb4-ba80-f86adc0951f9',
        '69a474b5-263c-4797-b451-87701c625291', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1406ec28-019b-4614-885d-618475bcabd8', '231e38c1-fb35-4262-9a80-ea7a4d0a00ba',
        '69a474b5-263c-4797-b451-87701c625291', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3f612cf5-6f32-4556-9dd7-294b0beef080', '57008dea-844d-44c7-8adc-6389295384c7',
        '69a474b5-263c-4797-b451-87701c625291', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f4fe93a5-23c9-4174-8d71-aacf68c649f8', 'a214c6f9-029b-444d-82a0-8bc98a044a43',
        '69a474b5-263c-4797-b451-87701c625291', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('43c2eed2-666d-45b4-82b6-e759fa371210', '630e876e-62d7-498b-aae9-f8326e875369',
        '69a474b5-263c-4797-b451-87701c625291', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('700f208c-0de9-4c32-b1f9-f098f584d91d', '1521cd72-8dc2-463a-8cef-2c8c8166493b',
        '69a474b5-263c-4797-b451-87701c625291', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('242a4c5c-3523-4dd2-8b3d-147bee9891f8', '4c411dfd-41e6-4c53-bb7b-37cc54c1c8e8',
        '69a474b5-263c-4797-b451-87701c625291', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('35cb2b88-8adb-4f7b-96ad-27c2a61b58d0', '92bb831c-040f-4686-8acd-f42d8629ba7b',
        '69a474b5-263c-4797-b451-87701c625291', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('188b5f89-ffe2-47de-9c4d-b2bc055a41fb', 'fe8d890a-abea-44fc-92fe-ba3678289387',
        '69a474b5-263c-4797-b451-87701c625291', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('29e8e80d-7c18-4b9d-9efb-d0558469cd2c', '4de87bed-0d07-419e-9991-32658cdb0a9d',
        '69a474b5-263c-4797-b451-87701c625291', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('514701c1-9a35-4a58-8618-5114d7f48e1e', '7570b82c-a85d-446c-9a92-5c0bb332a8a3',
        '69a474b5-263c-4797-b451-87701c625291', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('bb69707c-94d9-4aa6-a47d-ebff69ca4969', 'b8b056d3-228d-4363-8f43-a1fed1da8695',
        '69a474b5-263c-4797-b451-87701c625291', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8f0c5554-e9b0-4357-814a-3b5c4d278c7d', '5a08407a-ba00-4be3-bbc6-c50dc256d8f5',
        '69a474b5-263c-4797-b451-87701c625291', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('961314f1-c72d-45c6-98f6-bc796fe44658', 'cac14782-c714-49d4-803d-6bdfb7fb8707',
        '69a474b5-263c-4797-b451-87701c625291', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8cdc0204-8c9c-44e6-b247-c2c2ff0bef6f', '3d723b44-2db7-4730-af04-6007ae7d2178',
        '69a474b5-263c-4797-b451-87701c625291', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('803fbba0-f839-4761-9491-27353cf337bb', '9a4f51df-c428-4a18-9055-511e0ae7b6d8',
        '69a474b5-263c-4797-b451-87701c625291', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('cab7a2e7-e69f-4532-8206-6d2a3b631192', 'fd1edc81-f470-4dbe-95cf-ea6ad5e85cf2',
        '69a474b5-263c-4797-b451-87701c625291', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('18c8f14f-add8-4e23-acdf-b06e031cecce', '6e2740d2-ef18-4564-b8c7-9f7214308f81',
        '69a474b5-263c-4797-b451-87701c625291', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d65233c4-c501-4d6d-bd3e-95a009518d6d', '926c446b-9db8-4b9c-a406-ed40dff69e34',
        '69a474b5-263c-4797-b451-87701c625291', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e4e5ee5b-8893-44d5-9662-b3098333218c', 'eaa9530f-bb8c-453f-b634-c8599039e296',
        '69a474b5-263c-4797-b451-87701c625291', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('02d30e61-f4ed-4115-aed0-0042b66aaaa7', 'bdc5f279-42bf-491c-b87a-409b3c7bff89',
        '69a474b5-263c-4797-b451-87701c625291', 2, current_timestamp, current_timestamp);

-- politician '2eb55491-aa91-47ed-9f68-42836101c334'
insert into QuestionAnswer
values ('778aaa69-0009-4d51-a9e7-6a41c86cc05d', 'a335650d-06b4-4e92-ba77-d5f8964ceb82',
        '2eb55491-aa91-47ed-9f68-42836101c334', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('fe0563f0-6c4b-4c2c-8026-00e7831190ad', '46df8b49-923c-4f91-8362-5196efbb71e2',
        '2eb55491-aa91-47ed-9f68-42836101c334', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2008139c-a066-46e3-9012-03541e027170', '5f277258-ba7b-492c-b451-673eaa5957c0',
        '2eb55491-aa91-47ed-9f68-42836101c334', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('76f81365-96a9-4634-9a22-afb46a0c6188', '007ebae0-31cb-40fb-93ad-c2f980caee14',
        '2eb55491-aa91-47ed-9f68-42836101c334', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('428939a9-70b5-409c-9d78-668414e66b27', '8ae0f13d-e699-4617-a4ba-672e6ccc0edc',
        '2eb55491-aa91-47ed-9f68-42836101c334', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2560ff2f-096f-44b5-8c81-2ca3351a1e28', 'dee756b8-f4f2-474a-88f4-e7f4fea7275a',
        '2eb55491-aa91-47ed-9f68-42836101c334', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6de1737d-eb6d-46c4-b396-07ab6adfc12d', 'b8ec593e-93b8-4bab-95dd-cfff5c526d54',
        '2eb55491-aa91-47ed-9f68-42836101c334', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('24862e0f-1d5a-42ae-ac26-3d1399e8312b', '6f9db124-e0ae-409d-b943-5be0cbc836e5',
        '2eb55491-aa91-47ed-9f68-42836101c334', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('86f8af45-8455-4e3a-9d35-a045676c97c5', '616bf16a-470d-494e-ad8b-b230e80dafb3',
        '2eb55491-aa91-47ed-9f68-42836101c334', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d5175d45-67d6-45ce-b0c0-65713ca5553c', '6c05b44c-34de-48a4-8d3c-6015b268c456',
        '2eb55491-aa91-47ed-9f68-42836101c334', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ac9d1206-70ec-49f4-a281-1c0703c57f16', '3ac4a61c-f510-4d59-84cc-e957dbeedd8e',
        '2eb55491-aa91-47ed-9f68-42836101c334', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('84e29692-22eb-4ec0-8175-422402b1d20d', 'f4f5632d-00ae-4be2-aff8-c83da3c21519',
        '2eb55491-aa91-47ed-9f68-42836101c334', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('cecd5268-cb2a-4798-a3a6-7e5504f69a22', '4917d24b-e50c-4fa9-ac12-37a0d298f41f',
        '2eb55491-aa91-47ed-9f68-42836101c334', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4c3b3380-e8dc-4447-8d7e-9a4f4d19e57d', 'aee92954-3fab-449d-bc56-7ec47df873cb',
        '2eb55491-aa91-47ed-9f68-42836101c334', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('faace022-cb68-4c71-ad2f-33d9eed62d3b', '19d57226-91df-4c5a-92f4-7b7d774ea8c4',
        '2eb55491-aa91-47ed-9f68-42836101c334', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a6e0f899-6314-4a30-8e44-bf851b0d39fb', '81f2e7c9-6871-44e3-a432-b0fd050dd187',
        '2eb55491-aa91-47ed-9f68-42836101c334', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('17432cd2-53f9-4eb1-b10d-c9464125787d', '377a4b78-e58a-4d13-875f-817cd1693ece',
        '2eb55491-aa91-47ed-9f68-42836101c334', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('aadb1a25-a7d0-46da-91df-c371eb66f197', '54e790a7-9741-408e-9327-3377df0e9b6e',
        '2eb55491-aa91-47ed-9f68-42836101c334', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5eda969c-2a39-4049-a0c0-f14dca7b47da', '5dce5233-88d5-4b52-94de-6465ace4be98',
        '2eb55491-aa91-47ed-9f68-42836101c334', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('24a456f8-bbb2-4443-a6fa-d683162f4df2', '63aa0cb7-202d-4c54-85ae-051e8249115d',
        '2eb55491-aa91-47ed-9f68-42836101c334', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b7c170fc-2cfa-4dd2-82c6-7ff205b5ed69', 'fb59e236-0633-46ca-a8b5-c0d7596ee10e',
        '2eb55491-aa91-47ed-9f68-42836101c334', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('873c373b-aff0-432b-a15a-7548a96166fd', '154147b7-aff2-4ff1-89cf-fcd6616ca6d2',
        '2eb55491-aa91-47ed-9f68-42836101c334', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5b16bce7-c345-4d40-a6b3-edba17eb1357', '6e8b2868-8094-46d3-95be-2397eb9d5237',
        '2eb55491-aa91-47ed-9f68-42836101c334', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('cf154e2b-7929-4de4-96a4-0250eee18356', '112cc8ee-b996-4b19-9192-9e82b92aae94',
        '2eb55491-aa91-47ed-9f68-42836101c334', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ca40a2e9-143b-4ad5-bb26-8d394746e44d', '60c4bebf-411f-456f-9eab-5afd98fde9c7',
        '2eb55491-aa91-47ed-9f68-42836101c334', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9b54d175-f771-40d2-9c88-45ed259c6db3', 'c393d2b5-6e50-4d7a-ad40-e112851e0711',
        '2eb55491-aa91-47ed-9f68-42836101c334', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a57f98f5-162f-42d1-8ab4-fb8f5e042768', '38630605-5c28-4b5c-b042-93c43bf23ebc',
        '2eb55491-aa91-47ed-9f68-42836101c334', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9d1857dc-249f-4320-a8d8-1ac8402b9441', 'cc721727-53e6-4b1c-9d85-c97c46b5422e',
        '2eb55491-aa91-47ed-9f68-42836101c334', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d49924bf-721c-48a7-afc9-f2adf110a1a8', 'ccb39a89-f63e-4537-90cd-e3186178ae1f',
        '2eb55491-aa91-47ed-9f68-42836101c334', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('38efffc5-e277-4964-b3c4-2c8c7ba1377e', 'b34bfec1-ee6c-46bc-9d52-99e90b59fe12',
        '2eb55491-aa91-47ed-9f68-42836101c334', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9912fad5-626a-466d-9924-6c0566603dbe', '6b7955fe-fb44-4b68-92b5-13aedcce4e76',
        '2eb55491-aa91-47ed-9f68-42836101c334', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('de06c493-bdaf-43f4-84c7-91922685f1eb', '204814c3-bf71-4b17-9727-c6d435976da6',
        '2eb55491-aa91-47ed-9f68-42836101c334', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9ddab5b3-1746-49b3-9cad-7a57cbc12eeb', 'd118e4c3-08b7-4c8e-95de-81b8715b6f1d',
        '2eb55491-aa91-47ed-9f68-42836101c334', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('57e1231f-621a-4e9d-a47e-9b769bd6a0a6', 'db255fa3-e68a-47b3-9651-a7cc95b33689',
        '2eb55491-aa91-47ed-9f68-42836101c334', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b251d466-8bdf-4068-a3b9-27dfd8d730fa', '42b30d8f-b8eb-46be-93ee-446f2d1d2706',
        '2eb55491-aa91-47ed-9f68-42836101c334', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('34a5b9f5-4b00-4a6a-90ef-0909dcc228eb', '69126fb1-3e3f-4741-b6a4-91678103ccfe',
        '2eb55491-aa91-47ed-9f68-42836101c334', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e9c39dc7-dc88-4e13-9df7-0dca84b81ca4', 'a4f7f094-e1ff-4280-aa2f-33e17fb03d07',
        '2eb55491-aa91-47ed-9f68-42836101c334', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1190b359-8acf-43b4-8531-351dd3f8bf59', '9f8b49e7-cd35-4115-8e2a-a4bc71ceab78',
        '2eb55491-aa91-47ed-9f68-42836101c334', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4d356630-cc09-4357-be00-f056f120c984', 'df70cc34-0233-4ed5-89f4-5864507b42a4',
        '2eb55491-aa91-47ed-9f68-42836101c334', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('17a8baf9-2998-454b-8680-de47fbc798ae', '4b4b663a-bc9c-4eb4-ba80-f86adc0951f9',
        '2eb55491-aa91-47ed-9f68-42836101c334', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f155877f-8825-4b55-84da-a2e1165f8569', '231e38c1-fb35-4262-9a80-ea7a4d0a00ba',
        '2eb55491-aa91-47ed-9f68-42836101c334', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('bb797f12-2a92-4c2d-8631-cee5e605993a', '57008dea-844d-44c7-8adc-6389295384c7',
        '2eb55491-aa91-47ed-9f68-42836101c334', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2dfdc226-dcc8-4171-91ea-231a1557e5b8', 'a214c6f9-029b-444d-82a0-8bc98a044a43',
        '2eb55491-aa91-47ed-9f68-42836101c334', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f9bafd3e-297d-4845-a7f7-f2e75bfee14d', '630e876e-62d7-498b-aae9-f8326e875369',
        '2eb55491-aa91-47ed-9f68-42836101c334', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('92d36217-dcbc-49f2-8610-a173d143fd6e', '1521cd72-8dc2-463a-8cef-2c8c8166493b',
        '2eb55491-aa91-47ed-9f68-42836101c334', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('653a8b46-a946-47fb-a0b1-d683a9384b3c', '4c411dfd-41e6-4c53-bb7b-37cc54c1c8e8',
        '2eb55491-aa91-47ed-9f68-42836101c334', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('cc411976-f1a2-4851-916e-bf143f431669', '92bb831c-040f-4686-8acd-f42d8629ba7b',
        '2eb55491-aa91-47ed-9f68-42836101c334', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3a9a5cdd-888b-49b0-98ca-e1db7974051d', 'fe8d890a-abea-44fc-92fe-ba3678289387',
        '2eb55491-aa91-47ed-9f68-42836101c334', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('295eecb0-f446-48eb-97f4-26715d4d5b29', '4de87bed-0d07-419e-9991-32658cdb0a9d',
        '2eb55491-aa91-47ed-9f68-42836101c334', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('fadfba66-c66a-43be-8204-65bb94df6fa4', '7570b82c-a85d-446c-9a92-5c0bb332a8a3',
        '2eb55491-aa91-47ed-9f68-42836101c334', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('71f5a853-5b1a-4951-ae6e-1081dab251ad', 'b8b056d3-228d-4363-8f43-a1fed1da8695',
        '2eb55491-aa91-47ed-9f68-42836101c334', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1dd3d0e2-59b5-4c46-8e47-326aed899351', '5a08407a-ba00-4be3-bbc6-c50dc256d8f5',
        '2eb55491-aa91-47ed-9f68-42836101c334', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('50a188bf-baef-4414-aaaa-c0fc77234fae', 'cac14782-c714-49d4-803d-6bdfb7fb8707',
        '2eb55491-aa91-47ed-9f68-42836101c334', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5c441cb4-e320-4ec0-bd9c-2e92ee5dd08f', '3d723b44-2db7-4730-af04-6007ae7d2178',
        '2eb55491-aa91-47ed-9f68-42836101c334', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d753441a-e58f-4b38-b981-05380fc62434', '9a4f51df-c428-4a18-9055-511e0ae7b6d8',
        '2eb55491-aa91-47ed-9f68-42836101c334', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f62ef2d9-7eb4-49e8-952d-574509240a19', 'fd1edc81-f470-4dbe-95cf-ea6ad5e85cf2',
        '2eb55491-aa91-47ed-9f68-42836101c334', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('cab74c32-d9d6-4fb9-a912-ca98522516e6', '6e2740d2-ef18-4564-b8c7-9f7214308f81',
        '2eb55491-aa91-47ed-9f68-42836101c334', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ee537b1f-5b7b-4667-bd1c-841e4f321f45', '926c446b-9db8-4b9c-a406-ed40dff69e34',
        '2eb55491-aa91-47ed-9f68-42836101c334', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e5dccec6-ee32-46a7-8152-8f30880bbfb7', 'eaa9530f-bb8c-453f-b634-c8599039e296',
        '2eb55491-aa91-47ed-9f68-42836101c334', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e208df6c-c94f-4f2c-ab11-a1ff226ba45a', 'bdc5f279-42bf-491c-b87a-409b3c7bff89',
        '2eb55491-aa91-47ed-9f68-42836101c334', 3, current_timestamp, current_timestamp);

-- politician '7c25649f-fe2b-47a7-83a5-b427ef5d7f27'
insert into QuestionAnswer
values ('ea84a1c3-0484-4e4e-a3c7-99f45daa4d62', 'a335650d-06b4-4e92-ba77-d5f8964ceb82',
        '7c25649f-fe2b-47a7-83a5-b427ef5d7f27', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('91af645c-7897-4a4d-afc8-8d152699b580', '46df8b49-923c-4f91-8362-5196efbb71e2',
        '7c25649f-fe2b-47a7-83a5-b427ef5d7f27', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f094cf19-d2c6-4fef-915a-26bcfd09cd0b', '5f277258-ba7b-492c-b451-673eaa5957c0',
        '7c25649f-fe2b-47a7-83a5-b427ef5d7f27', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('fb895281-1482-4305-95e5-7c188f25b968', '007ebae0-31cb-40fb-93ad-c2f980caee14',
        '7c25649f-fe2b-47a7-83a5-b427ef5d7f27', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('415cfc64-b6d5-4fd0-bcac-3b3ebe102791', '8ae0f13d-e699-4617-a4ba-672e6ccc0edc',
        '7c25649f-fe2b-47a7-83a5-b427ef5d7f27', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8a58a29a-2fac-4654-8991-60713cf82d82', 'dee756b8-f4f2-474a-88f4-e7f4fea7275a',
        '7c25649f-fe2b-47a7-83a5-b427ef5d7f27', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1c50d40b-061e-463b-8a75-58bfa1e486c6', 'b8ec593e-93b8-4bab-95dd-cfff5c526d54',
        '7c25649f-fe2b-47a7-83a5-b427ef5d7f27', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('71c26710-eefd-409e-b25a-994c6a8fcbb5', '6f9db124-e0ae-409d-b943-5be0cbc836e5',
        '7c25649f-fe2b-47a7-83a5-b427ef5d7f27', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('510dc397-6a61-4e10-8540-2195682aa216', '616bf16a-470d-494e-ad8b-b230e80dafb3',
        '7c25649f-fe2b-47a7-83a5-b427ef5d7f27', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9bfacf89-eb6e-4311-8afe-5926cc07f0c0', '6c05b44c-34de-48a4-8d3c-6015b268c456',
        '7c25649f-fe2b-47a7-83a5-b427ef5d7f27', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c98c36ed-bed6-4c6c-b7b9-f1966c33cd35', '3ac4a61c-f510-4d59-84cc-e957dbeedd8e',
        '7c25649f-fe2b-47a7-83a5-b427ef5d7f27', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('eca90c9c-bdb9-4127-9817-3309f936fb29', 'f4f5632d-00ae-4be2-aff8-c83da3c21519',
        '7c25649f-fe2b-47a7-83a5-b427ef5d7f27', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9510cce7-d289-4c91-b816-8bfcd92c2cca', '4917d24b-e50c-4fa9-ac12-37a0d298f41f',
        '7c25649f-fe2b-47a7-83a5-b427ef5d7f27', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('fdfa4dfb-ac9d-4e03-97a5-8cb656119f3e', 'aee92954-3fab-449d-bc56-7ec47df873cb',
        '7c25649f-fe2b-47a7-83a5-b427ef5d7f27', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1ab0535e-eec9-44da-be42-74de12d7ef89', '19d57226-91df-4c5a-92f4-7b7d774ea8c4',
        '7c25649f-fe2b-47a7-83a5-b427ef5d7f27', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('04169bca-03a3-4844-a57f-437c574f4bd3', '81f2e7c9-6871-44e3-a432-b0fd050dd187',
        '7c25649f-fe2b-47a7-83a5-b427ef5d7f27', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('55fa9abb-2dfd-41a5-9c13-459efc77ca17', '377a4b78-e58a-4d13-875f-817cd1693ece',
        '7c25649f-fe2b-47a7-83a5-b427ef5d7f27', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('80b1f176-d051-47e7-a65b-227a346ce440', '54e790a7-9741-408e-9327-3377df0e9b6e',
        '7c25649f-fe2b-47a7-83a5-b427ef5d7f27', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6dfc42db-941a-4897-8d86-e09a04397e08', '5dce5233-88d5-4b52-94de-6465ace4be98',
        '7c25649f-fe2b-47a7-83a5-b427ef5d7f27', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1f39fb16-4664-4a93-8aee-b9a9e8eed7cc', '63aa0cb7-202d-4c54-85ae-051e8249115d',
        '7c25649f-fe2b-47a7-83a5-b427ef5d7f27', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('60e28fae-80dc-4042-9c1b-e2420f40651d', 'fb59e236-0633-46ca-a8b5-c0d7596ee10e',
        '7c25649f-fe2b-47a7-83a5-b427ef5d7f27', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('23b922e8-fb9d-4664-968c-0935b9caee53', '154147b7-aff2-4ff1-89cf-fcd6616ca6d2',
        '7c25649f-fe2b-47a7-83a5-b427ef5d7f27', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6692d5c6-ce28-4278-a47b-4790dfed61ac', '6e8b2868-8094-46d3-95be-2397eb9d5237',
        '7c25649f-fe2b-47a7-83a5-b427ef5d7f27', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8923ca55-d350-4e99-b194-51e9db8a1e62', '112cc8ee-b996-4b19-9192-9e82b92aae94',
        '7c25649f-fe2b-47a7-83a5-b427ef5d7f27', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a411ffb0-a001-48d8-b53e-8962ffd434bf', '60c4bebf-411f-456f-9eab-5afd98fde9c7',
        '7c25649f-fe2b-47a7-83a5-b427ef5d7f27', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4e1fc93b-6e07-4847-a835-120d551f76ba', 'c393d2b5-6e50-4d7a-ad40-e112851e0711',
        '7c25649f-fe2b-47a7-83a5-b427ef5d7f27', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('cd5d566c-5ded-4284-8137-dd88fd620ff3', '38630605-5c28-4b5c-b042-93c43bf23ebc',
        '7c25649f-fe2b-47a7-83a5-b427ef5d7f27', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a06b615a-3576-494b-80e7-f4fa5c2cac65', 'cc721727-53e6-4b1c-9d85-c97c46b5422e',
        '7c25649f-fe2b-47a7-83a5-b427ef5d7f27', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6b015a8a-3972-4d80-9b38-09e949e8de1d', 'ccb39a89-f63e-4537-90cd-e3186178ae1f',
        '7c25649f-fe2b-47a7-83a5-b427ef5d7f27', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ab8033cf-3084-4497-a01b-78e001d3e3d2', 'b34bfec1-ee6c-46bc-9d52-99e90b59fe12',
        '7c25649f-fe2b-47a7-83a5-b427ef5d7f27', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('52ce8837-08b2-46fa-bc61-f4b41411a8d2', '6b7955fe-fb44-4b68-92b5-13aedcce4e76',
        '7c25649f-fe2b-47a7-83a5-b427ef5d7f27', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('fd91c31e-8d77-4ae2-b576-5092c77f80fd', '204814c3-bf71-4b17-9727-c6d435976da6',
        '7c25649f-fe2b-47a7-83a5-b427ef5d7f27', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('597d1540-7e29-471d-bf09-cf086041242e', 'd118e4c3-08b7-4c8e-95de-81b8715b6f1d',
        '7c25649f-fe2b-47a7-83a5-b427ef5d7f27', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('18a1b8c6-156d-4233-90d8-7a1a96adc987', 'db255fa3-e68a-47b3-9651-a7cc95b33689',
        '7c25649f-fe2b-47a7-83a5-b427ef5d7f27', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4acc0d7e-d3a3-46fc-a2ef-d5e6971ba995', '42b30d8f-b8eb-46be-93ee-446f2d1d2706',
        '7c25649f-fe2b-47a7-83a5-b427ef5d7f27', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9ba9322a-cc5b-44c9-a196-09909a2ba5d5', '69126fb1-3e3f-4741-b6a4-91678103ccfe',
        '7c25649f-fe2b-47a7-83a5-b427ef5d7f27', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e6610830-2032-4205-bd54-1276a5f25fe7', 'a4f7f094-e1ff-4280-aa2f-33e17fb03d07',
        '7c25649f-fe2b-47a7-83a5-b427ef5d7f27', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2986318e-c69b-4cff-904c-b7870abaa3a2', '9f8b49e7-cd35-4115-8e2a-a4bc71ceab78',
        '7c25649f-fe2b-47a7-83a5-b427ef5d7f27', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('fbd0ccb9-82b3-43c1-95fd-9f1e4de41472', 'df70cc34-0233-4ed5-89f4-5864507b42a4',
        '7c25649f-fe2b-47a7-83a5-b427ef5d7f27', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4c788a37-1708-43c6-83ba-d9d3057f526f', '4b4b663a-bc9c-4eb4-ba80-f86adc0951f9',
        '7c25649f-fe2b-47a7-83a5-b427ef5d7f27', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('09603328-94ee-4097-91ff-ff1049a32a9f', '231e38c1-fb35-4262-9a80-ea7a4d0a00ba',
        '7c25649f-fe2b-47a7-83a5-b427ef5d7f27', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('049c61fb-b16c-4d98-a675-916d1e4340a3', '57008dea-844d-44c7-8adc-6389295384c7',
        '7c25649f-fe2b-47a7-83a5-b427ef5d7f27', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('247a2909-d3ae-4922-bfeb-90832f0f7242', 'a214c6f9-029b-444d-82a0-8bc98a044a43',
        '7c25649f-fe2b-47a7-83a5-b427ef5d7f27', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('24a793fb-b4ef-4672-9c68-37c814edc19a', '630e876e-62d7-498b-aae9-f8326e875369',
        '7c25649f-fe2b-47a7-83a5-b427ef5d7f27', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('194c9190-201e-4dd2-9c1f-96e8c505154b', '1521cd72-8dc2-463a-8cef-2c8c8166493b',
        '7c25649f-fe2b-47a7-83a5-b427ef5d7f27', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('45e92d75-1a30-408c-b492-29a9873ae4cd', '4c411dfd-41e6-4c53-bb7b-37cc54c1c8e8',
        '7c25649f-fe2b-47a7-83a5-b427ef5d7f27', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('279911a5-f10f-4d08-a068-85d1051d7f3c', '92bb831c-040f-4686-8acd-f42d8629ba7b',
        '7c25649f-fe2b-47a7-83a5-b427ef5d7f27', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('20f31c6f-1f9d-459b-b79b-09f7fc80e22e', 'fe8d890a-abea-44fc-92fe-ba3678289387',
        '7c25649f-fe2b-47a7-83a5-b427ef5d7f27', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('72b69cc9-8ece-4a0f-9ce2-2f481c80e521', '4de87bed-0d07-419e-9991-32658cdb0a9d',
        '7c25649f-fe2b-47a7-83a5-b427ef5d7f27', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b7aed811-0b6b-4d0b-bb98-011b2cced92a', '7570b82c-a85d-446c-9a92-5c0bb332a8a3',
        '7c25649f-fe2b-47a7-83a5-b427ef5d7f27', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7038d5f3-a8d7-4439-beb9-5738d19349dd', 'b8b056d3-228d-4363-8f43-a1fed1da8695',
        '7c25649f-fe2b-47a7-83a5-b427ef5d7f27', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4703ca3e-abea-4a83-857a-88b2611f86c5', '5a08407a-ba00-4be3-bbc6-c50dc256d8f5',
        '7c25649f-fe2b-47a7-83a5-b427ef5d7f27', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e487646a-1fc4-4806-af41-f2d2ca00f62e', 'cac14782-c714-49d4-803d-6bdfb7fb8707',
        '7c25649f-fe2b-47a7-83a5-b427ef5d7f27', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a171aa0c-75f2-4099-8310-021e39b9a2d2', '3d723b44-2db7-4730-af04-6007ae7d2178',
        '7c25649f-fe2b-47a7-83a5-b427ef5d7f27', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2dc94ef6-36ac-46a8-a767-496f110bc1c0', '9a4f51df-c428-4a18-9055-511e0ae7b6d8',
        '7c25649f-fe2b-47a7-83a5-b427ef5d7f27', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('83e93d85-abbf-483d-85bb-2fd15d0b6ebb', 'fd1edc81-f470-4dbe-95cf-ea6ad5e85cf2',
        '7c25649f-fe2b-47a7-83a5-b427ef5d7f27', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('bf3a3c2b-cfc9-4544-b574-fb7a4f33ae5b', '6e2740d2-ef18-4564-b8c7-9f7214308f81',
        '7c25649f-fe2b-47a7-83a5-b427ef5d7f27', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('754dd409-6073-4d83-8ec8-da85751aa996', '926c446b-9db8-4b9c-a406-ed40dff69e34',
        '7c25649f-fe2b-47a7-83a5-b427ef5d7f27', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('228b60d5-c821-4b29-aae9-368a2363fb7b', 'eaa9530f-bb8c-453f-b634-c8599039e296',
        '7c25649f-fe2b-47a7-83a5-b427ef5d7f27', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('dcef45cf-d495-4113-8581-f95a7fd61d99', 'bdc5f279-42bf-491c-b87a-409b3c7bff89',
        '7c25649f-fe2b-47a7-83a5-b427ef5d7f27', 3, current_timestamp, current_timestamp);

-- politician 'cf208589-ec9b-49ea-87e1-bdc1c31ca5fc'
insert into QuestionAnswer
values ('a3ae38b6-28bd-40bd-b101-73eb31de7f71', 'a335650d-06b4-4e92-ba77-d5f8964ceb82',
        'cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8e6e368a-0fbd-4830-8c5f-13d180c50793', '46df8b49-923c-4f91-8362-5196efbb71e2',
        'cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d1b17ee4-43b9-4503-91d6-121f55522063', '5f277258-ba7b-492c-b451-673eaa5957c0',
        'cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('463aa992-e976-4947-b9ec-352466ea9b98', '007ebae0-31cb-40fb-93ad-c2f980caee14',
        'cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('48fa48d1-4842-46af-b6e8-9d8125161243', '8ae0f13d-e699-4617-a4ba-672e6ccc0edc',
        'cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('fa0f6f17-9440-4d3e-bc5d-e6a49a516853', 'dee756b8-f4f2-474a-88f4-e7f4fea7275a',
        'cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1b7baa61-c1c2-40d2-9377-a4a64edb0e75', 'b8ec593e-93b8-4bab-95dd-cfff5c526d54',
        'cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('bbadaf9c-b656-49a6-88ed-ed8f66ea33ae', '6f9db124-e0ae-409d-b943-5be0cbc836e5',
        'cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e5ed61da-7809-4c77-ba69-3047fce09588', '616bf16a-470d-494e-ad8b-b230e80dafb3',
        'cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4ec8f4e4-d454-470b-9d59-60504c2b7945', '6c05b44c-34de-48a4-8d3c-6015b268c456',
        'cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ca96a8df-7a0f-401d-be10-ec4f8eddddcf', '3ac4a61c-f510-4d59-84cc-e957dbeedd8e',
        'cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d14935b0-dd94-4be7-ad85-55eda753c4ca', 'f4f5632d-00ae-4be2-aff8-c83da3c21519',
        'cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('51e2517a-2ac9-4e80-a084-c2ae687a90de', '4917d24b-e50c-4fa9-ac12-37a0d298f41f',
        'cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('bf0cd115-7ccb-462d-9623-95e5a2d50311', 'aee92954-3fab-449d-bc56-7ec47df873cb',
        'cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('100a5cae-8c60-4ca8-ad32-f10c24c5795d', '19d57226-91df-4c5a-92f4-7b7d774ea8c4',
        'cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e922247e-0435-44a9-bcef-a312bcf62957', '81f2e7c9-6871-44e3-a432-b0fd050dd187',
        'cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('30791d6d-153f-4a4d-9c66-105d9d15599f', '377a4b78-e58a-4d13-875f-817cd1693ece',
        'cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a78fe9b1-6ccf-4636-af37-c731fcecabe3', '54e790a7-9741-408e-9327-3377df0e9b6e',
        'cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6ffcdc1a-4cd5-4158-9a08-2022d623dd63', '5dce5233-88d5-4b52-94de-6465ace4be98',
        'cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2a9b196f-5062-41b5-8566-e4b6801816ee', '63aa0cb7-202d-4c54-85ae-051e8249115d',
        'cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5bfe005a-a1bf-45fb-96ea-8eff61c2b755', 'fb59e236-0633-46ca-a8b5-c0d7596ee10e',
        'cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('912246a8-9c02-4c82-adf5-c01e2892e165', '154147b7-aff2-4ff1-89cf-fcd6616ca6d2',
        'cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f0170c30-f1d6-4706-8a72-fddbc4638bc0', '6e8b2868-8094-46d3-95be-2397eb9d5237',
        'cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('347abeae-7df0-4b4d-8c31-63b2176a9322', '112cc8ee-b996-4b19-9192-9e82b92aae94',
        'cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('69609c76-8f46-439c-8730-032769e7c09c', '60c4bebf-411f-456f-9eab-5afd98fde9c7',
        'cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a7ba44e4-6027-49fb-8b36-2136130de79e', 'c393d2b5-6e50-4d7a-ad40-e112851e0711',
        'cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a7016f24-8100-487d-a678-a265dd3f3cce', '38630605-5c28-4b5c-b042-93c43bf23ebc',
        'cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5a22d014-a3c4-40db-b8fe-5d2d122e5cd3', 'cc721727-53e6-4b1c-9d85-c97c46b5422e',
        'cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f3616bd0-3c28-4a4b-9c4f-eeb2132e5775', 'ccb39a89-f63e-4537-90cd-e3186178ae1f',
        'cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('88d88472-0270-48e4-b69a-a16a50e89540', 'b34bfec1-ee6c-46bc-9d52-99e90b59fe12',
        'cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('da1d0600-9a67-40fe-a321-31453ed285ff', '6b7955fe-fb44-4b68-92b5-13aedcce4e76',
        'cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c91f6d31-a7ce-404a-80a0-460079319ccf', '204814c3-bf71-4b17-9727-c6d435976da6',
        'cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4497dc8c-358a-4ad7-b8e5-0ac713bad707', 'd118e4c3-08b7-4c8e-95de-81b8715b6f1d',
        'cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('264f70c7-774f-4bde-b7f9-5a2bef9b2667', 'db255fa3-e68a-47b3-9651-a7cc95b33689',
        'cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('36d65a11-9619-4fe5-b0fd-4ba8e3e181d7', '42b30d8f-b8eb-46be-93ee-446f2d1d2706',
        'cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6ef90554-a92b-4b5d-9e23-73e204f93ff0', '69126fb1-3e3f-4741-b6a4-91678103ccfe',
        'cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('886f3691-5103-4e0b-8797-9813b9f47e03', 'a4f7f094-e1ff-4280-aa2f-33e17fb03d07',
        'cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c5c28694-15a7-4154-8dd9-bcf1ffe16e3f', '9f8b49e7-cd35-4115-8e2a-a4bc71ceab78',
        'cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('967b56bf-4da3-4679-aa6c-c717e66e36cd', 'df70cc34-0233-4ed5-89f4-5864507b42a4',
        'cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('eeec6745-7c71-42e9-8a83-1584f6fa75a0', '4b4b663a-bc9c-4eb4-ba80-f86adc0951f9',
        'cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ec7c9d55-cb09-4a39-9f73-10955ff35ac0', '231e38c1-fb35-4262-9a80-ea7a4d0a00ba',
        'cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('36661aa6-e563-4121-81af-4fc958dfec95', '57008dea-844d-44c7-8adc-6389295384c7',
        'cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('98080b08-44d8-4541-9df3-23ab0bc3a31e', 'a214c6f9-029b-444d-82a0-8bc98a044a43',
        'cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2c00f092-4bb3-4def-90d2-dd8270935685', '630e876e-62d7-498b-aae9-f8326e875369',
        'cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5684cc74-4100-4a23-8113-04820c505232', '1521cd72-8dc2-463a-8cef-2c8c8166493b',
        'cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('247ae832-fd08-4a2b-a526-4eaf06ba58b3', '4c411dfd-41e6-4c53-bb7b-37cc54c1c8e8',
        'cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d4fe18c5-5c8e-47d2-b0a7-26bae9d23dd9', '92bb831c-040f-4686-8acd-f42d8629ba7b',
        'cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0603637b-4e2a-4896-94fa-c6ba9bff047a', 'fe8d890a-abea-44fc-92fe-ba3678289387',
        'cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('69fb32f3-f031-47c2-b1fc-2ec38a3f7cb9', '4de87bed-0d07-419e-9991-32658cdb0a9d',
        'cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9575959e-eaf4-41aa-a7bd-ffffb5a7d423', '7570b82c-a85d-446c-9a92-5c0bb332a8a3',
        'cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9c765c1e-b5b2-44ba-930a-92cc0428b12f', 'b8b056d3-228d-4363-8f43-a1fed1da8695',
        'cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ed210049-543e-440a-bbe0-becb281478b0', '5a08407a-ba00-4be3-bbc6-c50dc256d8f5',
        'cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1afd55a3-739f-42f7-b91a-4b751809a546', 'cac14782-c714-49d4-803d-6bdfb7fb8707',
        'cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('babb98fe-2a71-4ef3-9b05-8c15560e58d3', '3d723b44-2db7-4730-af04-6007ae7d2178',
        'cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('fefb52d5-5d1f-44a1-a4ae-90aeb90da6ea', '9a4f51df-c428-4a18-9055-511e0ae7b6d8',
        'cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2dbf9ef0-6ba8-4362-8956-154b5c2565d5', 'fd1edc81-f470-4dbe-95cf-ea6ad5e85cf2',
        'cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e0c85f53-5287-4d1f-af7e-8ef099d9aa21', '6e2740d2-ef18-4564-b8c7-9f7214308f81',
        'cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3d61e1e5-da95-445d-b06b-5c67348d14b1', '926c446b-9db8-4b9c-a406-ed40dff69e34',
        'cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ca7f036b-b1fe-49c2-ab09-722bc5cea8bf', 'eaa9530f-bb8c-453f-b634-c8599039e296',
        'cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d008506f-5f92-4366-b308-727ed295a488', 'bdc5f279-42bf-491c-b87a-409b3c7bff89',
        'cf208589-ec9b-49ea-87e1-bdc1c31ca5fc', 2, current_timestamp, current_timestamp);

-- politician '3fd910a0-57c0-4259-85c9-538b711bfb99'
insert into QuestionAnswer
values ('916d3c83-b8e9-4c23-a781-b9cdad37ff2e', 'a335650d-06b4-4e92-ba77-d5f8964ceb82',
        '3fd910a0-57c0-4259-85c9-538b711bfb99', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d7fc2448-763e-4073-8e31-0b86521478f7', '46df8b49-923c-4f91-8362-5196efbb71e2',
        '3fd910a0-57c0-4259-85c9-538b711bfb99', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('43ff5877-07ee-4875-b4a9-d2c566ce3c35', '5f277258-ba7b-492c-b451-673eaa5957c0',
        '3fd910a0-57c0-4259-85c9-538b711bfb99', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('41924b2e-e597-4f1d-ae69-038cbfdf8543', '007ebae0-31cb-40fb-93ad-c2f980caee14',
        '3fd910a0-57c0-4259-85c9-538b711bfb99', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('899b4d08-6ff7-4769-85a7-1b4fc36c2d9f', '8ae0f13d-e699-4617-a4ba-672e6ccc0edc',
        '3fd910a0-57c0-4259-85c9-538b711bfb99', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b74c7346-d074-41bb-b1b6-5e15cf76873d', 'dee756b8-f4f2-474a-88f4-e7f4fea7275a',
        '3fd910a0-57c0-4259-85c9-538b711bfb99', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b3babcc4-b9d4-47ba-8ed4-5acfa30b56d3', 'b8ec593e-93b8-4bab-95dd-cfff5c526d54',
        '3fd910a0-57c0-4259-85c9-538b711bfb99', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1c3c6196-7926-413e-a36e-1f99771040da', '6f9db124-e0ae-409d-b943-5be0cbc836e5',
        '3fd910a0-57c0-4259-85c9-538b711bfb99', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('59055d8f-bcb8-4e0c-8a3d-987648125919', '616bf16a-470d-494e-ad8b-b230e80dafb3',
        '3fd910a0-57c0-4259-85c9-538b711bfb99', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f186d6af-c1df-4564-99df-268232bcfab0', '6c05b44c-34de-48a4-8d3c-6015b268c456',
        '3fd910a0-57c0-4259-85c9-538b711bfb99', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f9e5ae65-80e5-4424-88a5-b8ddd5382be6', '3ac4a61c-f510-4d59-84cc-e957dbeedd8e',
        '3fd910a0-57c0-4259-85c9-538b711bfb99', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5741112e-c8a8-46de-a911-2408be821bb5', 'f4f5632d-00ae-4be2-aff8-c83da3c21519',
        '3fd910a0-57c0-4259-85c9-538b711bfb99', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('bf6c5c1d-1ea7-43e5-943c-37ee0b8d37fb', '4917d24b-e50c-4fa9-ac12-37a0d298f41f',
        '3fd910a0-57c0-4259-85c9-538b711bfb99', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a8902e8c-2175-4632-a8fd-5b3cf41d97c5', 'aee92954-3fab-449d-bc56-7ec47df873cb',
        '3fd910a0-57c0-4259-85c9-538b711bfb99', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7502fbb4-7cce-4ee2-9be9-79a89eccf42e', '19d57226-91df-4c5a-92f4-7b7d774ea8c4',
        '3fd910a0-57c0-4259-85c9-538b711bfb99', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('eaccdebf-b9ff-42c8-882b-2bd386b01e4b', '81f2e7c9-6871-44e3-a432-b0fd050dd187',
        '3fd910a0-57c0-4259-85c9-538b711bfb99', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('31effe84-23b1-4c37-ad82-a9305bf2f0a7', '377a4b78-e58a-4d13-875f-817cd1693ece',
        '3fd910a0-57c0-4259-85c9-538b711bfb99', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f1511d0c-2194-408c-bf7c-e372a9b662e0', '54e790a7-9741-408e-9327-3377df0e9b6e',
        '3fd910a0-57c0-4259-85c9-538b711bfb99', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b90e3fd5-7b20-4e23-9275-dee1797aa35a', '5dce5233-88d5-4b52-94de-6465ace4be98',
        '3fd910a0-57c0-4259-85c9-538b711bfb99', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('09fa91c4-a03f-4d6b-b97c-3fd216b71acc', '63aa0cb7-202d-4c54-85ae-051e8249115d',
        '3fd910a0-57c0-4259-85c9-538b711bfb99', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c1decc1c-ee1e-4a0b-9ca5-3a7f576676df', 'fb59e236-0633-46ca-a8b5-c0d7596ee10e',
        '3fd910a0-57c0-4259-85c9-538b711bfb99', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f41cdca2-4b10-4394-80b1-e735c6774851', '154147b7-aff2-4ff1-89cf-fcd6616ca6d2',
        '3fd910a0-57c0-4259-85c9-538b711bfb99', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('86e36b11-01a2-4828-94f4-d66d09113527', '6e8b2868-8094-46d3-95be-2397eb9d5237',
        '3fd910a0-57c0-4259-85c9-538b711bfb99', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5b41bcf9-85a2-4c31-8ee5-b613365d2384', '112cc8ee-b996-4b19-9192-9e82b92aae94',
        '3fd910a0-57c0-4259-85c9-538b711bfb99', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('31b3cec3-b2a1-4e82-8fe9-54170256dda1', '60c4bebf-411f-456f-9eab-5afd98fde9c7',
        '3fd910a0-57c0-4259-85c9-538b711bfb99', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('68509507-496e-43c8-a775-b97e11902fb9', 'c393d2b5-6e50-4d7a-ad40-e112851e0711',
        '3fd910a0-57c0-4259-85c9-538b711bfb99', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7eeec2e6-31f8-4f7d-b648-5784f04d2b70', '38630605-5c28-4b5c-b042-93c43bf23ebc',
        '3fd910a0-57c0-4259-85c9-538b711bfb99', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('df107705-0ca9-4585-913a-6f72b3c0dc7f', 'cc721727-53e6-4b1c-9d85-c97c46b5422e',
        '3fd910a0-57c0-4259-85c9-538b711bfb99', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('16fa133f-2597-4770-a295-81089ceb9109', 'ccb39a89-f63e-4537-90cd-e3186178ae1f',
        '3fd910a0-57c0-4259-85c9-538b711bfb99', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8d93f3c1-d2ae-407c-a163-b00a3cf304dd', 'b34bfec1-ee6c-46bc-9d52-99e90b59fe12',
        '3fd910a0-57c0-4259-85c9-538b711bfb99', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a6ce7c6e-9c83-46fa-a192-0a3c6e0422d0', '6b7955fe-fb44-4b68-92b5-13aedcce4e76',
        '3fd910a0-57c0-4259-85c9-538b711bfb99', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5e548e20-b640-48a4-8b1e-598816f4b430', '204814c3-bf71-4b17-9727-c6d435976da6',
        '3fd910a0-57c0-4259-85c9-538b711bfb99', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('849f52e9-108a-4ab6-9765-6abafc58578d', 'd118e4c3-08b7-4c8e-95de-81b8715b6f1d',
        '3fd910a0-57c0-4259-85c9-538b711bfb99', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('bd3723db-4a0b-43e5-8882-a3875e544dfd', 'db255fa3-e68a-47b3-9651-a7cc95b33689',
        '3fd910a0-57c0-4259-85c9-538b711bfb99', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('de171350-e008-4a73-b8a0-6f4833a98739', '42b30d8f-b8eb-46be-93ee-446f2d1d2706',
        '3fd910a0-57c0-4259-85c9-538b711bfb99', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5203343a-3e03-47df-94a1-c69e19b6d4a1', '69126fb1-3e3f-4741-b6a4-91678103ccfe',
        '3fd910a0-57c0-4259-85c9-538b711bfb99', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('cd40329e-e9c5-431c-8518-6ee195dd6b42', 'a4f7f094-e1ff-4280-aa2f-33e17fb03d07',
        '3fd910a0-57c0-4259-85c9-538b711bfb99', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6008f3e4-8e46-4121-b05d-1ae1e32fe780', '9f8b49e7-cd35-4115-8e2a-a4bc71ceab78',
        '3fd910a0-57c0-4259-85c9-538b711bfb99', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('faf66997-c076-4026-ae5c-39aad61936aa', 'df70cc34-0233-4ed5-89f4-5864507b42a4',
        '3fd910a0-57c0-4259-85c9-538b711bfb99', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d9fa07b4-9afd-424c-a00a-12e13930b3e1', '4b4b663a-bc9c-4eb4-ba80-f86adc0951f9',
        '3fd910a0-57c0-4259-85c9-538b711bfb99', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1bc3b28c-19a6-41d5-b9fe-49a87bf0adad', '231e38c1-fb35-4262-9a80-ea7a4d0a00ba',
        '3fd910a0-57c0-4259-85c9-538b711bfb99', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2ba3907e-f3c9-47fc-b761-e4c2d3e250f3', '57008dea-844d-44c7-8adc-6389295384c7',
        '3fd910a0-57c0-4259-85c9-538b711bfb99', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('11c97683-2f7d-40ff-bf70-30f16bf24753', 'a214c6f9-029b-444d-82a0-8bc98a044a43',
        '3fd910a0-57c0-4259-85c9-538b711bfb99', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('668d951f-8d3e-4f76-a0a5-7f19041f75f4', '630e876e-62d7-498b-aae9-f8326e875369',
        '3fd910a0-57c0-4259-85c9-538b711bfb99', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('09604ad5-8656-4ee1-93c1-594bac3dddaa', '1521cd72-8dc2-463a-8cef-2c8c8166493b',
        '3fd910a0-57c0-4259-85c9-538b711bfb99', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c4cc65bc-54c2-40b0-aa91-1d68a911e037', '4c411dfd-41e6-4c53-bb7b-37cc54c1c8e8',
        '3fd910a0-57c0-4259-85c9-538b711bfb99', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3213f547-62a5-48e0-bbd7-a353563fff45', '92bb831c-040f-4686-8acd-f42d8629ba7b',
        '3fd910a0-57c0-4259-85c9-538b711bfb99', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('64b66b1f-fc51-405a-a074-b59166e5e6a8', 'fe8d890a-abea-44fc-92fe-ba3678289387',
        '3fd910a0-57c0-4259-85c9-538b711bfb99', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('57504c54-d206-453a-93ed-70d6fd9c773b', '4de87bed-0d07-419e-9991-32658cdb0a9d',
        '3fd910a0-57c0-4259-85c9-538b711bfb99', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5bd00c46-2182-4fa9-a6ec-ff949dda6d9d', '7570b82c-a85d-446c-9a92-5c0bb332a8a3',
        '3fd910a0-57c0-4259-85c9-538b711bfb99', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5f6c1b9b-3d0c-4b3a-9dc8-a791fa229681', 'b8b056d3-228d-4363-8f43-a1fed1da8695',
        '3fd910a0-57c0-4259-85c9-538b711bfb99', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('bf980bb3-1ed9-4185-b13f-ff6dce314f26', '5a08407a-ba00-4be3-bbc6-c50dc256d8f5',
        '3fd910a0-57c0-4259-85c9-538b711bfb99', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a8cb8424-55f8-4b5c-9a4d-778c7e7f0688', 'cac14782-c714-49d4-803d-6bdfb7fb8707',
        '3fd910a0-57c0-4259-85c9-538b711bfb99', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a4108e21-461e-4cee-90e9-d8863302c262', '3d723b44-2db7-4730-af04-6007ae7d2178',
        '3fd910a0-57c0-4259-85c9-538b711bfb99', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('cc4b9ed4-02a8-4339-af2b-f36101572704', '9a4f51df-c428-4a18-9055-511e0ae7b6d8',
        '3fd910a0-57c0-4259-85c9-538b711bfb99', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c71ad0cc-86ee-489b-a44b-ae13f3862aae', 'fd1edc81-f470-4dbe-95cf-ea6ad5e85cf2',
        '3fd910a0-57c0-4259-85c9-538b711bfb99', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4004b1b0-5911-4f2f-8240-9edd37db99ea', '6e2740d2-ef18-4564-b8c7-9f7214308f81',
        '3fd910a0-57c0-4259-85c9-538b711bfb99', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('91ffc72f-1709-4a5d-a5a9-90be9c23b7af', '926c446b-9db8-4b9c-a406-ed40dff69e34',
        '3fd910a0-57c0-4259-85c9-538b711bfb99', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a6a13c13-aac8-4139-8d55-80c5af617a47', 'eaa9530f-bb8c-453f-b634-c8599039e296',
        '3fd910a0-57c0-4259-85c9-538b711bfb99', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2d49bdb0-f3ce-4498-9595-6ee636bf5885', 'bdc5f279-42bf-491c-b87a-409b3c7bff89',
        '3fd910a0-57c0-4259-85c9-538b711bfb99', 3, current_timestamp, current_timestamp);

-- politician '0069d8b1-47c7-4b78-b551-8f0347e43a1c'
insert into QuestionAnswer
values ('4c65f2b2-82b3-4c4e-89e5-f26ea6017ddf', 'a335650d-06b4-4e92-ba77-d5f8964ceb82',
        '0069d8b1-47c7-4b78-b551-8f0347e43a1c', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2b21f43b-e191-495b-90da-4c079c9dc431', '46df8b49-923c-4f91-8362-5196efbb71e2',
        '0069d8b1-47c7-4b78-b551-8f0347e43a1c', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f57b79ca-c144-4222-8ec8-6f50c5673407', '5f277258-ba7b-492c-b451-673eaa5957c0',
        '0069d8b1-47c7-4b78-b551-8f0347e43a1c', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a8ad6eae-19b8-49d8-8fce-204358027cba', '007ebae0-31cb-40fb-93ad-c2f980caee14',
        '0069d8b1-47c7-4b78-b551-8f0347e43a1c', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c1605c59-7885-4a0d-931d-118eebe5a0c6', '8ae0f13d-e699-4617-a4ba-672e6ccc0edc',
        '0069d8b1-47c7-4b78-b551-8f0347e43a1c', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ee37e5c8-6499-4e2c-9960-d74d2ac209b7', 'dee756b8-f4f2-474a-88f4-e7f4fea7275a',
        '0069d8b1-47c7-4b78-b551-8f0347e43a1c', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3dca3daf-2df9-4c34-a66c-bc91854a0b74', 'b8ec593e-93b8-4bab-95dd-cfff5c526d54',
        '0069d8b1-47c7-4b78-b551-8f0347e43a1c', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('024744c8-1be8-4475-92b4-7ace9ffd4d0f', '6f9db124-e0ae-409d-b943-5be0cbc836e5',
        '0069d8b1-47c7-4b78-b551-8f0347e43a1c', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4dbec8d9-861b-4b7b-bff0-8bb7a723d7fc', '616bf16a-470d-494e-ad8b-b230e80dafb3',
        '0069d8b1-47c7-4b78-b551-8f0347e43a1c', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f9eada2d-4d04-4ce5-a8a3-5a47652f4da5', '6c05b44c-34de-48a4-8d3c-6015b268c456',
        '0069d8b1-47c7-4b78-b551-8f0347e43a1c', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3f68a06e-7826-43af-9a53-7485071896a6', '3ac4a61c-f510-4d59-84cc-e957dbeedd8e',
        '0069d8b1-47c7-4b78-b551-8f0347e43a1c', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7276b9b5-418d-4eb3-9693-d4cd2889aa7b', 'f4f5632d-00ae-4be2-aff8-c83da3c21519',
        '0069d8b1-47c7-4b78-b551-8f0347e43a1c', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c14c9a42-8877-4ca4-a612-ea9e46e6b355', '4917d24b-e50c-4fa9-ac12-37a0d298f41f',
        '0069d8b1-47c7-4b78-b551-8f0347e43a1c', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('18e659ba-9128-460d-b913-8b79dd3e42bc', 'aee92954-3fab-449d-bc56-7ec47df873cb',
        '0069d8b1-47c7-4b78-b551-8f0347e43a1c', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('80a5e30a-f518-4e3d-b9da-256ead100d8c', '19d57226-91df-4c5a-92f4-7b7d774ea8c4',
        '0069d8b1-47c7-4b78-b551-8f0347e43a1c', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c6c39f90-e32c-4f54-bf4f-9dc6e47c8a1b', '81f2e7c9-6871-44e3-a432-b0fd050dd187',
        '0069d8b1-47c7-4b78-b551-8f0347e43a1c', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9fa915e1-ea53-4aaf-80fd-5a790a407271', '377a4b78-e58a-4d13-875f-817cd1693ece',
        '0069d8b1-47c7-4b78-b551-8f0347e43a1c', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('cc709b6e-6a59-4ade-8f58-8a164adb4361', '54e790a7-9741-408e-9327-3377df0e9b6e',
        '0069d8b1-47c7-4b78-b551-8f0347e43a1c', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f7d8f4ae-8713-44f3-8bd1-811078dee2da', '5dce5233-88d5-4b52-94de-6465ace4be98',
        '0069d8b1-47c7-4b78-b551-8f0347e43a1c', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f99be60c-4933-47ad-9b44-508ccb05d21e', '63aa0cb7-202d-4c54-85ae-051e8249115d',
        '0069d8b1-47c7-4b78-b551-8f0347e43a1c', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5c220d54-7713-4c56-9973-fb9747ee55f1', 'fb59e236-0633-46ca-a8b5-c0d7596ee10e',
        '0069d8b1-47c7-4b78-b551-8f0347e43a1c', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ba441e40-d166-4c2a-927d-a6158d881232', '154147b7-aff2-4ff1-89cf-fcd6616ca6d2',
        '0069d8b1-47c7-4b78-b551-8f0347e43a1c', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('630ae736-e3b5-48f7-9838-d374c129f40f', '6e8b2868-8094-46d3-95be-2397eb9d5237',
        '0069d8b1-47c7-4b78-b551-8f0347e43a1c', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a2202c08-3d2f-4bf8-ae3c-381513e21781', '112cc8ee-b996-4b19-9192-9e82b92aae94',
        '0069d8b1-47c7-4b78-b551-8f0347e43a1c', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('52e3411a-82b9-41bb-87ed-f945fd7e4288', '60c4bebf-411f-456f-9eab-5afd98fde9c7',
        '0069d8b1-47c7-4b78-b551-8f0347e43a1c', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1ca93cb0-97f3-425d-8f68-f642eefe90b5', 'c393d2b5-6e50-4d7a-ad40-e112851e0711',
        '0069d8b1-47c7-4b78-b551-8f0347e43a1c', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f964780f-f699-490b-97e5-42bd29f1cb0f', '38630605-5c28-4b5c-b042-93c43bf23ebc',
        '0069d8b1-47c7-4b78-b551-8f0347e43a1c', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0fa356b5-2188-4f43-827d-f5e73a547f30', 'cc721727-53e6-4b1c-9d85-c97c46b5422e',
        '0069d8b1-47c7-4b78-b551-8f0347e43a1c', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a8e3b67e-708e-482a-963b-d83a8c54dea6', 'ccb39a89-f63e-4537-90cd-e3186178ae1f',
        '0069d8b1-47c7-4b78-b551-8f0347e43a1c', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('883a2158-30a2-445d-9b2a-30428faca395', 'b34bfec1-ee6c-46bc-9d52-99e90b59fe12',
        '0069d8b1-47c7-4b78-b551-8f0347e43a1c', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('635a16b7-8c42-4cd4-bfa5-eee1881bd42b', '6b7955fe-fb44-4b68-92b5-13aedcce4e76',
        '0069d8b1-47c7-4b78-b551-8f0347e43a1c', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('461333d6-d4b1-4c2a-851a-aba40a4654b4', '204814c3-bf71-4b17-9727-c6d435976da6',
        '0069d8b1-47c7-4b78-b551-8f0347e43a1c', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('da3d2c01-f092-4cb7-ba17-892c81a0b50b', 'd118e4c3-08b7-4c8e-95de-81b8715b6f1d',
        '0069d8b1-47c7-4b78-b551-8f0347e43a1c', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0ac3dcaf-62d0-436c-b329-55995d21ea95', 'db255fa3-e68a-47b3-9651-a7cc95b33689',
        '0069d8b1-47c7-4b78-b551-8f0347e43a1c', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('fb7b1279-d784-4917-8121-9237db997d84', '42b30d8f-b8eb-46be-93ee-446f2d1d2706',
        '0069d8b1-47c7-4b78-b551-8f0347e43a1c', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('722b89c4-9db1-4eda-813a-aa7de5305196', '69126fb1-3e3f-4741-b6a4-91678103ccfe',
        '0069d8b1-47c7-4b78-b551-8f0347e43a1c', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('26bb0c58-47fd-4651-87a4-36f5a0d2150b', 'a4f7f094-e1ff-4280-aa2f-33e17fb03d07',
        '0069d8b1-47c7-4b78-b551-8f0347e43a1c', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1294731e-7150-4e4e-b261-30a4f50c64c9', '9f8b49e7-cd35-4115-8e2a-a4bc71ceab78',
        '0069d8b1-47c7-4b78-b551-8f0347e43a1c', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('793cc803-89dc-4088-91bf-a0799b8c978f', 'df70cc34-0233-4ed5-89f4-5864507b42a4',
        '0069d8b1-47c7-4b78-b551-8f0347e43a1c', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9194d420-1853-4480-91d6-b62c93b3b073', '4b4b663a-bc9c-4eb4-ba80-f86adc0951f9',
        '0069d8b1-47c7-4b78-b551-8f0347e43a1c', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7b66a848-0567-4f84-ab69-8e60743d79e4', '231e38c1-fb35-4262-9a80-ea7a4d0a00ba',
        '0069d8b1-47c7-4b78-b551-8f0347e43a1c', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7ba4685a-0469-420f-b598-752e9b57a7bf', '57008dea-844d-44c7-8adc-6389295384c7',
        '0069d8b1-47c7-4b78-b551-8f0347e43a1c', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9a667fa4-4b7b-4491-ad07-2ea45d9a5eef', 'a214c6f9-029b-444d-82a0-8bc98a044a43',
        '0069d8b1-47c7-4b78-b551-8f0347e43a1c', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a43b45be-f9ac-4d1b-9839-0892ac847297', '630e876e-62d7-498b-aae9-f8326e875369',
        '0069d8b1-47c7-4b78-b551-8f0347e43a1c', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5c06015e-bbed-42fe-ba93-8cfcb1e221ae', '1521cd72-8dc2-463a-8cef-2c8c8166493b',
        '0069d8b1-47c7-4b78-b551-8f0347e43a1c', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4a6fe4da-ac75-4edb-b198-7eb7a1b11598', '4c411dfd-41e6-4c53-bb7b-37cc54c1c8e8',
        '0069d8b1-47c7-4b78-b551-8f0347e43a1c', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('27b3bd44-e4ad-4671-aef8-914ac9729e3b', '92bb831c-040f-4686-8acd-f42d8629ba7b',
        '0069d8b1-47c7-4b78-b551-8f0347e43a1c', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8ea54d62-b99d-4d1f-9c0c-7a1adda665ad', 'fe8d890a-abea-44fc-92fe-ba3678289387',
        '0069d8b1-47c7-4b78-b551-8f0347e43a1c', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2cb9835e-fbc0-439c-8043-fb5e57d849c5', '4de87bed-0d07-419e-9991-32658cdb0a9d',
        '0069d8b1-47c7-4b78-b551-8f0347e43a1c', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6d04d591-bfa5-4163-bb04-efca6c582599', '7570b82c-a85d-446c-9a92-5c0bb332a8a3',
        '0069d8b1-47c7-4b78-b551-8f0347e43a1c', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7cfc9173-d2da-4fc2-a3b8-8e8c150feb5e', 'b8b056d3-228d-4363-8f43-a1fed1da8695',
        '0069d8b1-47c7-4b78-b551-8f0347e43a1c', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ed0c1567-4039-4cf7-b0c9-2d2cceb3996a', '5a08407a-ba00-4be3-bbc6-c50dc256d8f5',
        '0069d8b1-47c7-4b78-b551-8f0347e43a1c', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ca4ebe6b-c4cc-4220-8c6d-1e9031cc051c', 'cac14782-c714-49d4-803d-6bdfb7fb8707',
        '0069d8b1-47c7-4b78-b551-8f0347e43a1c', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f5efc0b8-a17b-49ca-8e06-4ac186369104', '3d723b44-2db7-4730-af04-6007ae7d2178',
        '0069d8b1-47c7-4b78-b551-8f0347e43a1c', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('75699fd7-efb0-41b5-910a-451d9e8d148d', '9a4f51df-c428-4a18-9055-511e0ae7b6d8',
        '0069d8b1-47c7-4b78-b551-8f0347e43a1c', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('944d93e6-84d5-4574-a679-7dd10fe327a6', 'fd1edc81-f470-4dbe-95cf-ea6ad5e85cf2',
        '0069d8b1-47c7-4b78-b551-8f0347e43a1c', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('254a3b9e-74a7-4300-bb8d-75959e6152ea', '6e2740d2-ef18-4564-b8c7-9f7214308f81',
        '0069d8b1-47c7-4b78-b551-8f0347e43a1c', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('229c068c-5264-4428-a305-5a73a8fc716f', '926c446b-9db8-4b9c-a406-ed40dff69e34',
        '0069d8b1-47c7-4b78-b551-8f0347e43a1c', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('63470422-00f5-48e8-be58-34b51f0cbd05', 'eaa9530f-bb8c-453f-b634-c8599039e296',
        '0069d8b1-47c7-4b78-b551-8f0347e43a1c', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('bb558614-da56-4d8e-8584-26a8be84014c', 'bdc5f279-42bf-491c-b87a-409b3c7bff89',
        '0069d8b1-47c7-4b78-b551-8f0347e43a1c', 1, current_timestamp, current_timestamp);

-- politician 'c02037b0-32ca-49b9-ae94-b29705191f3a'
insert into QuestionAnswer
values ('02a0139c-ffad-4bbd-a845-7fbcb2955da2', 'a335650d-06b4-4e92-ba77-d5f8964ceb82',
        'c02037b0-32ca-49b9-ae94-b29705191f3a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('de4914cc-6574-497e-871e-79ce5bac12f3', '46df8b49-923c-4f91-8362-5196efbb71e2',
        'c02037b0-32ca-49b9-ae94-b29705191f3a', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('74487733-2041-409b-af95-72955c2e7d8d', '5f277258-ba7b-492c-b451-673eaa5957c0',
        'c02037b0-32ca-49b9-ae94-b29705191f3a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0ad4e2f9-2484-4b4b-b734-9bd82f74e7c9', '007ebae0-31cb-40fb-93ad-c2f980caee14',
        'c02037b0-32ca-49b9-ae94-b29705191f3a', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9bc7e3cf-f5bd-4399-ad6b-5ed262555b7e', '8ae0f13d-e699-4617-a4ba-672e6ccc0edc',
        'c02037b0-32ca-49b9-ae94-b29705191f3a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e9bd2d93-7f32-450a-965b-ee2e595c9fa4', 'dee756b8-f4f2-474a-88f4-e7f4fea7275a',
        'c02037b0-32ca-49b9-ae94-b29705191f3a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2839225a-7b5e-4923-b569-1ef005ea38f2', 'b8ec593e-93b8-4bab-95dd-cfff5c526d54',
        'c02037b0-32ca-49b9-ae94-b29705191f3a', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b477ae76-4d0c-40e4-85d1-744f11b20be4', '6f9db124-e0ae-409d-b943-5be0cbc836e5',
        'c02037b0-32ca-49b9-ae94-b29705191f3a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ffba3ace-8cd3-48d3-b21d-193cd954bb73', '616bf16a-470d-494e-ad8b-b230e80dafb3',
        'c02037b0-32ca-49b9-ae94-b29705191f3a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('645f46bd-2f40-4c4c-8426-978d432a958e', '6c05b44c-34de-48a4-8d3c-6015b268c456',
        'c02037b0-32ca-49b9-ae94-b29705191f3a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e636eae8-4570-469f-acae-66642acecb3a', '3ac4a61c-f510-4d59-84cc-e957dbeedd8e',
        'c02037b0-32ca-49b9-ae94-b29705191f3a', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('df2353f9-2e30-4678-971c-6aaf30986be2', 'f4f5632d-00ae-4be2-aff8-c83da3c21519',
        'c02037b0-32ca-49b9-ae94-b29705191f3a', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('24ea9f4b-8eae-4fcc-8275-37e42f0128e3', '4917d24b-e50c-4fa9-ac12-37a0d298f41f',
        'c02037b0-32ca-49b9-ae94-b29705191f3a', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5e2a287a-a419-4440-902b-c062bdd1a9fb', 'aee92954-3fab-449d-bc56-7ec47df873cb',
        'c02037b0-32ca-49b9-ae94-b29705191f3a', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a461c569-4c1b-4277-8b3a-45b48af53adb', '19d57226-91df-4c5a-92f4-7b7d774ea8c4',
        'c02037b0-32ca-49b9-ae94-b29705191f3a', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('276c9d01-7644-42c5-9211-a55ec6020807', '81f2e7c9-6871-44e3-a432-b0fd050dd187',
        'c02037b0-32ca-49b9-ae94-b29705191f3a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('52889679-203f-4643-a506-a2e8877d7881', '377a4b78-e58a-4d13-875f-817cd1693ece',
        'c02037b0-32ca-49b9-ae94-b29705191f3a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3e5b4e23-9657-4f72-8240-c3007b687bcc', '54e790a7-9741-408e-9327-3377df0e9b6e',
        'c02037b0-32ca-49b9-ae94-b29705191f3a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('61464fae-ae7a-426d-a87f-7aaa15db4472', '5dce5233-88d5-4b52-94de-6465ace4be98',
        'c02037b0-32ca-49b9-ae94-b29705191f3a', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('fa83ba15-7f8e-4a21-8f76-af09bcb7e9f4', '63aa0cb7-202d-4c54-85ae-051e8249115d',
        'c02037b0-32ca-49b9-ae94-b29705191f3a', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('927035bb-334e-4c2c-803b-65170f51289c', 'fb59e236-0633-46ca-a8b5-c0d7596ee10e',
        'c02037b0-32ca-49b9-ae94-b29705191f3a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('dbbe1064-20e0-4042-801d-814b666650ae', '154147b7-aff2-4ff1-89cf-fcd6616ca6d2',
        'c02037b0-32ca-49b9-ae94-b29705191f3a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('cd8268c9-a1c4-4b58-a67a-0d32fba1a004', '6e8b2868-8094-46d3-95be-2397eb9d5237',
        'c02037b0-32ca-49b9-ae94-b29705191f3a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4888c84f-8823-447b-b94e-30d26a15f1bb', '112cc8ee-b996-4b19-9192-9e82b92aae94',
        'c02037b0-32ca-49b9-ae94-b29705191f3a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6b248805-1d1b-4f8c-8bc0-08e1175efc6b', '60c4bebf-411f-456f-9eab-5afd98fde9c7',
        'c02037b0-32ca-49b9-ae94-b29705191f3a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('74db52cf-34e5-4086-9054-3418103564d4', 'c393d2b5-6e50-4d7a-ad40-e112851e0711',
        'c02037b0-32ca-49b9-ae94-b29705191f3a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5943c7e2-d6f1-4c42-8a5c-1802a687aebc', '38630605-5c28-4b5c-b042-93c43bf23ebc',
        'c02037b0-32ca-49b9-ae94-b29705191f3a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('fbc51773-4708-41c9-95b5-3afb89b9c0e8', 'cc721727-53e6-4b1c-9d85-c97c46b5422e',
        'c02037b0-32ca-49b9-ae94-b29705191f3a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('24739073-4601-46a8-ae7b-99846f62eed3', 'ccb39a89-f63e-4537-90cd-e3186178ae1f',
        'c02037b0-32ca-49b9-ae94-b29705191f3a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c2421111-a16c-4a2c-8830-bc348d2839c7', 'b34bfec1-ee6c-46bc-9d52-99e90b59fe12',
        'c02037b0-32ca-49b9-ae94-b29705191f3a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6542dd60-2594-4316-bfe3-53e709c21c2a', '6b7955fe-fb44-4b68-92b5-13aedcce4e76',
        'c02037b0-32ca-49b9-ae94-b29705191f3a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1d14a84c-ce0a-4614-9989-c6e87487dec6', '204814c3-bf71-4b17-9727-c6d435976da6',
        'c02037b0-32ca-49b9-ae94-b29705191f3a', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('532d4b5d-18dd-450e-a382-366e35f0833e', 'd118e4c3-08b7-4c8e-95de-81b8715b6f1d',
        'c02037b0-32ca-49b9-ae94-b29705191f3a', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2d3650ef-bb8c-4759-a18b-f492c515dc99', 'db255fa3-e68a-47b3-9651-a7cc95b33689',
        'c02037b0-32ca-49b9-ae94-b29705191f3a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0d99a10d-c254-44ed-a3b9-5aa170966a3e', '42b30d8f-b8eb-46be-93ee-446f2d1d2706',
        'c02037b0-32ca-49b9-ae94-b29705191f3a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('dc016e2f-f238-4634-8889-5aec9f5370f6', '69126fb1-3e3f-4741-b6a4-91678103ccfe',
        'c02037b0-32ca-49b9-ae94-b29705191f3a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b6810a39-1ad8-4ea1-a6d5-b5755b4e1519', 'a4f7f094-e1ff-4280-aa2f-33e17fb03d07',
        'c02037b0-32ca-49b9-ae94-b29705191f3a', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('797cac5a-448b-435e-80e6-39c09092b228', '9f8b49e7-cd35-4115-8e2a-a4bc71ceab78',
        'c02037b0-32ca-49b9-ae94-b29705191f3a', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8180312e-44b8-412d-8b0f-dc9c8b36fd64', 'df70cc34-0233-4ed5-89f4-5864507b42a4',
        'c02037b0-32ca-49b9-ae94-b29705191f3a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2bb2ed8c-7d92-4a06-9758-5c5994af8ceb', '4b4b663a-bc9c-4eb4-ba80-f86adc0951f9',
        'c02037b0-32ca-49b9-ae94-b29705191f3a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('09f3ede2-4add-4c24-894c-67c28b425d0c', '231e38c1-fb35-4262-9a80-ea7a4d0a00ba',
        'c02037b0-32ca-49b9-ae94-b29705191f3a', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0f2faab5-9b68-4daa-b3a1-750fc9091302', '57008dea-844d-44c7-8adc-6389295384c7',
        'c02037b0-32ca-49b9-ae94-b29705191f3a', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6563f50f-ebd3-4577-b972-98bae3a67a08', 'a214c6f9-029b-444d-82a0-8bc98a044a43',
        'c02037b0-32ca-49b9-ae94-b29705191f3a', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3aa623b1-f416-4136-99a9-8f208c159cd4', '630e876e-62d7-498b-aae9-f8326e875369',
        'c02037b0-32ca-49b9-ae94-b29705191f3a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f86034e9-1b5e-4f75-997a-571e1347bb44', '1521cd72-8dc2-463a-8cef-2c8c8166493b',
        'c02037b0-32ca-49b9-ae94-b29705191f3a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b0dd2939-a985-4ea5-b117-92545512f8cf', '4c411dfd-41e6-4c53-bb7b-37cc54c1c8e8',
        'c02037b0-32ca-49b9-ae94-b29705191f3a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('32beb8d0-4260-427f-84da-889f8f294060', '92bb831c-040f-4686-8acd-f42d8629ba7b',
        'c02037b0-32ca-49b9-ae94-b29705191f3a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('af45851f-b30d-4f4e-8981-661a0aae78a3', 'fe8d890a-abea-44fc-92fe-ba3678289387',
        'c02037b0-32ca-49b9-ae94-b29705191f3a', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b94cca7b-d31e-4197-8030-5784104c9efd', '4de87bed-0d07-419e-9991-32658cdb0a9d',
        'c02037b0-32ca-49b9-ae94-b29705191f3a', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('671386b3-035c-4e2c-a2ba-50ee3ad32ec9', '7570b82c-a85d-446c-9a92-5c0bb332a8a3',
        'c02037b0-32ca-49b9-ae94-b29705191f3a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d4b4754c-4271-4784-b5e5-2b49da304b38', 'b8b056d3-228d-4363-8f43-a1fed1da8695',
        'c02037b0-32ca-49b9-ae94-b29705191f3a', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('cd833836-6339-452b-92fc-9509cbead136', '5a08407a-ba00-4be3-bbc6-c50dc256d8f5',
        'c02037b0-32ca-49b9-ae94-b29705191f3a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b35176ce-20e9-40e6-ae46-9d63eb5eeac2', 'cac14782-c714-49d4-803d-6bdfb7fb8707',
        'c02037b0-32ca-49b9-ae94-b29705191f3a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a1ad769a-b4c6-4282-be1e-8383ef007bc9', '3d723b44-2db7-4730-af04-6007ae7d2178',
        'c02037b0-32ca-49b9-ae94-b29705191f3a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9cd559fc-1714-4354-a9f0-d927316cb9f2', '9a4f51df-c428-4a18-9055-511e0ae7b6d8',
        'c02037b0-32ca-49b9-ae94-b29705191f3a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8e91ec25-2395-4bfe-9bf5-a971725648ce', 'fd1edc81-f470-4dbe-95cf-ea6ad5e85cf2',
        'c02037b0-32ca-49b9-ae94-b29705191f3a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d51c2992-bd6a-4776-beb6-9146bb9951c5', '6e2740d2-ef18-4564-b8c7-9f7214308f81',
        'c02037b0-32ca-49b9-ae94-b29705191f3a', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a91ca6a7-7288-4adf-96c5-07b96f739070', '926c446b-9db8-4b9c-a406-ed40dff69e34',
        'c02037b0-32ca-49b9-ae94-b29705191f3a', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1a68e1c9-167e-4fd1-92d3-ee7b263af24e', 'eaa9530f-bb8c-453f-b634-c8599039e296',
        'c02037b0-32ca-49b9-ae94-b29705191f3a', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1a37c4e5-336b-4063-a035-e8266171b4c1', 'bdc5f279-42bf-491c-b87a-409b3c7bff89',
        'c02037b0-32ca-49b9-ae94-b29705191f3a', 2, current_timestamp, current_timestamp);

-- politician '867bd3ec-5599-472f-92a8-c06580340c65'
insert into QuestionAnswer
values ('86c16257-30c7-48fc-ad8a-a0b3b668236d', 'a335650d-06b4-4e92-ba77-d5f8964ceb82',
        '867bd3ec-5599-472f-92a8-c06580340c65', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('301899cd-99b8-4c99-8189-898f10d00c1b', '46df8b49-923c-4f91-8362-5196efbb71e2',
        '867bd3ec-5599-472f-92a8-c06580340c65', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a52dc602-0a08-4257-bef2-c4edabd8cf00', '5f277258-ba7b-492c-b451-673eaa5957c0',
        '867bd3ec-5599-472f-92a8-c06580340c65', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ef6b1538-ed59-44fb-b5bb-2c173fc0f33c', '007ebae0-31cb-40fb-93ad-c2f980caee14',
        '867bd3ec-5599-472f-92a8-c06580340c65', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e65a41f4-a98b-4aa1-a8ce-33bf008a46a7', '8ae0f13d-e699-4617-a4ba-672e6ccc0edc',
        '867bd3ec-5599-472f-92a8-c06580340c65', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('26df9c29-48a2-4c36-bddb-9bd940cf9268', 'dee756b8-f4f2-474a-88f4-e7f4fea7275a',
        '867bd3ec-5599-472f-92a8-c06580340c65', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ca07a758-c238-4e9a-8ed7-0cf69e50fe8c', 'b8ec593e-93b8-4bab-95dd-cfff5c526d54',
        '867bd3ec-5599-472f-92a8-c06580340c65', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('23df190e-56a6-43d3-828c-7ff392130126', '6f9db124-e0ae-409d-b943-5be0cbc836e5',
        '867bd3ec-5599-472f-92a8-c06580340c65', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('72cb8e54-34e9-4415-9dae-19a6847d3b30', '616bf16a-470d-494e-ad8b-b230e80dafb3',
        '867bd3ec-5599-472f-92a8-c06580340c65', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b7689714-f21b-4513-a561-15f59bfedd0b', '6c05b44c-34de-48a4-8d3c-6015b268c456',
        '867bd3ec-5599-472f-92a8-c06580340c65', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f6051751-8ac3-41b7-8ef5-2ec582b75c48', '3ac4a61c-f510-4d59-84cc-e957dbeedd8e',
        '867bd3ec-5599-472f-92a8-c06580340c65', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('79865b4c-4094-4b79-914d-f2ab3bc0e179', 'f4f5632d-00ae-4be2-aff8-c83da3c21519',
        '867bd3ec-5599-472f-92a8-c06580340c65', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('79d6383a-d595-4694-a56c-04e8e89582f8', '4917d24b-e50c-4fa9-ac12-37a0d298f41f',
        '867bd3ec-5599-472f-92a8-c06580340c65', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0af42bf2-6a03-4645-83a6-f675b2a65acc', 'aee92954-3fab-449d-bc56-7ec47df873cb',
        '867bd3ec-5599-472f-92a8-c06580340c65', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ebadde01-aef4-48e2-b5df-3c42ba75ed8b', '19d57226-91df-4c5a-92f4-7b7d774ea8c4',
        '867bd3ec-5599-472f-92a8-c06580340c65', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7ea5e5a8-3c14-49ce-919c-08b0f306e384', '81f2e7c9-6871-44e3-a432-b0fd050dd187',
        '867bd3ec-5599-472f-92a8-c06580340c65', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b799507c-ee2b-48e2-9724-b796caa6ed8a', '377a4b78-e58a-4d13-875f-817cd1693ece',
        '867bd3ec-5599-472f-92a8-c06580340c65', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0b54f3d3-9bf6-4f41-a1d6-46e3cfc5c2ea', '54e790a7-9741-408e-9327-3377df0e9b6e',
        '867bd3ec-5599-472f-92a8-c06580340c65', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('101cee6d-fccb-41e0-86f0-253fee3535d2', '5dce5233-88d5-4b52-94de-6465ace4be98',
        '867bd3ec-5599-472f-92a8-c06580340c65', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('90b34bac-4b08-4ba3-9b93-ceaa2f22a9c3', '63aa0cb7-202d-4c54-85ae-051e8249115d',
        '867bd3ec-5599-472f-92a8-c06580340c65', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ad2a83a0-aab3-4d5d-a42e-d5a6922db7d3', 'fb59e236-0633-46ca-a8b5-c0d7596ee10e',
        '867bd3ec-5599-472f-92a8-c06580340c65', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('af0d634f-572c-4876-b9f7-4112d29ca910', '154147b7-aff2-4ff1-89cf-fcd6616ca6d2',
        '867bd3ec-5599-472f-92a8-c06580340c65', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('268236c4-e4fa-4764-a9c4-8890869f7a76', '6e8b2868-8094-46d3-95be-2397eb9d5237',
        '867bd3ec-5599-472f-92a8-c06580340c65', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6dc89e2d-fd09-45e0-a2f7-4029cca345f2', '112cc8ee-b996-4b19-9192-9e82b92aae94',
        '867bd3ec-5599-472f-92a8-c06580340c65', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2fb23980-83f2-4a48-90bd-85c8c70a5e60', '60c4bebf-411f-456f-9eab-5afd98fde9c7',
        '867bd3ec-5599-472f-92a8-c06580340c65', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('06dae873-91c4-4083-8442-b36d891b93a3', 'c393d2b5-6e50-4d7a-ad40-e112851e0711',
        '867bd3ec-5599-472f-92a8-c06580340c65', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ef3c7ebb-f9ee-416d-8d5e-a585762934bf', '38630605-5c28-4b5c-b042-93c43bf23ebc',
        '867bd3ec-5599-472f-92a8-c06580340c65', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d0e39169-044f-4362-8cd5-32e0239f4a29', 'cc721727-53e6-4b1c-9d85-c97c46b5422e',
        '867bd3ec-5599-472f-92a8-c06580340c65', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('aa61081e-e087-4d1f-9488-cb5dc0888a2a', 'ccb39a89-f63e-4537-90cd-e3186178ae1f',
        '867bd3ec-5599-472f-92a8-c06580340c65', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f5efb0e0-b682-4465-9746-a1a3a94a00aa', 'b34bfec1-ee6c-46bc-9d52-99e90b59fe12',
        '867bd3ec-5599-472f-92a8-c06580340c65', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2a276608-4405-49ab-8036-78d932be54ff', '6b7955fe-fb44-4b68-92b5-13aedcce4e76',
        '867bd3ec-5599-472f-92a8-c06580340c65', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('bdd23287-7a7b-4ab6-a659-7f723704dc50', '204814c3-bf71-4b17-9727-c6d435976da6',
        '867bd3ec-5599-472f-92a8-c06580340c65', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d3563a7a-e234-45f5-9ad8-03bf27b0ddaf', 'd118e4c3-08b7-4c8e-95de-81b8715b6f1d',
        '867bd3ec-5599-472f-92a8-c06580340c65', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('052507cc-fe74-43e0-b8be-1a0cbc84055d', 'db255fa3-e68a-47b3-9651-a7cc95b33689',
        '867bd3ec-5599-472f-92a8-c06580340c65', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('190fa5bb-9de9-41e2-a8bd-c59a1360ed11', '42b30d8f-b8eb-46be-93ee-446f2d1d2706',
        '867bd3ec-5599-472f-92a8-c06580340c65', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b3840a00-183b-4614-add3-ed23c3bdf21b', '69126fb1-3e3f-4741-b6a4-91678103ccfe',
        '867bd3ec-5599-472f-92a8-c06580340c65', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c192e546-2f5e-4f7d-885d-f41752c9755a', 'a4f7f094-e1ff-4280-aa2f-33e17fb03d07',
        '867bd3ec-5599-472f-92a8-c06580340c65', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('29c03666-dcc5-431f-96e4-e7b30efcef09', '9f8b49e7-cd35-4115-8e2a-a4bc71ceab78',
        '867bd3ec-5599-472f-92a8-c06580340c65', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1d755f25-e08a-474f-b617-41d5f016b8c3', 'df70cc34-0233-4ed5-89f4-5864507b42a4',
        '867bd3ec-5599-472f-92a8-c06580340c65', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('dc408cb0-6cad-4911-88d7-71b38512ef0f', '4b4b663a-bc9c-4eb4-ba80-f86adc0951f9',
        '867bd3ec-5599-472f-92a8-c06580340c65', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('822cede1-8eac-447c-9b86-c05e9a227bdf', '231e38c1-fb35-4262-9a80-ea7a4d0a00ba',
        '867bd3ec-5599-472f-92a8-c06580340c65', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('602af8fe-643f-40ba-9a20-cb7079abac9e', '57008dea-844d-44c7-8adc-6389295384c7',
        '867bd3ec-5599-472f-92a8-c06580340c65', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7746a46c-28ae-4b81-b736-4a567e659a45', 'a214c6f9-029b-444d-82a0-8bc98a044a43',
        '867bd3ec-5599-472f-92a8-c06580340c65', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('444a04f1-cc48-4a14-960e-0adbb7732d3a', '630e876e-62d7-498b-aae9-f8326e875369',
        '867bd3ec-5599-472f-92a8-c06580340c65', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('cc19ad57-7465-4a5c-b063-74bab5db4d33', '1521cd72-8dc2-463a-8cef-2c8c8166493b',
        '867bd3ec-5599-472f-92a8-c06580340c65', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('80eec7c4-7d94-46c9-acef-95551c1b3d6f', '4c411dfd-41e6-4c53-bb7b-37cc54c1c8e8',
        '867bd3ec-5599-472f-92a8-c06580340c65', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('954da470-ff0d-4c17-a04c-f0acaa3b2878', '92bb831c-040f-4686-8acd-f42d8629ba7b',
        '867bd3ec-5599-472f-92a8-c06580340c65', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a4df6a1b-157d-43db-a89a-b7550677f1a3', 'fe8d890a-abea-44fc-92fe-ba3678289387',
        '867bd3ec-5599-472f-92a8-c06580340c65', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3a3c275a-0bf7-4856-8aa0-4a60f6e4a0b5', '4de87bed-0d07-419e-9991-32658cdb0a9d',
        '867bd3ec-5599-472f-92a8-c06580340c65', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('722d4e79-77d8-42e9-88cd-9f18a22a6fab', '7570b82c-a85d-446c-9a92-5c0bb332a8a3',
        '867bd3ec-5599-472f-92a8-c06580340c65', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b219d138-f7f0-4a92-9a2f-ccaa53d35ec7', 'b8b056d3-228d-4363-8f43-a1fed1da8695',
        '867bd3ec-5599-472f-92a8-c06580340c65', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e2ee3127-b7a3-4a85-8fd2-b08cf37d63d0', '5a08407a-ba00-4be3-bbc6-c50dc256d8f5',
        '867bd3ec-5599-472f-92a8-c06580340c65', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('27003262-8fbe-44f7-984f-64be330f1bb9', 'cac14782-c714-49d4-803d-6bdfb7fb8707',
        '867bd3ec-5599-472f-92a8-c06580340c65', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('61fca4ac-0454-4c00-95c3-03238322e9b3', '3d723b44-2db7-4730-af04-6007ae7d2178',
        '867bd3ec-5599-472f-92a8-c06580340c65', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('daf33c32-058c-49d4-836e-d9c27e4d0e5f', '9a4f51df-c428-4a18-9055-511e0ae7b6d8',
        '867bd3ec-5599-472f-92a8-c06580340c65', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5126727b-9c50-4936-b3e5-539c1c06ca25', 'fd1edc81-f470-4dbe-95cf-ea6ad5e85cf2',
        '867bd3ec-5599-472f-92a8-c06580340c65', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7d357984-948a-4a8c-a1a8-4acc4f37a4fd', '6e2740d2-ef18-4564-b8c7-9f7214308f81',
        '867bd3ec-5599-472f-92a8-c06580340c65', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0c270550-492a-4754-afae-17c679d32e83', '926c446b-9db8-4b9c-a406-ed40dff69e34',
        '867bd3ec-5599-472f-92a8-c06580340c65', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('57969a80-d4d5-4eba-9bc5-b842f4cc801a', 'eaa9530f-bb8c-453f-b634-c8599039e296',
        '867bd3ec-5599-472f-92a8-c06580340c65', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2d0bd728-637e-4bcf-9d9d-a08c29670572', 'bdc5f279-42bf-491c-b87a-409b3c7bff89',
        '867bd3ec-5599-472f-92a8-c06580340c65', 2, current_timestamp, current_timestamp);

-- politician 'a35b4cca-3fad-45ab-a2db-f88e69b3ffc6'
insert into QuestionAnswer
values ('dbaf2764-7e67-4b3f-be35-9e5f4fb7698a', 'a335650d-06b4-4e92-ba77-d5f8964ceb82',
        'a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('fb3ea94d-0326-4e4e-b8c5-7001910642ab', '46df8b49-923c-4f91-8362-5196efbb71e2',
        'a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d8f0e62e-f182-4391-aede-d43b81aecf39', '5f277258-ba7b-492c-b451-673eaa5957c0',
        'a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('61153c18-87cd-450e-9532-d790c05eaa92', '007ebae0-31cb-40fb-93ad-c2f980caee14',
        'a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1e9cd108-d0b0-4627-8038-654861607f8c', '8ae0f13d-e699-4617-a4ba-672e6ccc0edc',
        'a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e838c87e-df45-42b3-a11b-9cd477830d59', 'dee756b8-f4f2-474a-88f4-e7f4fea7275a',
        'a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ffb5e753-458f-487b-8e73-7d810b7e3fe0', 'b8ec593e-93b8-4bab-95dd-cfff5c526d54',
        'a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('cf13fb6c-74cb-4006-83f9-c8981dabb6b8', '6f9db124-e0ae-409d-b943-5be0cbc836e5',
        'a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e847d993-914b-447a-8778-ccdbbd4bd779', '616bf16a-470d-494e-ad8b-b230e80dafb3',
        'a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c14f2af5-9783-46b6-9a26-bb953c47844c', '6c05b44c-34de-48a4-8d3c-6015b268c456',
        'a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('330bf9dc-f9f0-4cc2-a608-be6863547237', '3ac4a61c-f510-4d59-84cc-e957dbeedd8e',
        'a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5d77890d-d07d-4f49-9c83-31b8c367a329', 'f4f5632d-00ae-4be2-aff8-c83da3c21519',
        'a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('bf120516-8799-4d30-a215-d75e93e8fad8', '4917d24b-e50c-4fa9-ac12-37a0d298f41f',
        'a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4d37ca9b-b47a-4324-8842-e50840064193', 'aee92954-3fab-449d-bc56-7ec47df873cb',
        'a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d2902565-0894-4ad3-8fd3-e2529d6d4b57', '19d57226-91df-4c5a-92f4-7b7d774ea8c4',
        'a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ec8cc9cb-afc2-4dd7-9fa5-f97a89547763', '81f2e7c9-6871-44e3-a432-b0fd050dd187',
        'a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('250cbfdc-6dbb-4d31-9cfe-65a7efdb3696', '377a4b78-e58a-4d13-875f-817cd1693ece',
        'a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('14acd05c-bab0-4c97-8da5-2cacc1d5baf3', '54e790a7-9741-408e-9327-3377df0e9b6e',
        'a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d42c84cd-2440-45b7-b39b-bc1447082bcf', '5dce5233-88d5-4b52-94de-6465ace4be98',
        'a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('87799c5c-5071-4c8d-b1bd-ad42bd677395', '63aa0cb7-202d-4c54-85ae-051e8249115d',
        'a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3d2c65ba-526a-4ef2-985b-a3f69e3e3f2e', 'fb59e236-0633-46ca-a8b5-c0d7596ee10e',
        'a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d337ac7b-4504-4719-be22-e16c1dc69c2f', '154147b7-aff2-4ff1-89cf-fcd6616ca6d2',
        'a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7b98a6f5-15cf-4109-b1e4-6f6e94ed6d7a', '6e8b2868-8094-46d3-95be-2397eb9d5237',
        'a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('28dab421-f871-45e9-b31c-d7792e02c31e', '112cc8ee-b996-4b19-9192-9e82b92aae94',
        'a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('779c8d96-0c95-4647-8f2f-36bd35f964c5', '60c4bebf-411f-456f-9eab-5afd98fde9c7',
        'a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c6c510fc-bcd5-4249-9836-af2031e08d28', 'c393d2b5-6e50-4d7a-ad40-e112851e0711',
        'a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('62006d1b-527f-41c5-94f3-93ca744c3c1d', '38630605-5c28-4b5c-b042-93c43bf23ebc',
        'a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('bc9dc0e7-34cd-4a3b-9252-807329e75c76', 'cc721727-53e6-4b1c-9d85-c97c46b5422e',
        'a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('73420dcb-20ba-4b7c-83ff-e36c80bbefc0', 'ccb39a89-f63e-4537-90cd-e3186178ae1f',
        'a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('35e1131f-9e8c-4546-8a9b-42d188c57d06', 'b34bfec1-ee6c-46bc-9d52-99e90b59fe12',
        'a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4a1af783-206c-4626-934c-e311c62bbf74', '6b7955fe-fb44-4b68-92b5-13aedcce4e76',
        'a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a1c376ec-30e4-46f0-89d2-6161086156cd', '204814c3-bf71-4b17-9727-c6d435976da6',
        'a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('96deb6f6-c700-4c53-90f6-984efeac050c', 'd118e4c3-08b7-4c8e-95de-81b8715b6f1d',
        'a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a8ebe6b4-67b2-478e-b375-2be7c80ad2fc', 'db255fa3-e68a-47b3-9651-a7cc95b33689',
        'a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3f38452c-60e5-457e-b33a-3cc3d5e8d7cc', '42b30d8f-b8eb-46be-93ee-446f2d1d2706',
        'a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4e82ad2c-e119-4836-aff4-1745220e35cb', '69126fb1-3e3f-4741-b6a4-91678103ccfe',
        'a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('319befe8-e1da-4a1a-adb8-5d5412e32438', 'a4f7f094-e1ff-4280-aa2f-33e17fb03d07',
        'a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('fba6f256-961c-4317-bf45-ecf86e7f7ed3', '9f8b49e7-cd35-4115-8e2a-a4bc71ceab78',
        'a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9fb89953-bffc-4db5-a5b6-d2c42f6132b8', 'df70cc34-0233-4ed5-89f4-5864507b42a4',
        'a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4f399033-3482-48c4-bb70-a0e3eb49e462', '4b4b663a-bc9c-4eb4-ba80-f86adc0951f9',
        'a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('123c4f77-b82e-4dda-8a58-89754a923080', '231e38c1-fb35-4262-9a80-ea7a4d0a00ba',
        'a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('88c3b7bd-babc-4232-9a61-87a9abace92b', '57008dea-844d-44c7-8adc-6389295384c7',
        'a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0170b020-155e-46ff-9ecd-c8821b29071b', 'a214c6f9-029b-444d-82a0-8bc98a044a43',
        'a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('80972379-aa52-440c-8641-b9cda5f2facc', '630e876e-62d7-498b-aae9-f8326e875369',
        'a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e7beb74c-49e3-45f5-8a9a-ebb2a6a5816f', '1521cd72-8dc2-463a-8cef-2c8c8166493b',
        'a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('22902b24-d638-4670-b2e5-e5b790093bac', '4c411dfd-41e6-4c53-bb7b-37cc54c1c8e8',
        'a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('96037997-db35-4d4e-ac83-6e2551d2dae6', '92bb831c-040f-4686-8acd-f42d8629ba7b',
        'a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d6f6e85e-47c6-46d2-9240-5e68ac8a021d', 'fe8d890a-abea-44fc-92fe-ba3678289387',
        'a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7c7b956f-59b5-4176-9f92-76e7db9f112b', '4de87bed-0d07-419e-9991-32658cdb0a9d',
        'a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('bda121ce-f846-4cde-9126-bfacdf62ee93', '7570b82c-a85d-446c-9a92-5c0bb332a8a3',
        'a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6cb1bd41-32b8-404d-9eae-8788b93db3c9', 'b8b056d3-228d-4363-8f43-a1fed1da8695',
        'a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('97d00815-eb8d-4fbf-b684-72c8200615ee', '5a08407a-ba00-4be3-bbc6-c50dc256d8f5',
        'a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9c91cbd0-09c2-4614-a6c0-4711789a3c32', 'cac14782-c714-49d4-803d-6bdfb7fb8707',
        'a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a35c4279-2d99-4fde-b6e9-62e722a83a19', '3d723b44-2db7-4730-af04-6007ae7d2178',
        'a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('16e2e039-d14c-4262-9410-9e30e19cf453', '9a4f51df-c428-4a18-9055-511e0ae7b6d8',
        'a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5bffcaad-f751-4f51-871c-be8a69bab722', 'fd1edc81-f470-4dbe-95cf-ea6ad5e85cf2',
        'a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('72d5841c-d220-4d17-ba2c-79cee1567860', '6e2740d2-ef18-4564-b8c7-9f7214308f81',
        'a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c1db1b9d-647a-4a37-af06-e7b703899a97', '926c446b-9db8-4b9c-a406-ed40dff69e34',
        'a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('24baf56c-8ae0-466a-b4e3-9b60a0cf4997', 'eaa9530f-bb8c-453f-b634-c8599039e296',
        'a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('efaad3a0-8723-4f0e-82d7-9b9b9a15a0ec', 'bdc5f279-42bf-491c-b87a-409b3c7bff89',
        'a35b4cca-3fad-45ab-a2db-f88e69b3ffc6', 2, current_timestamp, current_timestamp);

-- politician '4d7b74e2-503c-42cc-b86c-2a7b1b28b093'
insert into QuestionAnswer
values ('63f3d463-a6d1-4862-9c57-d07a4fbefff5', 'a335650d-06b4-4e92-ba77-d5f8964ceb82',
        '4d7b74e2-503c-42cc-b86c-2a7b1b28b093', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3cb8e2d4-7785-4cc8-94d0-b714c9fe6340', '46df8b49-923c-4f91-8362-5196efbb71e2',
        '4d7b74e2-503c-42cc-b86c-2a7b1b28b093', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('aecdd6a4-e360-4f8e-83c3-40cd033983b0', '5f277258-ba7b-492c-b451-673eaa5957c0',
        '4d7b74e2-503c-42cc-b86c-2a7b1b28b093', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e97d6e0d-edb4-48dc-b10f-d361649543ac', '007ebae0-31cb-40fb-93ad-c2f980caee14',
        '4d7b74e2-503c-42cc-b86c-2a7b1b28b093', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6e57f026-ac50-46d1-9369-053260a6aa26', '8ae0f13d-e699-4617-a4ba-672e6ccc0edc',
        '4d7b74e2-503c-42cc-b86c-2a7b1b28b093', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ad397333-852a-4cf4-b348-cb34184f0b03', 'dee756b8-f4f2-474a-88f4-e7f4fea7275a',
        '4d7b74e2-503c-42cc-b86c-2a7b1b28b093', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5cfe9325-fb19-4ea6-a061-370c67268fac', 'b8ec593e-93b8-4bab-95dd-cfff5c526d54',
        '4d7b74e2-503c-42cc-b86c-2a7b1b28b093', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('308fe593-bf75-4156-8bbd-920977b976fd', '6f9db124-e0ae-409d-b943-5be0cbc836e5',
        '4d7b74e2-503c-42cc-b86c-2a7b1b28b093', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7c884c6d-0c73-4baf-930f-88c6014b2cbc', '616bf16a-470d-494e-ad8b-b230e80dafb3',
        '4d7b74e2-503c-42cc-b86c-2a7b1b28b093', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e15bab7e-e637-44b9-860b-6ad4716b08df', '6c05b44c-34de-48a4-8d3c-6015b268c456',
        '4d7b74e2-503c-42cc-b86c-2a7b1b28b093', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3bbda20d-930f-44fd-87d8-2bbaa5401f04', '3ac4a61c-f510-4d59-84cc-e957dbeedd8e',
        '4d7b74e2-503c-42cc-b86c-2a7b1b28b093', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0ab8e82e-e1e9-4707-a99a-6266edbf0aa0', 'f4f5632d-00ae-4be2-aff8-c83da3c21519',
        '4d7b74e2-503c-42cc-b86c-2a7b1b28b093', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('80c9a335-4e76-47fe-9e97-a6b3a0d16ca7', '4917d24b-e50c-4fa9-ac12-37a0d298f41f',
        '4d7b74e2-503c-42cc-b86c-2a7b1b28b093', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a636f87b-55a5-4f2c-b84f-a90828144ffb', 'aee92954-3fab-449d-bc56-7ec47df873cb',
        '4d7b74e2-503c-42cc-b86c-2a7b1b28b093', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3a198fe1-763e-4b5e-9386-41b18fece470', '19d57226-91df-4c5a-92f4-7b7d774ea8c4',
        '4d7b74e2-503c-42cc-b86c-2a7b1b28b093', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b5f66fbf-8b83-41a9-996e-6a1363e657c6', '81f2e7c9-6871-44e3-a432-b0fd050dd187',
        '4d7b74e2-503c-42cc-b86c-2a7b1b28b093', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('546e14da-fee5-4c51-9991-e3d08a6cbad3', '377a4b78-e58a-4d13-875f-817cd1693ece',
        '4d7b74e2-503c-42cc-b86c-2a7b1b28b093', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('dd5af2af-f828-4a16-ba8a-3db9ed63aac5', '54e790a7-9741-408e-9327-3377df0e9b6e',
        '4d7b74e2-503c-42cc-b86c-2a7b1b28b093', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2c314996-88a3-4b44-b252-c2853a05be7f', '5dce5233-88d5-4b52-94de-6465ace4be98',
        '4d7b74e2-503c-42cc-b86c-2a7b1b28b093', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8702421c-9e44-42ba-b891-a07d3bdb0f25', '63aa0cb7-202d-4c54-85ae-051e8249115d',
        '4d7b74e2-503c-42cc-b86c-2a7b1b28b093', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1dfdccb5-e807-45d5-9054-32abb819b419', 'fb59e236-0633-46ca-a8b5-c0d7596ee10e',
        '4d7b74e2-503c-42cc-b86c-2a7b1b28b093', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('04a30f9b-576c-4ef4-9fb5-5e15fc392052', '154147b7-aff2-4ff1-89cf-fcd6616ca6d2',
        '4d7b74e2-503c-42cc-b86c-2a7b1b28b093', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c487a1fd-7c8e-4bad-96c2-eb5dc1d321da', '6e8b2868-8094-46d3-95be-2397eb9d5237',
        '4d7b74e2-503c-42cc-b86c-2a7b1b28b093', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0e0f8e2d-ec84-478b-8c99-6a0e496a913a', '112cc8ee-b996-4b19-9192-9e82b92aae94',
        '4d7b74e2-503c-42cc-b86c-2a7b1b28b093', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('61ac7534-ad8d-4529-b456-77dd4aa8e294', '60c4bebf-411f-456f-9eab-5afd98fde9c7',
        '4d7b74e2-503c-42cc-b86c-2a7b1b28b093', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1b44702c-99d1-4cdb-b9ec-5813d24eaadd', 'c393d2b5-6e50-4d7a-ad40-e112851e0711',
        '4d7b74e2-503c-42cc-b86c-2a7b1b28b093', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1532766a-db08-4d03-bd91-1f2fdce3bda0', '38630605-5c28-4b5c-b042-93c43bf23ebc',
        '4d7b74e2-503c-42cc-b86c-2a7b1b28b093', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('02197a06-bfef-47c9-8531-9a1e242358f8', 'cc721727-53e6-4b1c-9d85-c97c46b5422e',
        '4d7b74e2-503c-42cc-b86c-2a7b1b28b093', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7d9703e9-080e-48e4-bdd7-080da4731665', 'ccb39a89-f63e-4537-90cd-e3186178ae1f',
        '4d7b74e2-503c-42cc-b86c-2a7b1b28b093', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('26e1f21d-32c4-47e9-8773-d0537b5b5a11', 'b34bfec1-ee6c-46bc-9d52-99e90b59fe12',
        '4d7b74e2-503c-42cc-b86c-2a7b1b28b093', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7d47678f-e762-4d1e-91d8-dc973bad3092', '6b7955fe-fb44-4b68-92b5-13aedcce4e76',
        '4d7b74e2-503c-42cc-b86c-2a7b1b28b093', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('bae95be7-439d-4d2f-b336-aed2a678d439', '204814c3-bf71-4b17-9727-c6d435976da6',
        '4d7b74e2-503c-42cc-b86c-2a7b1b28b093', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('704fbba9-c164-4812-ba4a-85d375eca272', 'd118e4c3-08b7-4c8e-95de-81b8715b6f1d',
        '4d7b74e2-503c-42cc-b86c-2a7b1b28b093', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('855898e3-4c6a-48fd-84a2-31c287f88a4f', 'db255fa3-e68a-47b3-9651-a7cc95b33689',
        '4d7b74e2-503c-42cc-b86c-2a7b1b28b093', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('136da720-8216-4fd9-916b-4836cf04e44a', '42b30d8f-b8eb-46be-93ee-446f2d1d2706',
        '4d7b74e2-503c-42cc-b86c-2a7b1b28b093', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('61d38f18-4281-4997-bb09-078b31f5732f', '69126fb1-3e3f-4741-b6a4-91678103ccfe',
        '4d7b74e2-503c-42cc-b86c-2a7b1b28b093', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8028978d-82f7-44b3-817d-0f27529797f0', 'a4f7f094-e1ff-4280-aa2f-33e17fb03d07',
        '4d7b74e2-503c-42cc-b86c-2a7b1b28b093', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('847148fd-3c7d-43c5-ae50-b88ef43112bd', '9f8b49e7-cd35-4115-8e2a-a4bc71ceab78',
        '4d7b74e2-503c-42cc-b86c-2a7b1b28b093', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('38e5a847-3f65-4fd0-a144-2b3381169627', 'df70cc34-0233-4ed5-89f4-5864507b42a4',
        '4d7b74e2-503c-42cc-b86c-2a7b1b28b093', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8fc4c2c4-0d4b-45fd-9fe5-572b6e091392', '4b4b663a-bc9c-4eb4-ba80-f86adc0951f9',
        '4d7b74e2-503c-42cc-b86c-2a7b1b28b093', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3978c5b2-9777-4d46-a9ab-bce9252aabb9', '231e38c1-fb35-4262-9a80-ea7a4d0a00ba',
        '4d7b74e2-503c-42cc-b86c-2a7b1b28b093', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e4356606-7265-45c9-89ab-e3d1d7fde7b7', '57008dea-844d-44c7-8adc-6389295384c7',
        '4d7b74e2-503c-42cc-b86c-2a7b1b28b093', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('84970a3e-eb28-4e4f-af32-424a4de4e23d', 'a214c6f9-029b-444d-82a0-8bc98a044a43',
        '4d7b74e2-503c-42cc-b86c-2a7b1b28b093', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ffe72814-1635-4136-b9b0-6bfcb97a38f1', '630e876e-62d7-498b-aae9-f8326e875369',
        '4d7b74e2-503c-42cc-b86c-2a7b1b28b093', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('717bea82-5453-46ef-aa05-6ddf22d6245c', '1521cd72-8dc2-463a-8cef-2c8c8166493b',
        '4d7b74e2-503c-42cc-b86c-2a7b1b28b093', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('159cfbbb-3a18-4b65-b474-5ea36d78b781', '4c411dfd-41e6-4c53-bb7b-37cc54c1c8e8',
        '4d7b74e2-503c-42cc-b86c-2a7b1b28b093', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4d71ff6b-b284-4361-ad9d-b27f0da44406', '92bb831c-040f-4686-8acd-f42d8629ba7b',
        '4d7b74e2-503c-42cc-b86c-2a7b1b28b093', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('52422549-d61c-46a9-8f0c-812dab753038', 'fe8d890a-abea-44fc-92fe-ba3678289387',
        '4d7b74e2-503c-42cc-b86c-2a7b1b28b093', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('92fc3518-392b-48bd-b840-b23afada225d', '4de87bed-0d07-419e-9991-32658cdb0a9d',
        '4d7b74e2-503c-42cc-b86c-2a7b1b28b093', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f564656b-20c7-4610-8e3f-4b3a98fe2e85', '7570b82c-a85d-446c-9a92-5c0bb332a8a3',
        '4d7b74e2-503c-42cc-b86c-2a7b1b28b093', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('cc6dceaa-0d0c-4876-b2f5-a0e0970731f9', 'b8b056d3-228d-4363-8f43-a1fed1da8695',
        '4d7b74e2-503c-42cc-b86c-2a7b1b28b093', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('090b00d8-7adf-4f7e-9a28-59c1b3b614a8', '5a08407a-ba00-4be3-bbc6-c50dc256d8f5',
        '4d7b74e2-503c-42cc-b86c-2a7b1b28b093', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ec739aad-8f2f-47c0-8d1d-d43965b5e13d', 'cac14782-c714-49d4-803d-6bdfb7fb8707',
        '4d7b74e2-503c-42cc-b86c-2a7b1b28b093', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a735b810-3a6d-41f6-86a5-66ce669659bd', '3d723b44-2db7-4730-af04-6007ae7d2178',
        '4d7b74e2-503c-42cc-b86c-2a7b1b28b093', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d7828fd4-187a-49f1-a861-2a8ce2ce722c', '9a4f51df-c428-4a18-9055-511e0ae7b6d8',
        '4d7b74e2-503c-42cc-b86c-2a7b1b28b093', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('67fe5b3f-16e9-4ab5-991a-649261233dc7', 'fd1edc81-f470-4dbe-95cf-ea6ad5e85cf2',
        '4d7b74e2-503c-42cc-b86c-2a7b1b28b093', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('12f46b7b-cca3-44e5-a93a-487e2b9fa91a', '6e2740d2-ef18-4564-b8c7-9f7214308f81',
        '4d7b74e2-503c-42cc-b86c-2a7b1b28b093', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('97f03b30-904a-49cb-9684-6fa31be6a245', '926c446b-9db8-4b9c-a406-ed40dff69e34',
        '4d7b74e2-503c-42cc-b86c-2a7b1b28b093', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d71f5f0e-fac8-4ed3-9f50-2befa5747202', 'eaa9530f-bb8c-453f-b634-c8599039e296',
        '4d7b74e2-503c-42cc-b86c-2a7b1b28b093', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('966e663e-5c3f-4768-9725-23cb54a05261', 'bdc5f279-42bf-491c-b87a-409b3c7bff89',
        '4d7b74e2-503c-42cc-b86c-2a7b1b28b093', 1, current_timestamp, current_timestamp);

-- politician '840a8d98-56a5-4b79-b7db-019d60454b7d'
insert into QuestionAnswer
values ('e38b5058-8907-414d-828a-9309a66ff74c', 'a335650d-06b4-4e92-ba77-d5f8964ceb82',
        '840a8d98-56a5-4b79-b7db-019d60454b7d', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9e279ce5-2826-468c-b7ce-e2b758fc2573', '46df8b49-923c-4f91-8362-5196efbb71e2',
        '840a8d98-56a5-4b79-b7db-019d60454b7d', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5c5f64e5-cb64-473e-b0ec-8a5316ca1889', '5f277258-ba7b-492c-b451-673eaa5957c0',
        '840a8d98-56a5-4b79-b7db-019d60454b7d', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('734373d7-983c-4f06-bf77-fc5c09ab9bc1', '007ebae0-31cb-40fb-93ad-c2f980caee14',
        '840a8d98-56a5-4b79-b7db-019d60454b7d', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ffcc226c-f77e-4040-b4ce-f3c364f147da', '8ae0f13d-e699-4617-a4ba-672e6ccc0edc',
        '840a8d98-56a5-4b79-b7db-019d60454b7d', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('65e95122-d634-416d-b293-7ac2fa3b803b', 'dee756b8-f4f2-474a-88f4-e7f4fea7275a',
        '840a8d98-56a5-4b79-b7db-019d60454b7d', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('aace4cb6-a48d-411d-9c3a-71bcd3133048', 'b8ec593e-93b8-4bab-95dd-cfff5c526d54',
        '840a8d98-56a5-4b79-b7db-019d60454b7d', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('be2bfeaf-cda6-4101-bde1-745f47b84d00', '6f9db124-e0ae-409d-b943-5be0cbc836e5',
        '840a8d98-56a5-4b79-b7db-019d60454b7d', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('caa7b32f-3a0b-4644-983c-705b60a3b394', '616bf16a-470d-494e-ad8b-b230e80dafb3',
        '840a8d98-56a5-4b79-b7db-019d60454b7d', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6e990ec4-df62-416b-861a-b5de3485a7ac', '6c05b44c-34de-48a4-8d3c-6015b268c456',
        '840a8d98-56a5-4b79-b7db-019d60454b7d', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5287dcfb-1746-4850-8145-697bb6ab5539', '3ac4a61c-f510-4d59-84cc-e957dbeedd8e',
        '840a8d98-56a5-4b79-b7db-019d60454b7d', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('597c3286-388d-4282-b512-68b83f7ae664', 'f4f5632d-00ae-4be2-aff8-c83da3c21519',
        '840a8d98-56a5-4b79-b7db-019d60454b7d', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('33c40fc2-530f-4781-a18a-e48b10e364c1', '4917d24b-e50c-4fa9-ac12-37a0d298f41f',
        '840a8d98-56a5-4b79-b7db-019d60454b7d', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3fa0b3c7-00b1-4a98-8e6a-3b462864b73a', 'aee92954-3fab-449d-bc56-7ec47df873cb',
        '840a8d98-56a5-4b79-b7db-019d60454b7d', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a18bf26d-595e-47e7-8c7b-7ed17dbec3be', '19d57226-91df-4c5a-92f4-7b7d774ea8c4',
        '840a8d98-56a5-4b79-b7db-019d60454b7d', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e0fdadf5-1083-45f3-a3c7-dc9cbf0bae61', '81f2e7c9-6871-44e3-a432-b0fd050dd187',
        '840a8d98-56a5-4b79-b7db-019d60454b7d', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6a412701-9954-4e18-b2e6-dec8b763571f', '377a4b78-e58a-4d13-875f-817cd1693ece',
        '840a8d98-56a5-4b79-b7db-019d60454b7d', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('78ceb2b8-4922-4c23-8554-692d4bbcb2e9', '54e790a7-9741-408e-9327-3377df0e9b6e',
        '840a8d98-56a5-4b79-b7db-019d60454b7d', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c769f2f1-1968-4ae9-b895-a31ae91e7ba8', '5dce5233-88d5-4b52-94de-6465ace4be98',
        '840a8d98-56a5-4b79-b7db-019d60454b7d', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('88f21dcf-e6b8-4e71-8fcd-09267d3ceac3', '63aa0cb7-202d-4c54-85ae-051e8249115d',
        '840a8d98-56a5-4b79-b7db-019d60454b7d', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('83b1fd2b-1d6a-48bb-b472-e8afda311a11', 'fb59e236-0633-46ca-a8b5-c0d7596ee10e',
        '840a8d98-56a5-4b79-b7db-019d60454b7d', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a8f9e7a7-04ca-45f9-b3ff-f31aad530946', '154147b7-aff2-4ff1-89cf-fcd6616ca6d2',
        '840a8d98-56a5-4b79-b7db-019d60454b7d', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f63892d3-7ddd-4800-bb52-99961fbc0be7', '6e8b2868-8094-46d3-95be-2397eb9d5237',
        '840a8d98-56a5-4b79-b7db-019d60454b7d', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ee584ff5-7a8a-403a-8ceb-af5cf7dd0941', '112cc8ee-b996-4b19-9192-9e82b92aae94',
        '840a8d98-56a5-4b79-b7db-019d60454b7d', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e2da6a1e-f43f-4985-a2ae-79c0d57fd28f', '60c4bebf-411f-456f-9eab-5afd98fde9c7',
        '840a8d98-56a5-4b79-b7db-019d60454b7d', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7956b934-df46-4519-9b2f-c691b966d69c', 'c393d2b5-6e50-4d7a-ad40-e112851e0711',
        '840a8d98-56a5-4b79-b7db-019d60454b7d', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b67cf4c3-680b-404c-8bb0-e199930a4801', '38630605-5c28-4b5c-b042-93c43bf23ebc',
        '840a8d98-56a5-4b79-b7db-019d60454b7d', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a53d300b-51ce-4783-a5b8-29d9ad2dcead', 'cc721727-53e6-4b1c-9d85-c97c46b5422e',
        '840a8d98-56a5-4b79-b7db-019d60454b7d', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8fe97fea-703f-47f3-849c-63f0ad955146', 'ccb39a89-f63e-4537-90cd-e3186178ae1f',
        '840a8d98-56a5-4b79-b7db-019d60454b7d', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4af84c66-1d65-4d93-a741-238c5976dd5f', 'b34bfec1-ee6c-46bc-9d52-99e90b59fe12',
        '840a8d98-56a5-4b79-b7db-019d60454b7d', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('604326be-f2b5-4ba1-acc3-6086fa4df50d', '6b7955fe-fb44-4b68-92b5-13aedcce4e76',
        '840a8d98-56a5-4b79-b7db-019d60454b7d', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('88a7f625-d022-4077-a381-3302a18702ec', '204814c3-bf71-4b17-9727-c6d435976da6',
        '840a8d98-56a5-4b79-b7db-019d60454b7d', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('37e2b1db-304c-4a0f-8018-2c11446f61f2', 'd118e4c3-08b7-4c8e-95de-81b8715b6f1d',
        '840a8d98-56a5-4b79-b7db-019d60454b7d', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('58d46fbe-c191-4df0-aa93-f7c6e62d4951', 'db255fa3-e68a-47b3-9651-a7cc95b33689',
        '840a8d98-56a5-4b79-b7db-019d60454b7d', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c5a4de6a-0040-43dd-b4ba-52df5bafb3b8', '42b30d8f-b8eb-46be-93ee-446f2d1d2706',
        '840a8d98-56a5-4b79-b7db-019d60454b7d', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6bf47e64-a784-4c15-b33c-571c0611f286', '69126fb1-3e3f-4741-b6a4-91678103ccfe',
        '840a8d98-56a5-4b79-b7db-019d60454b7d', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('cf0021f8-064b-41fb-9e6e-316a459c9c1e', 'a4f7f094-e1ff-4280-aa2f-33e17fb03d07',
        '840a8d98-56a5-4b79-b7db-019d60454b7d', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b5c1dc59-f5dd-421c-9334-16496e2da493', '9f8b49e7-cd35-4115-8e2a-a4bc71ceab78',
        '840a8d98-56a5-4b79-b7db-019d60454b7d', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('aecec70f-aa41-4ec8-80e3-7c0c3f88ec8d', 'df70cc34-0233-4ed5-89f4-5864507b42a4',
        '840a8d98-56a5-4b79-b7db-019d60454b7d', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d59c1365-fbf0-4b31-95ae-973ad1fd4904', '4b4b663a-bc9c-4eb4-ba80-f86adc0951f9',
        '840a8d98-56a5-4b79-b7db-019d60454b7d', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0727d47e-92b5-461d-8f85-98bd3ef8318a', '231e38c1-fb35-4262-9a80-ea7a4d0a00ba',
        '840a8d98-56a5-4b79-b7db-019d60454b7d', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d4f75ba7-54b3-4e2d-b191-49c084ca87d3', '57008dea-844d-44c7-8adc-6389295384c7',
        '840a8d98-56a5-4b79-b7db-019d60454b7d', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d98434ac-893a-401a-bff8-06279eebf7cd', 'a214c6f9-029b-444d-82a0-8bc98a044a43',
        '840a8d98-56a5-4b79-b7db-019d60454b7d', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a0da17c8-3c74-4044-ba9c-584fe06a4ed2', '630e876e-62d7-498b-aae9-f8326e875369',
        '840a8d98-56a5-4b79-b7db-019d60454b7d', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c1682fca-e0c1-42af-a5a6-598a5a6c6731', '1521cd72-8dc2-463a-8cef-2c8c8166493b',
        '840a8d98-56a5-4b79-b7db-019d60454b7d', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('439f67c1-a8fd-432c-9908-73a564679d76', '4c411dfd-41e6-4c53-bb7b-37cc54c1c8e8',
        '840a8d98-56a5-4b79-b7db-019d60454b7d', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ec5032a5-77ed-478e-b167-6eaff6fd30b1', '92bb831c-040f-4686-8acd-f42d8629ba7b',
        '840a8d98-56a5-4b79-b7db-019d60454b7d', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('85b6540b-b329-4b9d-b1a1-2b5dacfe743b', 'fe8d890a-abea-44fc-92fe-ba3678289387',
        '840a8d98-56a5-4b79-b7db-019d60454b7d', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a049fb3a-b67b-47ad-bc00-b9e6795fb76a', '4de87bed-0d07-419e-9991-32658cdb0a9d',
        '840a8d98-56a5-4b79-b7db-019d60454b7d', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f2f6bf99-1d2b-4503-9229-fec3475d63ff', '7570b82c-a85d-446c-9a92-5c0bb332a8a3',
        '840a8d98-56a5-4b79-b7db-019d60454b7d', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('419f0714-22b1-43b5-a1de-ccd1b063e29a', 'b8b056d3-228d-4363-8f43-a1fed1da8695',
        '840a8d98-56a5-4b79-b7db-019d60454b7d', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('225bafc8-f3e9-400e-a43f-c2fce8b9dc9d', '5a08407a-ba00-4be3-bbc6-c50dc256d8f5',
        '840a8d98-56a5-4b79-b7db-019d60454b7d', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('64719ef0-367a-41f0-9ed1-e4b734b2e6b9', 'cac14782-c714-49d4-803d-6bdfb7fb8707',
        '840a8d98-56a5-4b79-b7db-019d60454b7d', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4e9a0f5e-c456-4c7a-9508-caf939cf6167', '3d723b44-2db7-4730-af04-6007ae7d2178',
        '840a8d98-56a5-4b79-b7db-019d60454b7d', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('62b51c72-e245-4aac-ac42-5495f971737a', '9a4f51df-c428-4a18-9055-511e0ae7b6d8',
        '840a8d98-56a5-4b79-b7db-019d60454b7d', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4dbeb55a-fed9-4639-bb1c-5b3a982dffc5', 'fd1edc81-f470-4dbe-95cf-ea6ad5e85cf2',
        '840a8d98-56a5-4b79-b7db-019d60454b7d', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('76e21bb5-3f7a-4ba0-9773-09780779595c', '6e2740d2-ef18-4564-b8c7-9f7214308f81',
        '840a8d98-56a5-4b79-b7db-019d60454b7d', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('405e458e-9571-49fe-ae9b-be5a56f3805f', '926c446b-9db8-4b9c-a406-ed40dff69e34',
        '840a8d98-56a5-4b79-b7db-019d60454b7d', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9834d60c-5754-4cfe-a9ac-619c12d5503f', 'eaa9530f-bb8c-453f-b634-c8599039e296',
        '840a8d98-56a5-4b79-b7db-019d60454b7d', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1222d3dc-c1c5-402f-be6e-c92a1025e3f0', 'bdc5f279-42bf-491c-b87a-409b3c7bff89',
        '840a8d98-56a5-4b79-b7db-019d60454b7d', 3, current_timestamp, current_timestamp);

-- politician '47f1e554-bf38-4a6e-a31d-023b57d35eaa'
insert into QuestionAnswer
values ('40a904e3-91a5-483c-9858-2f12a63fb765', 'a335650d-06b4-4e92-ba77-d5f8964ceb82',
        '47f1e554-bf38-4a6e-a31d-023b57d35eaa', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d29052b6-1b9d-41fa-9c88-48839cc96371', '46df8b49-923c-4f91-8362-5196efbb71e2',
        '47f1e554-bf38-4a6e-a31d-023b57d35eaa', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2000f4d6-cd3c-4cf6-a917-1e6171b41cc6', '5f277258-ba7b-492c-b451-673eaa5957c0',
        '47f1e554-bf38-4a6e-a31d-023b57d35eaa', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5466f183-fb4c-4c8c-9aec-f75a3e128732', '007ebae0-31cb-40fb-93ad-c2f980caee14',
        '47f1e554-bf38-4a6e-a31d-023b57d35eaa', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('cd3c4974-b062-4de7-8036-8845bbdf72f7', '8ae0f13d-e699-4617-a4ba-672e6ccc0edc',
        '47f1e554-bf38-4a6e-a31d-023b57d35eaa', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e0b0f7ec-d93a-456b-aa5b-2b687e14b19a', 'dee756b8-f4f2-474a-88f4-e7f4fea7275a',
        '47f1e554-bf38-4a6e-a31d-023b57d35eaa', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a39085c9-6f71-459f-8404-098686ef9fac', 'b8ec593e-93b8-4bab-95dd-cfff5c526d54',
        '47f1e554-bf38-4a6e-a31d-023b57d35eaa', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('eac43f2e-ad53-4add-9ca1-cb9f21fd6adc', '6f9db124-e0ae-409d-b943-5be0cbc836e5',
        '47f1e554-bf38-4a6e-a31d-023b57d35eaa', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('460114d2-58f9-43fa-960f-1be430f7be2b', '616bf16a-470d-494e-ad8b-b230e80dafb3',
        '47f1e554-bf38-4a6e-a31d-023b57d35eaa', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0de33ba3-8b9d-42e2-ae08-df5e092b38db', '6c05b44c-34de-48a4-8d3c-6015b268c456',
        '47f1e554-bf38-4a6e-a31d-023b57d35eaa', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('021f747c-6700-4cbd-94f6-a534226097db', '3ac4a61c-f510-4d59-84cc-e957dbeedd8e',
        '47f1e554-bf38-4a6e-a31d-023b57d35eaa', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('281efc94-fedb-44f7-b175-5b046925ea97', 'f4f5632d-00ae-4be2-aff8-c83da3c21519',
        '47f1e554-bf38-4a6e-a31d-023b57d35eaa', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('90a17701-e8ae-4812-abc3-df728bc4ee7b', '4917d24b-e50c-4fa9-ac12-37a0d298f41f',
        '47f1e554-bf38-4a6e-a31d-023b57d35eaa', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('394ee9e6-872b-4e27-92f5-3fc0ff6507cc', 'aee92954-3fab-449d-bc56-7ec47df873cb',
        '47f1e554-bf38-4a6e-a31d-023b57d35eaa', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7fdadd0e-619e-48ac-b329-28bcb091ead0', '19d57226-91df-4c5a-92f4-7b7d774ea8c4',
        '47f1e554-bf38-4a6e-a31d-023b57d35eaa', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c17b7e0e-f27e-4691-aa66-0631a3a44a2d', '81f2e7c9-6871-44e3-a432-b0fd050dd187',
        '47f1e554-bf38-4a6e-a31d-023b57d35eaa', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('bb964c40-8202-422d-82e6-e29a230f3113', '377a4b78-e58a-4d13-875f-817cd1693ece',
        '47f1e554-bf38-4a6e-a31d-023b57d35eaa', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('dd1d22f5-a16d-45a7-937e-2d734e8dcc3b', '54e790a7-9741-408e-9327-3377df0e9b6e',
        '47f1e554-bf38-4a6e-a31d-023b57d35eaa', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('833e224c-5484-4463-93bb-47203f309a08', '5dce5233-88d5-4b52-94de-6465ace4be98',
        '47f1e554-bf38-4a6e-a31d-023b57d35eaa', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a1809e44-cc9f-4b0e-aeec-08ee158c9003', '63aa0cb7-202d-4c54-85ae-051e8249115d',
        '47f1e554-bf38-4a6e-a31d-023b57d35eaa', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4bfd4fe5-d643-4b00-9fdf-c9586f612e43', 'fb59e236-0633-46ca-a8b5-c0d7596ee10e',
        '47f1e554-bf38-4a6e-a31d-023b57d35eaa', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1eeb650f-a7f5-4756-b1b6-d41784275764', '154147b7-aff2-4ff1-89cf-fcd6616ca6d2',
        '47f1e554-bf38-4a6e-a31d-023b57d35eaa', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('46aa2ce6-8211-431f-8d66-3a52317b4603', '6e8b2868-8094-46d3-95be-2397eb9d5237',
        '47f1e554-bf38-4a6e-a31d-023b57d35eaa', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3f8f77ab-cfc8-46d9-a667-3b0eb67cec59', '112cc8ee-b996-4b19-9192-9e82b92aae94',
        '47f1e554-bf38-4a6e-a31d-023b57d35eaa', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('49319927-caeb-4344-b929-ea4cfb5f0cf6', '60c4bebf-411f-456f-9eab-5afd98fde9c7',
        '47f1e554-bf38-4a6e-a31d-023b57d35eaa', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5e071443-ef6a-49a0-875f-90d8bc836e97', 'c393d2b5-6e50-4d7a-ad40-e112851e0711',
        '47f1e554-bf38-4a6e-a31d-023b57d35eaa', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c32b82e6-7b2f-4eed-8a17-84bdab165117', '38630605-5c28-4b5c-b042-93c43bf23ebc',
        '47f1e554-bf38-4a6e-a31d-023b57d35eaa', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7290c0ea-981b-4abb-8a15-04763cf0dda7', 'cc721727-53e6-4b1c-9d85-c97c46b5422e',
        '47f1e554-bf38-4a6e-a31d-023b57d35eaa', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('80448f61-7456-4504-a1d1-e4147d2e1f25', 'ccb39a89-f63e-4537-90cd-e3186178ae1f',
        '47f1e554-bf38-4a6e-a31d-023b57d35eaa', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9f15006d-94b2-4e2c-8d45-92106e5bfd53', 'b34bfec1-ee6c-46bc-9d52-99e90b59fe12',
        '47f1e554-bf38-4a6e-a31d-023b57d35eaa', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8d410140-c52c-4708-aef4-7effd1cb2d13', '6b7955fe-fb44-4b68-92b5-13aedcce4e76',
        '47f1e554-bf38-4a6e-a31d-023b57d35eaa', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c7e40f88-a9f1-418c-88c6-6566123f42c7', '204814c3-bf71-4b17-9727-c6d435976da6',
        '47f1e554-bf38-4a6e-a31d-023b57d35eaa', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ee9fd31e-305f-4658-a208-509c5967d7a9', 'd118e4c3-08b7-4c8e-95de-81b8715b6f1d',
        '47f1e554-bf38-4a6e-a31d-023b57d35eaa', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('94bf12e1-f435-4963-b303-7f1fa6e73c91', 'db255fa3-e68a-47b3-9651-a7cc95b33689',
        '47f1e554-bf38-4a6e-a31d-023b57d35eaa', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7f075428-41a1-4cb1-8192-48870e69db35', '42b30d8f-b8eb-46be-93ee-446f2d1d2706',
        '47f1e554-bf38-4a6e-a31d-023b57d35eaa', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5309d878-6337-4db9-99a3-f6c1b5a6b39d', '69126fb1-3e3f-4741-b6a4-91678103ccfe',
        '47f1e554-bf38-4a6e-a31d-023b57d35eaa', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3b32ab7d-c82b-4556-bf77-bac606487e53', 'a4f7f094-e1ff-4280-aa2f-33e17fb03d07',
        '47f1e554-bf38-4a6e-a31d-023b57d35eaa', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c5d9c38b-9ad6-41cf-a502-555bcd53265d', '9f8b49e7-cd35-4115-8e2a-a4bc71ceab78',
        '47f1e554-bf38-4a6e-a31d-023b57d35eaa', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7bf64847-93e7-41d1-8e6f-c380ff57ade0', 'df70cc34-0233-4ed5-89f4-5864507b42a4',
        '47f1e554-bf38-4a6e-a31d-023b57d35eaa', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e7002d1f-8945-473d-9fb0-f66dab6a9f4b', '4b4b663a-bc9c-4eb4-ba80-f86adc0951f9',
        '47f1e554-bf38-4a6e-a31d-023b57d35eaa', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d4b0233b-da8f-4ab0-a5e0-3e8770be5262', '231e38c1-fb35-4262-9a80-ea7a4d0a00ba',
        '47f1e554-bf38-4a6e-a31d-023b57d35eaa', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('cbde2565-1ec8-4229-91ee-cc7a83b281cf', '57008dea-844d-44c7-8adc-6389295384c7',
        '47f1e554-bf38-4a6e-a31d-023b57d35eaa', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b888d701-cc48-4fa4-b886-eb95729cc314', 'a214c6f9-029b-444d-82a0-8bc98a044a43',
        '47f1e554-bf38-4a6e-a31d-023b57d35eaa', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('03222448-8606-4910-8c42-6cb99245ab12', '630e876e-62d7-498b-aae9-f8326e875369',
        '47f1e554-bf38-4a6e-a31d-023b57d35eaa', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e913117f-cea7-44a7-a02d-1b080b8ce853', '1521cd72-8dc2-463a-8cef-2c8c8166493b',
        '47f1e554-bf38-4a6e-a31d-023b57d35eaa', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4e61542b-6eb5-4093-8f80-663c522337f2', '4c411dfd-41e6-4c53-bb7b-37cc54c1c8e8',
        '47f1e554-bf38-4a6e-a31d-023b57d35eaa', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9eedfaad-26da-4040-b0c9-db88f6fe7cc7', '92bb831c-040f-4686-8acd-f42d8629ba7b',
        '47f1e554-bf38-4a6e-a31d-023b57d35eaa', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ca187d72-7724-4ae4-bc8e-f6361e7b818f', 'fe8d890a-abea-44fc-92fe-ba3678289387',
        '47f1e554-bf38-4a6e-a31d-023b57d35eaa', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5d022d96-37e6-49a2-9d5a-ca3777f66b9e', '4de87bed-0d07-419e-9991-32658cdb0a9d',
        '47f1e554-bf38-4a6e-a31d-023b57d35eaa', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a0e579ef-2c0a-41f9-b99e-228ef64f5e78', '7570b82c-a85d-446c-9a92-5c0bb332a8a3',
        '47f1e554-bf38-4a6e-a31d-023b57d35eaa', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('28ae342e-e2bf-4876-ba77-3a69cf35a682', 'b8b056d3-228d-4363-8f43-a1fed1da8695',
        '47f1e554-bf38-4a6e-a31d-023b57d35eaa', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2db44e2d-490e-4a2f-90c0-ab7940445647', '5a08407a-ba00-4be3-bbc6-c50dc256d8f5',
        '47f1e554-bf38-4a6e-a31d-023b57d35eaa', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ad73625d-0f9a-4425-ad80-7eab6f740002', 'cac14782-c714-49d4-803d-6bdfb7fb8707',
        '47f1e554-bf38-4a6e-a31d-023b57d35eaa', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e206f2cd-07a4-4373-b860-08683ab5af06', '3d723b44-2db7-4730-af04-6007ae7d2178',
        '47f1e554-bf38-4a6e-a31d-023b57d35eaa', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5b7b8c29-0545-42c1-bdb9-3e962cdfe2fe', '9a4f51df-c428-4a18-9055-511e0ae7b6d8',
        '47f1e554-bf38-4a6e-a31d-023b57d35eaa', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2466fcac-a676-45ce-af93-53777e14e88c', 'fd1edc81-f470-4dbe-95cf-ea6ad5e85cf2',
        '47f1e554-bf38-4a6e-a31d-023b57d35eaa', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('fd7248fe-c449-49b8-bcf2-83585be72ba9', '6e2740d2-ef18-4564-b8c7-9f7214308f81',
        '47f1e554-bf38-4a6e-a31d-023b57d35eaa', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('024b74f3-f96e-45e8-913d-02359fabaa96', '926c446b-9db8-4b9c-a406-ed40dff69e34',
        '47f1e554-bf38-4a6e-a31d-023b57d35eaa', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1d7c8434-1020-4250-b7f7-43fa840c426f', 'eaa9530f-bb8c-453f-b634-c8599039e296',
        '47f1e554-bf38-4a6e-a31d-023b57d35eaa', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('91139b03-b63f-46cd-ba56-cb70c4852152', 'bdc5f279-42bf-491c-b87a-409b3c7bff89',
        '47f1e554-bf38-4a6e-a31d-023b57d35eaa', 1, current_timestamp, current_timestamp);

-- politician '802f66ed-fd65-4d37-8177-dd7ec6938c4b'
insert into QuestionAnswer
values ('fbf855e7-1441-4a50-9508-eb92a7cea680', 'a335650d-06b4-4e92-ba77-d5f8964ceb82',
        '802f66ed-fd65-4d37-8177-dd7ec6938c4b', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('188561c9-5647-4971-8f35-1f53b550be34', '46df8b49-923c-4f91-8362-5196efbb71e2',
        '802f66ed-fd65-4d37-8177-dd7ec6938c4b', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8a485fb0-596a-4255-869a-14661749ed36', '5f277258-ba7b-492c-b451-673eaa5957c0',
        '802f66ed-fd65-4d37-8177-dd7ec6938c4b', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6c399d74-c806-40d1-bcbb-ac1e8fb0fb54', '007ebae0-31cb-40fb-93ad-c2f980caee14',
        '802f66ed-fd65-4d37-8177-dd7ec6938c4b', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('bb812094-30a4-47eb-83d2-e65cb556f1e8', '8ae0f13d-e699-4617-a4ba-672e6ccc0edc',
        '802f66ed-fd65-4d37-8177-dd7ec6938c4b', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7bd551f6-b7bd-4a9e-9a8c-52fc50247f31', 'dee756b8-f4f2-474a-88f4-e7f4fea7275a',
        '802f66ed-fd65-4d37-8177-dd7ec6938c4b', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c429b8aa-21c4-4975-8054-2819f668092a', 'b8ec593e-93b8-4bab-95dd-cfff5c526d54',
        '802f66ed-fd65-4d37-8177-dd7ec6938c4b', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d3895550-eddf-413a-af13-5ccc05e4ed38', '6f9db124-e0ae-409d-b943-5be0cbc836e5',
        '802f66ed-fd65-4d37-8177-dd7ec6938c4b', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2b0a49ba-748b-4ff5-9652-a2de42bc1e4c', '616bf16a-470d-494e-ad8b-b230e80dafb3',
        '802f66ed-fd65-4d37-8177-dd7ec6938c4b', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b482a318-6378-4619-b821-550afff897bb', '6c05b44c-34de-48a4-8d3c-6015b268c456',
        '802f66ed-fd65-4d37-8177-dd7ec6938c4b', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('373addbc-cdcb-4a44-882c-695a255c0274', '3ac4a61c-f510-4d59-84cc-e957dbeedd8e',
        '802f66ed-fd65-4d37-8177-dd7ec6938c4b', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('130ab8da-320e-45e5-ac51-a98e46b4a158', 'f4f5632d-00ae-4be2-aff8-c83da3c21519',
        '802f66ed-fd65-4d37-8177-dd7ec6938c4b', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('83ffd2a8-d257-428e-9287-04e29f07e1d6', '4917d24b-e50c-4fa9-ac12-37a0d298f41f',
        '802f66ed-fd65-4d37-8177-dd7ec6938c4b', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('248b2840-df42-42a4-843a-69e1bdc183a9', 'aee92954-3fab-449d-bc56-7ec47df873cb',
        '802f66ed-fd65-4d37-8177-dd7ec6938c4b', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('52fc9ca1-70d1-4fc3-a171-b4712fd33afe', '19d57226-91df-4c5a-92f4-7b7d774ea8c4',
        '802f66ed-fd65-4d37-8177-dd7ec6938c4b', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b1c104c1-f2fc-42a3-818b-64ee004ef43a', '81f2e7c9-6871-44e3-a432-b0fd050dd187',
        '802f66ed-fd65-4d37-8177-dd7ec6938c4b', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('97715465-3555-40d9-b52c-be1a94104aa4', '377a4b78-e58a-4d13-875f-817cd1693ece',
        '802f66ed-fd65-4d37-8177-dd7ec6938c4b', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3aa13964-3351-44cb-a7a8-2d44e78aa13b', '54e790a7-9741-408e-9327-3377df0e9b6e',
        '802f66ed-fd65-4d37-8177-dd7ec6938c4b', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ecc676e9-d7cf-45a7-8f95-4e3e4b2598e8', '5dce5233-88d5-4b52-94de-6465ace4be98',
        '802f66ed-fd65-4d37-8177-dd7ec6938c4b', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3dcc268f-9e65-4501-94e5-180b0069f0a8', '63aa0cb7-202d-4c54-85ae-051e8249115d',
        '802f66ed-fd65-4d37-8177-dd7ec6938c4b', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9cfc6bfa-ced8-4815-a429-5a94e1395f7f', 'fb59e236-0633-46ca-a8b5-c0d7596ee10e',
        '802f66ed-fd65-4d37-8177-dd7ec6938c4b', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b6c734bd-706b-4632-bb21-66f8d13dcdc4', '154147b7-aff2-4ff1-89cf-fcd6616ca6d2',
        '802f66ed-fd65-4d37-8177-dd7ec6938c4b', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('87f0bf9c-eef8-4928-ab23-87c52925a4ba', '6e8b2868-8094-46d3-95be-2397eb9d5237',
        '802f66ed-fd65-4d37-8177-dd7ec6938c4b', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('cd3b52ce-fb98-4594-821b-dba38213b8b9', '112cc8ee-b996-4b19-9192-9e82b92aae94',
        '802f66ed-fd65-4d37-8177-dd7ec6938c4b', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b4646de2-4c5d-4dfd-bd4f-89f76ccdb623', '60c4bebf-411f-456f-9eab-5afd98fde9c7',
        '802f66ed-fd65-4d37-8177-dd7ec6938c4b', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5ef92f71-fa29-42a5-a14b-4a0a83aa1a6e', 'c393d2b5-6e50-4d7a-ad40-e112851e0711',
        '802f66ed-fd65-4d37-8177-dd7ec6938c4b', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('22f01e73-7af0-4f22-9004-f0537c77e133', '38630605-5c28-4b5c-b042-93c43bf23ebc',
        '802f66ed-fd65-4d37-8177-dd7ec6938c4b', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('77769db3-cc24-4fc1-af5e-7db9d3621c4b', 'cc721727-53e6-4b1c-9d85-c97c46b5422e',
        '802f66ed-fd65-4d37-8177-dd7ec6938c4b', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e228b388-7d2a-42b9-9625-fccacd91e8f5', 'ccb39a89-f63e-4537-90cd-e3186178ae1f',
        '802f66ed-fd65-4d37-8177-dd7ec6938c4b', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b6e489dc-b661-4791-aad0-e58bfcd6cca3', 'b34bfec1-ee6c-46bc-9d52-99e90b59fe12',
        '802f66ed-fd65-4d37-8177-dd7ec6938c4b', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('aff57a38-eba7-4261-8a0e-4401c7343076', '6b7955fe-fb44-4b68-92b5-13aedcce4e76',
        '802f66ed-fd65-4d37-8177-dd7ec6938c4b', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6863dd87-1762-4a1a-ac05-a1961e1b0114', '204814c3-bf71-4b17-9727-c6d435976da6',
        '802f66ed-fd65-4d37-8177-dd7ec6938c4b', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('14bf47fc-f71b-47ad-aaee-77338ae382e3', 'd118e4c3-08b7-4c8e-95de-81b8715b6f1d',
        '802f66ed-fd65-4d37-8177-dd7ec6938c4b', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('97958b8e-a1b2-41de-87e5-ccec6a9f1d83', 'db255fa3-e68a-47b3-9651-a7cc95b33689',
        '802f66ed-fd65-4d37-8177-dd7ec6938c4b', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ef32ff8e-2ef8-44cc-8403-3f347441daf9', '42b30d8f-b8eb-46be-93ee-446f2d1d2706',
        '802f66ed-fd65-4d37-8177-dd7ec6938c4b', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('17bb94e8-94f3-488f-80c8-7411109fce5a', '69126fb1-3e3f-4741-b6a4-91678103ccfe',
        '802f66ed-fd65-4d37-8177-dd7ec6938c4b', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('39bb3a84-e5b7-45b9-aa8a-29e5a1fed023', 'a4f7f094-e1ff-4280-aa2f-33e17fb03d07',
        '802f66ed-fd65-4d37-8177-dd7ec6938c4b', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('31156457-15b0-44f1-a128-1826e2225ae0', '9f8b49e7-cd35-4115-8e2a-a4bc71ceab78',
        '802f66ed-fd65-4d37-8177-dd7ec6938c4b', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8a775be8-e0cc-4760-b096-c5fbcf4c2806', 'df70cc34-0233-4ed5-89f4-5864507b42a4',
        '802f66ed-fd65-4d37-8177-dd7ec6938c4b', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a8f7b467-50ea-4c8c-b290-3c1f6d5b5132', '4b4b663a-bc9c-4eb4-ba80-f86adc0951f9',
        '802f66ed-fd65-4d37-8177-dd7ec6938c4b', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0cbac518-97f6-48fb-87a4-4b53dc0a1379', '231e38c1-fb35-4262-9a80-ea7a4d0a00ba',
        '802f66ed-fd65-4d37-8177-dd7ec6938c4b', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4b1ffc3c-5eca-4f8d-8a28-27459fc52c2c', '57008dea-844d-44c7-8adc-6389295384c7',
        '802f66ed-fd65-4d37-8177-dd7ec6938c4b', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1b1dbfec-61f1-49d3-a837-dbc2a260948f', 'a214c6f9-029b-444d-82a0-8bc98a044a43',
        '802f66ed-fd65-4d37-8177-dd7ec6938c4b', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9d68e050-3ac3-4d4e-bcca-978c01c9b870', '630e876e-62d7-498b-aae9-f8326e875369',
        '802f66ed-fd65-4d37-8177-dd7ec6938c4b', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('46faadc0-e90b-46ef-8144-4956ae223520', '1521cd72-8dc2-463a-8cef-2c8c8166493b',
        '802f66ed-fd65-4d37-8177-dd7ec6938c4b', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('94a61411-f306-4932-9963-2336d8be6694', '4c411dfd-41e6-4c53-bb7b-37cc54c1c8e8',
        '802f66ed-fd65-4d37-8177-dd7ec6938c4b', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5d3af21a-5054-4a40-bcd2-a0f6a4815c26', '92bb831c-040f-4686-8acd-f42d8629ba7b',
        '802f66ed-fd65-4d37-8177-dd7ec6938c4b', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('81358846-3852-4eed-843d-857e4aaa1c3f', 'fe8d890a-abea-44fc-92fe-ba3678289387',
        '802f66ed-fd65-4d37-8177-dd7ec6938c4b', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9b785bb4-f941-4ae9-bea8-759a2a28adb9', '4de87bed-0d07-419e-9991-32658cdb0a9d',
        '802f66ed-fd65-4d37-8177-dd7ec6938c4b', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ac8c9cca-ddb5-4e16-bbfa-1e66d190e51a', '7570b82c-a85d-446c-9a92-5c0bb332a8a3',
        '802f66ed-fd65-4d37-8177-dd7ec6938c4b', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f05faf13-7e40-41ec-b04c-e3de21573268', 'b8b056d3-228d-4363-8f43-a1fed1da8695',
        '802f66ed-fd65-4d37-8177-dd7ec6938c4b', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3f00a9a6-4cc2-457f-8433-8464e7bddfa0', '5a08407a-ba00-4be3-bbc6-c50dc256d8f5',
        '802f66ed-fd65-4d37-8177-dd7ec6938c4b', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('aa7bd923-d4fd-4915-9413-59174caec587', 'cac14782-c714-49d4-803d-6bdfb7fb8707',
        '802f66ed-fd65-4d37-8177-dd7ec6938c4b', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5b30914e-d28d-448a-b034-f81e35cf798a', '3d723b44-2db7-4730-af04-6007ae7d2178',
        '802f66ed-fd65-4d37-8177-dd7ec6938c4b', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c46a099c-cfe6-4f85-bb0e-6299dce35cd9', '9a4f51df-c428-4a18-9055-511e0ae7b6d8',
        '802f66ed-fd65-4d37-8177-dd7ec6938c4b', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6ca8e776-6bc3-4928-a8a2-fa60f1428d23', 'fd1edc81-f470-4dbe-95cf-ea6ad5e85cf2',
        '802f66ed-fd65-4d37-8177-dd7ec6938c4b', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a30b4f43-6c30-4356-a50b-687f2eff6e4b', '6e2740d2-ef18-4564-b8c7-9f7214308f81',
        '802f66ed-fd65-4d37-8177-dd7ec6938c4b', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('692ba1e7-bacc-450d-9663-4fcddf60f2ac', '926c446b-9db8-4b9c-a406-ed40dff69e34',
        '802f66ed-fd65-4d37-8177-dd7ec6938c4b', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2dcddabb-a5ac-438f-bde6-95777ea7c37e', 'eaa9530f-bb8c-453f-b634-c8599039e296',
        '802f66ed-fd65-4d37-8177-dd7ec6938c4b', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f1248061-1478-4863-9e31-b1d2b5fb4588', 'bdc5f279-42bf-491c-b87a-409b3c7bff89',
        '802f66ed-fd65-4d37-8177-dd7ec6938c4b', 1, current_timestamp, current_timestamp);

-- politician '9178eee0-ee5e-4f13-88d4-43eea8aa9179'
insert into QuestionAnswer
values ('2ed15f59-669e-4e06-9c1e-cbcc34394afe', 'a335650d-06b4-4e92-ba77-d5f8964ceb82',
        '9178eee0-ee5e-4f13-88d4-43eea8aa9179', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0afe394f-3a5c-4593-ac30-1bd40e1d5d5d', '46df8b49-923c-4f91-8362-5196efbb71e2',
        '9178eee0-ee5e-4f13-88d4-43eea8aa9179', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e23864f2-bee0-4829-a3fa-1b8d063f4ceb', '5f277258-ba7b-492c-b451-673eaa5957c0',
        '9178eee0-ee5e-4f13-88d4-43eea8aa9179', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('787ebe00-77fa-4f22-8a46-7b5398fbd702', '007ebae0-31cb-40fb-93ad-c2f980caee14',
        '9178eee0-ee5e-4f13-88d4-43eea8aa9179', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('fbe2ac4b-48b7-4457-b706-a5311a95716f', '8ae0f13d-e699-4617-a4ba-672e6ccc0edc',
        '9178eee0-ee5e-4f13-88d4-43eea8aa9179', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('340ec33a-d210-46dc-a67a-32b87003de83', 'dee756b8-f4f2-474a-88f4-e7f4fea7275a',
        '9178eee0-ee5e-4f13-88d4-43eea8aa9179', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9360fc6a-1964-4559-bcbb-b17c533c84de', 'b8ec593e-93b8-4bab-95dd-cfff5c526d54',
        '9178eee0-ee5e-4f13-88d4-43eea8aa9179', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5d384efd-bfba-42d7-9c26-8aedd1a44fe4', '6f9db124-e0ae-409d-b943-5be0cbc836e5',
        '9178eee0-ee5e-4f13-88d4-43eea8aa9179', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b717521d-0f9c-4922-8df3-dc9107a93267', '616bf16a-470d-494e-ad8b-b230e80dafb3',
        '9178eee0-ee5e-4f13-88d4-43eea8aa9179', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ad995ae9-ea21-4a7f-a1d1-19f8449bdec2', '6c05b44c-34de-48a4-8d3c-6015b268c456',
        '9178eee0-ee5e-4f13-88d4-43eea8aa9179', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2a09e801-8902-4bae-b5a6-6455afd80b7a', '3ac4a61c-f510-4d59-84cc-e957dbeedd8e',
        '9178eee0-ee5e-4f13-88d4-43eea8aa9179', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('056ad2ac-f86b-40d0-a0a7-bf3cea49d56a', 'f4f5632d-00ae-4be2-aff8-c83da3c21519',
        '9178eee0-ee5e-4f13-88d4-43eea8aa9179', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a5a3c642-1228-45d7-8d05-897e843c6396', '4917d24b-e50c-4fa9-ac12-37a0d298f41f',
        '9178eee0-ee5e-4f13-88d4-43eea8aa9179', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('61a7cb0f-017f-415e-9116-58d31190abd9', 'aee92954-3fab-449d-bc56-7ec47df873cb',
        '9178eee0-ee5e-4f13-88d4-43eea8aa9179', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c5f0aad9-9672-46ac-b129-0a9a4be80976', '19d57226-91df-4c5a-92f4-7b7d774ea8c4',
        '9178eee0-ee5e-4f13-88d4-43eea8aa9179', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a9deb57b-ecb3-483b-b75c-c037aec8f2c6', '81f2e7c9-6871-44e3-a432-b0fd050dd187',
        '9178eee0-ee5e-4f13-88d4-43eea8aa9179', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7068acda-5d3b-4eb2-8c25-90830a297277', '377a4b78-e58a-4d13-875f-817cd1693ece',
        '9178eee0-ee5e-4f13-88d4-43eea8aa9179', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a7e19b17-cd62-49a5-90cb-25d133189e88', '54e790a7-9741-408e-9327-3377df0e9b6e',
        '9178eee0-ee5e-4f13-88d4-43eea8aa9179', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f18da5b4-1687-4e11-81f9-ea18b7aafc29', '5dce5233-88d5-4b52-94de-6465ace4be98',
        '9178eee0-ee5e-4f13-88d4-43eea8aa9179', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ad3b58a0-1d52-4efa-952d-e68a3c6b32c2', '63aa0cb7-202d-4c54-85ae-051e8249115d',
        '9178eee0-ee5e-4f13-88d4-43eea8aa9179', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f238e60a-c88d-400a-8968-4b46da93f20f', 'fb59e236-0633-46ca-a8b5-c0d7596ee10e',
        '9178eee0-ee5e-4f13-88d4-43eea8aa9179', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('80400a28-3500-454f-b185-f1d8febec836', '154147b7-aff2-4ff1-89cf-fcd6616ca6d2',
        '9178eee0-ee5e-4f13-88d4-43eea8aa9179', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ac25df0e-c3ad-4eb5-832a-ada98b00d36a', '6e8b2868-8094-46d3-95be-2397eb9d5237',
        '9178eee0-ee5e-4f13-88d4-43eea8aa9179', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0d4ca57b-fef8-43fa-8fbf-6d7228a119a6', '112cc8ee-b996-4b19-9192-9e82b92aae94',
        '9178eee0-ee5e-4f13-88d4-43eea8aa9179', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d3695f39-0728-4b2b-9255-513a1ffad8a8', '60c4bebf-411f-456f-9eab-5afd98fde9c7',
        '9178eee0-ee5e-4f13-88d4-43eea8aa9179', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f00fc8e6-de6f-48ec-b21e-379935d390f5', 'c393d2b5-6e50-4d7a-ad40-e112851e0711',
        '9178eee0-ee5e-4f13-88d4-43eea8aa9179', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a3eaa80c-bd4c-4e53-b52c-98eaf7dd88c0', '38630605-5c28-4b5c-b042-93c43bf23ebc',
        '9178eee0-ee5e-4f13-88d4-43eea8aa9179', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a30d9bda-1091-4734-bc5c-2bc7850bb893', 'cc721727-53e6-4b1c-9d85-c97c46b5422e',
        '9178eee0-ee5e-4f13-88d4-43eea8aa9179', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7434a3a3-7c3a-4dbf-843f-e92c6983a1e7', 'ccb39a89-f63e-4537-90cd-e3186178ae1f',
        '9178eee0-ee5e-4f13-88d4-43eea8aa9179', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6f8bb19f-5551-4b1c-8101-f9045adcb154', 'b34bfec1-ee6c-46bc-9d52-99e90b59fe12',
        '9178eee0-ee5e-4f13-88d4-43eea8aa9179', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2b86220e-9c75-452c-99df-c27eeda2479e', '6b7955fe-fb44-4b68-92b5-13aedcce4e76',
        '9178eee0-ee5e-4f13-88d4-43eea8aa9179', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('11e27b82-f8ef-4967-9233-9a0fa13f204f', '204814c3-bf71-4b17-9727-c6d435976da6',
        '9178eee0-ee5e-4f13-88d4-43eea8aa9179', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2759b182-98c8-4c5e-aa80-86beb01adfa4', 'd118e4c3-08b7-4c8e-95de-81b8715b6f1d',
        '9178eee0-ee5e-4f13-88d4-43eea8aa9179', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('15374ddf-28c1-49b9-9fa2-006134381b31', 'db255fa3-e68a-47b3-9651-a7cc95b33689',
        '9178eee0-ee5e-4f13-88d4-43eea8aa9179', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('624cb17f-4368-4f41-b35a-72a1df6f2d16', '42b30d8f-b8eb-46be-93ee-446f2d1d2706',
        '9178eee0-ee5e-4f13-88d4-43eea8aa9179', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2cdcd740-864f-4aca-a4d8-77110d0ebcc5', '69126fb1-3e3f-4741-b6a4-91678103ccfe',
        '9178eee0-ee5e-4f13-88d4-43eea8aa9179', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d69f4785-9be4-4b9c-a9b9-5d7adf1d437f', 'a4f7f094-e1ff-4280-aa2f-33e17fb03d07',
        '9178eee0-ee5e-4f13-88d4-43eea8aa9179', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('51dc0655-ca51-40c0-b16f-6cfdefdd173a', '9f8b49e7-cd35-4115-8e2a-a4bc71ceab78',
        '9178eee0-ee5e-4f13-88d4-43eea8aa9179', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e11b8be9-337c-48d5-a6f4-cb36a41393ec', 'df70cc34-0233-4ed5-89f4-5864507b42a4',
        '9178eee0-ee5e-4f13-88d4-43eea8aa9179', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('311df350-aed4-448f-a31e-17e2149ef025', '4b4b663a-bc9c-4eb4-ba80-f86adc0951f9',
        '9178eee0-ee5e-4f13-88d4-43eea8aa9179', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3d0f4849-d6df-48b5-9603-6438b025d327', '231e38c1-fb35-4262-9a80-ea7a4d0a00ba',
        '9178eee0-ee5e-4f13-88d4-43eea8aa9179', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4f8b3801-bd68-419a-adc3-8d799c4da140', '57008dea-844d-44c7-8adc-6389295384c7',
        '9178eee0-ee5e-4f13-88d4-43eea8aa9179', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('97a39451-a235-4176-b1dc-18e55318fbaf', 'a214c6f9-029b-444d-82a0-8bc98a044a43',
        '9178eee0-ee5e-4f13-88d4-43eea8aa9179', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d1d96a8d-a0e7-4ad5-aa2d-99d060e65a19', '630e876e-62d7-498b-aae9-f8326e875369',
        '9178eee0-ee5e-4f13-88d4-43eea8aa9179', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('304dff24-80af-48c9-954f-4d99eccb4ab1', '1521cd72-8dc2-463a-8cef-2c8c8166493b',
        '9178eee0-ee5e-4f13-88d4-43eea8aa9179', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9e60d382-84c3-4524-9519-8905bf802c38', '4c411dfd-41e6-4c53-bb7b-37cc54c1c8e8',
        '9178eee0-ee5e-4f13-88d4-43eea8aa9179', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('717cf81f-8146-42ed-8ef7-62fe9a842cf8', '92bb831c-040f-4686-8acd-f42d8629ba7b',
        '9178eee0-ee5e-4f13-88d4-43eea8aa9179', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7442a6f0-18ce-4a70-9bf5-a67701a5d564', 'fe8d890a-abea-44fc-92fe-ba3678289387',
        '9178eee0-ee5e-4f13-88d4-43eea8aa9179', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('572b32dd-fb08-4999-974a-fc6a976436b0', '4de87bed-0d07-419e-9991-32658cdb0a9d',
        '9178eee0-ee5e-4f13-88d4-43eea8aa9179', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a223e8f9-c76d-445a-ac48-58be34bad481', '7570b82c-a85d-446c-9a92-5c0bb332a8a3',
        '9178eee0-ee5e-4f13-88d4-43eea8aa9179', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('04b97320-686c-408a-9bab-1e3af54a0d3a', 'b8b056d3-228d-4363-8f43-a1fed1da8695',
        '9178eee0-ee5e-4f13-88d4-43eea8aa9179', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('52a772fc-fa28-488c-b588-f874e10d93ea', '5a08407a-ba00-4be3-bbc6-c50dc256d8f5',
        '9178eee0-ee5e-4f13-88d4-43eea8aa9179', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f5e6fce9-fbdd-4115-a2a5-bf74bb7e903f', 'cac14782-c714-49d4-803d-6bdfb7fb8707',
        '9178eee0-ee5e-4f13-88d4-43eea8aa9179', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('51b816f4-f1ea-4062-8507-d88bc1db37f9', '3d723b44-2db7-4730-af04-6007ae7d2178',
        '9178eee0-ee5e-4f13-88d4-43eea8aa9179', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('beee2c14-8e92-4550-831e-db3088845052', '9a4f51df-c428-4a18-9055-511e0ae7b6d8',
        '9178eee0-ee5e-4f13-88d4-43eea8aa9179', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ed704f43-8326-46bc-aebf-ea7dcde0d07d', 'fd1edc81-f470-4dbe-95cf-ea6ad5e85cf2',
        '9178eee0-ee5e-4f13-88d4-43eea8aa9179', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('bd483b91-6d41-4554-847c-b3b9f9c986f2', '6e2740d2-ef18-4564-b8c7-9f7214308f81',
        '9178eee0-ee5e-4f13-88d4-43eea8aa9179', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('35fa724f-cb90-4c69-b1c3-d366a34c24c3', '926c446b-9db8-4b9c-a406-ed40dff69e34',
        '9178eee0-ee5e-4f13-88d4-43eea8aa9179', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f5915634-61d5-4e23-8df1-2894aab7a0d1', 'eaa9530f-bb8c-453f-b634-c8599039e296',
        '9178eee0-ee5e-4f13-88d4-43eea8aa9179', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('33bd581b-e1c6-4b23-add0-f526386bb3fd', 'bdc5f279-42bf-491c-b87a-409b3c7bff89',
        '9178eee0-ee5e-4f13-88d4-43eea8aa9179', 4, current_timestamp, current_timestamp);

-- politician 'ab9a8281-5fe2-4efc-b2be-12ef35d57786'
insert into QuestionAnswer
values ('0e37bbb3-9aeb-4774-8415-2e7560c3559b', 'a335650d-06b4-4e92-ba77-d5f8964ceb82',
        'ab9a8281-5fe2-4efc-b2be-12ef35d57786', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9c5349da-3829-4725-8114-36742cef5dd5', '46df8b49-923c-4f91-8362-5196efbb71e2',
        'ab9a8281-5fe2-4efc-b2be-12ef35d57786', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2ba588bf-a0c1-4230-a4cf-4ea1c2bab4b0', '5f277258-ba7b-492c-b451-673eaa5957c0',
        'ab9a8281-5fe2-4efc-b2be-12ef35d57786', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('bcf061cf-1ce5-468b-8220-b2cc42d522f0', '007ebae0-31cb-40fb-93ad-c2f980caee14',
        'ab9a8281-5fe2-4efc-b2be-12ef35d57786', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1c252b1e-8426-472e-9cc0-df482154e8f2', '8ae0f13d-e699-4617-a4ba-672e6ccc0edc',
        'ab9a8281-5fe2-4efc-b2be-12ef35d57786', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9a5c2f03-1e00-4f8e-8e85-64bc989fe91e', 'dee756b8-f4f2-474a-88f4-e7f4fea7275a',
        'ab9a8281-5fe2-4efc-b2be-12ef35d57786', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8a0291f3-162b-494f-9c73-857bcc65cf32', 'b8ec593e-93b8-4bab-95dd-cfff5c526d54',
        'ab9a8281-5fe2-4efc-b2be-12ef35d57786', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('382425ca-9d28-46c0-b7a3-90c64a69b39d', '6f9db124-e0ae-409d-b943-5be0cbc836e5',
        'ab9a8281-5fe2-4efc-b2be-12ef35d57786', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('36074cf2-eec2-4b06-9de8-547a8256c732', '616bf16a-470d-494e-ad8b-b230e80dafb3',
        'ab9a8281-5fe2-4efc-b2be-12ef35d57786', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1ab95e27-7d95-4ae7-95ed-a2e91d6aef75', '6c05b44c-34de-48a4-8d3c-6015b268c456',
        'ab9a8281-5fe2-4efc-b2be-12ef35d57786', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('dca7d2cd-ecf7-4fd3-937b-ec03a31c5717', '3ac4a61c-f510-4d59-84cc-e957dbeedd8e',
        'ab9a8281-5fe2-4efc-b2be-12ef35d57786', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2f891a6a-6740-4dfc-be5b-5362ce9ca6d3', 'f4f5632d-00ae-4be2-aff8-c83da3c21519',
        'ab9a8281-5fe2-4efc-b2be-12ef35d57786', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('771a5bd5-2f13-4578-8eeb-7338e33fc7e5', '4917d24b-e50c-4fa9-ac12-37a0d298f41f',
        'ab9a8281-5fe2-4efc-b2be-12ef35d57786', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('67f2a91d-77a3-4873-b558-620c75fa31fc', 'aee92954-3fab-449d-bc56-7ec47df873cb',
        'ab9a8281-5fe2-4efc-b2be-12ef35d57786', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6aad5505-9f71-4e6c-8f76-f48907ab8d80', '19d57226-91df-4c5a-92f4-7b7d774ea8c4',
        'ab9a8281-5fe2-4efc-b2be-12ef35d57786', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('03db0761-4d47-44a7-8cb1-add4e43af899', '81f2e7c9-6871-44e3-a432-b0fd050dd187',
        'ab9a8281-5fe2-4efc-b2be-12ef35d57786', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('640cefad-3ad9-426d-b5aa-c0766f3e64dc', '377a4b78-e58a-4d13-875f-817cd1693ece',
        'ab9a8281-5fe2-4efc-b2be-12ef35d57786', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a1a9d3d5-c4aa-4c56-8370-f8f95c66277a', '54e790a7-9741-408e-9327-3377df0e9b6e',
        'ab9a8281-5fe2-4efc-b2be-12ef35d57786', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3741ce6d-ae46-4505-8883-34be181c321c', '5dce5233-88d5-4b52-94de-6465ace4be98',
        'ab9a8281-5fe2-4efc-b2be-12ef35d57786', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4da0357c-e9d8-412e-bf70-ec70965ef8e9', '63aa0cb7-202d-4c54-85ae-051e8249115d',
        'ab9a8281-5fe2-4efc-b2be-12ef35d57786', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('beae99bc-d8aa-4213-a1cf-1032b4020dd4', 'fb59e236-0633-46ca-a8b5-c0d7596ee10e',
        'ab9a8281-5fe2-4efc-b2be-12ef35d57786', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('94d2c1d7-04ce-45d2-955d-7eddd39daf54', '154147b7-aff2-4ff1-89cf-fcd6616ca6d2',
        'ab9a8281-5fe2-4efc-b2be-12ef35d57786', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c79c96c2-3880-4fec-870d-cc093fbd922f', '6e8b2868-8094-46d3-95be-2397eb9d5237',
        'ab9a8281-5fe2-4efc-b2be-12ef35d57786', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b484e128-ae4e-472f-be08-cdb85c046216', '112cc8ee-b996-4b19-9192-9e82b92aae94',
        'ab9a8281-5fe2-4efc-b2be-12ef35d57786', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e8c3b52c-b254-42e0-867f-082672f1938e', '60c4bebf-411f-456f-9eab-5afd98fde9c7',
        'ab9a8281-5fe2-4efc-b2be-12ef35d57786', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('fa8801fe-3f27-4c94-8960-905024c8051d', 'c393d2b5-6e50-4d7a-ad40-e112851e0711',
        'ab9a8281-5fe2-4efc-b2be-12ef35d57786', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4fbcc6f2-39cf-41d0-8b68-722b377a6c5c', '38630605-5c28-4b5c-b042-93c43bf23ebc',
        'ab9a8281-5fe2-4efc-b2be-12ef35d57786', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('02264499-bd2c-4554-96d6-0fe663d8e00d', 'cc721727-53e6-4b1c-9d85-c97c46b5422e',
        'ab9a8281-5fe2-4efc-b2be-12ef35d57786', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('eb66f79b-8109-4d85-9021-9985f7493a56', 'ccb39a89-f63e-4537-90cd-e3186178ae1f',
        'ab9a8281-5fe2-4efc-b2be-12ef35d57786', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('28c959d4-3d63-4dde-8308-a417af3e72b5', 'b34bfec1-ee6c-46bc-9d52-99e90b59fe12',
        'ab9a8281-5fe2-4efc-b2be-12ef35d57786', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f11bcad4-51e9-4771-91e5-b2414f14b9b0', '6b7955fe-fb44-4b68-92b5-13aedcce4e76',
        'ab9a8281-5fe2-4efc-b2be-12ef35d57786', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9e4aa0d5-a043-4dbf-935b-7be506e76422', '204814c3-bf71-4b17-9727-c6d435976da6',
        'ab9a8281-5fe2-4efc-b2be-12ef35d57786', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9a66e970-00f5-45bd-b2dc-7819537cfc6b', 'd118e4c3-08b7-4c8e-95de-81b8715b6f1d',
        'ab9a8281-5fe2-4efc-b2be-12ef35d57786', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('59e7ca87-b009-46ef-aaeb-e43e41c3b71e', 'db255fa3-e68a-47b3-9651-a7cc95b33689',
        'ab9a8281-5fe2-4efc-b2be-12ef35d57786', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a82d27f6-2d7e-40a5-828f-2762df8c9277', '42b30d8f-b8eb-46be-93ee-446f2d1d2706',
        'ab9a8281-5fe2-4efc-b2be-12ef35d57786', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('51a9a363-287e-445f-8442-65e0822f2494', '69126fb1-3e3f-4741-b6a4-91678103ccfe',
        'ab9a8281-5fe2-4efc-b2be-12ef35d57786', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('52d6da0d-71fb-4941-9f4b-573bf18284e3', 'a4f7f094-e1ff-4280-aa2f-33e17fb03d07',
        'ab9a8281-5fe2-4efc-b2be-12ef35d57786', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9f6f04d3-dedd-4c56-b3aa-35e736d5d62b', '9f8b49e7-cd35-4115-8e2a-a4bc71ceab78',
        'ab9a8281-5fe2-4efc-b2be-12ef35d57786', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('21de63ef-6b0c-44b8-bb60-0e89714a5388', 'df70cc34-0233-4ed5-89f4-5864507b42a4',
        'ab9a8281-5fe2-4efc-b2be-12ef35d57786', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a48c6df6-f813-4808-98c3-8d062bfbf851', '4b4b663a-bc9c-4eb4-ba80-f86adc0951f9',
        'ab9a8281-5fe2-4efc-b2be-12ef35d57786', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('18be1b4f-d7f7-4009-867a-b7c3046bae55', '231e38c1-fb35-4262-9a80-ea7a4d0a00ba',
        'ab9a8281-5fe2-4efc-b2be-12ef35d57786', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('46298c06-a08b-476e-8032-a85964fc8029', '57008dea-844d-44c7-8adc-6389295384c7',
        'ab9a8281-5fe2-4efc-b2be-12ef35d57786', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4aed0578-5d4b-4eb6-8392-89874ff84a21', 'a214c6f9-029b-444d-82a0-8bc98a044a43',
        'ab9a8281-5fe2-4efc-b2be-12ef35d57786', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('fb96728c-a90f-4547-ac43-ec7d659c1903', '630e876e-62d7-498b-aae9-f8326e875369',
        'ab9a8281-5fe2-4efc-b2be-12ef35d57786', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('973a8023-9ad5-45c0-9a63-6f4f6b92c0f3', '1521cd72-8dc2-463a-8cef-2c8c8166493b',
        'ab9a8281-5fe2-4efc-b2be-12ef35d57786', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c01d4224-16b4-4627-ae90-afa883aa4351', '4c411dfd-41e6-4c53-bb7b-37cc54c1c8e8',
        'ab9a8281-5fe2-4efc-b2be-12ef35d57786', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('47928670-99b4-4ea6-97b4-373f3bf43063', '92bb831c-040f-4686-8acd-f42d8629ba7b',
        'ab9a8281-5fe2-4efc-b2be-12ef35d57786', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('efc0d3a4-82a6-42f6-8039-a999d42b487b', 'fe8d890a-abea-44fc-92fe-ba3678289387',
        'ab9a8281-5fe2-4efc-b2be-12ef35d57786', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5ff01834-24c1-4bd0-a0e0-445f2b49a89f', '4de87bed-0d07-419e-9991-32658cdb0a9d',
        'ab9a8281-5fe2-4efc-b2be-12ef35d57786', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3f4946fa-5c7a-4322-85b4-3bfad88070dd', '7570b82c-a85d-446c-9a92-5c0bb332a8a3',
        'ab9a8281-5fe2-4efc-b2be-12ef35d57786', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('772e657e-b693-454a-b0b5-d428a36c5daf', 'b8b056d3-228d-4363-8f43-a1fed1da8695',
        'ab9a8281-5fe2-4efc-b2be-12ef35d57786', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a4542a65-8ac5-4c55-b135-b22dcf9c7f79', '5a08407a-ba00-4be3-bbc6-c50dc256d8f5',
        'ab9a8281-5fe2-4efc-b2be-12ef35d57786', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5de8efa5-6f6f-4799-a9c2-436653c17141', 'cac14782-c714-49d4-803d-6bdfb7fb8707',
        'ab9a8281-5fe2-4efc-b2be-12ef35d57786', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('34c0558e-0308-41ab-afc5-5e823eb9f833', '3d723b44-2db7-4730-af04-6007ae7d2178',
        'ab9a8281-5fe2-4efc-b2be-12ef35d57786', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c16e4db3-fd7e-4085-b48c-a554d6322919', '9a4f51df-c428-4a18-9055-511e0ae7b6d8',
        'ab9a8281-5fe2-4efc-b2be-12ef35d57786', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('376d882c-a8e8-42e4-9403-bdaba38923e0', 'fd1edc81-f470-4dbe-95cf-ea6ad5e85cf2',
        'ab9a8281-5fe2-4efc-b2be-12ef35d57786', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('40c815a3-f528-464c-a237-12327f672efb', '6e2740d2-ef18-4564-b8c7-9f7214308f81',
        'ab9a8281-5fe2-4efc-b2be-12ef35d57786', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4c248932-e35d-4da9-bf3f-764a58603d5f', '926c446b-9db8-4b9c-a406-ed40dff69e34',
        'ab9a8281-5fe2-4efc-b2be-12ef35d57786', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('66c2f730-af3d-473e-920c-7e3a7f02201d', 'eaa9530f-bb8c-453f-b634-c8599039e296',
        'ab9a8281-5fe2-4efc-b2be-12ef35d57786', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3fdad0de-ff5b-4939-8221-960a18a35f7d', 'bdc5f279-42bf-491c-b87a-409b3c7bff89',
        'ab9a8281-5fe2-4efc-b2be-12ef35d57786', 4, current_timestamp, current_timestamp);

-- politician 'dc1d49a5-a3b9-4ea9-90be-489930db6823'
insert into QuestionAnswer
values ('79492c0a-cc9b-4c7e-9b5b-d27a5d6ac41f', 'a335650d-06b4-4e92-ba77-d5f8964ceb82',
        'dc1d49a5-a3b9-4ea9-90be-489930db6823', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1326d8b9-2685-4f57-9319-fb104449c24c', '46df8b49-923c-4f91-8362-5196efbb71e2',
        'dc1d49a5-a3b9-4ea9-90be-489930db6823', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('bcd041b4-7b8c-4557-97d7-3ce67f29392f', '5f277258-ba7b-492c-b451-673eaa5957c0',
        'dc1d49a5-a3b9-4ea9-90be-489930db6823', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('dba592bf-23d9-4f41-9281-4493009e373f', '007ebae0-31cb-40fb-93ad-c2f980caee14',
        'dc1d49a5-a3b9-4ea9-90be-489930db6823', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4ef07783-c856-4cf8-9063-180723a6cd6d', '8ae0f13d-e699-4617-a4ba-672e6ccc0edc',
        'dc1d49a5-a3b9-4ea9-90be-489930db6823', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('56436bde-2fea-4061-874b-f49047d6623a', 'dee756b8-f4f2-474a-88f4-e7f4fea7275a',
        'dc1d49a5-a3b9-4ea9-90be-489930db6823', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4030c58a-f1ea-4d3e-8264-3a67079eed75', 'b8ec593e-93b8-4bab-95dd-cfff5c526d54',
        'dc1d49a5-a3b9-4ea9-90be-489930db6823', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2c0d8d02-9fce-4158-9936-b685a7721673', '6f9db124-e0ae-409d-b943-5be0cbc836e5',
        'dc1d49a5-a3b9-4ea9-90be-489930db6823', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('05be5976-d3a5-4e93-a45c-6ad91c5f10ff', '616bf16a-470d-494e-ad8b-b230e80dafb3',
        'dc1d49a5-a3b9-4ea9-90be-489930db6823', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ba0274aa-4b5a-4f65-b027-b98c2234edb2', '6c05b44c-34de-48a4-8d3c-6015b268c456',
        'dc1d49a5-a3b9-4ea9-90be-489930db6823', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('646abf2e-85eb-46c1-a938-8d928be52164', '3ac4a61c-f510-4d59-84cc-e957dbeedd8e',
        'dc1d49a5-a3b9-4ea9-90be-489930db6823', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('caa33c4f-d8a9-48f3-988c-b89c5c13d7ec', 'f4f5632d-00ae-4be2-aff8-c83da3c21519',
        'dc1d49a5-a3b9-4ea9-90be-489930db6823', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2aa0695c-1b4a-4395-a3e6-fc6a2d164a95', '4917d24b-e50c-4fa9-ac12-37a0d298f41f',
        'dc1d49a5-a3b9-4ea9-90be-489930db6823', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c4861dca-b168-4755-94ab-ff77c3614651', 'aee92954-3fab-449d-bc56-7ec47df873cb',
        'dc1d49a5-a3b9-4ea9-90be-489930db6823', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('cfc554ef-71bc-4129-bd68-3f4e3a8dd93a', '19d57226-91df-4c5a-92f4-7b7d774ea8c4',
        'dc1d49a5-a3b9-4ea9-90be-489930db6823', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3e540462-6e17-4d71-af5f-54c3009412da', '81f2e7c9-6871-44e3-a432-b0fd050dd187',
        'dc1d49a5-a3b9-4ea9-90be-489930db6823', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('921f03ae-09af-4a61-98a4-0a473cc4e5f0', '377a4b78-e58a-4d13-875f-817cd1693ece',
        'dc1d49a5-a3b9-4ea9-90be-489930db6823', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('09877450-a078-4fa6-bcc5-f0eb8fc04861', '54e790a7-9741-408e-9327-3377df0e9b6e',
        'dc1d49a5-a3b9-4ea9-90be-489930db6823', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2c6f025a-0498-49dd-b75c-32c48359d232', '5dce5233-88d5-4b52-94de-6465ace4be98',
        'dc1d49a5-a3b9-4ea9-90be-489930db6823', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('abcbc3c8-b3bb-4938-8694-55fd0771521a', '63aa0cb7-202d-4c54-85ae-051e8249115d',
        'dc1d49a5-a3b9-4ea9-90be-489930db6823', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ff09bdb0-0a60-4331-90da-d12317cea69b', 'fb59e236-0633-46ca-a8b5-c0d7596ee10e',
        'dc1d49a5-a3b9-4ea9-90be-489930db6823', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d707e2b6-a99e-480d-99b8-debe769740c4', '154147b7-aff2-4ff1-89cf-fcd6616ca6d2',
        'dc1d49a5-a3b9-4ea9-90be-489930db6823', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0e36c2d5-3371-4891-9452-315a5e1ea5fb', '6e8b2868-8094-46d3-95be-2397eb9d5237',
        'dc1d49a5-a3b9-4ea9-90be-489930db6823', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d8880546-edc6-4358-bc93-05f214ec9ad8', '112cc8ee-b996-4b19-9192-9e82b92aae94',
        'dc1d49a5-a3b9-4ea9-90be-489930db6823', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d2f5165c-68dd-4b3e-b7d5-f563faeb6ad5', '60c4bebf-411f-456f-9eab-5afd98fde9c7',
        'dc1d49a5-a3b9-4ea9-90be-489930db6823', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('89dd123d-2ff1-4fb6-a2f1-2c52cc304fc5', 'c393d2b5-6e50-4d7a-ad40-e112851e0711',
        'dc1d49a5-a3b9-4ea9-90be-489930db6823', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b6baa086-18c6-4759-b428-e3f74d7f417f', '38630605-5c28-4b5c-b042-93c43bf23ebc',
        'dc1d49a5-a3b9-4ea9-90be-489930db6823', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('92227e71-706c-49bf-aee4-a7829ebc0b6d', 'cc721727-53e6-4b1c-9d85-c97c46b5422e',
        'dc1d49a5-a3b9-4ea9-90be-489930db6823', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1265f831-6da4-4a5b-aac0-74a8ffc1a33e', 'ccb39a89-f63e-4537-90cd-e3186178ae1f',
        'dc1d49a5-a3b9-4ea9-90be-489930db6823', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c1bce662-b031-4e11-b30e-9f598f516a78', 'b34bfec1-ee6c-46bc-9d52-99e90b59fe12',
        'dc1d49a5-a3b9-4ea9-90be-489930db6823', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9aaa01e4-67f6-47f2-be83-6197882bafbd', '6b7955fe-fb44-4b68-92b5-13aedcce4e76',
        'dc1d49a5-a3b9-4ea9-90be-489930db6823', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('837c3ebc-4ac2-41f0-b276-8cf7ec29fc02', '204814c3-bf71-4b17-9727-c6d435976da6',
        'dc1d49a5-a3b9-4ea9-90be-489930db6823', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e8f8a9ae-83cc-4ab9-a14d-4930dffbb705', 'd118e4c3-08b7-4c8e-95de-81b8715b6f1d',
        'dc1d49a5-a3b9-4ea9-90be-489930db6823', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('decab2fd-d673-43ff-be73-a1c3cce5943d', 'db255fa3-e68a-47b3-9651-a7cc95b33689',
        'dc1d49a5-a3b9-4ea9-90be-489930db6823', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4c5a0887-3421-4f8b-8a20-c9fed3a0774f', '42b30d8f-b8eb-46be-93ee-446f2d1d2706',
        'dc1d49a5-a3b9-4ea9-90be-489930db6823', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d83abcee-c6be-45b4-a481-7e1a5d7099fa', '69126fb1-3e3f-4741-b6a4-91678103ccfe',
        'dc1d49a5-a3b9-4ea9-90be-489930db6823', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3374bf22-1ddc-4b5c-b52f-314c85e9dae2', 'a4f7f094-e1ff-4280-aa2f-33e17fb03d07',
        'dc1d49a5-a3b9-4ea9-90be-489930db6823', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('22a0f246-aa3e-4dea-a1e7-d5a496011db4', '9f8b49e7-cd35-4115-8e2a-a4bc71ceab78',
        'dc1d49a5-a3b9-4ea9-90be-489930db6823', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('57b960c4-1a16-4d5d-92fb-c044de11262a', 'df70cc34-0233-4ed5-89f4-5864507b42a4',
        'dc1d49a5-a3b9-4ea9-90be-489930db6823', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c4502f02-4c59-4717-b430-82733af9ae29', '4b4b663a-bc9c-4eb4-ba80-f86adc0951f9',
        'dc1d49a5-a3b9-4ea9-90be-489930db6823', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('cd88781e-6a2e-407f-9d61-51887cd4d1f8', '231e38c1-fb35-4262-9a80-ea7a4d0a00ba',
        'dc1d49a5-a3b9-4ea9-90be-489930db6823', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5fef2e4d-45b6-4fed-93b8-3a28209d5229', '57008dea-844d-44c7-8adc-6389295384c7',
        'dc1d49a5-a3b9-4ea9-90be-489930db6823', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ae71e2cc-422c-4d8e-9457-f47636ac27cc', 'a214c6f9-029b-444d-82a0-8bc98a044a43',
        'dc1d49a5-a3b9-4ea9-90be-489930db6823', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('86af01bb-c166-47b1-bd3a-9acaac3d63cd', '630e876e-62d7-498b-aae9-f8326e875369',
        'dc1d49a5-a3b9-4ea9-90be-489930db6823', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('efe24369-af18-4e32-9eee-1c18cc41138d', '1521cd72-8dc2-463a-8cef-2c8c8166493b',
        'dc1d49a5-a3b9-4ea9-90be-489930db6823', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2e494ebd-275c-40db-8c65-e952a5c3ac38', '4c411dfd-41e6-4c53-bb7b-37cc54c1c8e8',
        'dc1d49a5-a3b9-4ea9-90be-489930db6823', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1b033ed6-06d1-4af1-8b40-175492e5c712', '92bb831c-040f-4686-8acd-f42d8629ba7b',
        'dc1d49a5-a3b9-4ea9-90be-489930db6823', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('354172ac-40e7-4218-ae9b-944f5aaa15a2', 'fe8d890a-abea-44fc-92fe-ba3678289387',
        'dc1d49a5-a3b9-4ea9-90be-489930db6823', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('bef625cc-80d8-4996-b901-73dbb9c1bb10', '4de87bed-0d07-419e-9991-32658cdb0a9d',
        'dc1d49a5-a3b9-4ea9-90be-489930db6823', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4f4da3c1-465c-4353-adcd-aaa0229ff973', '7570b82c-a85d-446c-9a92-5c0bb332a8a3',
        'dc1d49a5-a3b9-4ea9-90be-489930db6823', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8bf358fb-af64-4705-9e24-de222a85e38e', 'b8b056d3-228d-4363-8f43-a1fed1da8695',
        'dc1d49a5-a3b9-4ea9-90be-489930db6823', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2e1c7f64-d94d-4ed2-9b7c-ab47ae575fd7', '5a08407a-ba00-4be3-bbc6-c50dc256d8f5',
        'dc1d49a5-a3b9-4ea9-90be-489930db6823', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c10cb4ad-04a6-494a-adab-9d9dbf04c6eb', 'cac14782-c714-49d4-803d-6bdfb7fb8707',
        'dc1d49a5-a3b9-4ea9-90be-489930db6823', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('49269ff0-b3d5-4631-96e6-2bce72035c92', '3d723b44-2db7-4730-af04-6007ae7d2178',
        'dc1d49a5-a3b9-4ea9-90be-489930db6823', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c1caddd4-e958-42c5-b40b-8d6844036dcb', '9a4f51df-c428-4a18-9055-511e0ae7b6d8',
        'dc1d49a5-a3b9-4ea9-90be-489930db6823', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1d742b08-ca45-455f-b048-f1dec4c65e68', 'fd1edc81-f470-4dbe-95cf-ea6ad5e85cf2',
        'dc1d49a5-a3b9-4ea9-90be-489930db6823', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('055058a3-4add-44a8-8759-1d2303949e23', '6e2740d2-ef18-4564-b8c7-9f7214308f81',
        'dc1d49a5-a3b9-4ea9-90be-489930db6823', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('835f47b1-a349-4804-864b-97c4c8172957', '926c446b-9db8-4b9c-a406-ed40dff69e34',
        'dc1d49a5-a3b9-4ea9-90be-489930db6823', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e3c6e5a4-0b83-4d0b-848d-29a3e65b191f', 'eaa9530f-bb8c-453f-b634-c8599039e296',
        'dc1d49a5-a3b9-4ea9-90be-489930db6823', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4ba2a00f-b8e5-4031-82be-54692675cbeb', 'bdc5f279-42bf-491c-b87a-409b3c7bff89',
        'dc1d49a5-a3b9-4ea9-90be-489930db6823', 2, current_timestamp, current_timestamp);

-- politician '7a3c9972-f7da-4f5a-9de7-80dd1d28f50a'
insert into QuestionAnswer
values ('461b97a7-3bf2-4a36-b794-5bb95df495a8', 'a335650d-06b4-4e92-ba77-d5f8964ceb82',
        '7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('78da471a-2159-4f80-8da2-efcbb63896b1', '46df8b49-923c-4f91-8362-5196efbb71e2',
        '7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a14b8155-b3f2-4fd3-96d4-76b499291e4b', '5f277258-ba7b-492c-b451-673eaa5957c0',
        '7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6501e52e-9ac0-4752-bbfc-4707ee20e4e1', '007ebae0-31cb-40fb-93ad-c2f980caee14',
        '7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('87dae6f2-c5f4-4b73-944b-ca6040e9505d', '8ae0f13d-e699-4617-a4ba-672e6ccc0edc',
        '7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f68c5139-9a93-449a-a785-9c0f2d2ae62e', 'dee756b8-f4f2-474a-88f4-e7f4fea7275a',
        '7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d552f132-058a-4310-8516-7871b462d117', 'b8ec593e-93b8-4bab-95dd-cfff5c526d54',
        '7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ec648eb5-51f8-46e2-87bd-2bcb9c0fb0c5', '6f9db124-e0ae-409d-b943-5be0cbc836e5',
        '7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('48e42b92-b5f1-4380-90c1-621202a03bf6', '616bf16a-470d-494e-ad8b-b230e80dafb3',
        '7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d4b8b4c5-59ff-4c49-b1e7-1f42aa0a127e', '6c05b44c-34de-48a4-8d3c-6015b268c456',
        '7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e8706b52-3a9c-49f3-9ffd-32c753418975', '3ac4a61c-f510-4d59-84cc-e957dbeedd8e',
        '7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4a704b38-7081-4d53-acfc-51a4bb9417ae', 'f4f5632d-00ae-4be2-aff8-c83da3c21519',
        '7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1ca699e5-569a-4cc7-ad40-37e3ad59ec70', '4917d24b-e50c-4fa9-ac12-37a0d298f41f',
        '7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b8086a70-7f73-491d-85d0-e84981644ba8', 'aee92954-3fab-449d-bc56-7ec47df873cb',
        '7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8f4fdf0a-faa1-4507-b362-779e61ff8383', '19d57226-91df-4c5a-92f4-7b7d774ea8c4',
        '7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('bc26929a-93ee-451a-a94e-a864be7573d7', '81f2e7c9-6871-44e3-a432-b0fd050dd187',
        '7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1c2cd2a2-d862-4d84-9bc9-a61a033fd577', '377a4b78-e58a-4d13-875f-817cd1693ece',
        '7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3c98c5c7-47d1-4221-a924-8d9792555f1e', '54e790a7-9741-408e-9327-3377df0e9b6e',
        '7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6792e7c0-f8b0-4bda-8510-ebeeffef9390', '5dce5233-88d5-4b52-94de-6465ace4be98',
        '7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c1773dcf-6446-4722-8f54-ded16dc35baf', '63aa0cb7-202d-4c54-85ae-051e8249115d',
        '7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a0347aac-3b97-4679-b2a7-53c575ad7139', 'fb59e236-0633-46ca-a8b5-c0d7596ee10e',
        '7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d927f64f-4e8d-489e-8a97-2c9e2ef386ea', '154147b7-aff2-4ff1-89cf-fcd6616ca6d2',
        '7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('cd0ff4ab-17bf-4c53-8944-083573f0c349', '6e8b2868-8094-46d3-95be-2397eb9d5237',
        '7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b754eacc-1771-432c-935a-2e0078ec215c', '112cc8ee-b996-4b19-9192-9e82b92aae94',
        '7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8f74b871-dc3a-476f-9448-ac81c071b50e', '60c4bebf-411f-456f-9eab-5afd98fde9c7',
        '7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0975a95d-d889-4cbc-b9e5-99c1442f9f78', 'c393d2b5-6e50-4d7a-ad40-e112851e0711',
        '7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8bb29d05-6d37-44d3-b58f-8397246e113e', '38630605-5c28-4b5c-b042-93c43bf23ebc',
        '7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('42b1eb9e-9322-47a7-89f8-ba06eab78b59', 'cc721727-53e6-4b1c-9d85-c97c46b5422e',
        '7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4695be8e-521e-4c13-92e0-254a225e3750', 'ccb39a89-f63e-4537-90cd-e3186178ae1f',
        '7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ebcec3b8-3743-4788-9127-f7576f950e22', 'b34bfec1-ee6c-46bc-9d52-99e90b59fe12',
        '7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('78d9aba4-49ad-4fb9-a0fa-3fa9e03c4b2c', '6b7955fe-fb44-4b68-92b5-13aedcce4e76',
        '7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('03ff115e-e8ba-4d63-b1c2-28db92fb560e', '204814c3-bf71-4b17-9727-c6d435976da6',
        '7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2a4bb587-60d8-4bf2-adf7-6d5960e143f9', 'd118e4c3-08b7-4c8e-95de-81b8715b6f1d',
        '7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9da1284e-272a-4da5-a3d7-6202cdbcbfe7', 'db255fa3-e68a-47b3-9651-a7cc95b33689',
        '7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b85101e6-c83b-406a-b422-315e9eeb4589', '42b30d8f-b8eb-46be-93ee-446f2d1d2706',
        '7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b3d7bb2c-c8d8-48af-9fdd-205da658c3fe', '69126fb1-3e3f-4741-b6a4-91678103ccfe',
        '7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7dfc66d4-d9c0-4207-9a62-46da9b6801b1', 'a4f7f094-e1ff-4280-aa2f-33e17fb03d07',
        '7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('eacae7c0-5b47-4ce2-b36c-5ce61343e61a', '9f8b49e7-cd35-4115-8e2a-a4bc71ceab78',
        '7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c814d9d1-02c9-408b-a72b-947541332b86', 'df70cc34-0233-4ed5-89f4-5864507b42a4',
        '7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1974d4ff-dd34-4d3e-8171-320db712e728', '4b4b663a-bc9c-4eb4-ba80-f86adc0951f9',
        '7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a08d42e8-4bc3-47de-a7ab-fb1b587a91a1', '231e38c1-fb35-4262-9a80-ea7a4d0a00ba',
        '7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b2eea8a2-0390-4fff-a5fd-e01f8d729c40', '57008dea-844d-44c7-8adc-6389295384c7',
        '7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5c09f783-685a-4d9a-94cd-f0549413075e', 'a214c6f9-029b-444d-82a0-8bc98a044a43',
        '7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8128cd94-2f30-4a97-b298-68fdf2bd34f7', '630e876e-62d7-498b-aae9-f8326e875369',
        '7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('57cfc903-5070-4201-9cae-f881ac345edf', '1521cd72-8dc2-463a-8cef-2c8c8166493b',
        '7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2b68bad7-40eb-4124-a114-90d058adffb2', '4c411dfd-41e6-4c53-bb7b-37cc54c1c8e8',
        '7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e06dab25-0233-40f1-875e-a8c168e9d9e7', '92bb831c-040f-4686-8acd-f42d8629ba7b',
        '7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c01b8876-d904-41be-8349-1ab625a830ef', 'fe8d890a-abea-44fc-92fe-ba3678289387',
        '7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2c3ab3b2-d5f5-4189-8c70-49f8622167de', '4de87bed-0d07-419e-9991-32658cdb0a9d',
        '7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('bd7e2669-6abf-4e60-882b-467b76cefe2b', '7570b82c-a85d-446c-9a92-5c0bb332a8a3',
        '7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c60a1e4e-048f-4f54-a45c-509e0549d1b7', 'b8b056d3-228d-4363-8f43-a1fed1da8695',
        '7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('cc8d8c82-c1ec-40ae-b189-be2051ff163d', '5a08407a-ba00-4be3-bbc6-c50dc256d8f5',
        '7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5daef250-dd70-442d-a491-ed6feb947acc', 'cac14782-c714-49d4-803d-6bdfb7fb8707',
        '7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('25318f90-e6b0-4e99-9fb2-f5bd2c1a1590', '3d723b44-2db7-4730-af04-6007ae7d2178',
        '7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8bb56e20-58cb-4dd8-bb0d-1a78c3289bbb', '9a4f51df-c428-4a18-9055-511e0ae7b6d8',
        '7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0feea12a-8c68-47d1-a84f-eb66422fc1a3', 'fd1edc81-f470-4dbe-95cf-ea6ad5e85cf2',
        '7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c5a0d0e3-87b5-4973-ae5f-da4db620dfcf', '6e2740d2-ef18-4564-b8c7-9f7214308f81',
        '7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3c9dfdb1-a1e0-4131-a81d-b7d303ff184d', '926c446b-9db8-4b9c-a406-ed40dff69e34',
        '7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('de5810b1-f70d-4ede-ba3c-9be85c5359b6', 'eaa9530f-bb8c-453f-b634-c8599039e296',
        '7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0b0c0f3a-76eb-4907-b711-c816821a3184', 'bdc5f279-42bf-491c-b87a-409b3c7bff89',
        '7a3c9972-f7da-4f5a-9de7-80dd1d28f50a', 3, current_timestamp, current_timestamp);

-- politician '89678908-7e8d-4f9c-9c15-cbab24936a8e'
insert into QuestionAnswer
values ('4d568f7a-0179-4248-bec0-421553cc6793', 'a335650d-06b4-4e92-ba77-d5f8964ceb82',
        '89678908-7e8d-4f9c-9c15-cbab24936a8e', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('31395e64-291f-41a7-a8f2-bf82fb11ef17', '46df8b49-923c-4f91-8362-5196efbb71e2',
        '89678908-7e8d-4f9c-9c15-cbab24936a8e', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3181e2e7-c50d-44ef-85c8-1bf2e9210573', '5f277258-ba7b-492c-b451-673eaa5957c0',
        '89678908-7e8d-4f9c-9c15-cbab24936a8e', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a8c7454e-480d-446d-8b0f-e250b61568db', '007ebae0-31cb-40fb-93ad-c2f980caee14',
        '89678908-7e8d-4f9c-9c15-cbab24936a8e', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b9f81cb1-2c8a-4e6c-8dff-beeed9c25e77', '8ae0f13d-e699-4617-a4ba-672e6ccc0edc',
        '89678908-7e8d-4f9c-9c15-cbab24936a8e', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d6038dc1-5189-4a52-a73f-437de9613fad', 'dee756b8-f4f2-474a-88f4-e7f4fea7275a',
        '89678908-7e8d-4f9c-9c15-cbab24936a8e', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('842cb63c-e55e-49b4-b3bf-c554be8abff9', 'b8ec593e-93b8-4bab-95dd-cfff5c526d54',
        '89678908-7e8d-4f9c-9c15-cbab24936a8e', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7386dfc3-8540-41a4-8194-d5beb4fb96e6', '6f9db124-e0ae-409d-b943-5be0cbc836e5',
        '89678908-7e8d-4f9c-9c15-cbab24936a8e', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('51421f2c-cfa8-4b7f-8070-088478b00b44', '616bf16a-470d-494e-ad8b-b230e80dafb3',
        '89678908-7e8d-4f9c-9c15-cbab24936a8e', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5a110781-caf0-4311-be4c-aae7303ceea0', '6c05b44c-34de-48a4-8d3c-6015b268c456',
        '89678908-7e8d-4f9c-9c15-cbab24936a8e', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c645747f-02ad-4bcf-942b-042c93f65a9a', '3ac4a61c-f510-4d59-84cc-e957dbeedd8e',
        '89678908-7e8d-4f9c-9c15-cbab24936a8e', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('00d30d06-1bab-4e66-8f1b-61a583611ff4', 'f4f5632d-00ae-4be2-aff8-c83da3c21519',
        '89678908-7e8d-4f9c-9c15-cbab24936a8e', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1aef1270-d1d3-41ec-89aa-2052d2bf722b', '4917d24b-e50c-4fa9-ac12-37a0d298f41f',
        '89678908-7e8d-4f9c-9c15-cbab24936a8e', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8f4a9d98-84e6-46b0-80eb-10e5a8cafdde', 'aee92954-3fab-449d-bc56-7ec47df873cb',
        '89678908-7e8d-4f9c-9c15-cbab24936a8e', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5da98e5b-4b57-4c83-b458-9a569865067c', '19d57226-91df-4c5a-92f4-7b7d774ea8c4',
        '89678908-7e8d-4f9c-9c15-cbab24936a8e', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c5dfc30f-a8f7-42e3-91a7-d4717169ce55', '81f2e7c9-6871-44e3-a432-b0fd050dd187',
        '89678908-7e8d-4f9c-9c15-cbab24936a8e', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('93a835ed-c3af-4f33-a1fb-6b2951fc50fe', '377a4b78-e58a-4d13-875f-817cd1693ece',
        '89678908-7e8d-4f9c-9c15-cbab24936a8e', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('64d173b8-b6df-4ffa-aad9-dbcc579cd1bb', '54e790a7-9741-408e-9327-3377df0e9b6e',
        '89678908-7e8d-4f9c-9c15-cbab24936a8e', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('45e5e36c-9e14-44e2-8cf9-51c291c377bd', '5dce5233-88d5-4b52-94de-6465ace4be98',
        '89678908-7e8d-4f9c-9c15-cbab24936a8e', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('af49c28f-c168-4b7c-a405-a808972681f3', '63aa0cb7-202d-4c54-85ae-051e8249115d',
        '89678908-7e8d-4f9c-9c15-cbab24936a8e', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('80211c5a-7316-469f-aab7-b61069f1e541', 'fb59e236-0633-46ca-a8b5-c0d7596ee10e',
        '89678908-7e8d-4f9c-9c15-cbab24936a8e', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5a843777-6a3a-4aba-9938-3f3274de600e', '154147b7-aff2-4ff1-89cf-fcd6616ca6d2',
        '89678908-7e8d-4f9c-9c15-cbab24936a8e', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('14f72df8-0610-44f0-a615-dc3edf6e4278', '6e8b2868-8094-46d3-95be-2397eb9d5237',
        '89678908-7e8d-4f9c-9c15-cbab24936a8e', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c6c14d22-3650-4a30-9342-9d22578db91e', '112cc8ee-b996-4b19-9192-9e82b92aae94',
        '89678908-7e8d-4f9c-9c15-cbab24936a8e', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8dac86f9-ffaf-4274-9f49-7449fc8dd509', '60c4bebf-411f-456f-9eab-5afd98fde9c7',
        '89678908-7e8d-4f9c-9c15-cbab24936a8e', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('646c9b7f-94b5-4db6-bd96-7232a458864b', 'c393d2b5-6e50-4d7a-ad40-e112851e0711',
        '89678908-7e8d-4f9c-9c15-cbab24936a8e', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2348f2d2-daaa-4fbc-89b9-f7f51dfa0f78', '38630605-5c28-4b5c-b042-93c43bf23ebc',
        '89678908-7e8d-4f9c-9c15-cbab24936a8e', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('aabc9448-7784-4f30-97bd-4a403f73f38e', 'cc721727-53e6-4b1c-9d85-c97c46b5422e',
        '89678908-7e8d-4f9c-9c15-cbab24936a8e', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2609d5aa-cda7-4910-b0f6-743b398cab52', 'ccb39a89-f63e-4537-90cd-e3186178ae1f',
        '89678908-7e8d-4f9c-9c15-cbab24936a8e', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('22c62e13-3089-4751-8925-5c031a279f26', 'b34bfec1-ee6c-46bc-9d52-99e90b59fe12',
        '89678908-7e8d-4f9c-9c15-cbab24936a8e', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1aeccb6b-6d09-461b-9d3e-3ff261c224e3', '6b7955fe-fb44-4b68-92b5-13aedcce4e76',
        '89678908-7e8d-4f9c-9c15-cbab24936a8e', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f7b25451-5266-40d0-8d46-bd59bff65dfa', '204814c3-bf71-4b17-9727-c6d435976da6',
        '89678908-7e8d-4f9c-9c15-cbab24936a8e', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c87a90f7-0b5e-4fe0-af97-5866cdd98095', 'd118e4c3-08b7-4c8e-95de-81b8715b6f1d',
        '89678908-7e8d-4f9c-9c15-cbab24936a8e', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d15269ce-d841-46a3-b192-920a608c107e', 'db255fa3-e68a-47b3-9651-a7cc95b33689',
        '89678908-7e8d-4f9c-9c15-cbab24936a8e', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('13f911d2-f419-4a5f-8c69-1d464e140efe', '42b30d8f-b8eb-46be-93ee-446f2d1d2706',
        '89678908-7e8d-4f9c-9c15-cbab24936a8e', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e110dff1-6056-4937-818d-157c58b2921c', '69126fb1-3e3f-4741-b6a4-91678103ccfe',
        '89678908-7e8d-4f9c-9c15-cbab24936a8e', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3c7bdb07-a406-46b4-8969-f09ecc87fe3d', 'a4f7f094-e1ff-4280-aa2f-33e17fb03d07',
        '89678908-7e8d-4f9c-9c15-cbab24936a8e', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('61e658ff-8075-43d6-9c3a-f775df1b4fee', '9f8b49e7-cd35-4115-8e2a-a4bc71ceab78',
        '89678908-7e8d-4f9c-9c15-cbab24936a8e', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('384927c7-f5ad-417b-ae6b-957da2a81371', 'df70cc34-0233-4ed5-89f4-5864507b42a4',
        '89678908-7e8d-4f9c-9c15-cbab24936a8e', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b37f5dfd-2524-4330-ba9d-96ec6a598456', '4b4b663a-bc9c-4eb4-ba80-f86adc0951f9',
        '89678908-7e8d-4f9c-9c15-cbab24936a8e', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9cf95693-3ae9-4940-ab34-20eb9459702c', '231e38c1-fb35-4262-9a80-ea7a4d0a00ba',
        '89678908-7e8d-4f9c-9c15-cbab24936a8e', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d7603117-213d-49f3-9cc5-f74dd259719b', '57008dea-844d-44c7-8adc-6389295384c7',
        '89678908-7e8d-4f9c-9c15-cbab24936a8e', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e8d02118-67d8-4630-b218-72cedd58694f', 'a214c6f9-029b-444d-82a0-8bc98a044a43',
        '89678908-7e8d-4f9c-9c15-cbab24936a8e', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f5fab3e4-5ed1-4099-9ea5-199f11c844ab', '630e876e-62d7-498b-aae9-f8326e875369',
        '89678908-7e8d-4f9c-9c15-cbab24936a8e', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3672a9c1-7350-4f73-9ec8-eb9bf753ef7a', '1521cd72-8dc2-463a-8cef-2c8c8166493b',
        '89678908-7e8d-4f9c-9c15-cbab24936a8e', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f550d02e-d7c5-484d-8fe8-dfe281ee8aad', '4c411dfd-41e6-4c53-bb7b-37cc54c1c8e8',
        '89678908-7e8d-4f9c-9c15-cbab24936a8e', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('fd0aa074-1f99-4479-a9bc-f32a0af489ee', '92bb831c-040f-4686-8acd-f42d8629ba7b',
        '89678908-7e8d-4f9c-9c15-cbab24936a8e', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9dc27d27-0071-4c12-a750-13b92735199f', 'fe8d890a-abea-44fc-92fe-ba3678289387',
        '89678908-7e8d-4f9c-9c15-cbab24936a8e', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('38c09240-0e4e-4744-93e7-f81faf0a7fb7', '4de87bed-0d07-419e-9991-32658cdb0a9d',
        '89678908-7e8d-4f9c-9c15-cbab24936a8e', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('dfe48f9a-fc71-43f7-a7b6-1eeed4d60a83', '7570b82c-a85d-446c-9a92-5c0bb332a8a3',
        '89678908-7e8d-4f9c-9c15-cbab24936a8e', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f3381055-ddda-4528-91f6-7c3f33434d45', 'b8b056d3-228d-4363-8f43-a1fed1da8695',
        '89678908-7e8d-4f9c-9c15-cbab24936a8e', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('bc8c9dad-0c44-49b6-8fc8-ff4823fc0797', '5a08407a-ba00-4be3-bbc6-c50dc256d8f5',
        '89678908-7e8d-4f9c-9c15-cbab24936a8e', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f94fa3cf-ebdc-4b52-b262-8ec634f4905b', 'cac14782-c714-49d4-803d-6bdfb7fb8707',
        '89678908-7e8d-4f9c-9c15-cbab24936a8e', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('173cc710-5253-4697-98ca-3d96c068026f', '3d723b44-2db7-4730-af04-6007ae7d2178',
        '89678908-7e8d-4f9c-9c15-cbab24936a8e', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('48c15728-e7eb-4407-ae64-78ac8bcdb787', '9a4f51df-c428-4a18-9055-511e0ae7b6d8',
        '89678908-7e8d-4f9c-9c15-cbab24936a8e', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('55986c44-631e-4b1a-9911-993d318c43d4', 'fd1edc81-f470-4dbe-95cf-ea6ad5e85cf2',
        '89678908-7e8d-4f9c-9c15-cbab24936a8e', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('19e1c837-8d3c-4fa9-bf38-a50fb80cf1df', '6e2740d2-ef18-4564-b8c7-9f7214308f81',
        '89678908-7e8d-4f9c-9c15-cbab24936a8e', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c5b7ed9b-0be4-47d9-9130-751fa74a0696', '926c446b-9db8-4b9c-a406-ed40dff69e34',
        '89678908-7e8d-4f9c-9c15-cbab24936a8e', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('aca471a9-2b46-4ad1-bb5f-d1ba7964500b', 'eaa9530f-bb8c-453f-b634-c8599039e296',
        '89678908-7e8d-4f9c-9c15-cbab24936a8e', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('fd218b9a-4e2b-499c-bb27-d23846ca385d', 'bdc5f279-42bf-491c-b87a-409b3c7bff89',
        '89678908-7e8d-4f9c-9c15-cbab24936a8e', 4, current_timestamp, current_timestamp);

-- politician 'e4730035-205f-485e-bd91-23308b4b956e'
insert into QuestionAnswer
values ('b5b1f098-a1ab-4ed3-b70a-70140e929422', 'a335650d-06b4-4e92-ba77-d5f8964ceb82',
        'e4730035-205f-485e-bd91-23308b4b956e', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('61b41ebb-faa8-4359-882c-08c4f7a3e963', '46df8b49-923c-4f91-8362-5196efbb71e2',
        'e4730035-205f-485e-bd91-23308b4b956e', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d2c23350-9f8d-4fec-b556-e70ebeebd905', '5f277258-ba7b-492c-b451-673eaa5957c0',
        'e4730035-205f-485e-bd91-23308b4b956e', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('94b66ac7-d96d-4a08-8089-95599206060c', '007ebae0-31cb-40fb-93ad-c2f980caee14',
        'e4730035-205f-485e-bd91-23308b4b956e', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6cc7ac53-ce86-407c-aeba-d1a322ce38ba', '8ae0f13d-e699-4617-a4ba-672e6ccc0edc',
        'e4730035-205f-485e-bd91-23308b4b956e', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('39a5a42d-4579-470d-b603-1ad87f6d1c95', 'dee756b8-f4f2-474a-88f4-e7f4fea7275a',
        'e4730035-205f-485e-bd91-23308b4b956e', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a28a82a0-b6d3-4d52-878d-44784b6f781b', 'b8ec593e-93b8-4bab-95dd-cfff5c526d54',
        'e4730035-205f-485e-bd91-23308b4b956e', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a21a7a86-a06b-4dca-ba6b-0989e5845083', '6f9db124-e0ae-409d-b943-5be0cbc836e5',
        'e4730035-205f-485e-bd91-23308b4b956e', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ef00f281-e15f-472d-a1c2-af0cee49a679', '616bf16a-470d-494e-ad8b-b230e80dafb3',
        'e4730035-205f-485e-bd91-23308b4b956e', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7b3cf0ac-882c-4e9e-bad9-f6a2b9d3271a', '6c05b44c-34de-48a4-8d3c-6015b268c456',
        'e4730035-205f-485e-bd91-23308b4b956e', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a0b6d4b9-34ce-4f26-8afe-14ed6a99eb84', '3ac4a61c-f510-4d59-84cc-e957dbeedd8e',
        'e4730035-205f-485e-bd91-23308b4b956e', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d0e056b4-1d18-482d-ade9-2c15b06fa955', 'f4f5632d-00ae-4be2-aff8-c83da3c21519',
        'e4730035-205f-485e-bd91-23308b4b956e', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3c704f05-1077-4f04-9f06-12a2ec767dde', '4917d24b-e50c-4fa9-ac12-37a0d298f41f',
        'e4730035-205f-485e-bd91-23308b4b956e', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('84145c5b-60e0-4b6b-8d1c-58b1edb09eb1', 'aee92954-3fab-449d-bc56-7ec47df873cb',
        'e4730035-205f-485e-bd91-23308b4b956e', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ad37d39e-cf1b-4ece-911c-b3c77d9d40b4', '19d57226-91df-4c5a-92f4-7b7d774ea8c4',
        'e4730035-205f-485e-bd91-23308b4b956e', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a03d68c2-9c62-4a66-83ca-d1bd14313310', '81f2e7c9-6871-44e3-a432-b0fd050dd187',
        'e4730035-205f-485e-bd91-23308b4b956e', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0eb062f5-675f-4b67-a476-54b0dc1d2e0a', '377a4b78-e58a-4d13-875f-817cd1693ece',
        'e4730035-205f-485e-bd91-23308b4b956e', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('42bf96a1-743a-4db3-8e5d-114143b30285', '54e790a7-9741-408e-9327-3377df0e9b6e',
        'e4730035-205f-485e-bd91-23308b4b956e', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('482da581-1f15-4bc1-8e19-02d23f92821c', '5dce5233-88d5-4b52-94de-6465ace4be98',
        'e4730035-205f-485e-bd91-23308b4b956e', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('07b2ea66-16d9-4f6d-ae92-a9ed88892598', '63aa0cb7-202d-4c54-85ae-051e8249115d',
        'e4730035-205f-485e-bd91-23308b4b956e', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b449a0d1-643b-49bd-b177-d9cc990111d8', 'fb59e236-0633-46ca-a8b5-c0d7596ee10e',
        'e4730035-205f-485e-bd91-23308b4b956e', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e29f8523-f56b-4e70-9f6b-506646edbab3', '154147b7-aff2-4ff1-89cf-fcd6616ca6d2',
        'e4730035-205f-485e-bd91-23308b4b956e', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d6c2437c-2c2b-4a6b-995a-5414650db5b7', '6e8b2868-8094-46d3-95be-2397eb9d5237',
        'e4730035-205f-485e-bd91-23308b4b956e', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e2e2f469-7854-426e-911d-ad7f90fe6e25', '112cc8ee-b996-4b19-9192-9e82b92aae94',
        'e4730035-205f-485e-bd91-23308b4b956e', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b490b637-c967-4638-9206-d4def9489237', '60c4bebf-411f-456f-9eab-5afd98fde9c7',
        'e4730035-205f-485e-bd91-23308b4b956e', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('53704b94-6e5c-4504-a1ae-6a9d74442d72', 'c393d2b5-6e50-4d7a-ad40-e112851e0711',
        'e4730035-205f-485e-bd91-23308b4b956e', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('337a41b7-24ca-4495-b477-06376aa239d9', '38630605-5c28-4b5c-b042-93c43bf23ebc',
        'e4730035-205f-485e-bd91-23308b4b956e', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d9fc1d89-1dca-40cb-a21b-4e9af0e72a04', 'cc721727-53e6-4b1c-9d85-c97c46b5422e',
        'e4730035-205f-485e-bd91-23308b4b956e', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('261c9709-0af7-470b-81e5-4a76b547e0e1', 'ccb39a89-f63e-4537-90cd-e3186178ae1f',
        'e4730035-205f-485e-bd91-23308b4b956e', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7443068b-5b47-43e4-830c-4fcc59d02012', 'b34bfec1-ee6c-46bc-9d52-99e90b59fe12',
        'e4730035-205f-485e-bd91-23308b4b956e', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8da5e12f-8939-4d08-bf02-fc72c32645d4', '6b7955fe-fb44-4b68-92b5-13aedcce4e76',
        'e4730035-205f-485e-bd91-23308b4b956e', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('78ce4e9d-9541-4bb0-b423-3bc2adba57cc', '204814c3-bf71-4b17-9727-c6d435976da6',
        'e4730035-205f-485e-bd91-23308b4b956e', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e40020a7-b5ff-4033-b745-bff82fec35f8', 'd118e4c3-08b7-4c8e-95de-81b8715b6f1d',
        'e4730035-205f-485e-bd91-23308b4b956e', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1acb927a-424c-44fd-8745-f3b85b20309e', 'db255fa3-e68a-47b3-9651-a7cc95b33689',
        'e4730035-205f-485e-bd91-23308b4b956e', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('65f3dc5f-1b76-4283-8d85-9be0fb220839', '42b30d8f-b8eb-46be-93ee-446f2d1d2706',
        'e4730035-205f-485e-bd91-23308b4b956e', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c02b6e4c-c115-44dc-8fd9-9c5af31c4dfe', '69126fb1-3e3f-4741-b6a4-91678103ccfe',
        'e4730035-205f-485e-bd91-23308b4b956e', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('71e8b6fd-ebde-4299-a511-1bc9bdbfa19c', 'a4f7f094-e1ff-4280-aa2f-33e17fb03d07',
        'e4730035-205f-485e-bd91-23308b4b956e', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('75ef65b7-94b5-4ff2-a76d-97c3eb592957', '9f8b49e7-cd35-4115-8e2a-a4bc71ceab78',
        'e4730035-205f-485e-bd91-23308b4b956e', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3dbdf82f-3ff9-4952-ac59-1a11d53a7a0c', 'df70cc34-0233-4ed5-89f4-5864507b42a4',
        'e4730035-205f-485e-bd91-23308b4b956e', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('60f1ee5b-a801-47b5-b62a-4e99fb940df3', '4b4b663a-bc9c-4eb4-ba80-f86adc0951f9',
        'e4730035-205f-485e-bd91-23308b4b956e', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ed97e3d1-10b2-48e0-86c4-b920549e252a', '231e38c1-fb35-4262-9a80-ea7a4d0a00ba',
        'e4730035-205f-485e-bd91-23308b4b956e', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0192d5ac-86d9-4058-a092-3b086a1f22ca', '57008dea-844d-44c7-8adc-6389295384c7',
        'e4730035-205f-485e-bd91-23308b4b956e', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3bffbfaa-1b30-4512-9ac3-d78d565322de', 'a214c6f9-029b-444d-82a0-8bc98a044a43',
        'e4730035-205f-485e-bd91-23308b4b956e', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('298c8bde-ee73-4e0f-94d4-5353912d9b8c', '630e876e-62d7-498b-aae9-f8326e875369',
        'e4730035-205f-485e-bd91-23308b4b956e', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('021ee513-6fb1-4692-8fed-b9e8fffcabaa', '1521cd72-8dc2-463a-8cef-2c8c8166493b',
        'e4730035-205f-485e-bd91-23308b4b956e', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a22ad08d-4101-43ef-beef-e4a83126a2ed', '4c411dfd-41e6-4c53-bb7b-37cc54c1c8e8',
        'e4730035-205f-485e-bd91-23308b4b956e', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c487e976-ded2-4b6e-9c1f-55828afcee45', '92bb831c-040f-4686-8acd-f42d8629ba7b',
        'e4730035-205f-485e-bd91-23308b4b956e', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d73ec5ff-ec0a-4250-beee-056e8830f674', 'fe8d890a-abea-44fc-92fe-ba3678289387',
        'e4730035-205f-485e-bd91-23308b4b956e', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5722dee7-6305-4536-b56e-3044e073945d', '4de87bed-0d07-419e-9991-32658cdb0a9d',
        'e4730035-205f-485e-bd91-23308b4b956e', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e6ba4a5e-d749-4e98-9fa0-bd7d24952ed4', '7570b82c-a85d-446c-9a92-5c0bb332a8a3',
        'e4730035-205f-485e-bd91-23308b4b956e', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b2e6113b-331c-4b70-a929-13fd768aa00e', 'b8b056d3-228d-4363-8f43-a1fed1da8695',
        'e4730035-205f-485e-bd91-23308b4b956e', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2ec3953c-a447-4978-a947-da6f3b52cf19', '5a08407a-ba00-4be3-bbc6-c50dc256d8f5',
        'e4730035-205f-485e-bd91-23308b4b956e', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('db138cc8-ab9a-4e18-a698-1dc3a54de382', 'cac14782-c714-49d4-803d-6bdfb7fb8707',
        'e4730035-205f-485e-bd91-23308b4b956e', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9cde77d1-570f-4634-8cac-3f65be3b0e36', '3d723b44-2db7-4730-af04-6007ae7d2178',
        'e4730035-205f-485e-bd91-23308b4b956e', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3298ba9d-4ce2-4dca-a2ec-4523421a42bb', '9a4f51df-c428-4a18-9055-511e0ae7b6d8',
        'e4730035-205f-485e-bd91-23308b4b956e', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('122d6444-0311-4815-8941-dbca133d307a', 'fd1edc81-f470-4dbe-95cf-ea6ad5e85cf2',
        'e4730035-205f-485e-bd91-23308b4b956e', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('fbf5b648-2538-418e-a20b-672be3bbc285', '6e2740d2-ef18-4564-b8c7-9f7214308f81',
        'e4730035-205f-485e-bd91-23308b4b956e', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('85cef9e0-74eb-4481-a510-6bf5e09010a5', '926c446b-9db8-4b9c-a406-ed40dff69e34',
        'e4730035-205f-485e-bd91-23308b4b956e', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d8d78ff6-f4e3-4fec-aa21-b100c7e9d581', 'eaa9530f-bb8c-453f-b634-c8599039e296',
        'e4730035-205f-485e-bd91-23308b4b956e', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5c69de6c-fd4d-467a-9e94-495d9deb6eb3', 'bdc5f279-42bf-491c-b87a-409b3c7bff89',
        'e4730035-205f-485e-bd91-23308b4b956e', 1, current_timestamp, current_timestamp);

-- politician '8eabc811-d976-4e85-95f2-a91f15ebf6c2'
insert into QuestionAnswer
values ('5b47d658-1bf6-4a5b-9100-f8082fd7454c', 'a335650d-06b4-4e92-ba77-d5f8964ceb82',
        '8eabc811-d976-4e85-95f2-a91f15ebf6c2', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d13da1a9-81e2-4343-8c18-27a8a0e39bfd', '46df8b49-923c-4f91-8362-5196efbb71e2',
        '8eabc811-d976-4e85-95f2-a91f15ebf6c2', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d86dd9a2-f732-4c2f-ae94-977250ae4706', '5f277258-ba7b-492c-b451-673eaa5957c0',
        '8eabc811-d976-4e85-95f2-a91f15ebf6c2', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3b38cc29-071a-482f-ae28-9d7c26a191af', '007ebae0-31cb-40fb-93ad-c2f980caee14',
        '8eabc811-d976-4e85-95f2-a91f15ebf6c2', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8c5bd175-41f6-4519-924b-5206091982b2', '8ae0f13d-e699-4617-a4ba-672e6ccc0edc',
        '8eabc811-d976-4e85-95f2-a91f15ebf6c2', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('bb38f570-9ede-403a-9c68-89213ea14481', 'dee756b8-f4f2-474a-88f4-e7f4fea7275a',
        '8eabc811-d976-4e85-95f2-a91f15ebf6c2', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2b5d0cae-bdf4-405a-b2ef-c7d6211c6bcc', 'b8ec593e-93b8-4bab-95dd-cfff5c526d54',
        '8eabc811-d976-4e85-95f2-a91f15ebf6c2', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('eb550ae8-3ad4-4832-a2b8-0b266b984b95', '6f9db124-e0ae-409d-b943-5be0cbc836e5',
        '8eabc811-d976-4e85-95f2-a91f15ebf6c2', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a980f5ea-2906-415a-b38a-f4c639140a2b', '616bf16a-470d-494e-ad8b-b230e80dafb3',
        '8eabc811-d976-4e85-95f2-a91f15ebf6c2', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('af7ba96c-23af-4b21-81c9-c5239e17bb1c', '6c05b44c-34de-48a4-8d3c-6015b268c456',
        '8eabc811-d976-4e85-95f2-a91f15ebf6c2', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('79a78eb8-3fc0-49b8-89ff-9ed95e1323a1', '3ac4a61c-f510-4d59-84cc-e957dbeedd8e',
        '8eabc811-d976-4e85-95f2-a91f15ebf6c2', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b5e11db5-c287-49fb-a90e-f4bd4912cbd6', 'f4f5632d-00ae-4be2-aff8-c83da3c21519',
        '8eabc811-d976-4e85-95f2-a91f15ebf6c2', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3405323c-a646-463b-84de-b3806a95d022', '4917d24b-e50c-4fa9-ac12-37a0d298f41f',
        '8eabc811-d976-4e85-95f2-a91f15ebf6c2', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('99249ab1-dc7e-45a4-9bc8-0514b9ceb442', 'aee92954-3fab-449d-bc56-7ec47df873cb',
        '8eabc811-d976-4e85-95f2-a91f15ebf6c2', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6affd012-ca64-4013-b269-b31117cd639f', '19d57226-91df-4c5a-92f4-7b7d774ea8c4',
        '8eabc811-d976-4e85-95f2-a91f15ebf6c2', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('569393ce-cab9-4323-a014-3687ec4e9848', '81f2e7c9-6871-44e3-a432-b0fd050dd187',
        '8eabc811-d976-4e85-95f2-a91f15ebf6c2', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9edebdf0-cc7f-4161-a7a0-459baa746338', '377a4b78-e58a-4d13-875f-817cd1693ece',
        '8eabc811-d976-4e85-95f2-a91f15ebf6c2', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('86c7d8b8-e3c9-45cc-8c4f-fedba884dade', '54e790a7-9741-408e-9327-3377df0e9b6e',
        '8eabc811-d976-4e85-95f2-a91f15ebf6c2', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ab6aaa96-6782-452c-9e1c-fba05d744c67', '5dce5233-88d5-4b52-94de-6465ace4be98',
        '8eabc811-d976-4e85-95f2-a91f15ebf6c2', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0ee95c09-35b9-496b-bd86-73039864d34b', '63aa0cb7-202d-4c54-85ae-051e8249115d',
        '8eabc811-d976-4e85-95f2-a91f15ebf6c2', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('cc2ce2af-f205-407a-b83a-d94e4c7c8e60', 'fb59e236-0633-46ca-a8b5-c0d7596ee10e',
        '8eabc811-d976-4e85-95f2-a91f15ebf6c2', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5e10f369-77fc-484c-ac35-9bf27fd0d026', '154147b7-aff2-4ff1-89cf-fcd6616ca6d2',
        '8eabc811-d976-4e85-95f2-a91f15ebf6c2', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('84137946-076b-472a-9553-3a6996baa21f', '6e8b2868-8094-46d3-95be-2397eb9d5237',
        '8eabc811-d976-4e85-95f2-a91f15ebf6c2', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2f8960bf-a3ba-490e-9ef3-a1a0dc5a98d9', '112cc8ee-b996-4b19-9192-9e82b92aae94',
        '8eabc811-d976-4e85-95f2-a91f15ebf6c2', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a8c10bc4-2080-4fe7-a1ad-331d620007c8', '60c4bebf-411f-456f-9eab-5afd98fde9c7',
        '8eabc811-d976-4e85-95f2-a91f15ebf6c2', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('17b2a1d0-d59a-46b6-a4a5-4b610a7db01a', 'c393d2b5-6e50-4d7a-ad40-e112851e0711',
        '8eabc811-d976-4e85-95f2-a91f15ebf6c2', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f1b06a82-cc49-4512-94d2-8b14d89a68b9', '38630605-5c28-4b5c-b042-93c43bf23ebc',
        '8eabc811-d976-4e85-95f2-a91f15ebf6c2', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0dc39821-4b00-46e3-8043-03010fdd9adf', 'cc721727-53e6-4b1c-9d85-c97c46b5422e',
        '8eabc811-d976-4e85-95f2-a91f15ebf6c2', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f6692d47-fc51-426f-a504-5b99c0999bdd', 'ccb39a89-f63e-4537-90cd-e3186178ae1f',
        '8eabc811-d976-4e85-95f2-a91f15ebf6c2', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('469180cf-1273-4be9-889f-dc83fe17d615', 'b34bfec1-ee6c-46bc-9d52-99e90b59fe12',
        '8eabc811-d976-4e85-95f2-a91f15ebf6c2', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3ef383f7-a731-4e06-b313-d2bd65945753', '6b7955fe-fb44-4b68-92b5-13aedcce4e76',
        '8eabc811-d976-4e85-95f2-a91f15ebf6c2', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('71468730-0b66-4410-82c1-8061a583d563', '204814c3-bf71-4b17-9727-c6d435976da6',
        '8eabc811-d976-4e85-95f2-a91f15ebf6c2', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e52d684b-47cc-40a5-938c-623f0c657195', 'd118e4c3-08b7-4c8e-95de-81b8715b6f1d',
        '8eabc811-d976-4e85-95f2-a91f15ebf6c2', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2ee5b87e-1b99-46b3-9566-5274028f7da7', 'db255fa3-e68a-47b3-9651-a7cc95b33689',
        '8eabc811-d976-4e85-95f2-a91f15ebf6c2', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('47ea3943-6525-429e-b843-a5a82fcc2e36', '42b30d8f-b8eb-46be-93ee-446f2d1d2706',
        '8eabc811-d976-4e85-95f2-a91f15ebf6c2', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('adf47f7a-1a25-48d3-af77-ea752e818bae', '69126fb1-3e3f-4741-b6a4-91678103ccfe',
        '8eabc811-d976-4e85-95f2-a91f15ebf6c2', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8ecdcd4b-6616-4484-9059-42d5d7d08dd2', 'a4f7f094-e1ff-4280-aa2f-33e17fb03d07',
        '8eabc811-d976-4e85-95f2-a91f15ebf6c2', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('337ad22f-f99e-41bf-9448-802545d38b31', '9f8b49e7-cd35-4115-8e2a-a4bc71ceab78',
        '8eabc811-d976-4e85-95f2-a91f15ebf6c2', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('259e06c5-54b3-4f94-bd8e-b5f553fa0fb2', 'df70cc34-0233-4ed5-89f4-5864507b42a4',
        '8eabc811-d976-4e85-95f2-a91f15ebf6c2', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('933555f0-a018-43fe-9415-e7bbc4d8e57d', '4b4b663a-bc9c-4eb4-ba80-f86adc0951f9',
        '8eabc811-d976-4e85-95f2-a91f15ebf6c2', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a8b316a3-0fd5-4a1d-b4b2-6b41c25d8816', '231e38c1-fb35-4262-9a80-ea7a4d0a00ba',
        '8eabc811-d976-4e85-95f2-a91f15ebf6c2', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('dbc8d15a-8150-4538-9907-37255bea232a', '57008dea-844d-44c7-8adc-6389295384c7',
        '8eabc811-d976-4e85-95f2-a91f15ebf6c2', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d54164f7-d512-463d-ab3d-5436cd3d58e8', 'a214c6f9-029b-444d-82a0-8bc98a044a43',
        '8eabc811-d976-4e85-95f2-a91f15ebf6c2', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d1744d1a-95ad-47d4-8899-c6d491db9801', '630e876e-62d7-498b-aae9-f8326e875369',
        '8eabc811-d976-4e85-95f2-a91f15ebf6c2', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('004ce735-cac5-42a7-ac2e-605fc5190bb7', '1521cd72-8dc2-463a-8cef-2c8c8166493b',
        '8eabc811-d976-4e85-95f2-a91f15ebf6c2', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7e09ba18-f29f-4f35-9d88-99697b2a65f8', '4c411dfd-41e6-4c53-bb7b-37cc54c1c8e8',
        '8eabc811-d976-4e85-95f2-a91f15ebf6c2', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('62b3f812-73c3-45cc-b167-c1a6484a21a6', '92bb831c-040f-4686-8acd-f42d8629ba7b',
        '8eabc811-d976-4e85-95f2-a91f15ebf6c2', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('993e3b5c-dca4-4881-a70b-92eeed512ea9', 'fe8d890a-abea-44fc-92fe-ba3678289387',
        '8eabc811-d976-4e85-95f2-a91f15ebf6c2', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('93a1c317-e43b-49f3-9d0e-b17d1e9fab5b', '4de87bed-0d07-419e-9991-32658cdb0a9d',
        '8eabc811-d976-4e85-95f2-a91f15ebf6c2', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e4c5ec3f-9dc5-49f0-a510-178e9654bf85', '7570b82c-a85d-446c-9a92-5c0bb332a8a3',
        '8eabc811-d976-4e85-95f2-a91f15ebf6c2', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('97990268-b1f5-4dc6-9377-2a07a1145572', 'b8b056d3-228d-4363-8f43-a1fed1da8695',
        '8eabc811-d976-4e85-95f2-a91f15ebf6c2', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e58dd37e-a9f3-419a-a6ab-1f3e172de760', '5a08407a-ba00-4be3-bbc6-c50dc256d8f5',
        '8eabc811-d976-4e85-95f2-a91f15ebf6c2', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('10bff520-b0da-4cfa-81f8-dc306520a3ca', 'cac14782-c714-49d4-803d-6bdfb7fb8707',
        '8eabc811-d976-4e85-95f2-a91f15ebf6c2', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2a273f4c-a423-47f7-9467-e822794d4c33', '3d723b44-2db7-4730-af04-6007ae7d2178',
        '8eabc811-d976-4e85-95f2-a91f15ebf6c2', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9f12f9c3-1c84-4347-8e15-94fce05b46b6', '9a4f51df-c428-4a18-9055-511e0ae7b6d8',
        '8eabc811-d976-4e85-95f2-a91f15ebf6c2', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8e4c848d-0290-42b8-b733-249296acf2da', 'fd1edc81-f470-4dbe-95cf-ea6ad5e85cf2',
        '8eabc811-d976-4e85-95f2-a91f15ebf6c2', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('577136a9-8584-4e62-be99-db7b4a90e390', '6e2740d2-ef18-4564-b8c7-9f7214308f81',
        '8eabc811-d976-4e85-95f2-a91f15ebf6c2', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a00d7c23-b825-441c-8265-ec8d690d0935', '926c446b-9db8-4b9c-a406-ed40dff69e34',
        '8eabc811-d976-4e85-95f2-a91f15ebf6c2', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('65882994-6287-4562-a007-c2bc6ced0698', 'eaa9530f-bb8c-453f-b634-c8599039e296',
        '8eabc811-d976-4e85-95f2-a91f15ebf6c2', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4f637b04-cae5-43fd-a741-7155c8b39430', 'bdc5f279-42bf-491c-b87a-409b3c7bff89',
        '8eabc811-d976-4e85-95f2-a91f15ebf6c2', 4, current_timestamp, current_timestamp);

-- politician '667a75d5-f922-40a7-b0de-4b3b3b6cce08'
insert into QuestionAnswer
values ('f7fc4a62-af6f-4aa1-806b-9e739dcb78e9', 'a335650d-06b4-4e92-ba77-d5f8964ceb82',
        '667a75d5-f922-40a7-b0de-4b3b3b6cce08', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('333083c0-3245-480b-903a-3b399e424820', '46df8b49-923c-4f91-8362-5196efbb71e2',
        '667a75d5-f922-40a7-b0de-4b3b3b6cce08', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d230601e-e85c-4542-9dfb-06436f01ed0c', '5f277258-ba7b-492c-b451-673eaa5957c0',
        '667a75d5-f922-40a7-b0de-4b3b3b6cce08', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7b5ad48e-fa04-47f0-b8da-ffecebd41464', '007ebae0-31cb-40fb-93ad-c2f980caee14',
        '667a75d5-f922-40a7-b0de-4b3b3b6cce08', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('70ee7425-368b-41d1-8ae6-b176164ff105', '8ae0f13d-e699-4617-a4ba-672e6ccc0edc',
        '667a75d5-f922-40a7-b0de-4b3b3b6cce08', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('fafb46cd-fa76-4caa-a8f8-504098e1c9e8', 'dee756b8-f4f2-474a-88f4-e7f4fea7275a',
        '667a75d5-f922-40a7-b0de-4b3b3b6cce08', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('703f083f-623a-4d76-b971-c717c915e1d5', 'b8ec593e-93b8-4bab-95dd-cfff5c526d54',
        '667a75d5-f922-40a7-b0de-4b3b3b6cce08', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('abb15bcc-bafd-4513-aa1e-923f9c8e8984', '6f9db124-e0ae-409d-b943-5be0cbc836e5',
        '667a75d5-f922-40a7-b0de-4b3b3b6cce08', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('72f3416f-a787-478d-a17d-437727b97f3b', '616bf16a-470d-494e-ad8b-b230e80dafb3',
        '667a75d5-f922-40a7-b0de-4b3b3b6cce08', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('560348bc-71c6-44a5-80d8-7eccfdf5888f', '6c05b44c-34de-48a4-8d3c-6015b268c456',
        '667a75d5-f922-40a7-b0de-4b3b3b6cce08', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('43c85b9c-ac8a-45e2-bee7-7437d4090176', '3ac4a61c-f510-4d59-84cc-e957dbeedd8e',
        '667a75d5-f922-40a7-b0de-4b3b3b6cce08', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c28fcae8-6025-4f90-a651-83efa821bd5c', 'f4f5632d-00ae-4be2-aff8-c83da3c21519',
        '667a75d5-f922-40a7-b0de-4b3b3b6cce08', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('bdc604cd-d2ff-4e14-b2dc-9fa3963cf88c', '4917d24b-e50c-4fa9-ac12-37a0d298f41f',
        '667a75d5-f922-40a7-b0de-4b3b3b6cce08', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5b5aa62c-ae15-4735-af4b-97c67bf13357', 'aee92954-3fab-449d-bc56-7ec47df873cb',
        '667a75d5-f922-40a7-b0de-4b3b3b6cce08', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2353dbcb-adcb-4416-a917-3160dfa340a7', '19d57226-91df-4c5a-92f4-7b7d774ea8c4',
        '667a75d5-f922-40a7-b0de-4b3b3b6cce08', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f8e72ef3-33a0-4b52-9657-a6aaf8892b2f', '81f2e7c9-6871-44e3-a432-b0fd050dd187',
        '667a75d5-f922-40a7-b0de-4b3b3b6cce08', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a8ec3e43-f674-4457-a93d-e4d4f84f8fb7', '377a4b78-e58a-4d13-875f-817cd1693ece',
        '667a75d5-f922-40a7-b0de-4b3b3b6cce08', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('18793aba-5ee1-487f-b738-b2d2f29701ac', '54e790a7-9741-408e-9327-3377df0e9b6e',
        '667a75d5-f922-40a7-b0de-4b3b3b6cce08', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('37afb9ef-44fc-47d9-97e5-fb3401fbcd14', '5dce5233-88d5-4b52-94de-6465ace4be98',
        '667a75d5-f922-40a7-b0de-4b3b3b6cce08', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9d2bb20b-296e-4734-8268-084315563a5f', '63aa0cb7-202d-4c54-85ae-051e8249115d',
        '667a75d5-f922-40a7-b0de-4b3b3b6cce08', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c64ad871-d550-4587-a357-ba08c0214fa6', 'fb59e236-0633-46ca-a8b5-c0d7596ee10e',
        '667a75d5-f922-40a7-b0de-4b3b3b6cce08', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3e67885c-cbfd-457c-bac1-8a647f1e6ebd', '154147b7-aff2-4ff1-89cf-fcd6616ca6d2',
        '667a75d5-f922-40a7-b0de-4b3b3b6cce08', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('067300e8-8baf-46ba-b906-7fe16281c62d', '6e8b2868-8094-46d3-95be-2397eb9d5237',
        '667a75d5-f922-40a7-b0de-4b3b3b6cce08', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ba348f91-d216-474c-96b5-ed3574dd2675', '112cc8ee-b996-4b19-9192-9e82b92aae94',
        '667a75d5-f922-40a7-b0de-4b3b3b6cce08', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2a4c438b-842a-46f4-b1ad-877074131b95', '60c4bebf-411f-456f-9eab-5afd98fde9c7',
        '667a75d5-f922-40a7-b0de-4b3b3b6cce08', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a8e4b67f-9222-49a8-8fbc-90056bb90857', 'c393d2b5-6e50-4d7a-ad40-e112851e0711',
        '667a75d5-f922-40a7-b0de-4b3b3b6cce08', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d72dfb58-4ff0-4486-930d-562b14b9c154', '38630605-5c28-4b5c-b042-93c43bf23ebc',
        '667a75d5-f922-40a7-b0de-4b3b3b6cce08', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9bfcc40f-aebc-4474-976a-5b49225dd13f', 'cc721727-53e6-4b1c-9d85-c97c46b5422e',
        '667a75d5-f922-40a7-b0de-4b3b3b6cce08', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2505b640-58b6-4aba-b898-e2541f20f913', 'ccb39a89-f63e-4537-90cd-e3186178ae1f',
        '667a75d5-f922-40a7-b0de-4b3b3b6cce08', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('779e3106-ad7d-47f3-8f00-2608d56d8ee3', 'b34bfec1-ee6c-46bc-9d52-99e90b59fe12',
        '667a75d5-f922-40a7-b0de-4b3b3b6cce08', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3bba9b9a-3ebe-4ba8-b466-4fe8046d0dfd', '6b7955fe-fb44-4b68-92b5-13aedcce4e76',
        '667a75d5-f922-40a7-b0de-4b3b3b6cce08', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('61bc6e52-e535-40bd-b922-af34562ec83b', '204814c3-bf71-4b17-9727-c6d435976da6',
        '667a75d5-f922-40a7-b0de-4b3b3b6cce08', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c2d3dbf1-7f03-4206-9122-644a2c5a6c3e', 'd118e4c3-08b7-4c8e-95de-81b8715b6f1d',
        '667a75d5-f922-40a7-b0de-4b3b3b6cce08', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d1740465-47a6-4ef4-8e89-8b9ffe66c667', 'db255fa3-e68a-47b3-9651-a7cc95b33689',
        '667a75d5-f922-40a7-b0de-4b3b3b6cce08', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('aa0cc862-4b31-4f60-91af-2fc2df17ee1b', '42b30d8f-b8eb-46be-93ee-446f2d1d2706',
        '667a75d5-f922-40a7-b0de-4b3b3b6cce08', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('08b7f435-5f84-4291-ab22-717b6ecf6615', '69126fb1-3e3f-4741-b6a4-91678103ccfe',
        '667a75d5-f922-40a7-b0de-4b3b3b6cce08', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a429d1d7-2d3f-403c-9ae0-fc44ebde5717', 'a4f7f094-e1ff-4280-aa2f-33e17fb03d07',
        '667a75d5-f922-40a7-b0de-4b3b3b6cce08', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('74c780f9-e281-4d12-9e0c-e38474fcb4e0', '9f8b49e7-cd35-4115-8e2a-a4bc71ceab78',
        '667a75d5-f922-40a7-b0de-4b3b3b6cce08', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4cbc1a10-37d8-4423-99cb-199aa8022d13', 'df70cc34-0233-4ed5-89f4-5864507b42a4',
        '667a75d5-f922-40a7-b0de-4b3b3b6cce08', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7c5d3fa3-9553-480f-91af-25407598254f', '4b4b663a-bc9c-4eb4-ba80-f86adc0951f9',
        '667a75d5-f922-40a7-b0de-4b3b3b6cce08', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('35413191-89dc-42fd-83f5-1ffb0bcfd31d', '231e38c1-fb35-4262-9a80-ea7a4d0a00ba',
        '667a75d5-f922-40a7-b0de-4b3b3b6cce08', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8a7799db-bb83-4306-9174-05a79278311d', '57008dea-844d-44c7-8adc-6389295384c7',
        '667a75d5-f922-40a7-b0de-4b3b3b6cce08', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('51ea6e91-a25e-4533-b214-0b48543faeea', 'a214c6f9-029b-444d-82a0-8bc98a044a43',
        '667a75d5-f922-40a7-b0de-4b3b3b6cce08', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a8367b87-3cb8-4d69-ba6f-70be7bc563e7', '630e876e-62d7-498b-aae9-f8326e875369',
        '667a75d5-f922-40a7-b0de-4b3b3b6cce08', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('647f536e-4dd6-4a90-8517-7e627882ca2f', '1521cd72-8dc2-463a-8cef-2c8c8166493b',
        '667a75d5-f922-40a7-b0de-4b3b3b6cce08', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b2925c7d-fc23-4602-97cb-7e80005dfe1a', '4c411dfd-41e6-4c53-bb7b-37cc54c1c8e8',
        '667a75d5-f922-40a7-b0de-4b3b3b6cce08', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('185cb59e-1f32-4f6d-82b0-c263c7eb7586', '92bb831c-040f-4686-8acd-f42d8629ba7b',
        '667a75d5-f922-40a7-b0de-4b3b3b6cce08', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('53dd7cf2-2e10-43f3-9544-f83ee726183e', 'fe8d890a-abea-44fc-92fe-ba3678289387',
        '667a75d5-f922-40a7-b0de-4b3b3b6cce08', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('fca8c01e-72cf-4440-b379-cc4986610834', '4de87bed-0d07-419e-9991-32658cdb0a9d',
        '667a75d5-f922-40a7-b0de-4b3b3b6cce08', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('492067b3-a229-47e0-a200-ae951947ffe4', '7570b82c-a85d-446c-9a92-5c0bb332a8a3',
        '667a75d5-f922-40a7-b0de-4b3b3b6cce08', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5b399642-c77b-4697-8e1e-4f356e09ba52', 'b8b056d3-228d-4363-8f43-a1fed1da8695',
        '667a75d5-f922-40a7-b0de-4b3b3b6cce08', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('249b19f7-3069-4d4f-91ab-54e25b308bf8', '5a08407a-ba00-4be3-bbc6-c50dc256d8f5',
        '667a75d5-f922-40a7-b0de-4b3b3b6cce08', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('02a191f0-0c8f-4f4c-bec9-5edc0b8b4772', 'cac14782-c714-49d4-803d-6bdfb7fb8707',
        '667a75d5-f922-40a7-b0de-4b3b3b6cce08', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3dd467bf-e019-4bb0-9bc1-affa82a4442b', '3d723b44-2db7-4730-af04-6007ae7d2178',
        '667a75d5-f922-40a7-b0de-4b3b3b6cce08', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f1731188-47b1-41b5-b833-d90cbdc35d30', '9a4f51df-c428-4a18-9055-511e0ae7b6d8',
        '667a75d5-f922-40a7-b0de-4b3b3b6cce08', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c2373212-1e3d-492d-a665-5cad3f7ad4b0', 'fd1edc81-f470-4dbe-95cf-ea6ad5e85cf2',
        '667a75d5-f922-40a7-b0de-4b3b3b6cce08', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ce2f2e79-4bb2-490a-a368-3a2fd083e3fa', '6e2740d2-ef18-4564-b8c7-9f7214308f81',
        '667a75d5-f922-40a7-b0de-4b3b3b6cce08', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9b67461d-5d57-42b8-8e7f-a8d68eea1771', '926c446b-9db8-4b9c-a406-ed40dff69e34',
        '667a75d5-f922-40a7-b0de-4b3b3b6cce08', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('60e54524-8d36-4ed0-81bf-232c5ff07250', 'eaa9530f-bb8c-453f-b634-c8599039e296',
        '667a75d5-f922-40a7-b0de-4b3b3b6cce08', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7b67b97a-623e-4d81-92a2-8e55d5ef6391', 'bdc5f279-42bf-491c-b87a-409b3c7bff89',
        '667a75d5-f922-40a7-b0de-4b3b3b6cce08', 4, current_timestamp, current_timestamp);

-- politician '6ecd0c78-d06f-4e33-93b6-24382cbc93e5'
insert into QuestionAnswer
values ('ba235e00-40cb-4bdf-8200-cfe0657c8e3e', 'a335650d-06b4-4e92-ba77-d5f8964ceb82',
        '6ecd0c78-d06f-4e33-93b6-24382cbc93e5', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f8c005a8-56f7-4dfa-8c83-2ed759452488', '46df8b49-923c-4f91-8362-5196efbb71e2',
        '6ecd0c78-d06f-4e33-93b6-24382cbc93e5', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('285a57d5-2df0-48d9-97ba-75ac4e573bf4', '5f277258-ba7b-492c-b451-673eaa5957c0',
        '6ecd0c78-d06f-4e33-93b6-24382cbc93e5', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c39f4174-98d0-48dc-8507-3fe537cbb6b7', '007ebae0-31cb-40fb-93ad-c2f980caee14',
        '6ecd0c78-d06f-4e33-93b6-24382cbc93e5', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7a6b3ee7-e6bc-489e-b33a-8b113b585d57', '8ae0f13d-e699-4617-a4ba-672e6ccc0edc',
        '6ecd0c78-d06f-4e33-93b6-24382cbc93e5', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('afb986b4-31a5-4537-b3f5-af191bd64a99', 'dee756b8-f4f2-474a-88f4-e7f4fea7275a',
        '6ecd0c78-d06f-4e33-93b6-24382cbc93e5', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1c48dcaa-344c-4a61-82a9-ec14107b5c86', 'b8ec593e-93b8-4bab-95dd-cfff5c526d54',
        '6ecd0c78-d06f-4e33-93b6-24382cbc93e5', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6627d474-dd2a-4b37-85a4-795dc521c9c4', '6f9db124-e0ae-409d-b943-5be0cbc836e5',
        '6ecd0c78-d06f-4e33-93b6-24382cbc93e5', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('88872dd7-5da6-4d07-8faa-28c561394945', '616bf16a-470d-494e-ad8b-b230e80dafb3',
        '6ecd0c78-d06f-4e33-93b6-24382cbc93e5', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('01a8b452-a6d7-4074-b22a-68bc9f90b261', '6c05b44c-34de-48a4-8d3c-6015b268c456',
        '6ecd0c78-d06f-4e33-93b6-24382cbc93e5', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e7287f3c-3518-47c3-b41b-0c95738b30b9', '3ac4a61c-f510-4d59-84cc-e957dbeedd8e',
        '6ecd0c78-d06f-4e33-93b6-24382cbc93e5', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e4086ee9-9590-4a82-bc86-0204640cde4b', 'f4f5632d-00ae-4be2-aff8-c83da3c21519',
        '6ecd0c78-d06f-4e33-93b6-24382cbc93e5', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c777491d-2f6e-46c4-bcc7-b9e18280e789', '4917d24b-e50c-4fa9-ac12-37a0d298f41f',
        '6ecd0c78-d06f-4e33-93b6-24382cbc93e5', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('899bc5cb-2bb9-4fe0-a119-765366ab9365', 'aee92954-3fab-449d-bc56-7ec47df873cb',
        '6ecd0c78-d06f-4e33-93b6-24382cbc93e5', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e27f1169-2c1a-4808-8234-b972a38dfd38', '19d57226-91df-4c5a-92f4-7b7d774ea8c4',
        '6ecd0c78-d06f-4e33-93b6-24382cbc93e5', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('25239e70-f254-4691-a728-d4f342b99eb2', '81f2e7c9-6871-44e3-a432-b0fd050dd187',
        '6ecd0c78-d06f-4e33-93b6-24382cbc93e5', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('61cdd837-ae91-401f-8bc0-e8aa76c80e77', '377a4b78-e58a-4d13-875f-817cd1693ece',
        '6ecd0c78-d06f-4e33-93b6-24382cbc93e5', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ad327fb1-9a1e-4fde-b4f4-ce04c2db097b', '54e790a7-9741-408e-9327-3377df0e9b6e',
        '6ecd0c78-d06f-4e33-93b6-24382cbc93e5', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f388ebe0-eaed-4bd6-8a66-e32f3dd130ed', '5dce5233-88d5-4b52-94de-6465ace4be98',
        '6ecd0c78-d06f-4e33-93b6-24382cbc93e5', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d44d836c-c5b7-4778-8c6d-661883def3ea', '63aa0cb7-202d-4c54-85ae-051e8249115d',
        '6ecd0c78-d06f-4e33-93b6-24382cbc93e5', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7d07fdb9-5534-4e65-a257-9b50364e6672', 'fb59e236-0633-46ca-a8b5-c0d7596ee10e',
        '6ecd0c78-d06f-4e33-93b6-24382cbc93e5', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('372d7285-85a9-48e4-934d-04c29016ba5a', '154147b7-aff2-4ff1-89cf-fcd6616ca6d2',
        '6ecd0c78-d06f-4e33-93b6-24382cbc93e5', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d65e0185-ae6b-4c3e-a4e9-f73cdb864985', '6e8b2868-8094-46d3-95be-2397eb9d5237',
        '6ecd0c78-d06f-4e33-93b6-24382cbc93e5', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f9615aa3-b126-4dbf-8638-29de4b4e9edf', '112cc8ee-b996-4b19-9192-9e82b92aae94',
        '6ecd0c78-d06f-4e33-93b6-24382cbc93e5', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3c68aaca-64d5-4904-b35e-c43c63db9d3b', '60c4bebf-411f-456f-9eab-5afd98fde9c7',
        '6ecd0c78-d06f-4e33-93b6-24382cbc93e5', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('136a6580-de4b-451e-851d-67bb4b56c791', 'c393d2b5-6e50-4d7a-ad40-e112851e0711',
        '6ecd0c78-d06f-4e33-93b6-24382cbc93e5', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f07f324d-a4d0-4965-8aeb-84a5bc43ce20', '38630605-5c28-4b5c-b042-93c43bf23ebc',
        '6ecd0c78-d06f-4e33-93b6-24382cbc93e5', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9832b850-dc53-4953-8dd2-475dbdd06800', 'cc721727-53e6-4b1c-9d85-c97c46b5422e',
        '6ecd0c78-d06f-4e33-93b6-24382cbc93e5', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a91b63e6-b8b0-4fe3-874f-16addc41c5e6', 'ccb39a89-f63e-4537-90cd-e3186178ae1f',
        '6ecd0c78-d06f-4e33-93b6-24382cbc93e5', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2d3e05c3-b5df-4d4d-9135-ef05a51f2e1c', 'b34bfec1-ee6c-46bc-9d52-99e90b59fe12',
        '6ecd0c78-d06f-4e33-93b6-24382cbc93e5', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('bd6f98b4-f3c3-41d1-afbe-14d960e9abc5', '6b7955fe-fb44-4b68-92b5-13aedcce4e76',
        '6ecd0c78-d06f-4e33-93b6-24382cbc93e5', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f0d61188-b716-4205-a081-8415d8412649', '204814c3-bf71-4b17-9727-c6d435976da6',
        '6ecd0c78-d06f-4e33-93b6-24382cbc93e5', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('99ea4196-854f-42df-b6fe-81b8f5c96a24', 'd118e4c3-08b7-4c8e-95de-81b8715b6f1d',
        '6ecd0c78-d06f-4e33-93b6-24382cbc93e5', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0dffe076-3233-4f8e-ae76-7538c5a135fc', 'db255fa3-e68a-47b3-9651-a7cc95b33689',
        '6ecd0c78-d06f-4e33-93b6-24382cbc93e5', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d175d5ad-ce29-48a0-b0e6-464fd7847879', '42b30d8f-b8eb-46be-93ee-446f2d1d2706',
        '6ecd0c78-d06f-4e33-93b6-24382cbc93e5', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f9885754-fbd1-4c6c-b87c-2718dcf8d8ed', '69126fb1-3e3f-4741-b6a4-91678103ccfe',
        '6ecd0c78-d06f-4e33-93b6-24382cbc93e5', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('026ac4ba-66e2-471b-9506-fd97840874d0', 'a4f7f094-e1ff-4280-aa2f-33e17fb03d07',
        '6ecd0c78-d06f-4e33-93b6-24382cbc93e5', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('52e208f9-41bc-423b-9ff6-d3b8ffc0e2ab', '9f8b49e7-cd35-4115-8e2a-a4bc71ceab78',
        '6ecd0c78-d06f-4e33-93b6-24382cbc93e5', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b60166c9-4ce3-4678-9cf7-9262de6a2100', 'df70cc34-0233-4ed5-89f4-5864507b42a4',
        '6ecd0c78-d06f-4e33-93b6-24382cbc93e5', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('cf0670ac-7f3b-49eb-9303-31460efd4039', '4b4b663a-bc9c-4eb4-ba80-f86adc0951f9',
        '6ecd0c78-d06f-4e33-93b6-24382cbc93e5', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5bbe49f9-28ab-45a5-9e28-04a985723e9d', '231e38c1-fb35-4262-9a80-ea7a4d0a00ba',
        '6ecd0c78-d06f-4e33-93b6-24382cbc93e5', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('35794c0e-b839-4a56-bb59-88b2c5e91139', '57008dea-844d-44c7-8adc-6389295384c7',
        '6ecd0c78-d06f-4e33-93b6-24382cbc93e5', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('288dd976-2eb9-4cbd-9bd1-8801520d0b26', 'a214c6f9-029b-444d-82a0-8bc98a044a43',
        '6ecd0c78-d06f-4e33-93b6-24382cbc93e5', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1c92c1e6-6fe9-4e0c-b0a8-6dda184e2be5', '630e876e-62d7-498b-aae9-f8326e875369',
        '6ecd0c78-d06f-4e33-93b6-24382cbc93e5', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('78504e5b-5017-458c-b379-cf777f3355d1', '1521cd72-8dc2-463a-8cef-2c8c8166493b',
        '6ecd0c78-d06f-4e33-93b6-24382cbc93e5', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('491193e1-0783-40e3-9ee5-0fad4e587295', '4c411dfd-41e6-4c53-bb7b-37cc54c1c8e8',
        '6ecd0c78-d06f-4e33-93b6-24382cbc93e5', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('dcb373ee-50c9-45ad-b549-1e5cb6f335a3', '92bb831c-040f-4686-8acd-f42d8629ba7b',
        '6ecd0c78-d06f-4e33-93b6-24382cbc93e5', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1497ebe0-28ad-4d32-af4f-e36639226fe1', 'fe8d890a-abea-44fc-92fe-ba3678289387',
        '6ecd0c78-d06f-4e33-93b6-24382cbc93e5', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('abf4b82f-baa6-4cb2-8ede-5c3f5246da98', '4de87bed-0d07-419e-9991-32658cdb0a9d',
        '6ecd0c78-d06f-4e33-93b6-24382cbc93e5', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('08309a97-2add-4b5e-8b24-21dcd35fc7a7', '7570b82c-a85d-446c-9a92-5c0bb332a8a3',
        '6ecd0c78-d06f-4e33-93b6-24382cbc93e5', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ede472fb-35e7-42b3-8b1e-7db8ce1c40c8', 'b8b056d3-228d-4363-8f43-a1fed1da8695',
        '6ecd0c78-d06f-4e33-93b6-24382cbc93e5', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0d910a68-f91a-44f4-9ae1-c5c78ad3f0da', '5a08407a-ba00-4be3-bbc6-c50dc256d8f5',
        '6ecd0c78-d06f-4e33-93b6-24382cbc93e5', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('31f443eb-d451-46ea-aaad-ef6ef58930a1', 'cac14782-c714-49d4-803d-6bdfb7fb8707',
        '6ecd0c78-d06f-4e33-93b6-24382cbc93e5', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3fb8ec83-c73e-4d46-902f-60b98640ae69', '3d723b44-2db7-4730-af04-6007ae7d2178',
        '6ecd0c78-d06f-4e33-93b6-24382cbc93e5', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1c4d8a00-050c-4c00-a786-e1518314c3bd', '9a4f51df-c428-4a18-9055-511e0ae7b6d8',
        '6ecd0c78-d06f-4e33-93b6-24382cbc93e5', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('96a380c9-ecf2-4bb7-9d01-f0474ccfa1c3', 'fd1edc81-f470-4dbe-95cf-ea6ad5e85cf2',
        '6ecd0c78-d06f-4e33-93b6-24382cbc93e5', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f8cb621d-3be4-4547-8e57-a0423ae48fea', '6e2740d2-ef18-4564-b8c7-9f7214308f81',
        '6ecd0c78-d06f-4e33-93b6-24382cbc93e5', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('63b75f99-b1a0-4a25-92dc-5c91dff76648', '926c446b-9db8-4b9c-a406-ed40dff69e34',
        '6ecd0c78-d06f-4e33-93b6-24382cbc93e5', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('77648244-9785-440c-9711-e4bbd7cae3ad', 'eaa9530f-bb8c-453f-b634-c8599039e296',
        '6ecd0c78-d06f-4e33-93b6-24382cbc93e5', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9b2727e3-93d5-421b-9847-0c0dadf6b53b', 'bdc5f279-42bf-491c-b87a-409b3c7bff89',
        '6ecd0c78-d06f-4e33-93b6-24382cbc93e5', 3, current_timestamp, current_timestamp);

-- politician '9dfc0bbb-353c-4dc0-8409-5d32b4b44afd'
insert into QuestionAnswer
values ('3e360033-4d1f-46a6-9e20-236cefc9609a', 'a335650d-06b4-4e92-ba77-d5f8964ceb82',
        '9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('87ecb3d1-a8ec-45a0-9d22-ed3dca8a9e6b', '46df8b49-923c-4f91-8362-5196efbb71e2',
        '9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5d5a1668-7eac-4429-be38-4624f19fd12c', '5f277258-ba7b-492c-b451-673eaa5957c0',
        '9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e0433a0b-c6eb-46e0-ac9f-25fb70b9e334', '007ebae0-31cb-40fb-93ad-c2f980caee14',
        '9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c52fb8a3-2d77-40e9-8b8d-4e7f14def7ab', '8ae0f13d-e699-4617-a4ba-672e6ccc0edc',
        '9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('04cf6744-873f-4089-8aa2-07425e7191a9', 'dee756b8-f4f2-474a-88f4-e7f4fea7275a',
        '9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('cabd4f1f-391f-4adb-b017-0ee8cc065c02', 'b8ec593e-93b8-4bab-95dd-cfff5c526d54',
        '9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('20d5b52e-c419-4094-9213-9627416b4188', '6f9db124-e0ae-409d-b943-5be0cbc836e5',
        '9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('58a8c392-0610-4002-aec4-bc95ad4c9bfc', '616bf16a-470d-494e-ad8b-b230e80dafb3',
        '9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c6626f16-f5c4-477f-ad2c-c78fef6d8924', '6c05b44c-34de-48a4-8d3c-6015b268c456',
        '9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ebd0a9fc-f76a-4886-a60c-67d229fc934b', '3ac4a61c-f510-4d59-84cc-e957dbeedd8e',
        '9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d007d405-a577-43e9-9b12-5c5475dea5b3', 'f4f5632d-00ae-4be2-aff8-c83da3c21519',
        '9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('73e660ae-5658-4c42-8ed9-1d827047817d', '4917d24b-e50c-4fa9-ac12-37a0d298f41f',
        '9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d70eb1f6-5c5d-4939-8b01-ced8ab3ed8ee', 'aee92954-3fab-449d-bc56-7ec47df873cb',
        '9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9bd4e1ae-f7ce-482b-b6d3-011ee8c52eea', '19d57226-91df-4c5a-92f4-7b7d774ea8c4',
        '9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c1705c51-d131-47fc-b13b-bbb20a07f734', '81f2e7c9-6871-44e3-a432-b0fd050dd187',
        '9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e42beba6-2628-426e-bc79-66cc7a84c162', '377a4b78-e58a-4d13-875f-817cd1693ece',
        '9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5fa1ee66-aa2b-473a-9f33-f5b57512972c', '54e790a7-9741-408e-9327-3377df0e9b6e',
        '9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1139e10d-8200-414b-9c22-26df73966ff7', '5dce5233-88d5-4b52-94de-6465ace4be98',
        '9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6435eda4-cfc3-4520-bdc8-8b27cc1132d2', '63aa0cb7-202d-4c54-85ae-051e8249115d',
        '9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8f874854-cc5b-4bb9-a1aa-ec96eee90092', 'fb59e236-0633-46ca-a8b5-c0d7596ee10e',
        '9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d34bd2be-4185-4f1f-afc5-c438aa502965', '154147b7-aff2-4ff1-89cf-fcd6616ca6d2',
        '9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('fcf5cc95-a2a3-43e0-a30b-8691ecb8780d', '6e8b2868-8094-46d3-95be-2397eb9d5237',
        '9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('05bdd666-7f6b-4e21-a966-cad511722295', '112cc8ee-b996-4b19-9192-9e82b92aae94',
        '9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('128c5df7-9ff8-4acf-aaeb-663b3f878a89', '60c4bebf-411f-456f-9eab-5afd98fde9c7',
        '9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7f035bfd-57ff-4276-829c-35e945157139', 'c393d2b5-6e50-4d7a-ad40-e112851e0711',
        '9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e9e435a8-3b03-4e2a-aac0-272c962a9aca', '38630605-5c28-4b5c-b042-93c43bf23ebc',
        '9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4ed515bb-ee8e-407e-8800-13fe2f93477c', 'cc721727-53e6-4b1c-9d85-c97c46b5422e',
        '9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('acea7c0e-0697-4168-acb1-d6c08c65ad89', 'ccb39a89-f63e-4537-90cd-e3186178ae1f',
        '9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('bea2beed-1f7e-4be1-bb63-a83d9eb770e0', 'b34bfec1-ee6c-46bc-9d52-99e90b59fe12',
        '9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e0586f16-0aa1-4615-9df8-c2d28138bc6d', '6b7955fe-fb44-4b68-92b5-13aedcce4e76',
        '9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b8c665d3-f789-4625-ac31-00483b677f6d', '204814c3-bf71-4b17-9727-c6d435976da6',
        '9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b2684903-3db1-4121-b086-769a8c8667e8', 'd118e4c3-08b7-4c8e-95de-81b8715b6f1d',
        '9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f41178f6-7a20-4cf8-ba2b-fad109d592cb', 'db255fa3-e68a-47b3-9651-a7cc95b33689',
        '9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('36e3c65b-1c99-4238-85a1-2c3cd63e10b0', '42b30d8f-b8eb-46be-93ee-446f2d1d2706',
        '9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ac6cdbc1-1aa2-4f69-8785-254b27279a76', '69126fb1-3e3f-4741-b6a4-91678103ccfe',
        '9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d4806bbb-5210-4267-8ec9-da393d63d2e7', 'a4f7f094-e1ff-4280-aa2f-33e17fb03d07',
        '9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('39726138-5eb1-4628-94dd-532b5f9fdd15', '9f8b49e7-cd35-4115-8e2a-a4bc71ceab78',
        '9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('610cf471-0072-480b-85f4-070a22ac789e', 'df70cc34-0233-4ed5-89f4-5864507b42a4',
        '9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('14b83555-7839-41ce-8b40-28c1f33cec6f', '4b4b663a-bc9c-4eb4-ba80-f86adc0951f9',
        '9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('cf50c5f1-a935-4d73-96e9-7bbe1d0f8fe3', '231e38c1-fb35-4262-9a80-ea7a4d0a00ba',
        '9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7b1e378e-e3ad-40e9-9bcc-1a38dbe4fab6', '57008dea-844d-44c7-8adc-6389295384c7',
        '9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('63e3c597-d136-4158-a883-22f7277bedee', 'a214c6f9-029b-444d-82a0-8bc98a044a43',
        '9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5ee2f3cb-fbd1-4109-9912-73690434f936', '630e876e-62d7-498b-aae9-f8326e875369',
        '9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d3f861e9-4264-4fde-8a46-437e5849965f', '1521cd72-8dc2-463a-8cef-2c8c8166493b',
        '9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('70f8e9db-d36e-4c9b-b1af-b7364942f2d3', '4c411dfd-41e6-4c53-bb7b-37cc54c1c8e8',
        '9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3fa294d3-f427-4906-b951-3354c68b31ca', '92bb831c-040f-4686-8acd-f42d8629ba7b',
        '9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('38fffea6-3fd5-4296-89cf-1b03cef1eeb0', 'fe8d890a-abea-44fc-92fe-ba3678289387',
        '9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9a2f4e15-1435-4dca-8d4e-f4549ecce679', '4de87bed-0d07-419e-9991-32658cdb0a9d',
        '9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8e3336bb-097f-4d03-a21b-8e4e889e47ca', '7570b82c-a85d-446c-9a92-5c0bb332a8a3',
        '9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a292da8b-df24-4684-86ef-c495c8f96bed', 'b8b056d3-228d-4363-8f43-a1fed1da8695',
        '9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0acad01e-cd38-48f0-ba11-718c273e1250', '5a08407a-ba00-4be3-bbc6-c50dc256d8f5',
        '9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e9a10882-8196-4290-bf0d-0a68848f0278', 'cac14782-c714-49d4-803d-6bdfb7fb8707',
        '9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7f133479-0c69-4f7f-8b77-2aa8d94098aa', '3d723b44-2db7-4730-af04-6007ae7d2178',
        '9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6513964f-0431-4ef3-886b-d60d761acce9', '9a4f51df-c428-4a18-9055-511e0ae7b6d8',
        '9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('08addfa2-7976-443c-8ff9-84fe85186d1b', 'fd1edc81-f470-4dbe-95cf-ea6ad5e85cf2',
        '9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7777f609-ce22-4ffc-af90-1a9287986712', '6e2740d2-ef18-4564-b8c7-9f7214308f81',
        '9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8a6d32cf-876e-4d54-ab87-0c575de0ec4e', '926c446b-9db8-4b9c-a406-ed40dff69e34',
        '9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7030d7ac-9e50-4c73-ab50-f5e6a83efd1a', 'eaa9530f-bb8c-453f-b634-c8599039e296',
        '9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8d292a67-0b0a-4ae1-abe1-459c9c8f1a52', 'bdc5f279-42bf-491c-b87a-409b3c7bff89',
        '9dfc0bbb-353c-4dc0-8409-5d32b4b44afd', 4, current_timestamp, current_timestamp);

-- politician 'e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e'
insert into QuestionAnswer
values ('6587b026-6a78-4823-a68d-92e308802a6d', 'a335650d-06b4-4e92-ba77-d5f8964ceb82',
        'e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d5cf983f-af31-4920-a666-6ddaea03d43e', '46df8b49-923c-4f91-8362-5196efbb71e2',
        'e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c06f114a-999c-4c87-a362-78e02313c707', '5f277258-ba7b-492c-b451-673eaa5957c0',
        'e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e1132877-1e2b-4655-91f5-d4439eb07cb5', '007ebae0-31cb-40fb-93ad-c2f980caee14',
        'e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('09f6411b-98f9-4c2b-adaf-704517be1006', '8ae0f13d-e699-4617-a4ba-672e6ccc0edc',
        'e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('130e1df9-22e1-4f2b-8a60-e586f991f58c', 'dee756b8-f4f2-474a-88f4-e7f4fea7275a',
        'e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c3c6ad3f-2e6b-408f-9357-e0c8b07f9a24', 'b8ec593e-93b8-4bab-95dd-cfff5c526d54',
        'e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('002e0ed9-4763-43c5-beb3-ece00f13dd78', '6f9db124-e0ae-409d-b943-5be0cbc836e5',
        'e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c3c5c63b-23fa-4be3-aac4-534aad42fe68', '616bf16a-470d-494e-ad8b-b230e80dafb3',
        'e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('11f65ebb-46af-4360-aab6-2195c629acf9', '6c05b44c-34de-48a4-8d3c-6015b268c456',
        'e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('97c4451d-828b-4afd-b14c-067df4871cc6', '3ac4a61c-f510-4d59-84cc-e957dbeedd8e',
        'e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7b12d51a-0f4d-480c-b315-7eb9a00a24ba', 'f4f5632d-00ae-4be2-aff8-c83da3c21519',
        'e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('21df1a4d-71a6-40d9-b48f-be5cddf8bee6', '4917d24b-e50c-4fa9-ac12-37a0d298f41f',
        'e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('66830107-6c9d-4cd2-b970-dd52d171297d', 'aee92954-3fab-449d-bc56-7ec47df873cb',
        'e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('fe60d2da-4ce0-4b7d-9713-bc4467e30090', '19d57226-91df-4c5a-92f4-7b7d774ea8c4',
        'e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f6b25825-f277-4eae-96ac-10e8c7b2a90c', '81f2e7c9-6871-44e3-a432-b0fd050dd187',
        'e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4b356b17-2e8c-4ba8-a2d3-8e4b97bb6818', '377a4b78-e58a-4d13-875f-817cd1693ece',
        'e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('124b7d74-81b2-41a6-bb91-0b65421b6c64', '54e790a7-9741-408e-9327-3377df0e9b6e',
        'e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b4bf52fd-c67c-4aea-9772-d376aa466a8e', '5dce5233-88d5-4b52-94de-6465ace4be98',
        'e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f9533859-dd0b-4c27-a310-56e9aa330345', '63aa0cb7-202d-4c54-85ae-051e8249115d',
        'e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0a94a98b-1a72-4b20-8066-764987d43b9c', 'fb59e236-0633-46ca-a8b5-c0d7596ee10e',
        'e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c70d93e4-39b5-4503-83fe-51ebea85ebd7', '154147b7-aff2-4ff1-89cf-fcd6616ca6d2',
        'e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('05ec1f3b-80c0-47d5-95cd-170f82d1e86d', '6e8b2868-8094-46d3-95be-2397eb9d5237',
        'e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9214723a-eb09-4e6a-9cdf-dcf1bfd13e17', '112cc8ee-b996-4b19-9192-9e82b92aae94',
        'e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('04a075ff-8727-4bb1-8db4-677162f247bb', '60c4bebf-411f-456f-9eab-5afd98fde9c7',
        'e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0d92c85b-ab44-4da1-a1c2-47304d43fd42', 'c393d2b5-6e50-4d7a-ad40-e112851e0711',
        'e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('59d08dc4-054b-46e4-a454-c51d077ca2f9', '38630605-5c28-4b5c-b042-93c43bf23ebc',
        'e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('23babea3-2ed7-4392-97d2-b4a909c7e9c9', 'cc721727-53e6-4b1c-9d85-c97c46b5422e',
        'e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2acd7732-2290-4720-8474-62155cf11ed4', 'ccb39a89-f63e-4537-90cd-e3186178ae1f',
        'e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a800d9b4-21d8-432d-bf1b-93bb2472cf80', 'b34bfec1-ee6c-46bc-9d52-99e90b59fe12',
        'e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('865886b6-2b2c-4205-8f47-97ed9417571b', '6b7955fe-fb44-4b68-92b5-13aedcce4e76',
        'e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9660d98b-f4f9-4c48-958c-e9c9d2ec7051', '204814c3-bf71-4b17-9727-c6d435976da6',
        'e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1674a7b5-24a3-4464-b991-1e7d3b316095', 'd118e4c3-08b7-4c8e-95de-81b8715b6f1d',
        'e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('cc12bbd4-ee35-4e4d-b03f-e9a8d1413840', 'db255fa3-e68a-47b3-9651-a7cc95b33689',
        'e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('97a7d578-f61a-4807-8d3d-7c1d2a45b916', '42b30d8f-b8eb-46be-93ee-446f2d1d2706',
        'e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('52ef116e-c18c-4626-8cf0-f937faeb5c68', '69126fb1-3e3f-4741-b6a4-91678103ccfe',
        'e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('84f2459a-a619-4272-9cc0-deb4753868b8', 'a4f7f094-e1ff-4280-aa2f-33e17fb03d07',
        'e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('64a65a50-91b2-4b90-93f7-18c669ad47fd', '9f8b49e7-cd35-4115-8e2a-a4bc71ceab78',
        'e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e9bf76a9-6803-4313-bf9a-d7db44d69f50', 'df70cc34-0233-4ed5-89f4-5864507b42a4',
        'e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('31536aa8-65d9-4af1-976b-171228688dc9', '4b4b663a-bc9c-4eb4-ba80-f86adc0951f9',
        'e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9dbc8e92-df2c-4549-9fc5-16ce15e88571', '231e38c1-fb35-4262-9a80-ea7a4d0a00ba',
        'e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2b8fe468-4224-47a1-9167-0258166b3815', '57008dea-844d-44c7-8adc-6389295384c7',
        'e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('679d03d9-dbb0-429b-a88a-d6664f32579d', 'a214c6f9-029b-444d-82a0-8bc98a044a43',
        'e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0ffe66c7-f75f-4390-9e30-724ac443a702', '630e876e-62d7-498b-aae9-f8326e875369',
        'e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('32b15328-2ed4-4a76-83b9-863d1ae4b6d5', '1521cd72-8dc2-463a-8cef-2c8c8166493b',
        'e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('cc4dfb74-ce3b-422c-bd47-177ba2130839', '4c411dfd-41e6-4c53-bb7b-37cc54c1c8e8',
        'e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('056d7d39-aed3-40e4-b771-df3190ac622f', '92bb831c-040f-4686-8acd-f42d8629ba7b',
        'e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9e151ab3-10ae-43f9-ad93-042dc86d3a07', 'fe8d890a-abea-44fc-92fe-ba3678289387',
        'e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8d044d43-1a75-4eb5-b05b-085cceb8f7a4', '4de87bed-0d07-419e-9991-32658cdb0a9d',
        'e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('514a76af-1395-4741-88a7-cf28f4dc4c43', '7570b82c-a85d-446c-9a92-5c0bb332a8a3',
        'e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d34170e5-7da0-4fd6-98e3-e8fc007937b1', 'b8b056d3-228d-4363-8f43-a1fed1da8695',
        'e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('bcb3c44e-3e6c-40f9-9279-1e1a3d45f20e', '5a08407a-ba00-4be3-bbc6-c50dc256d8f5',
        'e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('56fd45b5-0fec-49f1-a57a-adee2ce7f394', 'cac14782-c714-49d4-803d-6bdfb7fb8707',
        'e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('bf85a895-44d5-45e9-83bb-4861f9428e6a', '3d723b44-2db7-4730-af04-6007ae7d2178',
        'e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('06e2d6d7-b905-411e-9701-18862f65677c', '9a4f51df-c428-4a18-9055-511e0ae7b6d8',
        'e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9cfd96e7-60b9-48ee-90e4-baae6a202b4a', 'fd1edc81-f470-4dbe-95cf-ea6ad5e85cf2',
        'e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('31e68365-746e-4d2a-b631-8a63a0dd81f5', '6e2740d2-ef18-4564-b8c7-9f7214308f81',
        'e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('282eb208-2d72-411c-a256-477a0b18c2ab', '926c446b-9db8-4b9c-a406-ed40dff69e34',
        'e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('91239f08-3e44-4a56-b33d-1bfe61f076d2', 'eaa9530f-bb8c-453f-b634-c8599039e296',
        'e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f7a111a3-4066-4e90-9ebc-2fd30126499a', 'bdc5f279-42bf-491c-b87a-409b3c7bff89',
        'e6274305-cdde-4b62-b7ac-a0cc4f0c3b1e', 1, current_timestamp, current_timestamp);

-- politician '94b21ab6-c285-49ed-ba31-b060d01eb498'
insert into QuestionAnswer
values ('1c7f507f-6927-4e6e-915d-9efcf632f091', 'a335650d-06b4-4e92-ba77-d5f8964ceb82',
        '94b21ab6-c285-49ed-ba31-b060d01eb498', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d2a1bf4c-6a98-4d1d-9146-5219db0e0491', '46df8b49-923c-4f91-8362-5196efbb71e2',
        '94b21ab6-c285-49ed-ba31-b060d01eb498', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3bd3f182-d868-439b-9203-f61e6e911647', '5f277258-ba7b-492c-b451-673eaa5957c0',
        '94b21ab6-c285-49ed-ba31-b060d01eb498', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ca14e5fa-449e-4888-8928-c7a03c0828d6', '007ebae0-31cb-40fb-93ad-c2f980caee14',
        '94b21ab6-c285-49ed-ba31-b060d01eb498', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6578d045-cf33-4264-94e1-d1935fd04d6c', '8ae0f13d-e699-4617-a4ba-672e6ccc0edc',
        '94b21ab6-c285-49ed-ba31-b060d01eb498', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('514f029c-0ec7-4b36-a25e-ffffc67f5891', 'dee756b8-f4f2-474a-88f4-e7f4fea7275a',
        '94b21ab6-c285-49ed-ba31-b060d01eb498', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9109aba9-2e62-4292-a447-4cd5079fa425', 'b8ec593e-93b8-4bab-95dd-cfff5c526d54',
        '94b21ab6-c285-49ed-ba31-b060d01eb498', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('76e219fb-0d14-4f54-b0a8-234b4216b0c0', '6f9db124-e0ae-409d-b943-5be0cbc836e5',
        '94b21ab6-c285-49ed-ba31-b060d01eb498', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('131c8a1a-6c68-49b4-a3f4-c1cdff5f4c0a', '616bf16a-470d-494e-ad8b-b230e80dafb3',
        '94b21ab6-c285-49ed-ba31-b060d01eb498', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2547ffd0-3a3f-44a3-8ca9-d152d0cd998d', '6c05b44c-34de-48a4-8d3c-6015b268c456',
        '94b21ab6-c285-49ed-ba31-b060d01eb498', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d4831789-196b-4707-a1c1-2d30f8b9c6d0', '3ac4a61c-f510-4d59-84cc-e957dbeedd8e',
        '94b21ab6-c285-49ed-ba31-b060d01eb498', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2544df4a-bca3-41ee-a31e-69a7ce4b273a', 'f4f5632d-00ae-4be2-aff8-c83da3c21519',
        '94b21ab6-c285-49ed-ba31-b060d01eb498', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5fe52abd-960c-4bea-ab80-b9be6b57fa22', '4917d24b-e50c-4fa9-ac12-37a0d298f41f',
        '94b21ab6-c285-49ed-ba31-b060d01eb498', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6f168dc7-089b-43fa-80bb-9418532959dd', 'aee92954-3fab-449d-bc56-7ec47df873cb',
        '94b21ab6-c285-49ed-ba31-b060d01eb498', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4c75ae1b-dccb-40f1-b5c0-c8bc6a151f6c', '19d57226-91df-4c5a-92f4-7b7d774ea8c4',
        '94b21ab6-c285-49ed-ba31-b060d01eb498', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3fc932a4-8e51-405a-a5d4-6cb09fc9a4df', '81f2e7c9-6871-44e3-a432-b0fd050dd187',
        '94b21ab6-c285-49ed-ba31-b060d01eb498', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('07e2d81f-b70e-45af-9f09-3b0bb521d584', '377a4b78-e58a-4d13-875f-817cd1693ece',
        '94b21ab6-c285-49ed-ba31-b060d01eb498', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('13cca65e-9972-4ccb-be15-5786578937d8', '54e790a7-9741-408e-9327-3377df0e9b6e',
        '94b21ab6-c285-49ed-ba31-b060d01eb498', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b51031b6-8713-4358-8df2-ceca716a161a', '5dce5233-88d5-4b52-94de-6465ace4be98',
        '94b21ab6-c285-49ed-ba31-b060d01eb498', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6cee6837-2309-4ff1-8f8d-b3a792324a66', '63aa0cb7-202d-4c54-85ae-051e8249115d',
        '94b21ab6-c285-49ed-ba31-b060d01eb498', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b7f21555-2834-4bba-8227-cfc77e4976ba', 'fb59e236-0633-46ca-a8b5-c0d7596ee10e',
        '94b21ab6-c285-49ed-ba31-b060d01eb498', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3b2d9044-9b87-4830-801a-f5644ddf5463', '154147b7-aff2-4ff1-89cf-fcd6616ca6d2',
        '94b21ab6-c285-49ed-ba31-b060d01eb498', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('cf8c17cd-9d19-4dab-ab4f-40c1afec4614', '6e8b2868-8094-46d3-95be-2397eb9d5237',
        '94b21ab6-c285-49ed-ba31-b060d01eb498', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a85604f4-4900-452e-8917-b83a397bc901', '112cc8ee-b996-4b19-9192-9e82b92aae94',
        '94b21ab6-c285-49ed-ba31-b060d01eb498', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5f10f9c2-2afc-46d3-b8ec-cc676b9b6776', '60c4bebf-411f-456f-9eab-5afd98fde9c7',
        '94b21ab6-c285-49ed-ba31-b060d01eb498', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f70de162-4483-4503-8acf-59e8f50d0ea9', 'c393d2b5-6e50-4d7a-ad40-e112851e0711',
        '94b21ab6-c285-49ed-ba31-b060d01eb498', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b99aa217-a2f4-4c21-b4c6-01b74f16754e', '38630605-5c28-4b5c-b042-93c43bf23ebc',
        '94b21ab6-c285-49ed-ba31-b060d01eb498', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('80ef4b67-32ca-450a-bff7-563a5597655a', 'cc721727-53e6-4b1c-9d85-c97c46b5422e',
        '94b21ab6-c285-49ed-ba31-b060d01eb498', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e7f6ff96-6d78-4c75-9d28-57144a8b5228', 'ccb39a89-f63e-4537-90cd-e3186178ae1f',
        '94b21ab6-c285-49ed-ba31-b060d01eb498', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b6f77531-99f8-4852-a9c4-d20ddc247763', 'b34bfec1-ee6c-46bc-9d52-99e90b59fe12',
        '94b21ab6-c285-49ed-ba31-b060d01eb498', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('18826e68-f807-4a77-9c22-40f9255a84ab', '6b7955fe-fb44-4b68-92b5-13aedcce4e76',
        '94b21ab6-c285-49ed-ba31-b060d01eb498', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('522c6d92-4a75-4507-8eb0-5d1754e75ab3', '204814c3-bf71-4b17-9727-c6d435976da6',
        '94b21ab6-c285-49ed-ba31-b060d01eb498', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1396d2de-cfc1-4260-a481-666112fc1373', 'd118e4c3-08b7-4c8e-95de-81b8715b6f1d',
        '94b21ab6-c285-49ed-ba31-b060d01eb498', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b407a0d8-f048-4dfd-8fe3-d1b9c77338cf', 'db255fa3-e68a-47b3-9651-a7cc95b33689',
        '94b21ab6-c285-49ed-ba31-b060d01eb498', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('fd298e0b-15ca-41cd-bf79-f0e10483eb1b', '42b30d8f-b8eb-46be-93ee-446f2d1d2706',
        '94b21ab6-c285-49ed-ba31-b060d01eb498', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('257a0669-532d-4e76-88a0-551c46007a23', '69126fb1-3e3f-4741-b6a4-91678103ccfe',
        '94b21ab6-c285-49ed-ba31-b060d01eb498', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('41e63ee9-db5d-475a-8a6b-6813386e5d7e', 'a4f7f094-e1ff-4280-aa2f-33e17fb03d07',
        '94b21ab6-c285-49ed-ba31-b060d01eb498', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1c76cc91-2362-475b-9a2a-e6301514bbf7', '9f8b49e7-cd35-4115-8e2a-a4bc71ceab78',
        '94b21ab6-c285-49ed-ba31-b060d01eb498', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('156cd0b5-f2b5-4c26-89df-640f74a3be34', 'df70cc34-0233-4ed5-89f4-5864507b42a4',
        '94b21ab6-c285-49ed-ba31-b060d01eb498', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('905e1427-f804-4eaf-b56e-ac9954d8d4c6', '4b4b663a-bc9c-4eb4-ba80-f86adc0951f9',
        '94b21ab6-c285-49ed-ba31-b060d01eb498', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0f996680-c337-4f7e-99d1-dd8eba71a48d', '231e38c1-fb35-4262-9a80-ea7a4d0a00ba',
        '94b21ab6-c285-49ed-ba31-b060d01eb498', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0f0ddea5-52c5-41da-908e-99085c2ae4af', '57008dea-844d-44c7-8adc-6389295384c7',
        '94b21ab6-c285-49ed-ba31-b060d01eb498', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9baec165-3d67-4ea5-873e-ddef05442fbd', 'a214c6f9-029b-444d-82a0-8bc98a044a43',
        '94b21ab6-c285-49ed-ba31-b060d01eb498', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('78ad0987-0ddd-468a-bea2-b634acf549fc', '630e876e-62d7-498b-aae9-f8326e875369',
        '94b21ab6-c285-49ed-ba31-b060d01eb498', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f03d747d-ff29-4615-87d4-23629536dcf4', '1521cd72-8dc2-463a-8cef-2c8c8166493b',
        '94b21ab6-c285-49ed-ba31-b060d01eb498', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('85a1851b-2bb8-4f32-aa85-edb534e65d44', '4c411dfd-41e6-4c53-bb7b-37cc54c1c8e8',
        '94b21ab6-c285-49ed-ba31-b060d01eb498', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a1019397-49df-47a1-968f-d2cccd1d5aab', '92bb831c-040f-4686-8acd-f42d8629ba7b',
        '94b21ab6-c285-49ed-ba31-b060d01eb498', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('18c0a55a-f995-46c5-80b8-a25a7bef73e3', 'fe8d890a-abea-44fc-92fe-ba3678289387',
        '94b21ab6-c285-49ed-ba31-b060d01eb498', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('60e94f08-d236-4ca0-a947-fa8dcb8dfb31', '4de87bed-0d07-419e-9991-32658cdb0a9d',
        '94b21ab6-c285-49ed-ba31-b060d01eb498', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e4bf08b4-7ed9-41e1-b296-0740b18fa88e', '7570b82c-a85d-446c-9a92-5c0bb332a8a3',
        '94b21ab6-c285-49ed-ba31-b060d01eb498', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8fbaf3fa-df1a-434c-ae29-b69c78c5a7fa', 'b8b056d3-228d-4363-8f43-a1fed1da8695',
        '94b21ab6-c285-49ed-ba31-b060d01eb498', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('86b3de61-2165-4af7-9b43-68e91e8ae1df', '5a08407a-ba00-4be3-bbc6-c50dc256d8f5',
        '94b21ab6-c285-49ed-ba31-b060d01eb498', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('01a8cc7c-db15-4d71-a18b-b3eaa3dd5e61', 'cac14782-c714-49d4-803d-6bdfb7fb8707',
        '94b21ab6-c285-49ed-ba31-b060d01eb498', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('dd736190-226d-4e58-add7-fe4273897320', '3d723b44-2db7-4730-af04-6007ae7d2178',
        '94b21ab6-c285-49ed-ba31-b060d01eb498', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1fef31ee-bb00-469a-9896-d02025e3732d', '9a4f51df-c428-4a18-9055-511e0ae7b6d8',
        '94b21ab6-c285-49ed-ba31-b060d01eb498', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a3eb063e-b176-45d4-8c55-0718979e10be', 'fd1edc81-f470-4dbe-95cf-ea6ad5e85cf2',
        '94b21ab6-c285-49ed-ba31-b060d01eb498', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('503b8304-8abd-4bdd-ba66-f6af4565eb70', '6e2740d2-ef18-4564-b8c7-9f7214308f81',
        '94b21ab6-c285-49ed-ba31-b060d01eb498', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f2335e73-7119-4413-a8c3-0272b26f5f9a', '926c446b-9db8-4b9c-a406-ed40dff69e34',
        '94b21ab6-c285-49ed-ba31-b060d01eb498', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b36273fb-0b20-4319-afe2-7278701e6d59', 'eaa9530f-bb8c-453f-b634-c8599039e296',
        '94b21ab6-c285-49ed-ba31-b060d01eb498', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('519cafaf-9872-4567-abca-d7e50a4d59b7', 'bdc5f279-42bf-491c-b87a-409b3c7bff89',
        '94b21ab6-c285-49ed-ba31-b060d01eb498', 2, current_timestamp, current_timestamp);

-- politician 'aa2aa826-bc0f-4b0c-b36f-979b2b104e28'
insert into QuestionAnswer
values ('d3771e79-f1f4-4805-9447-4d4a0175d3c5', 'a335650d-06b4-4e92-ba77-d5f8964ceb82',
        'aa2aa826-bc0f-4b0c-b36f-979b2b104e28', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e4fef503-0cf1-4ad5-be12-4d97d20e0a67', '46df8b49-923c-4f91-8362-5196efbb71e2',
        'aa2aa826-bc0f-4b0c-b36f-979b2b104e28', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('58bd2e2b-4d5d-48b9-8dfa-5269bd674738', '5f277258-ba7b-492c-b451-673eaa5957c0',
        'aa2aa826-bc0f-4b0c-b36f-979b2b104e28', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b078db52-5bd7-408e-834b-3759e8aaacaf', '007ebae0-31cb-40fb-93ad-c2f980caee14',
        'aa2aa826-bc0f-4b0c-b36f-979b2b104e28', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ecece295-abca-4fcb-a2b2-80ad0bc1bbed', '8ae0f13d-e699-4617-a4ba-672e6ccc0edc',
        'aa2aa826-bc0f-4b0c-b36f-979b2b104e28', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ff21e3bf-6323-4139-baba-073e8c7e84c0', 'dee756b8-f4f2-474a-88f4-e7f4fea7275a',
        'aa2aa826-bc0f-4b0c-b36f-979b2b104e28', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e6d8e7d6-e0e4-49c2-8373-785226baa7ea', 'b8ec593e-93b8-4bab-95dd-cfff5c526d54',
        'aa2aa826-bc0f-4b0c-b36f-979b2b104e28', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('fa059d68-03a8-49e0-995d-4f75641cb131', '6f9db124-e0ae-409d-b943-5be0cbc836e5',
        'aa2aa826-bc0f-4b0c-b36f-979b2b104e28', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d2c97398-a74c-4e72-836c-f78b8d22fd2f', '616bf16a-470d-494e-ad8b-b230e80dafb3',
        'aa2aa826-bc0f-4b0c-b36f-979b2b104e28', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('bacbe76d-0aff-4a3f-a239-67087baf01af', '6c05b44c-34de-48a4-8d3c-6015b268c456',
        'aa2aa826-bc0f-4b0c-b36f-979b2b104e28', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('50ceb8c6-9892-4db6-98dc-dbbafdf86bdd', '3ac4a61c-f510-4d59-84cc-e957dbeedd8e',
        'aa2aa826-bc0f-4b0c-b36f-979b2b104e28', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4ad9459d-33dc-466a-a6fc-2ad82c3fcfea', 'f4f5632d-00ae-4be2-aff8-c83da3c21519',
        'aa2aa826-bc0f-4b0c-b36f-979b2b104e28', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b50dc38d-263d-46a9-820f-5bd90bff9555', '4917d24b-e50c-4fa9-ac12-37a0d298f41f',
        'aa2aa826-bc0f-4b0c-b36f-979b2b104e28', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f43c36bb-cf2a-4a52-acce-68f012f5afa5', 'aee92954-3fab-449d-bc56-7ec47df873cb',
        'aa2aa826-bc0f-4b0c-b36f-979b2b104e28', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('00924fa0-f8f1-46dc-a7db-47d7c5db8b30', '19d57226-91df-4c5a-92f4-7b7d774ea8c4',
        'aa2aa826-bc0f-4b0c-b36f-979b2b104e28', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2432237b-8427-4f95-a72e-debffc89b5fe', '81f2e7c9-6871-44e3-a432-b0fd050dd187',
        'aa2aa826-bc0f-4b0c-b36f-979b2b104e28', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('00ea5ba7-3df3-4eca-8fd4-a30881b139af', '377a4b78-e58a-4d13-875f-817cd1693ece',
        'aa2aa826-bc0f-4b0c-b36f-979b2b104e28', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8fc11e62-09ff-4adb-a2f4-47a7d0d22b51', '54e790a7-9741-408e-9327-3377df0e9b6e',
        'aa2aa826-bc0f-4b0c-b36f-979b2b104e28', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('eb14d42a-2415-49de-b8ed-8b1be4ffc41b', '5dce5233-88d5-4b52-94de-6465ace4be98',
        'aa2aa826-bc0f-4b0c-b36f-979b2b104e28', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8d7d07df-b8ae-4410-8fb7-f53cc3f8b806', '63aa0cb7-202d-4c54-85ae-051e8249115d',
        'aa2aa826-bc0f-4b0c-b36f-979b2b104e28', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8b9d46d7-62ce-425e-9026-b58386e3a8e5', 'fb59e236-0633-46ca-a8b5-c0d7596ee10e',
        'aa2aa826-bc0f-4b0c-b36f-979b2b104e28', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ff3dcadc-b134-477b-a161-707250b62cca', '154147b7-aff2-4ff1-89cf-fcd6616ca6d2',
        'aa2aa826-bc0f-4b0c-b36f-979b2b104e28', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8cf9ddcd-068b-4c90-a2b0-654e74ffc917', '6e8b2868-8094-46d3-95be-2397eb9d5237',
        'aa2aa826-bc0f-4b0c-b36f-979b2b104e28', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3362ec40-9461-4667-af2b-9e34b4236a83', '112cc8ee-b996-4b19-9192-9e82b92aae94',
        'aa2aa826-bc0f-4b0c-b36f-979b2b104e28', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('848c3864-008c-455c-a532-ae8ee70b6dab', '60c4bebf-411f-456f-9eab-5afd98fde9c7',
        'aa2aa826-bc0f-4b0c-b36f-979b2b104e28', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('01047bf7-a1e0-4525-8098-3905a5280750', 'c393d2b5-6e50-4d7a-ad40-e112851e0711',
        'aa2aa826-bc0f-4b0c-b36f-979b2b104e28', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5d0f43cc-b917-4d81-830c-7eed589d464a', '38630605-5c28-4b5c-b042-93c43bf23ebc',
        'aa2aa826-bc0f-4b0c-b36f-979b2b104e28', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3d2a1edb-b02c-49d3-91db-0dd37799303e', 'cc721727-53e6-4b1c-9d85-c97c46b5422e',
        'aa2aa826-bc0f-4b0c-b36f-979b2b104e28', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('728f59d5-4928-4b56-a175-695c671b7409', 'ccb39a89-f63e-4537-90cd-e3186178ae1f',
        'aa2aa826-bc0f-4b0c-b36f-979b2b104e28', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('611be48a-2c6f-462e-ad27-762e5bb3a736', 'b34bfec1-ee6c-46bc-9d52-99e90b59fe12',
        'aa2aa826-bc0f-4b0c-b36f-979b2b104e28', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('480b5079-0d22-452a-90b7-b483cccdf14a', '6b7955fe-fb44-4b68-92b5-13aedcce4e76',
        'aa2aa826-bc0f-4b0c-b36f-979b2b104e28', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e7223b21-c040-4f3c-9aad-59e23413d08c', '204814c3-bf71-4b17-9727-c6d435976da6',
        'aa2aa826-bc0f-4b0c-b36f-979b2b104e28', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f0f788f6-1576-42f7-9547-b379b20fe885', 'd118e4c3-08b7-4c8e-95de-81b8715b6f1d',
        'aa2aa826-bc0f-4b0c-b36f-979b2b104e28', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('090851f3-33af-4788-980a-9d38f6ea2ad6', 'db255fa3-e68a-47b3-9651-a7cc95b33689',
        'aa2aa826-bc0f-4b0c-b36f-979b2b104e28', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8e6deea7-a7b5-49fc-aa6c-1ec26645e6c4', '42b30d8f-b8eb-46be-93ee-446f2d1d2706',
        'aa2aa826-bc0f-4b0c-b36f-979b2b104e28', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('488448e0-533c-436a-a48d-ae4ae1e6caa1', '69126fb1-3e3f-4741-b6a4-91678103ccfe',
        'aa2aa826-bc0f-4b0c-b36f-979b2b104e28', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e49a75c7-be68-428e-bd55-79e89fd8f12b', 'a4f7f094-e1ff-4280-aa2f-33e17fb03d07',
        'aa2aa826-bc0f-4b0c-b36f-979b2b104e28', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4bb9c445-d59a-4be5-a4c8-2915569c56dd', '9f8b49e7-cd35-4115-8e2a-a4bc71ceab78',
        'aa2aa826-bc0f-4b0c-b36f-979b2b104e28', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('fbb8236b-1be8-4aaa-b028-fa517d3336e4', 'df70cc34-0233-4ed5-89f4-5864507b42a4',
        'aa2aa826-bc0f-4b0c-b36f-979b2b104e28', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7744572d-c123-4a88-b50a-4ee9013837c3', '4b4b663a-bc9c-4eb4-ba80-f86adc0951f9',
        'aa2aa826-bc0f-4b0c-b36f-979b2b104e28', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1a0cca15-4317-4664-9cfc-dbf1a875adea', '231e38c1-fb35-4262-9a80-ea7a4d0a00ba',
        'aa2aa826-bc0f-4b0c-b36f-979b2b104e28', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7ee238a6-7bc8-4f00-9821-589df7f425f4', '57008dea-844d-44c7-8adc-6389295384c7',
        'aa2aa826-bc0f-4b0c-b36f-979b2b104e28', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('18e3eb4a-83f6-41e6-baa3-e2cceedd5310', 'a214c6f9-029b-444d-82a0-8bc98a044a43',
        'aa2aa826-bc0f-4b0c-b36f-979b2b104e28', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b799d04c-43d3-4201-801b-c3aeab1d6c59', '630e876e-62d7-498b-aae9-f8326e875369',
        'aa2aa826-bc0f-4b0c-b36f-979b2b104e28', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('07d9c0cf-2388-4467-ae1a-498293556ca8', '1521cd72-8dc2-463a-8cef-2c8c8166493b',
        'aa2aa826-bc0f-4b0c-b36f-979b2b104e28', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('35587687-d3c7-4b74-9170-fec758a7791c', '4c411dfd-41e6-4c53-bb7b-37cc54c1c8e8',
        'aa2aa826-bc0f-4b0c-b36f-979b2b104e28', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a658ad7f-c872-4312-a5c5-18d825428564', '92bb831c-040f-4686-8acd-f42d8629ba7b',
        'aa2aa826-bc0f-4b0c-b36f-979b2b104e28', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3ac7600d-653d-4b83-a5a7-0f1261066971', 'fe8d890a-abea-44fc-92fe-ba3678289387',
        'aa2aa826-bc0f-4b0c-b36f-979b2b104e28', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('84f58901-fa93-45ee-95c3-8de1effe4333', '4de87bed-0d07-419e-9991-32658cdb0a9d',
        'aa2aa826-bc0f-4b0c-b36f-979b2b104e28', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('cba8f5b5-50bf-429d-abe4-83c40f99109a', '7570b82c-a85d-446c-9a92-5c0bb332a8a3',
        'aa2aa826-bc0f-4b0c-b36f-979b2b104e28', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('357e1d91-056f-4589-a613-f643408162e4', 'b8b056d3-228d-4363-8f43-a1fed1da8695',
        'aa2aa826-bc0f-4b0c-b36f-979b2b104e28', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6742f76c-888f-4256-aa9f-0e2afa9c0e63', '5a08407a-ba00-4be3-bbc6-c50dc256d8f5',
        'aa2aa826-bc0f-4b0c-b36f-979b2b104e28', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9108d9b1-19ed-4d0a-83b7-4400351256a8', 'cac14782-c714-49d4-803d-6bdfb7fb8707',
        'aa2aa826-bc0f-4b0c-b36f-979b2b104e28', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('85b38e47-be99-494d-a8f7-00d1ff908be9', '3d723b44-2db7-4730-af04-6007ae7d2178',
        'aa2aa826-bc0f-4b0c-b36f-979b2b104e28', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('95d35c4c-dbf4-41b7-b557-0021ff24a3b7', '9a4f51df-c428-4a18-9055-511e0ae7b6d8',
        'aa2aa826-bc0f-4b0c-b36f-979b2b104e28', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('efe541d8-eab0-416e-b62c-b5d065389126', 'fd1edc81-f470-4dbe-95cf-ea6ad5e85cf2',
        'aa2aa826-bc0f-4b0c-b36f-979b2b104e28', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('041fec92-9793-4913-9088-d6443cca3eab', '6e2740d2-ef18-4564-b8c7-9f7214308f81',
        'aa2aa826-bc0f-4b0c-b36f-979b2b104e28', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6502798f-e03f-4160-bda3-e6f9b1dd7c1c', '926c446b-9db8-4b9c-a406-ed40dff69e34',
        'aa2aa826-bc0f-4b0c-b36f-979b2b104e28', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('deceddc9-8e52-4954-a7cc-abd2f4ed4a2b', 'eaa9530f-bb8c-453f-b634-c8599039e296',
        'aa2aa826-bc0f-4b0c-b36f-979b2b104e28', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('bad7b2f3-ccff-4130-9a2c-d1c95148a0b7', 'bdc5f279-42bf-491c-b87a-409b3c7bff89',
        'aa2aa826-bc0f-4b0c-b36f-979b2b104e28', 2, current_timestamp, current_timestamp);

-- politician 'ef63f015-5776-4b1e-a458-3fc10534bac4'
insert into QuestionAnswer
values ('b912b626-b10b-426a-9b14-385fa121d0d6', 'a335650d-06b4-4e92-ba77-d5f8964ceb82',
        'ef63f015-5776-4b1e-a458-3fc10534bac4', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('844116fe-2aea-41f7-86ec-4485882b701f', '46df8b49-923c-4f91-8362-5196efbb71e2',
        'ef63f015-5776-4b1e-a458-3fc10534bac4', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('dea115c9-6e52-479e-9854-96e67ed3a3e0', '5f277258-ba7b-492c-b451-673eaa5957c0',
        'ef63f015-5776-4b1e-a458-3fc10534bac4', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('227de883-17d1-4993-9f0c-ee8407b2b8a3', '007ebae0-31cb-40fb-93ad-c2f980caee14',
        'ef63f015-5776-4b1e-a458-3fc10534bac4', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ebe07794-a74a-4a4c-915b-a4942411fe1c', '8ae0f13d-e699-4617-a4ba-672e6ccc0edc',
        'ef63f015-5776-4b1e-a458-3fc10534bac4', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f0c9d8f6-1fd1-4087-a193-3ca22f4bf62e', 'dee756b8-f4f2-474a-88f4-e7f4fea7275a',
        'ef63f015-5776-4b1e-a458-3fc10534bac4', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8628cc49-a940-484f-8e16-af887b584bff', 'b8ec593e-93b8-4bab-95dd-cfff5c526d54',
        'ef63f015-5776-4b1e-a458-3fc10534bac4', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5979f909-30c6-4b7f-bdd0-5fd7dad89845', '6f9db124-e0ae-409d-b943-5be0cbc836e5',
        'ef63f015-5776-4b1e-a458-3fc10534bac4', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('15a9d40c-494d-4df9-a21d-5b89253ab379', '616bf16a-470d-494e-ad8b-b230e80dafb3',
        'ef63f015-5776-4b1e-a458-3fc10534bac4', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0c7765d2-daed-452b-b013-6677c01e5b39', '6c05b44c-34de-48a4-8d3c-6015b268c456',
        'ef63f015-5776-4b1e-a458-3fc10534bac4', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('27c0b7bc-5da0-499d-8b9b-21969b3568e5', '3ac4a61c-f510-4d59-84cc-e957dbeedd8e',
        'ef63f015-5776-4b1e-a458-3fc10534bac4', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ddf26193-f784-4a00-86a0-7714737eaaa1', 'f4f5632d-00ae-4be2-aff8-c83da3c21519',
        'ef63f015-5776-4b1e-a458-3fc10534bac4', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c3684588-2699-4426-b73d-f6d6713a556c', '4917d24b-e50c-4fa9-ac12-37a0d298f41f',
        'ef63f015-5776-4b1e-a458-3fc10534bac4', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7a25cb06-07a6-40f9-b342-d966bda9823b', 'aee92954-3fab-449d-bc56-7ec47df873cb',
        'ef63f015-5776-4b1e-a458-3fc10534bac4', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2e77b4e5-c14f-4777-b23c-13276365d6e1', '19d57226-91df-4c5a-92f4-7b7d774ea8c4',
        'ef63f015-5776-4b1e-a458-3fc10534bac4', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8259db3d-89fc-4a28-9c4b-c9d41571e4c6', '81f2e7c9-6871-44e3-a432-b0fd050dd187',
        'ef63f015-5776-4b1e-a458-3fc10534bac4', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('49e2db45-bc2f-4837-ac65-9f40f10ed64c', '377a4b78-e58a-4d13-875f-817cd1693ece',
        'ef63f015-5776-4b1e-a458-3fc10534bac4', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1cdb73ad-34bf-4479-8965-2b0fb735e9d3', '54e790a7-9741-408e-9327-3377df0e9b6e',
        'ef63f015-5776-4b1e-a458-3fc10534bac4', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3c135075-ef68-4872-b0fb-f38ea81c2cbc', '5dce5233-88d5-4b52-94de-6465ace4be98',
        'ef63f015-5776-4b1e-a458-3fc10534bac4', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f83d7e15-9912-4698-956c-29be591640b8', '63aa0cb7-202d-4c54-85ae-051e8249115d',
        'ef63f015-5776-4b1e-a458-3fc10534bac4', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e9f7396e-2026-41cb-89bc-cf8a329c01a3', 'fb59e236-0633-46ca-a8b5-c0d7596ee10e',
        'ef63f015-5776-4b1e-a458-3fc10534bac4', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('84bb358f-06e8-4453-9ba1-26513f305a49', '154147b7-aff2-4ff1-89cf-fcd6616ca6d2',
        'ef63f015-5776-4b1e-a458-3fc10534bac4', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('29cdaf8a-e591-430d-bcf0-fa18f0912c8c', '6e8b2868-8094-46d3-95be-2397eb9d5237',
        'ef63f015-5776-4b1e-a458-3fc10534bac4', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('82c0bf9e-f231-4b6e-bf26-fcd1eca4988b', '112cc8ee-b996-4b19-9192-9e82b92aae94',
        'ef63f015-5776-4b1e-a458-3fc10534bac4', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('59f315bc-6529-4ada-9fcc-69d50ca295f6', '60c4bebf-411f-456f-9eab-5afd98fde9c7',
        'ef63f015-5776-4b1e-a458-3fc10534bac4', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b2163f74-7294-4b0c-a5d7-723b5c233777', 'c393d2b5-6e50-4d7a-ad40-e112851e0711',
        'ef63f015-5776-4b1e-a458-3fc10534bac4', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('74d27dcd-c30f-40a7-84af-f57af10573c7', '38630605-5c28-4b5c-b042-93c43bf23ebc',
        'ef63f015-5776-4b1e-a458-3fc10534bac4', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('093f2c3a-146c-4e92-839e-43570d35ded2', 'cc721727-53e6-4b1c-9d85-c97c46b5422e',
        'ef63f015-5776-4b1e-a458-3fc10534bac4', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('fbc963a3-72e4-4302-8d14-0bca444038c8', 'ccb39a89-f63e-4537-90cd-e3186178ae1f',
        'ef63f015-5776-4b1e-a458-3fc10534bac4', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2d550e0d-f3a0-40c9-ac1f-75a301a1d8f1', 'b34bfec1-ee6c-46bc-9d52-99e90b59fe12',
        'ef63f015-5776-4b1e-a458-3fc10534bac4', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('01eded26-7fa5-4f7a-8ac6-9db17df53913', '6b7955fe-fb44-4b68-92b5-13aedcce4e76',
        'ef63f015-5776-4b1e-a458-3fc10534bac4', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3141912a-c7e6-4029-9514-2024d3700caa', '204814c3-bf71-4b17-9727-c6d435976da6',
        'ef63f015-5776-4b1e-a458-3fc10534bac4', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('dd2ae86a-bbd9-4cab-9474-4bebe261edd7', 'd118e4c3-08b7-4c8e-95de-81b8715b6f1d',
        'ef63f015-5776-4b1e-a458-3fc10534bac4', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c573fd69-c258-43ae-bb15-a06a802fe823', 'db255fa3-e68a-47b3-9651-a7cc95b33689',
        'ef63f015-5776-4b1e-a458-3fc10534bac4', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e6736e60-8cdb-45aa-b878-03c54fc1146d', '42b30d8f-b8eb-46be-93ee-446f2d1d2706',
        'ef63f015-5776-4b1e-a458-3fc10534bac4', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('93308039-f554-4227-bbb5-2e508b122528', '69126fb1-3e3f-4741-b6a4-91678103ccfe',
        'ef63f015-5776-4b1e-a458-3fc10534bac4', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('727acce8-db9e-4ba4-85d1-56f02f7608c6', 'a4f7f094-e1ff-4280-aa2f-33e17fb03d07',
        'ef63f015-5776-4b1e-a458-3fc10534bac4', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8f283cf6-6d4d-4fd9-a1c8-2dc9c188fde5', '9f8b49e7-cd35-4115-8e2a-a4bc71ceab78',
        'ef63f015-5776-4b1e-a458-3fc10534bac4', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6d125d06-dbad-423b-ad65-c0b6583e883c', 'df70cc34-0233-4ed5-89f4-5864507b42a4',
        'ef63f015-5776-4b1e-a458-3fc10534bac4', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('303a75b3-935f-40e1-b4ee-c9a9ca7853d8', '4b4b663a-bc9c-4eb4-ba80-f86adc0951f9',
        'ef63f015-5776-4b1e-a458-3fc10534bac4', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b7cd8be8-3c53-4a25-9d37-8b5ae8ef297f', '231e38c1-fb35-4262-9a80-ea7a4d0a00ba',
        'ef63f015-5776-4b1e-a458-3fc10534bac4', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('19115d70-f623-486c-b8b8-0f4bc2a6fda4', '57008dea-844d-44c7-8adc-6389295384c7',
        'ef63f015-5776-4b1e-a458-3fc10534bac4', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('360b937f-f44b-494c-95ee-e45f84edb6f6', 'a214c6f9-029b-444d-82a0-8bc98a044a43',
        'ef63f015-5776-4b1e-a458-3fc10534bac4', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('deb07e4e-ae70-4e2e-8a9e-f26130316850', '630e876e-62d7-498b-aae9-f8326e875369',
        'ef63f015-5776-4b1e-a458-3fc10534bac4', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('83d7035f-dc4f-4116-b901-bf89fee1a956', '1521cd72-8dc2-463a-8cef-2c8c8166493b',
        'ef63f015-5776-4b1e-a458-3fc10534bac4', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b0903bda-03a9-4809-94a2-c23710fedfdb', '4c411dfd-41e6-4c53-bb7b-37cc54c1c8e8',
        'ef63f015-5776-4b1e-a458-3fc10534bac4', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3d09125c-023e-4ce4-924c-09836a8b9f20', '92bb831c-040f-4686-8acd-f42d8629ba7b',
        'ef63f015-5776-4b1e-a458-3fc10534bac4', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('06ef322e-b5f7-4d4b-9a93-5d9b274fb5b6', 'fe8d890a-abea-44fc-92fe-ba3678289387',
        'ef63f015-5776-4b1e-a458-3fc10534bac4', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('abc2a87e-d007-4af6-a1dd-bf9cc07487e3', '4de87bed-0d07-419e-9991-32658cdb0a9d',
        'ef63f015-5776-4b1e-a458-3fc10534bac4', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5b8650a8-e0ca-49c8-87cd-f571f2cabb70', '7570b82c-a85d-446c-9a92-5c0bb332a8a3',
        'ef63f015-5776-4b1e-a458-3fc10534bac4', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('71fa94b5-35e7-49c5-a850-198ae7e9b53e', 'b8b056d3-228d-4363-8f43-a1fed1da8695',
        'ef63f015-5776-4b1e-a458-3fc10534bac4', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('fb60b711-3253-4351-ae43-476c95f007a8', '5a08407a-ba00-4be3-bbc6-c50dc256d8f5',
        'ef63f015-5776-4b1e-a458-3fc10534bac4', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('553de0e5-53a2-4456-a083-0f9bf0174d2a', 'cac14782-c714-49d4-803d-6bdfb7fb8707',
        'ef63f015-5776-4b1e-a458-3fc10534bac4', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('10981865-065b-4706-9183-d91541e20e62', '3d723b44-2db7-4730-af04-6007ae7d2178',
        'ef63f015-5776-4b1e-a458-3fc10534bac4', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d5f5ccd3-fde5-4862-99e4-3087cb8338cd', '9a4f51df-c428-4a18-9055-511e0ae7b6d8',
        'ef63f015-5776-4b1e-a458-3fc10534bac4', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('38974471-6d1f-4e58-8cae-bc0ada14e3a3', 'fd1edc81-f470-4dbe-95cf-ea6ad5e85cf2',
        'ef63f015-5776-4b1e-a458-3fc10534bac4', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f989b49d-5eff-481e-88df-5804ce0339d0', '6e2740d2-ef18-4564-b8c7-9f7214308f81',
        'ef63f015-5776-4b1e-a458-3fc10534bac4', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c16c6646-1c18-40af-b80f-dd257807162d', '926c446b-9db8-4b9c-a406-ed40dff69e34',
        'ef63f015-5776-4b1e-a458-3fc10534bac4', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('dc90c2fc-11b6-4a88-8c34-52b343060316', 'eaa9530f-bb8c-453f-b634-c8599039e296',
        'ef63f015-5776-4b1e-a458-3fc10534bac4', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4bdecd1a-be0f-4814-b34d-38c88854caa1', 'bdc5f279-42bf-491c-b87a-409b3c7bff89',
        'ef63f015-5776-4b1e-a458-3fc10534bac4', 2, current_timestamp, current_timestamp);

-- politician '8dee210a-cd6e-41fa-8191-52104772ec17'
insert into QuestionAnswer
values ('d61c90bb-b1b4-4dec-8db1-5c405f588b3d', 'a335650d-06b4-4e92-ba77-d5f8964ceb82',
        '8dee210a-cd6e-41fa-8191-52104772ec17', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('bc15d830-2208-43e5-b092-ee32fa703702', '46df8b49-923c-4f91-8362-5196efbb71e2',
        '8dee210a-cd6e-41fa-8191-52104772ec17', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3b3a757a-b0d2-4a7e-880a-d68634350cbd', '5f277258-ba7b-492c-b451-673eaa5957c0',
        '8dee210a-cd6e-41fa-8191-52104772ec17', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6ef56782-3389-4c17-b5d4-69c359c97c0f', '007ebae0-31cb-40fb-93ad-c2f980caee14',
        '8dee210a-cd6e-41fa-8191-52104772ec17', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('29d03272-c5e4-4de2-b503-5ca60fceb36b', '8ae0f13d-e699-4617-a4ba-672e6ccc0edc',
        '8dee210a-cd6e-41fa-8191-52104772ec17', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('bf566f12-7698-41d6-9b98-e416ffaf7671', 'dee756b8-f4f2-474a-88f4-e7f4fea7275a',
        '8dee210a-cd6e-41fa-8191-52104772ec17', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a393f2f2-c50c-466c-a417-ac4ebf9b70bf', 'b8ec593e-93b8-4bab-95dd-cfff5c526d54',
        '8dee210a-cd6e-41fa-8191-52104772ec17', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('394c3564-0993-4412-a366-c0621b0f561e', '6f9db124-e0ae-409d-b943-5be0cbc836e5',
        '8dee210a-cd6e-41fa-8191-52104772ec17', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('25dca4d5-6b21-4fcc-9a34-37eb6ae3e181', '616bf16a-470d-494e-ad8b-b230e80dafb3',
        '8dee210a-cd6e-41fa-8191-52104772ec17', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c9de9fa4-d0af-4d11-a15b-ece95864e14c', '6c05b44c-34de-48a4-8d3c-6015b268c456',
        '8dee210a-cd6e-41fa-8191-52104772ec17', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5eb4126d-e852-4d5c-9d28-aee4c4d14320', '3ac4a61c-f510-4d59-84cc-e957dbeedd8e',
        '8dee210a-cd6e-41fa-8191-52104772ec17', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b056a8f7-f47f-4c30-a4db-5627dd75e12c', 'f4f5632d-00ae-4be2-aff8-c83da3c21519',
        '8dee210a-cd6e-41fa-8191-52104772ec17', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('34ba404d-aec2-4a3c-9bba-e21f2d57e464', '4917d24b-e50c-4fa9-ac12-37a0d298f41f',
        '8dee210a-cd6e-41fa-8191-52104772ec17', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8f2a39ed-7819-4924-bb4b-8a690fcdb316', 'aee92954-3fab-449d-bc56-7ec47df873cb',
        '8dee210a-cd6e-41fa-8191-52104772ec17', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('fdcd2e8b-eb84-4fd7-93b5-c0a4539471c6', '19d57226-91df-4c5a-92f4-7b7d774ea8c4',
        '8dee210a-cd6e-41fa-8191-52104772ec17', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('97c5ba19-5f26-4e91-93c8-05f60afd65e8', '81f2e7c9-6871-44e3-a432-b0fd050dd187',
        '8dee210a-cd6e-41fa-8191-52104772ec17', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f8b84e07-6dfb-4734-ac02-30a8d5baeea7', '377a4b78-e58a-4d13-875f-817cd1693ece',
        '8dee210a-cd6e-41fa-8191-52104772ec17', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('fa028d0b-267b-4400-9289-08334dd7dc95', '54e790a7-9741-408e-9327-3377df0e9b6e',
        '8dee210a-cd6e-41fa-8191-52104772ec17', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2fcd706c-32ea-4366-badb-9833994061e8', '5dce5233-88d5-4b52-94de-6465ace4be98',
        '8dee210a-cd6e-41fa-8191-52104772ec17', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2fb977de-671a-4fd1-93ba-a87a55b41978', '63aa0cb7-202d-4c54-85ae-051e8249115d',
        '8dee210a-cd6e-41fa-8191-52104772ec17', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('97bfa0c0-e020-4e67-8027-f4a4cf7d906f', 'fb59e236-0633-46ca-a8b5-c0d7596ee10e',
        '8dee210a-cd6e-41fa-8191-52104772ec17', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('45b5382b-b57f-4443-afe4-5433dc238ece', '154147b7-aff2-4ff1-89cf-fcd6616ca6d2',
        '8dee210a-cd6e-41fa-8191-52104772ec17', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e7695f4f-a1be-4545-bef9-62f83d264a13', '6e8b2868-8094-46d3-95be-2397eb9d5237',
        '8dee210a-cd6e-41fa-8191-52104772ec17', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('aab9dc15-fe9a-420d-aeee-914810862037', '112cc8ee-b996-4b19-9192-9e82b92aae94',
        '8dee210a-cd6e-41fa-8191-52104772ec17', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('181d709a-09bd-4efb-92ac-8063946d4e87', '60c4bebf-411f-456f-9eab-5afd98fde9c7',
        '8dee210a-cd6e-41fa-8191-52104772ec17', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d2ea79c7-dc65-4944-8d39-b7c2a05293df', 'c393d2b5-6e50-4d7a-ad40-e112851e0711',
        '8dee210a-cd6e-41fa-8191-52104772ec17', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('bcd3fb0e-c7b7-4d30-ba60-a8e85c1c25a2', '38630605-5c28-4b5c-b042-93c43bf23ebc',
        '8dee210a-cd6e-41fa-8191-52104772ec17', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a878d9c9-ab1a-4e78-bdea-0276e86282db', 'cc721727-53e6-4b1c-9d85-c97c46b5422e',
        '8dee210a-cd6e-41fa-8191-52104772ec17', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c9a5e2f8-c8de-4640-a83d-1da413fb03b4', 'ccb39a89-f63e-4537-90cd-e3186178ae1f',
        '8dee210a-cd6e-41fa-8191-52104772ec17', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('6281af21-6234-4be4-83c1-636bd6305a9f', 'b34bfec1-ee6c-46bc-9d52-99e90b59fe12',
        '8dee210a-cd6e-41fa-8191-52104772ec17', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a500dc8b-bb10-47d7-9fb1-68695cdee379', '6b7955fe-fb44-4b68-92b5-13aedcce4e76',
        '8dee210a-cd6e-41fa-8191-52104772ec17', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('fe2e9245-f250-46e4-b014-d378e51e0bed', '204814c3-bf71-4b17-9727-c6d435976da6',
        '8dee210a-cd6e-41fa-8191-52104772ec17', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4d4867e2-085d-4ddc-a5fc-c1af63610f48', 'd118e4c3-08b7-4c8e-95de-81b8715b6f1d',
        '8dee210a-cd6e-41fa-8191-52104772ec17', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d0b03ed6-cac2-4308-b4bb-e2f671c6a0d6', 'db255fa3-e68a-47b3-9651-a7cc95b33689',
        '8dee210a-cd6e-41fa-8191-52104772ec17', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a2f52cad-d0ac-4297-89b3-50f367975058', '42b30d8f-b8eb-46be-93ee-446f2d1d2706',
        '8dee210a-cd6e-41fa-8191-52104772ec17', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e1e75ee1-b726-4a79-aa3e-f767b3f605bc', '69126fb1-3e3f-4741-b6a4-91678103ccfe',
        '8dee210a-cd6e-41fa-8191-52104772ec17', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a6a751a5-f4bd-4506-9b69-af233f6d52d2', 'a4f7f094-e1ff-4280-aa2f-33e17fb03d07',
        '8dee210a-cd6e-41fa-8191-52104772ec17', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9506555c-e889-4a3e-94a5-172f2124dde7', '9f8b49e7-cd35-4115-8e2a-a4bc71ceab78',
        '8dee210a-cd6e-41fa-8191-52104772ec17', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('171fd3fe-a388-4835-9efa-04f432698ed9', 'df70cc34-0233-4ed5-89f4-5864507b42a4',
        '8dee210a-cd6e-41fa-8191-52104772ec17', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b0369115-0a70-492d-9b35-4d64cc2208b2', '4b4b663a-bc9c-4eb4-ba80-f86adc0951f9',
        '8dee210a-cd6e-41fa-8191-52104772ec17', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('bf956137-64e0-4243-a955-08079c7f0acc', '231e38c1-fb35-4262-9a80-ea7a4d0a00ba',
        '8dee210a-cd6e-41fa-8191-52104772ec17', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4987dd8d-d6b8-44b5-924e-be31a6ec9c9c', '57008dea-844d-44c7-8adc-6389295384c7',
        '8dee210a-cd6e-41fa-8191-52104772ec17', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8b7bf729-fc08-4c8c-9d9f-14b79dc43e28', 'a214c6f9-029b-444d-82a0-8bc98a044a43',
        '8dee210a-cd6e-41fa-8191-52104772ec17', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('21fbe0ca-d5fd-429a-9cd5-19b7ac408bcc', '630e876e-62d7-498b-aae9-f8326e875369',
        '8dee210a-cd6e-41fa-8191-52104772ec17', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('e4741a9a-8c9d-4573-8e32-14620d631c7d', '1521cd72-8dc2-463a-8cef-2c8c8166493b',
        '8dee210a-cd6e-41fa-8191-52104772ec17', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('34da780e-710d-4529-91d2-2239dc43d967', '4c411dfd-41e6-4c53-bb7b-37cc54c1c8e8',
        '8dee210a-cd6e-41fa-8191-52104772ec17', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('435b0d5e-9a3a-4eaa-924f-c959fe885248', '92bb831c-040f-4686-8acd-f42d8629ba7b',
        '8dee210a-cd6e-41fa-8191-52104772ec17', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8977f1b6-1c08-4a61-8009-034707d9793d', 'fe8d890a-abea-44fc-92fe-ba3678289387',
        '8dee210a-cd6e-41fa-8191-52104772ec17', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f6d81d67-f713-435a-bf92-7e1227d2906f', '4de87bed-0d07-419e-9991-32658cdb0a9d',
        '8dee210a-cd6e-41fa-8191-52104772ec17', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b0fb0645-2e83-4abf-ba28-893cb39dbb4c', '7570b82c-a85d-446c-9a92-5c0bb332a8a3',
        '8dee210a-cd6e-41fa-8191-52104772ec17', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f78d4f06-2307-4efb-a56b-6de0762a6bed', 'b8b056d3-228d-4363-8f43-a1fed1da8695',
        '8dee210a-cd6e-41fa-8191-52104772ec17', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f184a723-fd0e-4481-ac7b-a399fa095738', '5a08407a-ba00-4be3-bbc6-c50dc256d8f5',
        '8dee210a-cd6e-41fa-8191-52104772ec17', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1236dbf6-af7c-41e9-b3ec-cba65d771307', 'cac14782-c714-49d4-803d-6bdfb7fb8707',
        '8dee210a-cd6e-41fa-8191-52104772ec17', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('881f9697-5b21-4547-ab9b-09472a1ca255', '3d723b44-2db7-4730-af04-6007ae7d2178',
        '8dee210a-cd6e-41fa-8191-52104772ec17', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f900c727-fd23-4d3a-b4b7-fc422790a625', '9a4f51df-c428-4a18-9055-511e0ae7b6d8',
        '8dee210a-cd6e-41fa-8191-52104772ec17', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ca4f9233-47b7-499d-9cc8-4a9974e6efdd', 'fd1edc81-f470-4dbe-95cf-ea6ad5e85cf2',
        '8dee210a-cd6e-41fa-8191-52104772ec17', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('fe064a91-7af4-4189-8f29-1ac570fe3c4e', '6e2740d2-ef18-4564-b8c7-9f7214308f81',
        '8dee210a-cd6e-41fa-8191-52104772ec17', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b7511017-eddb-46ff-b84e-893ce4739577', '926c446b-9db8-4b9c-a406-ed40dff69e34',
        '8dee210a-cd6e-41fa-8191-52104772ec17', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8c2726f1-edcb-4b20-ab63-0a1ece180ef8', 'eaa9530f-bb8c-453f-b634-c8599039e296',
        '8dee210a-cd6e-41fa-8191-52104772ec17', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4306e4c8-8251-413e-89b6-33cc8569eb47', 'bdc5f279-42bf-491c-b87a-409b3c7bff89',
        '8dee210a-cd6e-41fa-8191-52104772ec17', 3, current_timestamp, current_timestamp);

-- politician 'c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a'
insert into QuestionAnswer
values ('a3110703-9025-436b-b8b0-048aca87fece', 'a335650d-06b4-4e92-ba77-d5f8964ceb82',
        'c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c57fc931-4a2c-49eb-a99b-b2a3260abf91', '46df8b49-923c-4f91-8362-5196efbb71e2',
        'c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b90320a3-d9ce-48f9-ac8d-2e2b55c06510', '5f277258-ba7b-492c-b451-673eaa5957c0',
        'c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3cce4f43-0c34-4247-b967-1196ff9079c2', '007ebae0-31cb-40fb-93ad-c2f980caee14',
        'c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f5a79c7f-c009-4dc7-8dc3-e54a47136661', '8ae0f13d-e699-4617-a4ba-672e6ccc0edc',
        'c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ceb5ffb5-5414-4281-8ebf-e41116ded991', 'dee756b8-f4f2-474a-88f4-e7f4fea7275a',
        'c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ef7e3bf6-93d7-42cc-bfed-002c3b5f787c', 'b8ec593e-93b8-4bab-95dd-cfff5c526d54',
        'c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b41897b7-d759-497c-b991-67c0e36aeb6e', '6f9db124-e0ae-409d-b943-5be0cbc836e5',
        'c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('56c3e0f8-561f-48ab-a388-06e7f210052c', '616bf16a-470d-494e-ad8b-b230e80dafb3',
        'c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('fe684d99-2e04-442c-9613-4c8197463f07', '6c05b44c-34de-48a4-8d3c-6015b268c456',
        'c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9cf12706-7a24-4ee7-a6ce-af6d5403a83b', '3ac4a61c-f510-4d59-84cc-e957dbeedd8e',
        'c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('8e8cf519-76b4-4f74-9dea-be5f75fa2c3d', 'f4f5632d-00ae-4be2-aff8-c83da3c21519',
        'c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('cc56a5de-4f45-4a0d-b10e-3038cd2f5d80', '4917d24b-e50c-4fa9-ac12-37a0d298f41f',
        'c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f7653d26-6f24-4ee1-a657-578e88285159', 'aee92954-3fab-449d-bc56-7ec47df873cb',
        'c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ae1f5e63-7fa9-48dc-be7f-1955add32e52', '19d57226-91df-4c5a-92f4-7b7d774ea8c4',
        'c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('9b20e3d0-7603-404d-b62d-3822d5002291', '81f2e7c9-6871-44e3-a432-b0fd050dd187',
        'c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5e01c3a1-2bee-4c14-9ee7-1c1555763b89', '377a4b78-e58a-4d13-875f-817cd1693ece',
        'c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ce484d0d-a400-4654-90c0-f50f6dfb4045', '54e790a7-9741-408e-9327-3377df0e9b6e',
        'c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('26686b06-699c-4295-87c1-fb64288d218b', '5dce5233-88d5-4b52-94de-6465ace4be98',
        'c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('bb3bec56-e99c-45ff-8e7d-fa9c49e50fd1', '63aa0cb7-202d-4c54-85ae-051e8249115d',
        'c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('3a217bf6-8a4b-4301-9ada-f1490e596e2d', 'fb59e236-0633-46ca-a8b5-c0d7596ee10e',
        'c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('7a417b6e-7db1-4b4b-9bf6-f48f183f6f26', '154147b7-aff2-4ff1-89cf-fcd6616ca6d2',
        'c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('edb32fda-7a6f-43bc-a34e-ae869804496b', '6e8b2868-8094-46d3-95be-2397eb9d5237',
        'c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2ece702e-4e49-44fc-b3d2-8a6b45906166', '112cc8ee-b996-4b19-9192-9e82b92aae94',
        'c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4ce3adce-1db9-4fc8-92d1-703ef19b2383', '60c4bebf-411f-456f-9eab-5afd98fde9c7',
        'c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0622d004-691b-4a81-a1a8-c0637e10426c', 'c393d2b5-6e50-4d7a-ad40-e112851e0711',
        'c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('21e23132-412d-4bb8-bb5b-ab1fe1b2f508', '38630605-5c28-4b5c-b042-93c43bf23ebc',
        'c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('afefcb6f-6abc-4690-941a-ae0d59d83a03', 'cc721727-53e6-4b1c-9d85-c97c46b5422e',
        'c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('67df4c9f-8857-454c-965a-3d8112b72a2c', 'ccb39a89-f63e-4537-90cd-e3186178ae1f',
        'c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a81b22cf-7040-4d77-8764-41d8ff2fce33', 'b34bfec1-ee6c-46bc-9d52-99e90b59fe12',
        'c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c3c7dc95-5615-416b-b413-fccf5c05f0a6', '6b7955fe-fb44-4b68-92b5-13aedcce4e76',
        'c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('046a5726-5e14-4bc6-8bce-588336e80982', '204814c3-bf71-4b17-9727-c6d435976da6',
        'c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d63598f0-f560-470e-a8cf-cd33053bca36', 'd118e4c3-08b7-4c8e-95de-81b8715b6f1d',
        'c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4fc8b8b6-7b7e-4779-a5f3-9de2097af285', 'db255fa3-e68a-47b3-9651-a7cc95b33689',
        'c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2ee02ff0-89bc-40b5-a45e-8e5e978b7f9e', '42b30d8f-b8eb-46be-93ee-446f2d1d2706',
        'c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d9b8e6c2-7fec-4925-9cce-713474788cf7', '69126fb1-3e3f-4741-b6a4-91678103ccfe',
        'c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('117fc905-cac9-47f6-b34c-4df214498115', 'a4f7f094-e1ff-4280-aa2f-33e17fb03d07',
        'c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('ed35900d-de51-4d2e-8c03-8120d7ff46d0', '9f8b49e7-cd35-4115-8e2a-a4bc71ceab78',
        'c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('60707164-15dc-4383-981e-03cad9e5cf97', 'df70cc34-0233-4ed5-89f4-5864507b42a4',
        'c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('0c99eff7-a873-40f2-ae49-e9436b425948', '4b4b663a-bc9c-4eb4-ba80-f86adc0951f9',
        'c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('1361b706-23eb-4d2f-9851-3c2642b3171e', '231e38c1-fb35-4262-9a80-ea7a4d0a00ba',
        'c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('377df227-1738-4eab-a330-61368e7d3cfa', '57008dea-844d-44c7-8adc-6389295384c7',
        'c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('d6e49348-36d9-4b06-a34a-e5e1e5428e0c', 'a214c6f9-029b-444d-82a0-8bc98a044a43',
        'c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('94b765ea-15b5-4886-bdb8-726da24a2d5c', '630e876e-62d7-498b-aae9-f8326e875369',
        'c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('4be24001-d59a-4b23-91c5-bbf981283bb0', '1521cd72-8dc2-463a-8cef-2c8c8166493b',
        'c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a9e98b90-811f-4dbc-8c1e-0cc133463dba', '4c411dfd-41e6-4c53-bb7b-37cc54c1c8e8',
        'c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('70b25d6f-1c78-4fe3-a994-742ff27b3b47', '92bb831c-040f-4686-8acd-f42d8629ba7b',
        'c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('505a6029-b418-4626-9f63-4e8b108cde42', 'fe8d890a-abea-44fc-92fe-ba3678289387',
        'c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('2ca76598-823f-4cf4-91e5-7997f8479322', '4de87bed-0d07-419e-9991-32658cdb0a9d',
        'c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5db89f74-e4c0-43b2-9f1c-e735fdaabb6c', '7570b82c-a85d-446c-9a92-5c0bb332a8a3',
        'c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b1343537-7638-4c8d-a3c5-abf6c871b269', 'b8b056d3-228d-4363-8f43-a1fed1da8695',
        'c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('f0a46a3b-bb7f-47f8-88e4-129d0db606b5', '5a08407a-ba00-4be3-bbc6-c50dc256d8f5',
        'c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c5bd8a15-1290-4a37-bbf9-6dc2e96e7c9c', 'cac14782-c714-49d4-803d-6bdfb7fb8707',
        'c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('026d38a1-2ba6-4361-9464-91c28abcbf89', '3d723b44-2db7-4730-af04-6007ae7d2178',
        'c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('39ed842e-447c-4272-9f98-a4ca453b1396', '9a4f51df-c428-4a18-9055-511e0ae7b6d8',
        'c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', 3, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('b601612f-22a3-4cee-8082-ecf45b4b1368', 'fd1edc81-f470-4dbe-95cf-ea6ad5e85cf2',
        'c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('5caf7afa-a5f9-48c7-acd3-9d71a414d69a', '6e2740d2-ef18-4564-b8c7-9f7214308f81',
        'c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', 1, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('202c0845-72c3-4e7f-88ee-c5f464d068ad', '926c446b-9db8-4b9c-a406-ed40dff69e34',
        'c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', 4, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('c60d0fbe-5bc1-4255-bd76-9e24a33f4f2a', 'eaa9530f-bb8c-453f-b634-c8599039e296',
        'c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', 2, current_timestamp, current_timestamp);
insert into QuestionAnswer
values ('a4e4eb69-42ac-4018-9916-b59536b79867', 'bdc5f279-42bf-491c-b87a-409b3c7bff89',
        'c5648fcd-d80d-48ab-b9a5-4db2a64f4a5a', 1, current_timestamp, current_timestamp);