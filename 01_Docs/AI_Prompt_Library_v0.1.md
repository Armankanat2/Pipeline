# AI Prompt Library v0.1

## Status

- Status: `active`
- Data sborki: `2026-05-15`
- Owner: `vy`
- Naznachenie: perevesti povtoryaemye AI-zaprosy iz golovy operatora v povtoryaemye prompt contracts

## Zachem nuzhna eta biblioteka

Eta biblioteka nuzhna, chtoby:

- ubrat `hidden human memory` iz stage-raboty;
- delat AI-progony povtoryaemymi, a ne zavisyashchimi ot nastroeniya ili sluchaynoy formulirovki;
- sokratit poteri pri pauze, handoff ili peresmene kursa;
- derzhat AI rabotu v ramkakh authoritative core, a ne vne nego.

Eta biblioteka ne zamenyaet:

- `README.md`
- `Pipeline_Blueprint_v1.md`
- `Operational_Workflow_v1.md`
- `Definition_of_Done_v1.md`
- `QA_Gates_v1.md`

Ona tolko uskoryaet rabotu poverkh nikh.

## Obshchie pravila dlya vsekh promptov

1. Vsegda davat AI konkretnye fayly, a ne opisanie "tam gde-to est dokument".
2. Vsegda ukazyvat, kakoy stage seychas aktivnyy i kakoy artefakt dolzhen poyavitsya na vykhode.
3. Ne prosit AI vydumyvat normativnye ili system-specific detali, esli ikh net v `source register`.
4. Esli u kursa est `generic-safe` granitsa, AI dolzhen sokhranyat ee i chestno pometit probely.
5. Esli signalov nedostatochno, AI dolzhen vozvrashchat `gap list`, a ne lozhnuyu konkretnost.
6. Rezultat AI dolzhen byt prigoden k vstavke v stage-artefakt, a ne tolko "dlya razmyshleniya".
7. Posle AI-progona operator vse ravno proveryaet rezultat po DoD i sootvetstvuyushchemu QA-gate.

## Minimalnyy format vkhoda

Pered zapuskom lyubogo prompta luchshe peredat:

- nazvanie kursa i kod kursa;
- stage i tselevoy artefakt;
- aktivnyy variant: `Short / Standard / Deep`;
- tselevuyu auditoriyu: `worker / ITR / mixed`;
- relevantnye fayly-istochniki;
- chto imenno schitaetsya uspeshnym vykhodom.

## Prompt 01: Source Audit

### Kogda ispolzovat

- pri sborke ili obnovlenii `02_source_register.md`;
- pri dobore normativnoy bazy, ekspertov, foto- i video-opor;
- pri proverke, mozhno li uzhe delat course-core bez riskov lozhnoy konkretnosti.

### Obyazatelnyy vkhod

- `course brief`, esli on est;
- chernovik `source register`, esli on uzhe sozdan;
- spisok syrykh istochnikov, ssylok, failov ili signalov ot zakazchika;
- ukazanie, est li RF-law ili system-specific risk.

### Ozhidaemyy vykhod

- obnavlennyy ili predzaproektirovannyy `source register`;
- razdelenie na `required / supporting / missing`;
- otsenka `active / review / missing`;
- kratkiy `gap list`, chto blokiruet sleduyushchiy stage.

### Prompt

