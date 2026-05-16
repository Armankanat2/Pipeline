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

### Postoyannye personazhi: Avatar rotation rule

Ispolzovat, kogda v generiruemykh izobrazheniyakh nuzhny povtoryayushchiesya lyudi,
chtoby u kursov poyavilis uznavaemye postoyannye personazhi.

Tekushchiy nabor avatarov:

- `Avatar 1`
- `Avatar 2`
- `Avatar 3`

Pravilo ispolzovaniya:

1. Esli v scene nuzhen odin personazh, ispolzuy sleduyushchego po ocheredi avatara.
2. Poryadok vsegda odin i tot zhe: `Avatar 1 -> Avatar 2 -> Avatar 3 -> Avatar 1 -> ...`
3. Etot poryadok schitaetsya postoyannym i zaktsiklennym dlya vsekh novykh generatsiy.
4. Esli v odnom kadre nuzhno neskolko personazhey, berutsya sleduyushchie avatary po etomu zhe krugu.
5. Esli dlya odnoi stseny ili dlya biblioteki v tselom nuzhno bolshe trekh odnovremenno razlichimykh personazhey, sozdaetsya novyy avatar, a ne sluchaynyy chelovek.
6. Esli v prompt yavnym obrazom ne skazano obratno, nuzhno schitat, chto v lyudskikh stsenakh ispolzuyutsya imenno eti postoyannye avatary.

Operatsionnoe primechanie:

- pri sborke promptov polezno dobavlyat pole `Avatar slot`, chtoby ne teryat tekushchuyu ocherednost;
- pri poyavlenii `Avatar 4+` ikh nuzhno dobavit v etot razdel otdelnym obnovleniem biblioteki.

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

## Reusable Prompt Packs

Etot razdel nuzhen dlya gotovykh povtoryaemykh visual-blocks, kotorye mozhno vstavlyat
v raznye kursy bez peresborki s nulya.

Format khraneniya:

- `Block ID`
- `Slide ID`
- `Slide role`
- `Prompt / Generate`
- `Prompt / Edit`
- `Primary use`

### RB-04: Ograjdeniya kak sredstvo kollektivnoy zashchity

Status: `active draft`
Coverage: `Core + Worker`

#### RB04_C_S01

- Slide title: `Ograjdeniya kak obyazatelnyy element kollektivnoy zashchity`
- Slide role: `show correct`
- Primary use: `generate`

`Prompt / Generate`

```text
Fotorealistichnaya uchebnaya proizvodstvennaya stsena dlya prezentatsii po okhrane truda i promyshlennoy bezopasnosti. Krupno pokazano pravilno ustanovlennoe zashchitnoe ograzhdenie po krayu rabochego yarusa ili opasnoy zony na stroitelnoy ploshchadke ili na lesakh. Ograjdenie dolzhno byt glavnym obektom kadra i zanimat bolshuyu chast izobrazheniya. Khorosho chitayetsya nepreryvnyy zashchitnyy kontur, konstruktsiya vyglyadit ustoychivoy i pravilno sobrannoy. Kompozitsiya prostaya, bez lishnego vizualnogo shuma, bez peregruzhennogo fona, s vysokim kontrastom i khoroshey chitayemostyu s rasstoyaniya na ekrane. Minimum pustykh poley. Bez tekstovykh nadpisey vnutri izobrazheniya, bez logotipov, bez avariynoy dramatizatsii.

Esli v kadre est rabotniki, vse rabotniki dolzhny byt v role-standard `worker` iz etoy biblioteki.
```

`Prompt / Edit`

```text
Ispolzuy iskhodnoe izobrazhenie kak osnovu dlya uchebnogo slayda. Sokhrani realnuyu proizvodstvennuyu stsenu i fotorealizm, no perekomponuy kadr tak, chtoby zashchitnoe ograzhdenie stalo glavnym obektom i zanimat osnovnuyu chast izobrazheniya. Sokhrati pustye polya, uberi ili oslabi otvlekayushchie detali fona, povysi kontrast i chitayemost ograzhdeniya s rasstoyaniya na ekrane. Ne dobavlyay tekst, logotipy i khudozhestvennye effekty. Esli v kadre est lyudi i nuzhna korrektirovka, privedi ikh k role-standard `worker`.
```

