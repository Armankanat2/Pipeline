# Operational Workflow v1

## 1. Naznachenie

Etot dokument opisyvaet prakticheskiy poryadok raboty s kursom vnutri production pipeline:

- kto chto delaet;
- kak dvigaetsya fayl;
- gde lezhat artefakty;
- kak nazyvayutsya versii;
- kak prokhodyat pravki i release.

## 2. Operatsionnaya model

Rabota stroitsya po printsipu:

`odin etap -> odin artefakt -> odin QA gate -> perekhod dalshe`

Vazhno:

- ne nachinat sleduyushchiy etap bez artefakta predydushchego;
- ne pereskakivat cherez QA gate;
- ne pravit finalnyy deck mimo systemy versiy;
- vse resheniya fiksirovat v markdown, a ne derzhat v golove.

## 3. Folder Architecture

Kornevaya papka proekta:

`Pipeline`

Rabochaya struktura:

- `01_Docs` - reglamenty, blueprint, workflow i pravila sistemy
- `02_Research` - analiza, karty professiy i rabochie materialy po kursam
- `03_Templates` - shablony artefaktov
- `04_QA` - QA gates, review-otchety i cheklisty
- `05_Release` - finalnye pakety kursov

## 4. Struktura odnogo kursa

Dlya kazhdogo kursa rekomenduetsya sozdavat otdelnuyu papku vnutri `02_Research` i `05_Release`.

Primer:

- `02_Research/Rabota_na_vysote`
- `05_Release/Rabota_na_vysote`

Vnutri rabochey papki kursa:

- `01_Brief`
- `02_Sources`
- `03_Job_Map`
- `04_Outcomes`
- `05_Architecture`
- `06_Script`
- `07_Assets`
- `08_Deck`
- `09_QA`
- `10_Test`
- `11_Pilot`

## 5. Artifact Map

Minimalnoe razmeshchenie artefaktov:

| Etap | Artefakt | Gde khranit |
|---|---|---|
| Intake | `01_course_brief.md` | `02_Research/<Course>/01_Brief` |
| Intake | `01_brand_profile.md` | `02_Research/<Course>/01_Brief` |
| Intake | `01_design_options_pack.md` | `02_Research/<Course>/01_Brief` |
| Intake | `01_itr_requirements.md` | `02_Research/<Course>/01_Brief` |
| Source Audit | `02_source_register.md` | `02_Research/<Course>/02_Sources` |
| Job Decomposition | `03_job_map.md` | `02_Research/<Course>/03_Job_Map` |
| Learning Outcomes | `04_learning_outcomes.md` | `02_Research/<Course>/04_Outcomes` |
| Course Architecture | `05_course_architecture.md` | `02_Research/<Course>/05_Architecture` |
| Course Architecture | `05_worker_behavior_map.md` | `02_Research/<Course>/05_Architecture` |
| Scriptwriting | `06_slide_script.md` | `02_Research/<Course>/06_Script` |
| Asset Collection | `07_asset_register.md` | `02_Research/<Course>/07_Assets` |
| Visual Production | `course-code_08_draft_vX.Y.pptx` | `02_Research/<Course>/08_Deck` |
| QA Review | `09_qa_report.md` | `02_Research/<Course>/09_QA` |
| Test Creation | `10_test_pack.md` + `10_answer_key.md` | `02_Research/<Course>/10_Test` |
| Pilot | `11_pilot_report.md` | `02_Research/<Course>/11_Pilot` |
| Release | `12_instructor_guide.md` + `12_lecturer_questions_bank.md` + `12_online_adaptation_map.md` + `12_module_summary_pack.md` + `12_narration_pack.md` + `12_online_handoff_pack.md` + `12_release_note.md` + final pack | `05_Release/<Course>` |
| Maintenance | `13_update_log.md` | `05_Release/<Course>` |

## 6. Workflow po etapam

### Stage 00 - Backlog

Na vkhode:

- ideya kursa;
- zapros ot zakazchika;
- potrebnost biznesa.

Na vykhode:

- reshenie, chto kurs idet v rabotu.

### Stage 01 - Intake

Deystviya:

- zapolnit course brief;
- esli nuzhny raznye zakazchiki, sobrat brand profile;
- podgotovit design options pack, esli klientu nuzhen vybor mezhdu gotovymi vizualnymi shell-resheniyami;
- zafiksirovat tselevoy slozhnostnyy track: `worker / ITR / mixed`;
- otdelno proverit, nuzhen li voobshche `ITR` track dlya etogo kursa;
- esli `ITR` track ne nuzhen, ne sobirat `01_itr_requirements.md` i ne razduvat kurs organizatsionnym sloem;
- esli nuzhna ITR-versiya, podgotovit `01_itr_requirements.md` so spiskom organizatsionnykh trebovaniy i voprosov, kotorye nado raskryt glubzhe;
- otdelno proverit, nuzhna li `online portability`, dazhe esli kurs poka ne vypuskaetsya kak LMS ili self-paced produkt;
- opredelit tsel, auditoriyu, format i soglasuyushchikh;
- opredelit, nuzhen li `online-ready` ili `self-paced` kontur;
- zafiksirovat sostav klientskogo paketa;
- zafiksirovat, budet li klient vybirat odin iz `10` dizayn-kontseptov i kakoy variant vybran;
- zafiksirovat ogranicheniya.

Rezultat:

- `01_course_brief.md`
- pri neobkhodimosti `01_design_options_pack.md`
- pri neobkhodimosti `01_itr_requirements.md`

### Stage 02 - Source Audit

Deystviya:

- sobrat normativy, reglamenty, foto, video i ekspertnye materialy;
- otdelit obyazatelnye istochniki ot vspomogatelnykh;
- zafiksirovat probely.

Rezultat:

- `02_source_register.md`

### Stage 03 - Job Decomposition

Deystviya:

- razbit professiyu na bloki raboty;
- vydelit instrumenty, oshibki, risk points i TB;
- esli nuzhen `ITR` track, vydelit organizatsionnye roli, tochki kontrolya, resheniya o dopuske, eskalatsii i raspredelenii otvetstvennosti;
- sdelat bazovuyu kartu professii.

Rezultat:

- `03_job_map.md`

### Stage 04 - Learning Outcomes

Deystviya:

- sformulirovat, chto dolzhen umet slushatel;
- svyazat outcomes s prakticheskim povedeniem;
- ne dobavlyat ITR-outcomes, esli kurs ne imeet ITR-track;
- podumat, kak eto proverit.

Rezultat:

- `04_learning_outcomes.md`

### Stage 05 - Course Architecture

Deystviya:

- sobrat moduli kursa;
- opredelit poryadok blokov;
- razmetit nagruzku i format;
- opredelit, chto v module yavlyaetsya `core`, `standard` i `extended`;
- zafiksirovat slide budget dlya `Short`, `Standard` i `Deep`.
- dlya `worker` track sobrat obyazatelnyy `worker behavior map` iz `5-7 critical behaviors per course`;
- tolko dlya `ITR` track zafiksirovat organizatsionnye voprosy i upravlencheskie bloki, kotorye trebuyut usilennogo osveshcheniya.

Rezultat:

- `05_course_architecture.md`
- dlya `worker` track pri neobkhodimosti `05_worker_behavior_map.md`

### Stage 06 - Scriptwriting

Deystviya:

- opisat kazhdyy slayd;
- ukazat, dlya kakogo tracka slayd sobiraetsya: `worker / ITR / mixed`;
- zadat tezis, tsel, vizual i speaker notes;
- dlya kazhdogo novogo slayda srazu zafiksirovat opornuyu lektorskuyu podachu, chtoby `instructor guide` mog pokryvat script bez otstavaniya;
- esli nuzhen online-kontur, zadat osnovu dlya voiceover, direct link i QR-slot;
- esli kurs potentsialno dolzhen pereyti v online, zafiksirovat dlya slayda ili mikrobloka: `on-screen text`, `narration`, `interaction hook`, `knowledge check hook`, `resource / reference role`;
- svyazat slaydy s outcomes i testom;
- dlya `worker` track svyazat slaydy s critical behaviors;
- tolko dlya `ITR` track svyazat slaydy s organizatsionnymi voprosami, rolami i upravlencheskimi resheniyami;
- pometchat, kakie slaydy obyazatelny dlya vsekh versiy kursa, a kakie mozhno ubrat v korotkoy sborke bez polomki logiki.