```text
Ty rabotaesh kak stage-operator dlya `Pipeline` na etape `02 Source Audit`.

Tvoja zadacha: na osnove peredannykh materialov sobrat ili dorabotat `source register` dlya kursa, ne vykhodya za granitsy dokazannogo.

Kontekst kursa:
- Course name: <COURSE_NAME>
- Course code: <COURSE_CODE>
- Audience: <AUDIENCE>
- Variant: <VARIANT>
- Current stage: `02 Source Audit`
- Target artifact: `02_source_register.md`

Source of truth:
- `README.md`
- `01_Docs/Pipeline_Blueprint_v1.md`
- `01_Docs/Operational_Workflow_v1.md`
- `01_Docs/Definition_of_Done_v1.md`
- `04_QA/QA_Gates_v1.md`
- additional course files: <FILE_LIST>

Sdelay sleduyushchee:
1. Prosmotri vse peredannye istochniki.
2. Razdeli ikh na `required`, `supporting` i `missing`.
3. Dlya kazhdogo istochnika otseni status: `active`, `review` ili `missing`.
4. Otdelno pokazi, kakie istochniki dayut generic-safe osnovu uzhe seychas.
5. Otdelno pokazi, kakie probely ne pozvolyayut delat system-specific utverzhdeniya.
6. Esli dannykh ne khvataet, ne vydumyvay nedostayushchee; vmesto etogo sformiruy chestnyy gap list.

Format otveta:
- kratkiy itog v 3-6 punktakh;
- tablichnyy ili polustrukturirovannyy reestr istochnikov;
- blok `Specificity boundary`;
- blok `Gap analysis`;
- blok `Next decision`, gde skazano, gotov li material k stage `03`.
```

## Prompt 02: Learning Outcomes

### Kogda ispolzovat

- pri sborke `04_learning_outcomes.md`;
- pri perevode job map v nablyudaemye i proveryaemye outcomes;
- pri proverke, ne ostalis li outcomes slishkom abstraktnymi.

### Obyazatelnyy vkhod

- `02_source_register.md`;
- `03_job_map.md`;
- brief kursa;
- aktivnyy variant i auditoriya.

### Ozhidaemyy vykhod

- spisok izmerimykh outcomes;
- svyaz s riskami, povedeniem i proverkoy;
- pometka, gotovy li outcomes dlya `course architecture` i `test`.

### Prompt

```text
Ty rabotaesh kak metodicheskiy AI-assistant dlya `Pipeline` na etape `04 Learning Outcomes`.

Tvoja zadacha: prevratit `source register` i `job map` v nablyudaemye, proveryaemye outcomes bez vody i bez lozhnykh obeshchaniy.

Kontekst kursa:
- Course name: <COURSE_NAME>
- Course code: <COURSE_CODE>
- Audience: <AUDIENCE>
- Variant: <VARIANT>
- Current stage: `04 Learning Outcomes`
- Target artifact: `04_learning_outcomes.md`

Source of truth:
- `README.md`
- `01_Docs/Pipeline_Blueprint_v1.md`
- `04_QA/QA_Gates_v1.md`
- course files: <FILE_LIST>

Sdelay sleduyushchee:
1. Vyvedi outcomes iz realnykh rabochikh deystviy, riskov i granits otvetstvennosti.
2. Delai outcome nablyudaemym: ego nado mozhno byt proverit po testu, situatsii, vizualu ili povedeniyu.
3. Izbegay formulirovok vida "znat", "ponimat" bez yavnogo povedencheskogo proyavleniya.
4. Esli nekotorye outcomes zavisyat ot nedostayushchikh istochnikov ili eksperta, chestno pometi eto.
5. Dlya kazhdogo outcome pokazi, chem on budet proveryat'sya: test, slide, visual recognition, situational choice ili practical logic.

Format otveta:
- kratkiy vyvod o kachestve outcome-map;
- spisok outcomes v gotovom dlya dokumenta vide;
- blok `Assessment link`;
- blok `Open risks`;
- finalnaya stroka: `Outcomes gotovy dlya course architecture: yes/no`.
```

## Prompt 03: Slide Script

### Kogda ispolzovat

- pri sborke `06_slide_script.md`;
- pri razvorachivanii moduley v pokadrovy / poslaydovy kontur;
- pri dobore `writer core` bez prezhdevremennogo peregruza downstream-polyami.

### Obyazatelnyy vkhod

- `04_learning_outcomes.md`;
- `05_course_architecture.md`;
- `02_source_register.md`;
- signaly po variantu, auditorii i generic-safe granitse.

### Ozhidaemyy vykhod

- kartochki slaydov ili modulnyy blok v formate script;
- yavnye svyazi `slide -> outcome -> test / asset`;
- chestnaya asset dependency;
- pometki, gde nuzhny dopolnitelnye istochniki ili visuals.

### Prompt

