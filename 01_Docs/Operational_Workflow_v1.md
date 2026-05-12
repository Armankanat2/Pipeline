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
| Source Audit | `02_source_register.md` | `02_Research/<Course>/02_Sources` |
| Job Decomposition | `03_job_map.md` | `02_Research/<Course>/03_Job_Map` |
| Learning Outcomes | `04_learning_outcomes.md` | `02_Research/<Course>/04_Outcomes` |
| Course Architecture | `05_course_architecture.md` | `02_Research/<Course>/05_Architecture` |
| Scriptwriting | `06_slide_script.md` | `02_Research/<Course>/06_Script` |
| Asset Collection | `07_asset_register.md` | `02_Research/<Course>/07_Assets` |
| Visual Production | `course-code_08_draft_vX.Y.pptx` | `02_Research/<Course>/08_Deck` |
| QA Review | `09_qa_report.md` | `02_Research/<Course>/09_QA` |
| Test Creation | `10_test_pack.md` | `02_Research/<Course>/10_Test` |
| Pilot | `11_pilot_report.md` | `02_Research/<Course>/11_Pilot` |
| Release | `12_release_note.md` + final pack | `05_Release/<Course>` |
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
- opredelit tsel, auditoriyu, format i soglasuyushchikh;
- zafiksirovat ogranicheniya.

Rezultat:

- `01_course_brief.md`

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
- sdelat bazovuyu kartu professii.

Rezultat:

- `03_job_map.md`

### Stage 04 - Learning Outcomes

Deystviya:

- sformulirovat, chto dolzhen umet slushatel;
- svyazat outcomes s prakticheskim povedeniem;
- podumat, kak eto proverit.

Rezultat:

- `04_learning_outcomes.md`

### Stage 05 - Course Architecture

Deystviya:

- sobrat moduli kursa;
- opredelit poryadok blokov;
- razmetit nagruzku i format.

Rezultat:

- `05_course_architecture.md`

### Stage 06 - Scriptwriting

Deystviya:

- opisat kazhdyy slayd;
- zadat tezis, tsel, vizual i speaker notes;
- svyazat slaydy s outcomes i testom.

Rezultat:

- `06_slide_script.md`

### Stage 07 - Asset Collection

Deystviya:

- podobrat foto, skhemy, ikony i drugie assets;
- proverit ikh kachestvo i umestnost;
- zafiksirovat status assets.

Rezultat:

- `07_asset_register.md`

### Stage 08 - Visual Production

Deystviya:

- sobrat draft deka po script;
- primenit master-template;
- proverit chitaemost i logiku.

Rezultat:

- `course-code_08_draft_v0.1.pptx`

### Stage 09 - QA Review

Deystviya:

- proyti metodicheskiy review;
- proyti tekhnicheskiy review;
- proyti dizayn-review;
- klassifitsirovat pravki.

Rezultat:

- `09_qa_report.md`

### Stage 10 - Test Creation

Deystviya:

- sobrat voprosy po outcomes;
- sdelat situatsionnye i vizualnye voprosy;
- podgotovit klyuch.

Rezultat:

- `10_test_pack.md`

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

### Prezentatsii

Format:

`course-code_NN_stage_vX.Y.pptx`

Primer:

- `RV_08_draft_v0.1.pptx`
- `RV_08_review_v0.7.pptx`
- `RV_12_release_v1.0.pptx`

### PDF

Format:

`course-code_12_release_vX.Y.pdf`

Primer:

- `RV_12_release_v1.0.pdf`

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

- finalnyy `PPTX`;
- finalnyy `PDF`;
- `speaker_notes` ili metodichka;
- finalnyy test;
- release note;
- update log pri nalichii obnovleniy.

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
- `Update_Log_Template_v1.md`
