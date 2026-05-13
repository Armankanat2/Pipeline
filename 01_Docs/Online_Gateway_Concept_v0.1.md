# Online Gateway Concept v0.1

## 1. Naznachenie

Etot dokument fiksiruet, kak `Pipeline` mozhet byt podgotovlen k budushchemu online-ispolzovaniyu cherez otdelnyy `gateway`-sloy, ne lomaia tekushchuyu production-strukturu.

Ego zadacha:

- ne perestraivat `Pipeline` v LMS ili web-platformu uzhe seychas;
- zafiksirovat most mezhdu `content core` i budushchey tochkoy dostupa dlya polzovatelya;
- obespechit, chtoby prezentatsionnyy kurs mozhno bylo podklyuchit k online-srede bez povtornogo proektirovaniya vsego soderzhaniya;
- ne menyat `stage-model 00-13` i ne dobavlyat novyy obyazatelnyy etap.

## 2. Bazovaya pozitsiya

My iskhodim iz togo, chto:

- prezentatsiya mozhet byt tsentralnym artefaktom production-tsikla, no ne dolzhna byt edinstvennym nositelem logiki kursa;
- online-produkt ne dolzhen byt "vtoroy kopiey kursa", sobrannoy zanovo s nulya;
- budushchaya platforma dostupa mozhet menyat'sya, poetomu `Pipeline` dolzhen gotovit ne platformu, a `gateway-ready` kontur;
- `gateway` dolzhen byt rasshireniem `online-portable core`, a ne zamenoy tekushchego release-kontura.

## 3. Chto takoe gateway v nashoy logike

`Gateway` v etom dokumente - eto ne obyazatelno LMS i ne obyazatelno otdelnoye prilozhenie.

Pod `gateway` my ponimayem sloy, cherez kotoryy polzovatel poluchaet dostup k kursu i vzaimodeystvuet s nim:

- vhod v nuzhnuyu versiyu kursa;
- marshrut po modulyam i blokam;
- podklyuchenie `on-screen`, `voiceover`, `interaction`, `reference`;
- otobrazhenie pravilnogo `variant` i `track`;
- sborka signalov o prokhozhdenii, zatrudneniyakh i provalakh;
- vozvrat etikh signalov v maintenance-kontur.

## 4. Chto gateway ne dolzhen delat

`Gateway` ne dolzhen:

- khranit ves smysl kursa tolko vnutri platformy;
- razrushat yedinoye uchebnoe yadro;
- prinuzhdat `Pipeline` peresobirat kurs pod kazhduyu novuyu platformu;
- podmenyat `online handoff pack` samoy platformoy;
- zapuskat novyy production-stage poverkh `00-13`.

## 5. Sloi sistemy

Bezopasnaya arkhitektura vyglyadit tak:

1. `Content Core`
2. `Online Translation Layer`
3. `Gateway Contract`
4. `Platform Adapter`

### 5.1 Content Core

Syuda otnosyatsya:

- `learning outcomes`
- `course architecture`
- `slide script`
- `test logic`
- bazovye `worker / ITR` razdeleniya
- pravilo `core / standard / extended`

Eto glavniy smyslovoy sloy, kotoryy ne dolzhen zaviset ot budushchey platformy.

### 5.2 Online Translation Layer

Syuda otnosyatsya uzhe sushchestvuyushchie artefakty:

- `online adaptation map`
- `module summary pack`
- `narration pack`
- `online handoff pack`

Eto sloy perevoda iz prezentatsionnoy logiki v logiku budushchego online-ispolzovaniya.

### 5.3 Gateway Contract

Eto novyy kontseptualnyy sloy, kotorogo seychas ne khvataet.

Ego zadacha:

- opisat, kak polzovatel voydet v kurs;
- opisat, kak opredelyaetsya nuzhnaya sborka;
- opisat, kakie bloki otdavat na ekran, v ozvuchku, v interaktiv, v reference;
- opisat, kakie sobytiya dolzhny vozvrashchat'sya obratno v sistemu.

### 5.4 Platform Adapter

Eto uzhe konkretnaia realizatsiya:

- `LMS`
- `web-course`
- `portal`
- `mobile shell`
- drugaya klientskaya sreda

`Pipeline` ne dolzhen byt zhestko zavyazan na etot sloy.

## 6. Chto u nas uzhe est

Po suti, u `Pipeline` uzhe est khoroshaya osnova:

- `online-portable core` zafiksirovan v `Pipeline Blueprint`;
- `Slide Script Template` uzhe razvodit `on-screen`, `voiceover`, `interaction`, `reference`;
- v `Release` uzhe est `online handoff` kontur;
- dlya `Montazhnik_lesov` uzhe sobran starter online-handoff sloy.

Eto oznachaet, chto my ne nachinaem s nulya.

## 7. Chto eshche nuzhno zalozhit

Bez polomki tekushchey sistemy nuzhno dobavit sleduyushchie pravila.

### 7.1 Stable IDs

Kazhdyy modul, slayd i mikroblok, kotoryy mozhet voiti v online, dolzhen imet ustoychivyy identifikator.

Eto nuzhno, chtoby:

- ne pereprivyazyvat vse ruchno pri novoy sborke;
- korrektno svyazyvat content, quiz hooks i analytics;
- ponimat, kakie signaly otnosyatsya k kakomu bloku.

### 7.2 Variant / Track Routing

Gateway dolzhen umet razlichat:

- `korotkaya / srednyaya / dlinnaya`
- `worker / ITR`
- `core / standard / extended`

Eto nuzhno, chtoby polzovatel poluchal ne "vse srazu", a pravilnuyu konfiguratsiyu kursa.