```text
Ty rabotaesh kak writer-first AI-assistant dlya `Pipeline` na etape `06 Scriptwriting`.

Tvoja zadacha: razvernut modul ili diapazon moduley v `slide script`, sokhranyaya pravilo `1 slide = 1 mysl`, generic-safe granitsu i svyaz s outcomes.

Kontekst kursa:
- Course name: <COURSE_NAME>
- Course code: <COURSE_CODE>
- Audience: <AUDIENCE>
- Variant: <VARIANT>
- Current stage: `06 Scriptwriting`
- Target artifact: `06_slide_script.md`
- Coverage: <MODULE_RANGE>

Source of truth:
- `README.md`
- `01_Docs/Pipeline_Blueprint_v1.md`
- `01_Docs/Definition_of_Done_v1.md`
- course files: <FILE_LIST>

Sdelay sleduyushchee:
1. Ne pishi "prezentatsiyu voobshche"; stroy kartochki slaydov.
2. Dlya kazhdogo slayda zafiksiruy minimum:
   - nomer slayda;
   - modul;
   - tip slayda;
   - odnu glavnuyu mysl;
   - chto dolzhen ponyat slushatel;
   - tekst na slayde;
   - speaker notes;
   - svyazannyy outcome;
   - svyazannyy test ili test hook;
   - vizualnoe namerenie;
   - signal, est li asset gap ili mozhno sobrat visual vnutri deck.
3. Ne vydumyvay system-specific tekhnicheskie normy, esli ikh net v istochnikakh.
4. Esli modul slishkom riskovyy bez eksperta ili pasporta sistemy, ostav ego v generic-safe ramke i pometi granitsu.
5. Sokhranyai posledovatelnost mezhdu slaydami i modulami, a ne prosto spisok tezisov.

Format otveta:
- status bloka;
- coverage etoy iteratsii;
- pri neobkhodimosti `generic-safe content rule`;
- kartochki slaydov v gotovom markdown-formate;
- blok `Asset / source gaps`;
- blok `Next build signal`.
```

## Prompt 04: QA Review

### Kogda ispolzovat

- pri sborke `09_qa_report.md`;
- pri formalnom review course-core, script, testa ili visual contoura;
- pri targeted QA posle revise-cycle.

### Obyazatelnyy vkhod

- artefakt ili paket artefaktov dlya proverki;
- relevantnyy QA-gate;
- kontekst stage i tip proverki: `formal`, `targeted`, `pre-release`.

### Ozhidaemyy vykhod

- zapolnennyy QA report;
- ball po pyati kriteriyam;
- reshenie `pass / revise / rework`;
- prioritizirovannyy spisok zamechaniy i plan dorabotki.

### Prompt

```text
Ty rabotaesh kak AI-reviewer dlya `Pipeline` na etape `09 QA Review`.

Tvoja zadacha: provesti strogoe, no chestnoe QA po peredannomu artefaktu ili contouru i vernut rezultat v formate rabochego `QA report`, a ne v vide obshchikh sovetov.

Kontekst kursa:
- Course name: <COURSE_NAME>
- Course code: <COURSE_CODE>
- Current stage: `09 QA Review`
- QA mode: <QA_MODE>
- Coverage: <COVERAGE>
- Target artifact: `09_qa_report.md`

Source of truth:
- `01_Docs/Definition_of_Done_v1.md`
- `04_QA/QA_Gates_v1.md`
- course files: <FILE_LIST>

Prover po pyati kriteriyam:
- polnota;
- ponyatnost;
- sootvetstvie trebovaniyam;
- otsutstvie peregruza;
- gotovnost k sleduyushchemu etapu.

Sdelay sleduyushchee:
1. Vystavi ball po kazhdomu kriteriyu ot `0` do `20`.
2. Ne smyagchai problemu, esli est realnyy razryv mezhdu outcome, script, testom i visual-layer.
3. Razdeli zamechaniya po prioritetu i tipu.
4. Esli etap mozhno prodolzhat tolko v revise-cycle, tak i napishi.
5. Dlya riskovykh blokov ne zamenyay proverku frazoy "vyglyadit normalno"; signal dolzhen byt proveryaemym.

Format otveta:
- obshchaya informatsiya;
- itog gate;
- otsenka po kriteriyam;
- tablica zamechaniy;
- kratkiy vyvod;
- checklist review;
- plan dorabotki;
- finalnoe reshenie: `pass`, `revise` ili `rework`.
```