#### RB04_W_S01

- Slide title: `Zachem nuzhny ograzhdeniya`
- Slide role: `explain`
- Primary use: `generate`

`Prompt / Generate`

```text
Fotorealistichnaya stsena na stroitelnoy ploshchadke ili na lesakh, krupno pokazano pravilno ustanovlennoe ograzhdenie, kotoroe ochevidno otdelyaet bezopasnuyu zonu ot opasnoy. Dolzhno byt srazu ponyatno, chto ograzhdenie predotvrashchaet vykhod v opasnuyu oblast ili padenie. Glavnyy aktsent na zashchitnoy funktsii ograzhdeniya. Kompozitsiya prostaya, uchebnaya, bez lishnikh obektov i vizualnogo shuma, vysokaya chitayemost na bolshom ekrane, bez teksta vnutri izobrazheniya. Esli v kadre est rabotniki, vse rabotniki dolzhny byt v role-standard `worker`.
```

`Prompt / Edit`

```text
Ispolzuy iskhodnoe izobrazhenie kak osnovu. Usil smysl zashchity: perekomponuy kadr tak, chtoby granitsa mezhdu bezopasnoy i opasnoy zonoy chitalas srazu, a ograzhdenie stalo glavnym vizualnym elementom. Oslabi vtorostepennyy fon, povysi kontrast, uberi vizualnyy musor, sokhrani fotorealizm i proizvodstvennyy kharakter stseny. Bez teksta, logotipov i dekorativnykh effektov. Esli nuzhno, skorrektyruy rabotnikov po role-standard `worker`.
```

#### RB04_W_S02

- Slide title: `Gde ograzhdeniya obyazatelny`
- Slide role: `overview`
- Primary use: `generate`

`Prompt / Generate`

```text
Fotorealistichnaya uchebnaya stsena s neskolkimi khorosho chitayemymi opasnymi uchastkami na stroitelnoy ploshchadke ili na lesakh, gde ograzhdenie obyazatelno: kray rabochego yarusa, otkrytyy proem, opasnaya zona u perepada vysoty. Kompozitsiya obzornaya, no prostaya i ponyatnaya, bez khaosa. Vse klyuchevye zony dolzhny razlichatsya s pervogo vzglyada. Ograjdeniya i opasnye granitsy chitayutsya yasno, bez melkikh nerazborchivykh detaley. Vysokiy kontrast, minimum pustykh poley, bez teksta vnutri izobrazheniya. Esli v kadre est rabotniki, vse rabotniki dolzhny byt v role-standard `worker`.
```

`Prompt / Edit`

```text
Ispolzuy iskhodnoe izobrazhenie kak osnovu. Perekomponuy ili pribliz kadr tak, chtoby neskolko obyazatelnykh zon primeneniya ograzhdeniy chitalis yasno: kray yarusa, proem, perepad vysoty. Uberi lishnie detali, meshayushchie vospriyatiyu, usil kontrast opasnykh granits i samikh ograzhdeniy. Sokhrani fotorealizm, bez teksta i graficheskikh effektov. Esli nuzhno, privedi rabotnikov k role-standard `worker`.
```

#### RB04_W_S03

- Slide title: `Chto dolzhno byt zashchishcheno ograzhdeniem`
- Slide role: `show correct`
- Primary use: `generate`

`Prompt / Generate`

```text
Krupnyy fotorealistichnyy plan opasnogo kraya rabochego yarusa ili otkrytogo tekhnologicheskogo proema, kotoryy pravilno zashchishchen ograzhdeniem. Khorosho vidna logika zashchity: otkuda vozmozhen dostup i kakoy uchastok perekryt ograzhdeniem. Glavnyy aktsent na opasnoy granitse i na zashchitnom konture. Uchebnaya podacha, minimum otvlekayushchikh detaley, vysokaya chitayemost s rasstoyaniya, bez teksta vnutri izobrazheniya. Esli v kadre est rabotniki, vse rabotniki dolzhny byt v role-standard `worker`.
```

