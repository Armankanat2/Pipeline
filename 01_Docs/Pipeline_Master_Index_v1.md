# Pipeline Master Index v1

## Status

- Status: `active`
- Data sborki: `2026-05-13`
- Owner: `vy`
- Naznachenie: yedinaya tochka vkhoda v `Pipeline`

## Zachem nuzhen etot index

Etot dokument nuzhen, chtoby ne iskhat logiku sistemy po desyatkam faylov.

On pomogaet bystro ponyat:

- kak ustroen `Pipeline`;
- s kakikh dokumentov nachinat;
- kakoy artefakt dolzhen poyavitsya na kazhdom etape;
- kakie shablony i QA-gates k chemu privyazany;
- gde seychas zhivet aktivnyy kurs;
- kakie kontury yavlyayutsya obyazatelnymi, a kakie optionalnymi.

## 1. Chto takoe `Pipeline`

`Pipeline` - eto production-sistema dlya sborki klientskikh uchebnykh paketov, gde prezentatsiya yavlyaetsya tsentralnym artefaktom, no ne yedinstvennym rezultatom.

Minimalnyy paket mozhet vklyuchat:

- `PPTX`
- `PDF`
- test
- `answer key`
- notes dlya lektora
- worker-materialy
- online handoff
- publishing handoff
- release/admin contour

## 2. Bystryy start

Esli nuzhno vosstanovit kontekst posle pauzy, chitat v takom poryadke:

1. `README.md`
2. `01_Docs/Pipeline_Blueprint_v1.md`
3. `01_Docs/Operational_Workflow_v1.md`
4. `01_Docs/Definition_of_Done_v1.md`
5. `04_QA/QA_Gates_v1.md`
6. task board konkretnogo kursa

## 3. Baza sistemy

### 3.1 Klyuchevye dokumenty

| Dokument | Rol v sisteme |
|---|---|
| `README.md` | korotkiy vkhod v repo i strukturu |
| `01_Docs/Pipeline_Blueprint_v1.md` | glavnaya model `Pipeline` i ego logika |
| `01_Docs/Operational_Workflow_v1.md` | prakticheskiy poryadok raboty po etapam |
| `01_Docs/Definition_of_Done_v1.md` | kriterii zavershennosti etapov |
| `04_QA/QA_Gates_v1.md` | pravila prokhoda mezhdu etapami |
| `01_Docs/Pipeline_Gap_Audit_2026-05-12_v1.md` | chto v sisteme uzhe zakryto i chego ne khvatalo |
| `01_Docs/Feedback_Learning_Loop_v0.1.md` | kak posle release rabotat s signalami i obratnoy svyazyu |
| `01_Docs/Adaptive_Rules_v0.1.md` | kak kurs adaptiruetsya bez lomki yadra |
| `01_Docs/Resource_Focus_Model_v0.1.md` | kak sistema kontsentriruet usiliya na uzkikh mestakh |
| `01_Docs/Continuous_Improvement_Loop_v0.1.md` | kak signaly prevrashchayutsya v uluchsheniya shablonov, protsessa i pravil |
| `01_Docs/Legal_Source_Policy_v0.1.md` | kak rabotat s RF-law references bez vymyshlennoy normativki i tikhikh zamen |
| `01_Docs/Pipeline_Perspective_Manifesto_v0.1.md` | kak ne razduvat sistemu pri smotrenii v budushchie kontury |

### 3.2 Issledovatelskie, no poka neblokiruyushchie sloi

| Dokument | Status | Zachem nuzhen |
|---|---|---|
| `01_Docs/Legal_Risk_Register_v0.1.md` | `inactive / research-only` | pravovaya watchlist bez ostanovki production-raboty |
| `01_Docs/Online_Gateway_Concept_v0.1.md` | `concept` | baza dlya budushchego online/gateway contour |
| `01_Docs/Multilingual_Delivery_Concept_v0.1.md` | `concept` | baza dlya mnogoiazychnogo delivery |
| `01_Docs/Language_Rollout_Plan_v0.1.md` | `plan` | marshrut dlya language packs |

### 3.3 Authoritative core vs notes-sloi