## Prompt 05: Test Creation

### Kogda ispolzovat

- pri sborke `10_test_pack.md`, `10_answer_key.md` i pri neobkhodimosti `test check sheet`;
- pri perevode outcomes v kontrol znaniy;
- pri revise-cycle posle QA, kogda nado usilit visual / situational validity.

### Obyazatelnyy vkhod

- `04_learning_outcomes.md`;
- `06_slide_script.md`;
- `09_qa_report.md`, esli test sobiraetsya posle QA;
- signal, nuzhen li `worker`, `ITR` ili `mixed` contour.

### Ozhidaemyy vykhod

- rabochiy `test pack`;
- svyazannyy `answer key`;
- pometka po visual anchors i tipam voprosov;
- signal, gde test eshche ne doros do finalnoy validnosti.

### Prompt

```text
Ty rabotaesh kak AI-assessment designer dlya `Pipeline` na etape `10 Test Creation`.

Tvoja zadacha: sobrat testovyy contour iz realnykh outcomes i script, a ne iz obshchikh teoriticheskikh voprosov.

Kontekst kursa:
- Course name: <COURSE_NAME>
- Course code: <COURSE_CODE>
- Audience: <AUDIENCE>
- Variant: <VARIANT>
- Current stage: `10 Test Creation`
- Target artifacts: `10_test_pack.md`, `10_answer_key.md`

Source of truth:
- `01_Docs/Pipeline_Blueprint_v1.md`
- `04_QA/QA_Gates_v1.md`
- course files: <FILE_LIST>

Sdelay sleduyushchee:
1. Svyazhi kazhdyy vopros s konkretnym outcome.
2. Ne dopuskay testa "na opredeleniya", esli kurs pro deystviya, risk i raspoznavanie.
3. Dlya worker-contoura stremis k visual, situational i recognition-ready formatam.
4. Esli QA uzhe ukazal na razryv validnosti, adresuy ego pryamym obrazom.
5. Ne vydumyvay system-specific pravilnye otvety tam, gde net dokazatelstv v source-base.

Format otveta:
- status testa;
- rol etoy versii;
- struktura testa;
- spisok ili tablica voprosov;
- blok `Assessment visual anchors`, esli oni nuzhny;
- blok printsipov;
- otdelnyy `answer key` v formate `ID -> pravilnyy otvet -> obosnovanie -> outcome`;
- blok `Open validity risks`.
```

## Visual Prompt Layer

Etot sloy nuzhen dlya povtoryaemykh promptov na `image generation` i `image editing`,
kogda kurs sobiraetsya cherez krupnye i maksimalno chitayemye slaydovye vizualy.

On nuzhen, chtoby:

- ne peresobirat vizualnye trebovaniya zanovo dlya kazhdogo slayda;
- derzhat edinuyu logiku dlya `generate` i `edit`;
- sokhranyat odin standart dlya personazhey v kadre;
- ne teryat dogovorennosti po SIZ, kontrastu i chitayemosti.

### Universalnye pravila dlya slaydovykh izobrazheniy

1. Glavnyy obekt kadra dolzhen zanimat bolshuyu chast izobrazheniya.
2. Pustykh poley i lishney vozdushnosti dolzhno byt minimum.
3. Kartinka dolzhna chitatsya s rasstoyaniya na ekrane.
4. Kompozitsiya dolzhna byt prostoy, ponatnoy i uchebnoy.
5. Bez logotipov, bez tekstovykh nadpisey vnutri izobrazheniya, esli eto ne otdelnyy infographic-case.
6. Bez khudozhestvennoy dramatizatsii, esli zadacha ne v tom, chtoby pokazat posledstviya narusheniya.
7. Esli v kadre est oshibka, ona dolzhna schityvatsya srazu.
8. Esli v kadre est pravilnyy uzel ili deystvie, oni dolzhny byt glavnoy tochkoy vnimaniya.