Rezultat:

- `06_slide_script.md`

### Stage 07 - Asset Collection

Deystviya:

- podobrat foto, skhemy, ikony i drugie assets;
- otdelit kontentnye assets ot brand assets;
- dlya kazhdogo klyuchevogo bloka proverit nalichie `correct / incorrect / risk` visuals;
- proverit nalichie logotipov, palitry, klientskikh nazvaniy i drugikh white-label elementov;
- proverit ikh kachestvo i umestnost;
- zafiksirovat status assets.

Rezultat:

- `07_asset_register.md`

### Stage 08 - Visual Production

Deystviya:

- sobrat draft deka po script;
- primenit master-template;
- primenit vybrannyy dizayn-kontsept ili rekomendovannyy `generic`, esli klient ne sdelal vybora;
- vnesti brand shell cherez temu, mastery i peremennye bloky, a ne ruchnuyu perekrasku kazhdogo slayda;
- esli kurs idet v on-line, proverit klikabelnost ssylok, mest pod QR i ponyatnost bez lektora;
- esli kurs nuzhdaetsya v budushchey online-portability, proverit, chto deck ne yavlyaetsya edinstvennym mestom, gde zhivet logika povtoreniya, ozvuchki i referensov;
- proverit chitaemost i logiku.

Rezultat:

- `course-code_08_draft_v0.1.pptx`

### Stage 09 - QA Review

Deystviya:

- proyti metodicheskiy review;
- proyti tekhnicheskiy review;
- proyti dizayn-review;
- proverit, chto `instructor guide` pokryvaet `100%` aktualnogo `slide script`;
- proyti `lecturer-ready` review: est li teaching paths, khvataet li tayminga, est li opora na slozhnye voprosy i ponyatno li, kak peredavat kurs drugomu lektoru;
- proverit, ponyatno li eto rabochemu bez metodista ryadom, esli kurs sobiraetsya dlya `worker` track;
- proverit, dostatochno li raskryty organizatsionnye i upravlencheskie voprosy, esli kurs sobiraetsya dlya `ITR` track;
- klassifitsirovat pravki.

Rezultat:

- `09_qa_report.md`

### Stage 10 - Test Creation

Deystviya:

- sobrat voprosy po outcomes;
- sdelat situatsionnye i vizualnye voprosy;
- dlya `worker` track obespechit minimum `30%` situatsionnykh i minimum `30%` vizualnykh voprosov, esli yest dostatochnaya visual baza;
- dlya `ITR` track dobavit voprosy po organizatsii rabot, dopusku, kontrolyu i raspredeleniyu otvetstvennosti;
- esli kurs planiruetsya dlya budushchego online, pometchat, kakie voprosy mogut stat `module knowledge checks`, a kakie ostanutsya finalnym quiz;
- podgotovit otdelnyy klyuch;
- zafiksirovat, kak blok voprosov vkluchaetsya v prezentatsiyu i kak sobiraetsya versiya bez nego.

Rezultat:

- `10_test_pack.md` i `10_answer_key.md`

### Stage 11 - Pilot

Deystviya:

- provesti probnyy zapusk;
- sobrat feedback;
- razobrat oshibki i provaly po vnimaniyu.

Rezultat:

- `11_pilot_report.md`

### Stage 12 - Release

Deystviya:

- sobrat finalnye fayly;
- sobrat soglasovannye versii prezentatsii `Short / Standard / Deep` ili klientskie `korotkaya / srednyaya / dlinnaya`;
- sdelat pri neobkhodimosti varianty `with-test` i `no-test`;
- pri multi-client release sobrat branded pakety po klientam bez izmeneniya uchebnogo yadra;
- eksportirovat klientskie versii v `PPTX` i `PDF`;
- pri on-line konture sobrat `voiceover-ready` ili ozvuchennuyu versiyu i proverit paru `QR + direct link`;
- sobrat instructor guide dlya lektora i eksportirovat ego v `PDF`;
- sobrat otdelnyy `lecturer questions bank` i proverit, chto on sootvetstvuet aktualnoy versii script i testa;
- sobrat `online adaptation map`, `module summary pack`, `narration pack` i finalnyy `online handoff pack`, esli kurs dolzhen byt portable v budushchiy online-produkt;
- proverit, chto instructor guide `QR-ready`, i na kazhdoy stranitse ostavlen slot pod opzionalnyy QR-kod;
- prilozhit otdelnyy klyuch otvetov;
- prinyat poslednie pravki;
- zafiksirovat versiyu.

Rezultat:

- `12_release_note.md` i release package v `05_Release/<Course>`

### Stage 13 - Maintenance

Deystviya:

- sledit za izmeneniyami v normativakh;
- obnovlyat kurs po grafiku;
- vesti zhurnal izmeneniy.

Rezultat:

- `13_update_log.md`

## 7. File Movement

Logika dvizheniya faylov:

1. Vsya analitika i chernoviki zhivut v `02_Research`.
2. Vse pravila sistemy zhivut v `01_Docs`.
3. Vse universalnye shablony zhivut v `03_Templates`.
4. Globalnye QA pravila i rubriki zhivut v `04_QA`, a kursovye QA reports zhivut v `02_Research/<Course>/09_QA`.
5. Tolko utverzhdennye finaly peremeshchayutsya v `05_Release`.

Pravilo:

- `Research` = rabotaem
- `Release` = vydano

## 8. Naming Convention

### Papki kursov

Format:

`Nazvanie_kursa`

Primer:

- `Rabota_na_vysote`
- `Elektromontazh_baza`
- `PPE_vvodnyy_modul`

### Markdown-fayly

Format:

`NN_artifact_name_vX.Y.md`

Gde `NN` = nomer stage, k kotoromu otnositsya artefakt.

Primer:

- `01_course_brief_v1.0.md`
- `05_course_architecture_v0.3.md`
- `09_qa_report_v0.1.md`
- `12_release_note_v1.0.md`

### Pravilo mashtabiruemosti kursa

Pri sborke kursa nuzhno derzhat tri urovnya kontenta:

- `core` - minimum, bez kotorogo kurs terayet smysl ili bezopasnost;
- `standard` - rekomenduemyy obem dlya tipovoy versii;
- `extended` - rasshirenie, keysy, dopolnitelnye vizualy, uslozhnennye razbory.

Pravilo primeneniya:

- `Short` sobiraetsya iz `core` + vybrannykh `standard` blokov;
- `Standard` sobiraetsya iz `core` + osnovnogo `standard` sloya;
- `Deep` sobiraetsya iz `core` + `standard` + `extended`.

Razmery versiy:

- `Short` = klientskaya `korotkaya` ili `malaya`, do `60` slaydov + test;
- `Standard` = klientskaya `srednyaya`, `80-90` slaydov + test;
- `Deep` = klientskaya `dlinnaya` ili `bolshaya`, `110-120` slaydov + test.

Vazhno:

- ne delat otdelnye nesvyazannye skripty pod kazhduyu dlinu;
- ne razrushat svyazku `outcome -> modul -> slayd -> test` pri sokrashchenii kursa;
- sokrashchat snachala `extended`, potom chast `standard`, no ne `core`.
- esli kurs nuzhno nemnogo rasshirit dlya drugoy gruppy ili bolee glubokogo varianta, rasshirenie delayetsya za schet dobavleniya `standard` i `extended` blokov poverkh yadra.

### Pravilo vybora dizayna

Do nachala visual production mozhno davat klientu paket iz `10` dizayn-kontseptov.

Minimalnaya model:

- u kazhdogo kontsepta est kod, nazvanie i odno predlozhenie pro ego kharakter;
- u kazhdogo kontsepta est preview minimum iz `4` slaydov: cover, content, test, final;
- klient vybirayet `1` bazovyy kontsept;
- dalee v production primenyaetsya odin shell, a ne smeshannaya kombinatsiya iz neskolkikh;
- posle vybora razreshena branded adaptation, no ne razmyvanie samogo kontsepta.

### Prezentatsii

Format:

`course-code_[client-code]_NN_profile_variant_vX.Y.pptx`

Primer:

- `RV_ACME_08_deep_with-test_v0.1.pptx`
- `RV_ACME_08_standard_no-test_v0.7.pptx`
- `RV_GENERIC_12_short_with-test_v1.0.pptx`

### PDF

Format:

`course-code_[client-code]_12_profile_variant_vX.Y.pdf`

Primer:

- `RV_ACME_12_short_with-test_v1.0.pdf`
- `RV_ACME_12_standard_no-test_v1.0.pdf`

## 9. Versioning Rules

### Logika versiy

- `v0.1-v0.9` - chernoviki i rabochie iteratsii
- `v1.0` - pervyy utverzhdennyy release
- `v1.1-v1.9` - nebolshie obnovleniya
- `v2.0` - krupnoe obnovlenie ili peresborka

### Kogda menyat versiyu

- menyaetsya struktura kursa -> povyshaem minor ili major
- pravitsya otdelnyy blok bez peresborki vsego kursa -> minor
- ispravlyayutsya opechatki i melkie vizualnye pravki -> patch po vnutrennemu pravilu ili perekhod na sleduyushchuyu minor-versiyu

## 10. Pravki i review cycle

Pravki prinimayutsya ne haotichno, a paketami.

Krug review:

1. Metodicheskiy review
2. Tekhnicheskiy review
3. Finalnyy review pered release

Pravilo raboty s pravkami:

- vse zamechaniya zapisivayutsya v odin QA report;
- kazhdaya pravka imeet prioritet: `critical`, `important`, `optional`;
- v release obyazatelno zakryvayutsya `critical`;
- `optional` ne dolzhny blokirovat vypusk.

## 11. Definition of Ready dlya perekhoda

Etap mozhno peredat dalshe, esli:

- artefakt sozdan;
- artefakt lezhit v pravilnoy papke;
- artefakt nazvan po pravilu;
- proyden lokalnyy cheklist;
- postavlen status `pass`.

## 12. Production Board

Minimalnaya kanban-struktura:

- `Backlog`
- `Intake`
- `Research`
- `Design`
- `Production`
- `QA`
- `Pilot`
- `Release`
- `Archive`

Kazhdaya karta dolzhna soderzhat:

- nazvanie kursa;
- tekushchiy stage;
- owner;
- deadline;
- sleduyushchiy artefakt;
- status gate.

## 13. Solo Mode

Esli kurs delaet odin chelovek, workflow uproshchaetsya:

- handoff mezhdu rolyami zamenyaetsya samoproverkoy;
- QA gate delaetsya obyazatelnym;
- resheniya ne prinimayutsya "na glaz";
- AI ispolzuetsya dlya pervichnogo drafta, proverki peregruza i generatsii testov.

Minimalnyy ritm:

1. Sobrali artefakt.
2. Proveli mini-QA.
3. Tolko potom pereshli k sleduyushchemu etapu.

## 14. Release Package

V `05_Release/<Course>` dolzhny lezhat:

- `01_PPTX/01_With_Test` - versii prezentatsii so vstroyennym blokom voprosov;
- `01_PPTX/02_No_Test` - versii prezentatsii bez bloka voprosov;
- `02_PDF/01_With_Test` - PDF-ekvivalenty versiy so vstroyennym blokom voprosov;
- `02_PDF/02_No_Test` - PDF-ekvivalenty versiy bez bloka voprosov;
- `03_Test` - finalnyy test pack, otdelnyy `answer_key` i `test_check_sheet`;
- `04_Notes` - `speaker_notes`, instructor guide, lecturer questions bank ili metodichka;
- `08_Online_Handoff` - pakety dlya budushchego perenosa kursa v LMS, web-course ili drugoy self-paced produkt;
- `06_Worker_Materials` - A3-stendovye instruktsii i drugie pechatnye metodicheskie materialy dlya rabochikh;
- `07_Worker_Handouts` - A5-razdatochnye materialy dlya rabochikh;
- pri neobkhodimosti on-line versiya s ozvuchkoy i pryamymi ssylkami;
- `05_Admin` - `release_note`, `update_log` i soprovozhdayushchie release-fayly.

Minimalnaya matrica faylov:

- `course-code_[client-code]_12_short_with-test_vX.Y.pptx`
- `course-code_[client-code]_12_standard_with-test_vX.Y.pptx`
- `course-code_[client-code]_12_deep_with-test_vX.Y.pptx`
- `course-code_[client-code]_12_short_no-test_vX.Y.pptx`
- `course-code_[client-code]_12_standard_no-test_vX.Y.pptx`
- `course-code_[client-code]_12_deep_no-test_vX.Y.pptx`
- `course-code_[client-code]_12_short_with-test_vX.Y.pdf`
- `course-code_[client-code]_12_standard_with-test_vX.Y.pdf`
- `course-code_[client-code]_12_deep_with-test_vX.Y.pdf`
- `course-code_[client-code]_12_short_no-test_vX.Y.pdf`
- `course-code_[client-code]_12_standard_no-test_vX.Y.pdf`
- `course-code_[client-code]_12_deep_no-test_vX.Y.pdf`
- `course-code_[client-code]_12_worker-instruction_vX.Y.pdf`
- `course-code_[client-code]_12_worker-instruction_vX.Y.pptx`
- `course-code_[client-code]_12_worker-handout_vX.Y.pdf`
- `course-code_[client-code]_12_worker-handout_vX.Y.pptx`
- `course-code_[client-code]_10_test-check-sheet_vX.Y.md`
- `course-code_[client-code]_12_lecturer-questions-bank_vX.Y.pdf`
- `course-code_[client-code]_12_online-adaptation-map_vX.Y.md`
- `course-code_[client-code]_12_module-summary-pack_vX.Y.md`
- `course-code_[client-code]_12_narration-pack_vX.Y.md`
- `course-code_[client-code]_12_online-handoff-pack_vX.Y.md`

Esli zakazchiku nuzhny ne vse versii, v release note nuzhno priamo ukazat, kakie sloty ostalis neispolzovannymi.

Minimalnye trebovaniya k `06_Worker_Materials`:

- osnovnoy format `A3` dlya stendovoy versii;
- bazovoe posobie `1-5` listov;
- pri zaprose klienta mozhno sobrat dopolnitelnoe rasshirennoe posobie;
- summarnyy obem worker-paketa obychno `3-10` listov, esli eto soglasovano;
- yavnaya struktura `pered rabotoy / vo vremya raboty / posle raboty / chego delat nelzya`;
- kontent sobiraetsya cherez tablitsu `tema prezentatsii -> blok worker-materiala`;
- esli vkhodnaya tablitsa ne daet dostatochno dannykh, sobiraetsya spisok utochnyayushchikh voprosov;
- klienskiy brand shell obyazatelen;
- stranitsy prenumerovany;
- kachestvo grafiki i tipografiki dostatochno dlya pechati i laminatsii;
- pri neobkhodimosti ostavleny `QR-ready` sloty ili para `QR + direct link`.

Minimalnye trebovaniya k `07_Worker_Handouts`:

- bazovyy format `A5`;
- dopustimy dva rezhima sborki:
  - bazovaya kompaktnaia instruktsiya s ochen melkym shriftom;
  - custom-napolnenie po tablitse tem iz prezentatsii;
- brand shell zakazchika obyazatelen;
- dolzhny byt zafiksirovany nazvanie, logotipy i drugie obyazatelnye vizualnye identifikatory;
- esli po tablitse ne khvataet dannykh, dolzhen formirovat'sya spisok utochnyayushchikh voprosov.