- `README.md`, `Pipeline_Blueprint_v1.md`, `Operational_Workflow_v1.md`, `Definition_of_Done_v1.md` i `QA_Gates_v1.md` schitayutsya authoritative source dlya pravila sistemy.
- Dokumenty vida `*_Notes_v0.1.md`, `*_Concept_v0.1.md`, `*_Plan_v0.1.md` i drugie neaktivnye sloi schitayutsya vspomogatelnymi nablyudatelnymi dokumentami i ne mogut perepisyvat authoritative core.
- Esli notes-dokument protivorechit authoritative core, pravitsya notes-dokument ili on schitaetsya ustarevshim signalom, a ne naoborot.
- Pri sborke novoy professii source of truth beretsya iz authoritative core i task board konkretnogo kursa, a ne iz starogo notes-sloya drugogo keysa.

## 4. Struktura repozitoriya

| Papka | Soderzhanie |
|---|---|
| `01_Docs` | blueprint, workflow, pravila, koncepty |
| `02_Research` | rabochie kursy, issledovanie, script, assets, QA i testy do release |
| `03_Templates` | shablony artefaktov |
| `04_QA` | pravila proverki i gates |
| `05_Release` | gotovye release-kontury i klientskie pakety |

### 4.1 Nadstroika poverkh stage-papok

| Kontur | Rol |
|---|---|
| `_Control` | upravlenie variantom, resheniyami, fokusom i uzkimi mestami kursa |
| `_Feedback` | sborka signalov, retrospective i perevod opyta v uluchsheniya |

## 5. Karta etapov

| Stage | Etap | Glavnyy rezultat | Bazovyy fayl |
|---|---|---|---|
| `00` | Backlog | reshenie brat kurs v rabotu | backlog / tracker |
| `01` | Intake | ramka kursa i usloviya sborki | `01_course_brief.md` |
| `02` | Source Audit | reestr istochnikov i probelov | `02_source_register.md` |
| `03` | Job Decomposition | karta professii, riskov i oshibok | `03_job_map.md` |
| `04` | Learning Outcomes | proveryaemye outcomes | `04_learning_outcomes.md` |
| `05` | Course Architecture | logika modulya i struktura kursa | `05_course_architecture.md` |
| `06` | Scriptwriting | pokadrovy / poslaydovy kontur | `06_slide_script.md` |
| `07` | Asset Collection | visual layer i rights-status | `07_asset_register.md` |
| `08` | Visual Production | draft deck | `course-code_08_draft_vX.Y.pptx` |
| `09` | QA Review | konsolidirovannaya proverka | `09_qa_report.md` |
| `10` | Test Creation | test, key, proverka | `10_test_pack.md` |
| `11` | Pilot | pilot feedback i plan pravok | `11_pilot_report.md` |
| `12` | Release | release-pack | `05_Release/<Course>` |
| `13` | Maintenance | post-release podderzhka | `13_update_log.md` |

Poverkh etikh stage-rukavov rabotaet control-loop:

- `Course Profile`
- `Variant Profile`
- `Decision Log`
- `Bottleneck Register`
- `Critical Path Map`
- `Focus Board`

I feedback-loop:

- `Pilot Report`
- `Retrospective`
- `Client Feedback`
- `Improvement Items`

## 6. Obyazatelnyy marshrut artefaktov

| Stage | Artefakt | Bazovyy shablon | Gde lezhit |
|---|---|---|---|
| `01` | course brief | `03_Templates/Course_Brief_Template.md` | `02_Research/<Course>/01_Brief` |
| `02` | source register | `03_Templates/Source_Register_Template_v1.md` | `02_Research/<Course>/02_Sources` |
| `03` | job map | `03_Templates/Job_Map_Template_v1.md` | `02_Research/<Course>/03_Job_Map` |
| `04` | learning outcomes | `03_Templates/Learning_Outcomes_Template_v1.md` | `02_Research/<Course>/04_Outcomes` |
| `05` | course architecture | `03_Templates/Course_Architecture_Template_v1.md` | `02_Research/<Course>/05_Architecture` |
| `05` | worker behavior map | `03_Templates/Worker_Behavior_Map_Template_v1.md` | `02_Research/<Course>/05_Architecture` |
| `06` | slide script | `03_Templates/Slide_Script_Template.md` | `02_Research/<Course>/06_Script` |
| `07` | asset register | `03_Templates/Asset_Register_Template_v1.md` | `02_Research/<Course>/07_Assets` |
| `09` | QA report | `03_Templates/QA_Report_Template_v1.md` | `02_Research/<Course>/09_QA` |
| `10` | test pack | `03_Templates/Test_Pack_Template_v1.md` | `02_Research/<Course>/10_Test` |
| `10` | answer key | `03_Templates/Answer_Key_Template_v1.md` | `02_Research/<Course>/10_Test` |
| `11` | pilot report | `03_Templates/Pilot_Report_Template_v1.md` | `02_Research/<Course>/11_Pilot` |
| `13` | update log | `03_Templates/Update_Log_Template_v1.md` | `05_Release/<Course>` |
| control | course profile / decision log / focus board | sootvetstvuyushchie control docs | `02_Research/<Course>/_Control` |
| control | legal review form | `03_Templates/Legal_Review_Form_Template_v1.md` | `02_Research/<Course>/_Control` |
| feedback | pilot / retrospective / improvement items | sootvetstvuyushchie docs i templates | `02_Research/<Course>/_Feedback` |