### Roli v kadre: Worker

Ispolzovat, kogda v generiruemom izobrazhenii est rabochiy, montazhnik, stroitel ili drugoy
ispolnitel na obekte.

Standart `worker`:

- stroitelnaya kaska `oranzhevogo` tsveta bez logotipov;
- kaska obyazatelno zastyoegnuta na podborodochnyy remeshok;
- zashchitnye ochki obyazatelny;
- stroitelnyy kostyum bez logotipov, so svetootrazhayushchimi vstavkami;
- na rukakh zashchitnye perchatki;
- poverkh kostyuma signalnaya zhiletka `oranzhevogo` ili `zheltogo` tsveta;
- zhiletka dolzhna kontrastirovat s kostyumom;
- zhiletka zastyoegnuta na `lipuchku`, a ne na molniyu;
- na nogakh botinki s zashchitnym podnoskom ili sapogi;
- obuv dolzhna sochetatsya s kostyumom, no otlichatsya po tonu;
- ves komplekt dolzhen vyglyadet garmonichno i professionalno.

Isklyuchenie:

- esli rabotnik pokazan v `SIZ dlya raboty na vysote`, signalnaya zhiletka ne trebuetsya.

### Roli v kadre: ITR

Ispolzovat, kogda v kadre est master, prorab, inzhener, rukovoditel rabot, spetsialist
tekhkontrolya ili drugoy sotrudnik ITR.

Standart `ITR`:

- stroitelnaya kaska `belogo` tsveta bez logotipov;
- kaska obyazatelno zastyoegnuta na podborodochnyy remeshok;
- zashchitnye ochki obyazatelny;
- kachestvennyy professionalnyy stroitelnyy kostyum bez logotipov;
- kostyum dolzhen byt akkyratnym, sovremennym, so svetootrazhayushchimi vstavkami;
- na rukakh zashchitnye perchatki, esli oni umestny po scene;
- poverkh kostyuma signalnaya zhiletka `oranzhevogo` ili `zheltogo` tsveta;
- zhiletka dolzhna kontrastirovat s kostyumom;
- zhiletka zastyoegnuta na `lipuchku`, a ne na molniyu;
- na nogakh obyazatelno botinki s `udaroprochnym podnoskom`;
- obuv dolzhna sochetatsya s kostyumom, no otlichatsya po tonu;
- ves komplekt dolzhen vyglyadet professionalno, oppryatno i garmonichno.

Isklyuchenie:

- esli sotrudnik ITR pokazan v `SIZ dlya raboty na vysote`, signalnaya zhiletka ne trebuetsya.

## Prompt 06: Visual Asset Pair

### Kogda ispolzovat

- pri sborke promptov dlya slaydovykh kartinok;
- pri podgotovke `generate/edit` par pod odin slayd;
- pri sborke biblioteki vizualnykh promptov dlya povtoryaemykh blokov.

### Obyazatelnyy vkhod

- nazvanie slayda;
- tselevaya rol slayda: `explain`, `show correct`, `show error`, `compare`, `overview`;
- chto dolzhno byt glavnym obektom kadra;
- est li lyudi v kadre i kakaya u nikh rol: `worker / ITR / mixed`;
- nuzhen li `generate`, `edit` ili oba varianta;
- esli est iskhodnik dlya obrabotki, prilozhit ego ili opisat ego granitsy.

### Ozhidaemyy vykhod

- otdelnyy prompt na `generation`;
- otdelnyy prompt na `editing`;
- pometka, kakoy prompt yavlyaetsya osnovnym;
- signal, kakie asset-gap ili scene-gap ostalis.

### Prompt