`Prompt / Edit`

```text
Sokhrani iskhodnuyu proizvodstvennuyu stsenu, no perekomponuy izobrazhenie tak, chtoby opasnyy kray ili proem i zashchishchayushchee ego ograzhdenie stali glavnym obektom kadra. Usil vizualnuyu logiku zashchity: dolzhno byt yasno, kakoy uchastok opasen i kak ego perekryvaet ograzhdenie. Udali ili oslabi otvlekayushchie detali, povysi chitayemost i kontrast. Bez teksta i lishney grafiki. Esli nuzhno, skorrektyruy rabotnikov po role-standard `worker`.
```

#### RB04_W_S04

- Slide title: `Tipovye oshibki pri ustroystve ograzhdeniy`
- Slide role: `show error`
- Primary use: `generate`

`Prompt / Generate`

```text
Fotorealistichnyy uchebnyy primer nepravilnogo ili nepolnogo ograzhdeniya na stroitelnoy ploshchadke ili na rabochem yaruse. Oshibka dolzhna schityvatsya srazu: razryv zashchitnogo kontura, otsutstvuyushchiy uchastok ograzhdeniya ili formalno ustanovlennoe, no ne obespechivayushchee zashchitu ograzhdenie. Bez chrezmernoy dramatizatsii, bez padeniya lyudey, bez avariynoy stseny. Kadr prostoy i naglyadnyy, glavnyy aktsent na defekte ograzhdeniya, minimum vizualnogo shuma, vysokaya chitayemost na ekrane, bez teksta vnutri izobrazheniya. Esli v kadre est rabotniki, vse rabotniki dolzhny byt v role-standard `worker`.
```

`Prompt / Edit`

```text
Ispolzuy iskhodnoe izobrazhenie kak osnovu dlya uchebnogo slayda pro oshibku. Perekomponuy kadr tak, chtoby defekt ograzhdeniya schityvalsya mgnovenno: razryv kontura, propusk ili formalnaya ustanovka dolzhny stat glavnym obektom izobrazheniya. Oslabi lishniy fon, usil kontrast i yasnost problemnogo uchastka. Ne dobavlyay tekst, khudozhestvennye effekty i dramatizatsiyu. Esli nuzhno, privedi rabotnikov k role-standard `worker`.
```

#### RB04_W_S05

- Slide title: `Proverka ograzhdeniya pered nachalom raboty`
- Slide role: `explain`
- Primary use: `generate`

`Prompt / Generate`

```text
Fotorealistichnaya proizvodstvennaya stsena, rabochiy ili otvetstvennyy sotrudnik pered nachalom rabot osmatrivaet ustanovlennoe ograzhdenie na rabochem uchastke ili na lesakh. Dolzhno byt yasno, chto eto imenno proverka, a ne montazh: chelovek vnimatelno smotrit na uzly, kontur i tselostnost ograzhdeniya. Ograjdenie zanimaet znachitelnuyu chast izobrazheniya. Kadr chistyy, uchebnyy, bez tolpy lyudey i bez vizualnogo peregruza, vysokaya chitayemost s rasstoyaniya, bez teksta vnutri izobrazheniya. Personazh v kadre dolzhen sootvetstvovat role-standard `worker` ili `ITR` v zavisimosti ot logiki stseny.
```

`Prompt / Edit`

```text
Ispolzuy iskhodnoe izobrazhenie kak osnovu. Sokhrani fotorealizm, no perekomponuy kadr tak, chtoby deystvie proverki ograzhdeniya stalo ochevidnym: glavnyy aktsent na sotrudnike, osmatrivayushchem kontur, uzly i tselostnost ograzhdeniya. Ograjdenie dolzhno zanimat bolshuyu chast kadra, fon dolzhen byt uproshchen, kontrast povyshen, otvlekayushchie detali oslableny. Bez teksta i dekorativnykh effektov. Esli trebuetsya korrektirovka vneshnego vida, primeni role-standard `worker` ili `ITR`.
```