Minimalnye trebovaniya k `03_Test/test_check_sheet`:

- po kazhdomu voprosu dolzhny byt `4` varianta otveta;
- varianty markiruyutsya kak `A / B / V / G` v markdown-baze;
- v finalnom klientskom russkoyazychnom makete eti metki vypuskayutsya kak `А / Б / В / Г`;
- pravilnyy otvet tolko odin;
- dlya kazhdogo voprosa est obyazatelnoe obyasnenie, pochemu pravilnyy imenno etot variant;
- dlya kazhdogo voprosa est korotkiy kommentariy dlya lektora;
- obem dokumenta dolzhen masshtabirovat'sya po chislu voprosov v prezentatsii.

Minimalnye trebovaniya k `04_Notes`:

- `instructor guide` dolzhen pokryvat `100%` aktualnogo `slide script`;
- v `notes` dolzhny byt razvedeny teaching paths minimum dlya `worker` i `ITR`, esli kurs podderzhivaet obe auditorii;
- dolzhen byt otdelnyy `lecturer questions bank` so slozhnymi voprosami, granitsami interpretatsii i signalami dlya eskalatsii;
- notes-package dolzhen pozvolyat novomu lektoru podgotovit zanyatie bez avtora kursa ryadom.

Minimalnye trebovaniya k `08_Online_Handoff`:

- dolzhen byt `online adaptation map` po moduliam i slaydam;
- dolzhen byt `module summary pack` s LMS-ready vkhodom i vykhodom po modulyam;
- dolzhen byt `narration pack` s transcript-ready tekstom;
- dolzhno byt ponyatno, chto perekhodit v video, chto v interaktiv, chto v quiz, a chto ostayotsya reference-blokom;
- paket dolzhen umenshat obem povtornogo proektirovaniya pri sborke novogo online-produkta.

### Client containers

Esli odin i tot zhe kurs vypuskaetsya dlya neskolkikh zakazchikov, release-papka rabotaet kak `release hub`:

- kornevoy `05_Release/<Course>` mozhno derzhat kak `generic` bazu bez klientskogo brendinga;
- klientskie pakety lezhat v `05_Release/<Course>/10_Clients/<CLIENT_CODE>`;
- vnutri kazhdogo klientskogo paketa povtoryaetsya odna i ta zhe release-logika: `PPTX`, `PDF`, `Test`, `Notes`, `Online_Handoff`, `Admin`, a pri neobkhodimosti i worker-materialy;
- `CLIENT_CODE` dolzhen byt korotkim, ASCII-sovmestimym i stabilnym, naprimer `ACME`, `ROSTEH`, `PROMSTROY`;
- zamenyaem brand shell, no ne dubliruem bez nuzhdy metodicheskie artefakty.

## 15. Chto delat dalshe

Sleduyushchie dokumenty, kotorye nuzhno sobirat posle etogo workflow:

- `Source_Register_Template_v1.md`
- `Job_Map_Template_v1.md`
- `Learning_Outcomes_Template_v1.md`
- `Course_Architecture_Template_v1.md`
- `Task_Board_Template_v1.md`
- `Release_Note_Template_v1.md`
- `QA_Report_Template_v1.md`
- `Asset_Register_Template_v1.md`
- `Pilot_Report_Template_v1.md`
- `Test_Pack_Template_v1.md`
- `Answer_Key_Template_v1.md`
- `Test_Check_Sheet_Template_v1.md`
- `Lecturer_Questions_Bank_Template_v1.md`
- `Lecturer_Ready_QA_Checklist_Template_v1.md`
- `Online_Adaptation_Map_Template_v1.md`
- `Module_Summary_Pack_Template_v1.md`
- `Narration_Pack_Template_v1.md`
- `Online_Handoff_Pack_Template_v1.md`
- `Worker_Instruction_Template_v1.md`
- `Worker_Handout_Template_v1.md`
- `Update_Log_Template_v1.md`