```text
Ty rabotaesh kak visual prompt-designer dlya `Pipeline`.

Tvoja zadacha: dlya peredannogo slayda sobrat paru promptov:
1. `Prompt / Generate` - esli izobrazhenie nado sozdat s nulya;
2. `Prompt / Edit` - esli est iskhodnaya kartinka i ee nado dovesti do uchebnogo standarta.

Kontekst:
- Course name: <COURSE_NAME>
- Course code: <COURSE_CODE>
- Slide title: <SLIDE_TITLE>
- Slide role: <SLIDE_ROLE>
- Audience: <AUDIENCE>
- Main visual object: <MAIN_OBJECT>
- Human role in frame: <HUMAN_ROLE>
- Source image available: <YES_NO>

Sdelay sleduyushchee:
1. Daj dva gotovykh prompta: `Generate` i `Edit`.
2. V `Generate` postroy scenu s nulya, sokhranyaya uchebnuyu chitayemost i krupnyy glavniy obekt.
3. V `Edit` skazhi, kak perekomponovat iskhodnik, chto usilit, chto oslabit i chto ubrat iz vizualnogo fokusa.
4. Esli v kadre est lyudi, primeni sootvetstvuyushchiy role-standard: `worker`, `ITR` ili smeshannyy contour.
5. Ne dobavlyay vnutr kartinki tekst, logotipy i sluchaynye dekorativnye elementy.
6. Esli slayd pro oshibku, oshibka dolzhna schityvatsya srazu; esli slayd pro pravilnyy uzel, on dolzhen byt glavnym fokusom.

Format otveta:
- Slide ID / title
- Prompt / Generate
- Prompt / Edit
- Primary use: `generate` ili `edit`
- Open visual risks
```

## Prompt 07: Role Standard Injection

### Kogda ispolzovat

- kogda nado bystro dobavit edinyy standart odezhdy i SIZ v uzhe gotovyy visual prompt;
- kogda sobiraetsya seriya promptov s odinakovymi personazhami;
- kogda nado ne zabyt pro raznitsu mezhdu `worker`, `ITR` i `height PPE`.

### Obyazatelnyy vkhod

- bazovyy visual prompt;
- rol personazha: `worker`, `ITR`, `mixed`;
- est li `height PPE` v scene;
- est li ogranicheniya po tsvetam, srede ili kursu.

### Ozhidaemyy vykhod

- gotovyy dopolnennyy prompt s pravilnym SIZ-contourom;
- signal, net li konflikta mezhdu rol'yu i opisannoy scene.

### Prompt

```text
Ty rabotaesh kak visual consistency assistant dlya `Pipeline`.

Tvoja zadacha: vstroyt v peredannyy visual prompt pravilnyy role-standard dlya personazhey v kadre,
ne menyaya smysl samoy sceny.

Vkhod:
- Base prompt: <BASE_PROMPT>
- Human role: <HUMAN_ROLE>
- Height PPE active: <YES_NO>
- Special constraints: <CONSTRAINTS>

Pravila:
1. Esli rol `worker`, primenyay worker-standard iz biblioteki.
2. Esli rol `ITR`, primenyay ITR-standard iz biblioteki.
3. Esli rol `mixed`, razdeli personazhey po funktsii i sokhrani vizualnuyu logiku sceny.
4. Esli `Height PPE active = yes`, ne dobavlyay signalnuyu zhiletku tomu personazhu, kotoryy uzhe v SIZ dlya raboty na vysote.
5. Sokhrani professionalnyy i realistichnyy vneshniy vid, bez logotipov i bez sluchaynoy formennoy meshany.

Format otveta:
- short consistency note;
- final upgraded prompt;
- possible conflict, esli on est.
```

## Kak ponimat, chto biblioteka rabotaet

Biblioteka schitaetsya poleznoy, esli:

- novyy operator mozhet zapustit stage bez ustnykh podskazok;
- AI nachinaet vyrabatyvat artefakty blizhe k formatu realnykh stage-dokumentov;
- snizhaetsya kolichestvo "sluchaynykh" struktur i povtorov;
- review-posle-AI stanovitsya koroche i bolee predskazuemym.

## Sleduyushchiy shag dlya etogo sloya

- pri povtoryaemosti stage-dorozhek vynosit otdelnye prompty dlya `asset collection`, `pilot`, `release note` i `instructor guide`;
- pri stabilizatsii formatov dobavit prompt IDs i svyaz s `Prompt_Contract_Template_v1.md`.