### RB-05: SIZ dlya raboty na vysote

Status: `active draft`
Coverage: `Core + Worker`

#### RB05_C_S01

- Slide title: `SIZ dlya raboty na vysote: chto obyazatelno znat`
- Slide role: `overview`
- Primary use: `generate`

`Prompt / Generate`

```text
Fotorealistichnyy nabor sredstv individualnoy zashchity dlya raboty na vysote, krupno i chetko pokazany privyaz, strop, karabiny, soyedinitelnye elementy, kaska, zashchitnye ochki i zashchitnaya obuv. Esli v kadre est chelovek, on dolzhen byt v korrektnykh SIZ dlya raboty na vysote; signalnaya zhiletka v takom scenarii ne trebuetsya. Akuratnaya raskladka ili rabotnik v pravilnoy ekipirovke, svetlyy neytralnyy fon ili ponyatnaya proizvodstvennaya sreda, uchebnyy stil, vysokaya chitayemost s ekrana, bez logotipov i bez teksta vnutri izobrazheniya.
```

`Prompt / Edit`

```text
Ispolzuy iskhodnoe izobrazhenie kak osnovu dlya uchebnogo slayda. Perekomponuy kadr tak, chtoby osnovnye elementy SIZ dlya raboty na vysote stali maksimalno krupnymi i legko razlichimymi: privyaz, strop, karabiny, soyedinitelnye elementy, tochki podklyucheniya, kaska i obuv. Uberi otvlekayushchie detali, usil kontrast i tekhnicheskuyu chitayemost. Esli v kadre est chelovek, sokhrani ili skorrektyruy ego pod standard `height PPE`: bez signalnoy zhiletki, s korrektno pokazannymi elementami vysotnykh SIZ.
```

#### RB05_W_S01

- Slide title: `Kakie SIZ primenyayutsya na vysote`
- Slide role: `overview`
- Primary use: `generate`

`Prompt / Generate`

```text
Rabotnik na vysote v polnom komplekte SIZ, vse osnovnye elementy khorosho vidny: zashchitnaya kaska, zashchitnye ochki, strakhovochnaya privyaz, strop, karabiny, soyedinitelnye elementy, zashchitnye perchatki, obuv s zashchitnym podnoskom. Signalnaya zhiletka ne nuzhna, tak kak rabotnik uzhe v SIZ dlya raboty na vysote. Uchebnoe izobrazhenie, vysokaya chetkost, prostaya kompozitsiya, glavnyy aktsent na komplekte SIZ i na pravilnom professionalnom vide rabotnika.
```

`Prompt / Edit`

```text
Ispolzuy iskhodnoe izobrazhenie kak osnovu. Perekomponuy ego tak, chtoby komplekt SIZ rabotnika na vysote stal glavnym obektom: usil vidimost privyazi, stropa, karabinov i drugikh strakhovochnykh elementov. Uberi vtorostepennyy fon, povysi kontrast i chitayemost. Esli nuzhna korrektirovka odezhdy, privedi personazha k korrektnomu contouru `height PPE`: bez signalnoy zhiletki, s pravilnoy kaskoy, ochkami, privyazyu i zashchitnoy obuvyu.
```

#### RB05_W_S02

- Slide title: `Privyaz, strop, karabiny`
- Slide role: `show correct`
- Primary use: `generate`

`Prompt / Generate`

```text
Krupnyy fotorealistichnyy plan strakhovochnoy privyazi, stropa i karabinov. Elementy zanimayut osnovnuyu chast kadra i tekhnicheski ponyatno pokazany dlya uchebnogo slayda. Vidny material, tochki krepleniya, forma karabinov i logika soyedineniya. Bez lishnikh obektov, bez vizualnogo shuma, bez teksta vnutri izobrazheniya. Esli v kadre est chelovek, on dolzhen byt v korrektnykh SIZ dlya raboty na vysote bez signalnoy zhiletki.
```

`Prompt / Edit`

