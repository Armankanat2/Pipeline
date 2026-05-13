# Pipeline Stabilization Plan v0.1

## Status

- Status: `inactive / working plan`
- Data sborki: `2026-05-14`
- Owner: `vy`
- Naznachenie: ukrepit bazu i karkas `Pipeline` bez lomki stage-modeli `00-13`

## Zachem nuzhen etot plan

Etot plan nuzhen ne dlya rasshireniya sistemy, a dlya ee stabilizatsii.

Ego zadacha:

- snyat protivorechiya mezhdu bazovymi dokumentami;
- vernut odin istochnik pravdy po sostoyaniyu kursa;
- ochistit granitsy mezhdu `Research` i `Release`;
- vyrovnyat obyazatelnye artefakty i stage-gates;
- sdelat tak, chtoby novye kursy ne nasleduyut tekushchie nesostykovki.

## Chto schitaem prioritetom

Na etom etape prioritet ne v rasshirenii konturov, a v tom, chtoby baza `Pipeline` byla:

- odnoznachnoy;
- neprotivorechivoy;
- legko chitaemoy;
- masshtabiruemoy na sleduyushchie professii.

## 1. Stabilizirovat source of truth po sostoyaniyu kursa

### Problema

- `Pipeline_Master_Index`
- task board kursa
- release note

mogut govorit o raznykh stadiyakh i sleduyushchikh shagakh.

### Reshenie

- schitat task board konkretnogo kursa glavnym operatsionnym statusom;
- `Pipeline_Master_Index` derzhat kak obzornyy dokument, kotoryy obnovlyaetsya tolko pri sushchestvennom sdvige stage;
- v release note ne opisivat tekushchiy rabochiy stage kursa, a tolko release-status.

### Minimalnyy rezultat

- u kursa est odin glavniy status;
- `index` ne sporit s `task board`;
- `release note` ne podymenyaet project tracking.

## 2. Zafiksirovat granitsu `Research` vs `Release`

### Problema

Workflow govorит:

- `Research = rabotaem`
- `Release = vydano`

no v `05_Release` uzhe mogut lezhat starter drafts i neapproved materialy.

### Reshenie

- ostavit v `05_Release` tolko:
  - finaly;
  - approved release containers;
  - release-admin;
  - README i pustoformy papok, esli eto nuzhno dlya karkasa.
- vse `v0.x starter draft`, kotorye eshche ne release-grade, derzhat v `02_Research` do momenta, kogda oni realno stanovyatsya release-contour.

### Minimalnyy rezultat

- `05_Release` snova oznachaet vydachu;
- `02_Research` snova oznachaet rabochuyu zonu;
- novyy chelovek ne putayet finaly i chernoviki.

## 3. Vyrovnyat kontrakt obyazatelnykh artefaktov

### Problema

Sistema trebuet odni course-level artefakty, a aktivnyy kurs uzhe zhivet s drugimi ili bez nikh.

Kritichnye zony:

- `01_language_style_guide`
- `01_terminology_glossary`
- `01_itr_requirements`
- `multilang` artefakty

### Reshenie

- zafiksirovat `base` artefakty dlya kazhdogo kursa:
  - `01_course_brief`
  - `02_source_register`
  - `03_job_map`
  - `04_learning_outcomes`
  - `05_course_architecture`
  - `06_slide_script`
  - `07_asset_register`
- zafiksirovat `base editorial support`, kogda kurs idet dal'she chernovika:
  - `01_language_style_guide`
  - `01_terminology_glossary`
- `01_itr_requirements` sobirat tolko dlya `ITR`-track ili realnogo organizatsionnogo contoura;
- `multilang` artefakty schitat optional rasshireniem, a ne bazoy.

### Minimalnyy rezultat

- novyy kurs ne nachinaetsya s dvoynogo standarda;
- optional sloi ne maskiruyutsya pod core;
- worker-only kurs ne tyanet `ITR`-khvost.

## 4. Sostykovat `Definition of Done`, `Workflow` i `QA Gates`

### Problema

Seichas `Definition of Done` mestami slabee, chem realnye trebovaniya `Workflow` i `QA`.

### Reshenie

- proverit stage-by-stage:
  - `Stage 06`
  - `Stage 09`
  - `Stage 12`