### 7.3 Event Layer

Gateway dolzhen vozvrashchat ne tolko fakt prokhozhdeniya, no i sobytiya:

- start modulia;
- ostanovka ili vyhod;
- povtornyy prosmotr bloka;
- proval v `micro-check`;
- vozvrat k reference;
- zavisanie na konkretnom bloke;
- zavershenie marshruta.

Eto stanet novym istochnikom signalov dlya `Feedback Learning Loop`.

### 7.4 Separation of Responsibility

Nuzhno yavno razdelit:

- kto otvechaet za `content core`;
- kto otvechaet za `online translation`;
- kto sobiraet `gateway`;
- kto sobiraet i interpretiruet sobytiya iz ekspluatatsii.

## 8. Gateway Contract kak optional kontur

Samyy bezopasnyy variant - ne delat ego obyazatelnym dlya vsekh kursov.

Pravilo:

- `Base` kurs mozhet zhyt bez gateway-layer;
- `Future-ready` kurs mozhet poluchit optional `gateway`-kontur;
- starye kursy ne dolzhny migririvat v etot sloy prinuditelno;
- gateway-layer vklyuchaetsya tolko dlya kursov, u kotorykh est realnyy plan blended, self-paced ili LMS-perenosa.

## 9. Rekomenduemye optional artefakty

Ne menyaia `stage-model`, mozhno dobavit optional release-grade artefakty:

- `12_gateway_spec.md`
- `12_gateway_manifest.md`
- `12_gateway_event_map.md`

### 9.1 `12_gateway_spec.md`

Dolzhen opisivat:

- kak polzovatel vhodit v kurs;
- kak opredelyaetsya ego marshrut;
- kakie versii i tracki emu mogut byt vydany;
- kak ustroena navigatsiya mezhdu modulami;
- kakoy minimalnyy UI-kontur nuzhen dlya raboty s kursom.

### 9.2 `12_gateway_manifest.md`

Dolzhen opisivat:

- kakie kontentnye bloki podklyuchayutsya;
- kakie ID ispolzuyutsya;
- gde `on-screen`, gde `voiceover`, gde `interaction`, gde `reference`;
- kakie sborki podderzhivayutsya.

### 9.3 `12_gateway_event_map.md`

Dolzhen opisivat:

- kakie sobytiya dolzhny snimatsya;
- kakie sobytiya vazhny dlya maintenance;
- kakie sobytiya mogut stat signalami dlya obnovleniya kursa;
- kak etot signal vozvrashchaetsya v `Stage 13`.

## 10. Tochki integratsii po stage

### Stage 01 - Intake

Zdes dostatochno zafiksirovat:

- nuzhna li `online portability`;
- nuzhen li budushchiy `gateway`;
- est li ozhidanie LMS, web-course ili drugogo shell.

### Stage 06 - Scriptwriting

Zdes nuzhno:

- sokhranyat `on-screen / voiceover / interaction / reference`;
- ne dopuskat, chtoby znanie zhilo tolko v speaker notes;
- pometchat quiz hooks i kandidaty na micro-check.

### Stage 12 - Release

Zdes optionalno mozhet sobirat'sya:

- `online handoff pack`
- `gateway spec`
- `gateway manifest`
- `gateway event map`

### Stage 13 - Maintenance

Zdes gateway mozhet dat novyy klass signalov:

- ne tolko kommentarii klienta ili lektora;
- no i realnoe povedenie polzovatelya v online-srede.

## 11. Konflikty i riski

Nuzhno srazu priznat osnovnye konflikty.

### 11.1 Presentation Logic vs User Flow

To, chto khorosho rabotaet kak posledovatelnost slaydov, ne vsegda khorosho rabotaet kak marshrut polzovatelya.

### 11.2 One Core vs Many Platforms

Raznye platformy zakhotyat raznuyu upakovku, poetomu nelzya perenosit platformennuyu logiku v `content core`.

### 11.3 Variant Explosion

Kombinatsiya `Short / Standard / Deep` i `worker / ITR` bystro uvelichivaet chislo sborok.

Reshenie:

- ne dubliruyem kurs;
- marshrutiziruem varianty cherez `gateway contract`.

### 11.4 Analytics vs Simplicity

Esli slishkom rano navestit analytics-trebovaniya na production, oslabnet skorost sborki kursa.

Reshenie:

- analytics opisyvat kak optional `event layer`, a ne kak obyazatelnyy stage.

## 12. Pravilo prinyatiya resheniy

Esli voznikayet spor mezhdu krasivoy platformennoy ideyey i ustoychivostyu `Pipeline`, deystvuet prioritet:

1. tselostnost `content core`;
2. rabotosposobnost tekushchego production-paketa;
3. online-portability bez peresborki yadra;
4. platformennaya udobnost;
5. dopolnitelnaya analytics-glubina.

## 13. Kriteriy uspeshnogo vnedreniya

Mozhno schitat, chto `Online Gateway Concept v0.1` vnedryaetsya pravilno, esli:

- `stage-model 00-13` ostalsya netronutym;
- online-sloy ne prevratilsya v otdelnyy paralelnyy kurs;
- platforma mozhet podklyuchit kontent bez perepisyvaniya yadra;
- feedback iz online-ispolzovaniya mozhet vozvratit'sya v `Stage 13`;
- kurs po-prezhnemu mozhno vypuskat kak klassicheskiy `PPTX / PDF` paket.

## 14. Operatsionnaya formula

Korotko:

`Pipeline` dolzhen gotovit ne tolko prezentatsiyu i ne tolko online handoff, a kontent, k kotoromu v budushchem mozhno bez polomki podklyuchit polzovatelskiy `gateway`.