## 7. Optional-kontury

Eti kontury ne vsegda nuzhny, no sistema uzhe umeet ikh derzhat.

### 7.1 Intake expansion

| Artefakt | Shablon |
|---|---|
| brand profile | `03_Templates/Brand_Profile_Template_v1.md` |
| design options pack | `03_Templates/Design_Options_Pack_Template_v1.md` |
| design system spec | `03_Templates/Design_System_Spec_Template_v1.md` |
| print production spec | `03_Templates/Print_Production_Spec_Template_v1.md` |
| publishing handoff spec | `03_Templates/Publishing_Handoff_Spec_Template_v1.md` |
| language style guide | `03_Templates/Language_Style_Guide_Template_v1.md` |
| terminology glossary | `03_Templates/Terminology_Glossary_Template_v1.md` |
| ITR requirements | `03_Templates/ITR_Presentation_Requirements_Template_v1.md` |

### 7.2 Release contour

| Artefakt | Shablon |
|---|---|
| instructor guide | `03_Templates/Instructor_Guide_Template_v1.md` |
| lecturer questions bank | `03_Templates/Lecturer_Questions_Bank_Template_v1.md` |
| worker instruction | `03_Templates/Worker_Instruction_Template_v1.md` |
| worker handout | `03_Templates/Worker_Handout_Template_v1.md` |
| release note | `03_Templates/Release_Note_Template_v1.md` |
| test check sheet | `03_Templates/Test_Check_Sheet_Template_v1.md` |
| preflight checklist | `03_Templates/Preflight_Checklist_Template_v1.md` |
| publishing handoff pack | `03_Templates/Publishing_Handoff_Pack_Template_v1.md` |

### 7.3 Online contour

| Artefakt | Shablon |
|---|---|
| online adaptation map | `03_Templates/Online_Adaptation_Map_Template_v1.md` |
| module summary pack | `03_Templates/Module_Summary_Pack_Template_v1.md` |
| narration pack | `03_Templates/Narration_Pack_Template_v1.md` |
| online handoff pack | `03_Templates/Online_Handoff_Pack_Template_v1.md` |
| gateway spec | `03_Templates/Gateway_Spec_Template_v1.md` |
| gateway manifest | `03_Templates/Gateway_Manifest_Template_v1.md` |
| gateway event map | `03_Templates/Gateway_Event_Map_Template_v1.md` |

### 7.4 Multilingual contour

| Artefakt | Shablon |
|---|---|
| terminology glossary multilang | `03_Templates/Terminology_Glossary_Multilang_Template_v1.md` |
| master transcript | `03_Templates/Master_Transcript_Template_v1.md` |
| visual label map | `03_Templates/Visual_Label_Map_Template_v1.md` |

### 7.5 Client / support contour

| Artefakt | Shablon |
|---|---|
| client feedback form | `03_Templates/Client_Feedback_Form_Template_v1.md` |
| short feedback form | `03_Templates/Client_Feedback_Form_Short_Template_v1.md` |
| client support offer | `03_Templates/Client_Support_Offer_Template_v1.md` |

### 7.6 Legal review contour

| Artefakt | Shablon / pravilo |
|---|---|
| legal review form | `03_Templates/Legal_Review_Form_Template_v1.md` |
| legal source policy | `01_Docs/Legal_Source_Policy_v0.1.md` |
| legal compliance checklist | `04_QA/Legal_Compliance_Checklist_v1.md` |

## 8. QA-logika

Osnovnaya ideya:

`odin etap -> odin artefakt -> odin QA gate -> perekhod dalshe`

### Baza QA