- v `Definition of Done` dopisat tolko te trebovaniya, kotorye uzhe stali normoy v `Workflow` i `QA`;
- ne dobavlyat novye pravila, a tolko vyrovnyat uzhe sushchestvuyushchie.

### Minimalnyy rezultat

- `done` ne oznachaet odno v odnom dokumente i drugoe v drugom;
- stage gate prokhodit po odnim i tem zhe ozhidaniyam;
- operator ne gadaet, kakoy dokument silnee.

## 5. Otdelit `base` ot `expansion` uzhe na Stage 01

### Problema

Intake slishkom rano vmeshivaet:

- design selection
- print contour
- publishing contour
- online contour
- multilingual contour
- worker-materials

iz-za chego baza razmyvaetsya.

### Reshenie

- v `Stage 01` yavno razvesti:
  - `base intake`
  - `optional intake expansion`
- dlya kazhdogo expansion-sloya dobavit odnu pometku:
  - `required now`
  - `deferred`
  - `not applicable`

### Minimalnyy rezultat

- brief ne prevrashchaetsya v katalog vsekh budushchikh vozmozhnostey;
- pervyy kurs sobiraetsya kak kurs, a ne kak ves produktovyy kombayn;
- pipeline legche perenositsya na novye professii.

## 6. Pochistit formaty i yazykovye normy bazy

### Problema

Daже pri khoroshey arkhitekture sistemu razmyvayut:

- bitaya kodirovka;
- smesi alfavitov;
- plavayushchie nazvaniya artefaktov;
- statusy, zvuchashchie zrelee, chem ikh soderzhimoe.

### Reshenie

- proverit bazovye dokumenty `01_Docs` i kluchevye course-files na:
  - bituyu kirillitsu;
  - smesi alfavitov;
  - status honesty;
  - odinakovye nazvaniya artefaktov.
- otdelno proverit markirovku testovykh variantov i release-notation.

### Minimalnyy rezultat

- baza ne raznosit musor po novym kursam;
- glossary i naming ne raspolzayutsya;
- QA ne lovit odni i te zhe bazovye problemy zanovo.

## 7. Ogranichit prezhdevremennyy release-optimism

### Problema

Sistema uzhe opisyvaet release-, online- i publishing-kontury ochen podrobno, dazhe kogda course-core eshche ne zakryt.

### Reshenie

- dlya pervogo etalonnogo kursa schitat obyazatelnym uspekhom:
  - stabilnyy `course-core`
  - asset-ready contour
  - prokhodimyy QA contour
  - finalnyy test
  - minimalnyy release contour
- vse ostalnoe schitat rasshireniem, a ne bazovoy pobedoy.

### Minimalnyy rezultat

- pipeline snova sobiraetsya ot yadra k nadstroykam;
- release-plany ne ubegayut dalshe, chem dokazannaya baza;
- optional sloi ne blokiruyut zhiznesposobnost sistemy.

## Poryadok vnedreniya

Rekomenduemyy poryadok bez polomki sistemy:

1. Obnovit `Pipeline_Master_Index` i task board aktivnogo kursa.
2. Prinyat reshenie po pravilu `Research vs Release`.
3. Zafiksirovat spisok `base` i `optional` artefaktov dlya Stage `01`.
4. Vyrovnyat `Definition of Done` s `Workflow` i `QA Gates`.
5. Pochistit bazovye dokumenty po yazyku, statusam i naming.
6. Tolko posle etogo rasshiryat release-, online- i multilingual-kontury.

## Chto etot plan ne delaet

- ne dobavlyaet novyy stage;
- ne aktiviruet novye gate'y;
- ne otmenyaet uzhe sobrannye documents;
- ne trebuyet nemedlennoy peresborki aktivnogo kursa;
- ne prevraschaet `Pipeline` v audit radi audita.

## Kriteriy uspeshnoy stabilizatsii

Mozhno schitat, chto baza `Pipeline` stabilizirovana dostatochno, esli:

- task board, index i release note ne sporyat drug s drugom;
- `05_Release` perestal byt skladom starter drafts;
- `Definition of Done`, `Workflow` i `QA Gates` govoryat odnim yazykovym i operatsionnym kontraktom;
- dlya novogo kursa ponyatno, chto vkhodit v `base`, a chto yavlyaetsya expansion-layer;
- novyy operator mozhet nachat kurs bez dogadok i bez sravnivaniya pyati protivorechashchikh pravil.