```text
Sokhrani iskhodnyy fotorealistichnyy material, no pribliz i perekomponuy kadr tak, chtoby privyaz, strop i karabiny stali glavnoy tochkoy vnimaniya. Usil tekhnicheskuyu chitayemost uzla, uberi ili oslabi fon, ne dobavlyay tekst i dekorativnye effekty. Esli nuzhno, skorrektyruy cheloveka v kadre pod standart `height PPE`.
```

#### RB05_W_S03

- Slide title: `Pravilnaya tochka krepleniya`
- Slide role: `show correct`
- Primary use: `generate`

`Prompt / Generate`

```text
Fotorealistichnaya proizvodstvennaya stsena, pravilnoe podklyuchenie rabotnika v SIZ dlya raboty na vysote k tochke krepleniya. Uzel dolzhen byt krupnym, odnoznachnym i bez dvusmyslennosti. Khorosho vidny tochka krepleniya, strakhovochnyy element i logika podklyucheniya. Rabotnik v korrektnykh SIZ dlya raboty na vysote bez signalnoy zhiletki. Uchebnaya podacha, bez lishnego shuma, bez teksta vnutri izobrazheniya.
```

`Prompt / Edit`

```text
Ispolzuy iskhodnoe izobrazhenie kak osnovu. Perekomponuy i pribliz kadr tak, chtoby pravilnaya tochka krepleniya i podklyuchenie k ney schityvalis mgnovenno. Uberi ili oslabi vse, chto meshayet vospriyatiyu uzla. Sokhrani fotorealizm i proizvodstvennyy kontekst. Esli personazh trebuet korrektirovki, privedi ego k standartnomu contouru `height PPE`.
```

#### RB05_W_S04

- Slide title: `Osmotr SIZ pered ispolzovaniem`
- Slide role: `explain`
- Primary use: `generate`

`Prompt / Generate`

```text
Predsmennyy osmotr SIZ dlya raboty na vysote. Rabotnik v korrektnykh vysotnykh SIZ vnimatelno proverayet privyaz, strop i karabiny pered nachalom raboty. Aktsent na kontrolnykh tochkakh i na samom deystvii proverki. Bez signalnoy zhiletki. Chistaya uchebnaya kompozitsiya, bez lishnikh lyudey, vysokaya chitayemost s rasstoyaniya, bez teksta vnutri izobrazheniya.
```

`Prompt / Edit`

```text
Ispolzuy iskhodnoe izobrazhenie kak osnovu dlya slayda pro predsmennyy osmotr. Perekomponuy kadr tak, chtoby deystvie proverki privyazi, stropa i karabinov stalo ochevidnym. Usil kontrolnye tochki, oslabi fon, sokhrani fotorealizm. Esli vneshniy vid personazha trebuet korrektirovki, primeni contour `height PPE`: bez signalnoy zhiletki, s pravilno pokazannymi vysotnymi SIZ.
```

#### RB05_W_S05

- Slide title: `Tipovye oshibki primeneniya SIZ`
- Slide role: `show error`
- Primary use: `generate`

`Prompt / Generate`

```text
Fotorealistichnyy uchebnyy primer tipichnoy oshibki pri primenenii SIZ dlya raboty na vysote. Narushenie dolzhno byt ochevidnym s pervogo vzglyada, no bez avariynoy dramatizatsii: nepravilnoe podklyuchenie, ignorirovanie elementa strakhovki ili nekorrektno nadetaya sistema. Rabotnik v vysotnykh SIZ bez signalnoy zhiletki. Kadr prostoy, naglyadnyy, s glavnym aktsentom na oshibke, bez teksta vnutri izobrazheniya.
```

`Prompt / Edit`

```text
Ispolzuy iskhodnoe izobrazhenie kak osnovu dlya slayda pro narushenie. Perekomponuy kadr tak, chtoby oshibka v primenenii SIZ schityvalas srazu. Usil problemnyy uzel, oslabi fon, ne dobavlyay tekst i dramatizatsiyu. Esli nuzhna korrektirovka odezhdy ili osnastki personazha, primeni contour `height PPE`, no sokhrani logiku oshibki kak glavnuyu tochku vnimaniya.
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