- glavnaya shkala i pravilo prokhoda: `04_QA/QA_Gates_v1.md`
- opredelenie gotovnosti artefaktov: `01_Docs/Definition_of_Done_v1.md`
- priem signalov i ikh minimalnaya klassifikatsiya: `04_QA/Feedback_Intake_Rules_v1.md`
- dlya kursov s RF-law references dopolnitel'naya proverka: `04_QA/Legal_Compliance_Checklist_v1.md`
- sistemnyy backlog uluchsheniy: `04_QA/Improvement_Backlog.md`

### Kriticheskie proverki, kotorye nelzya zabyvat

- stage 06: u slayda dolzhna byt odna mysl, source basis i chestnaya asset dependency;
- stage 02 i stage 13: RF-law references dolzhny prokhodit cherez `Legal Source Policy` i review-formu, a ne tikhuyu zamenu;
- stage 07: po klyuchevym visualam dolzhen byt ponyaten rights-status;
- stage 09: script, notes, terminology i publishing contour dolzhny byt sostykovany;
- stage 12: release ne dolzhen vykhodit bez rights-cleared key assets, ponyatnogo handoff i proverennoy release-komplektnosti.

## 9. Tekushchiy aktivnyy kurs

### Kurs

- Aktivnyy keys: `Montazhnik_lesov`
- Rabochaya papka: `02_Research/Montazhnik_lesov`
- Release-papka: `05_Release/Montazhnik_lesov`
- Task board: `02_Research/Montazhnik_lesov/01_Brief/03_task_board_v1.0.md`
- Control contour: `02_Research/Montazhnik_lesov/_Control`
- Feedback contour: `02_Research/Montazhnik_lesov/_Feedback`

### Tekushchee sostoyanie na moment obnovlennogo control review

- source of truth po statusu: task board kursa
- stage: `post-formal QA / revise`
- chto realno uzhe est:
  - `06_slide_script_v0.2.md` razvernut po moduliam `01-09`;
  - `07_asset_register_v0.3.md` i build-ready paket dlya `A-44 - A-48` uzhe sobrany;
  - formal'nyy QA proyden s resheniem `revise`, posle chego sobran `10_test_pack_v0.2.md`;
  - release-, notes- i online-layer uzhe nachaty kak starter drafts, no ne schitayutsya finalnym release.
- sleduyushchiy artefakt dlya zhestkogo perekhoda dal'she: real build dlya `A-44 - A-48` i targeted QA po test-validity
- posle etogo logicheskaya svyazka: `post-QA fix -> targeted QA -> final test / pilot / release`
- control-focus poverkh etogo: `visual anchor build + evidence gap + legal follow-up po normativnym istochnikam`

### Rabochiy marshrut dlya aktivnogo kursa

Pri vozvrate v aktivnyy kurs smotret v takom poryadke:

1. task board;
2. `_Control/Course_Profile.md`;
3. `_Control/Focus_Board.md`;
4. nujnyy stage-artefakt;
5. `_Feedback/*`, esli est svezhie signaly, QA-srez ili pilot.

## 10. Kak polzovatsya indexom v rabote

### Esli nuzhno ponimat, chto delat dalshe po kursu

Smotret:

1. task board kursa
2. etot index
3. `Operational_Workflow_v1.md`
4. nuzhnyy shablon artefakta

### Esli nuzhno zayti v sistemu s nulya

Smotret:

1. `README.md`
2. `Pipeline_Blueprint_v1.md`
3. `Operational_Workflow_v1.md`
4. `QA_Gates_v1.md`
5. etot index

### Esli nuzhno sdelat novyy kurs po shablonu

Minimalnyy kontur:

1. sozdat papku kursa v `02_Research`
2. sozdat `_Control` i `_Feedback`
3. zapolnit brief i `Course Profile`
4. sobrat source register
5. sdelat job map
6. zafiksirovat outcomes
7. sobrat architecture i aktivnyy variant
8. razvernut script
9. dobavit assets
10. proyti QA
11. sobrat test
12. vyvesti v release

## 11. Chto etot index ne delaet

- ne zamenyaet `Blueprint`;
- ne zamenyaet `Operational Workflow`;
- ne zamenyaet task board konkretnogo kursa;
- ne yavlyaetsya release-note;
- ne aktiviruet issledovatelskie sloi avtomaticheski.

## 12. Reshenie po gotovnosti

- Master index sobran: `yes`
- Mozhno li ispolzovat kak yedinuyu tochku vkhoda: `yes`
- Nuzhno li eshche rasshiryat po mere rosta sistemy: `yes`
