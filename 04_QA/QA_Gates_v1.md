# QA Gates v1

## Tsel

Zakrepit minimalnuyu sistemu proverki kachestva dlya pipeline.

## Bazovaya shkala

Kazhdyy etap otsenivaetsya po pyati kriteriyam:

- `Polnota`
- `Ponyatnost`
- `Sootvetstvie trebovaniyam`
- `Otsutstvie peregruza`
- `Gotovnost k sleduyushchemu etapu`

## Otsenka

- `0-5` - kriteriy prakticheski ne vypolnen
- `6-10` - kriteriy vypolnen slabo
- `11-15` - kriteriy vypolnen dostatochno
- `16-20` - kriteriy vypolnen khorosho

## Pravilo prokhoda

- maksimum: `100`
- prokhodnoy ball: `80`
- `80+` -> `PASS`
- `60-79` -> `REVISE`
- `<60` -> `REWORK FROM PREVIOUS STAGE`

## Stage Gates

### Stage 01 - Intake

Proveryaem:

- polny li brif;
- ponyatna li biznes-tsel;
- net li protivorechiy po srokam;
- zafiksirovan li format kursa;
- izvestno li, kto prinimaet rezultat.

### Stage 02 - Source Audit

Proveryaem:

- est li obyazatelnye istochniki;
- ne propushchena li bezopasnost;
- est li istochniki po praktike;
- ne slishkom li mnogo musornogo materiala;
- ponyatno li, chego ne khvataet.

### Stage 03 - Job Decomposition

Proveryaem:

- polno li razobran protsess raboty;
- vydeleny li oshibki;
- vydeleny li instrumenty;
- vydeleny li risk points;
- udobna li karta dlya sleduyushchego proektirovaniya.

### Stage 04 - Learning Outcomes

Proveryaem:

- izmerimye li outcomes;
- svyazany li oni s realnym povedeniem;
- ne slishkom li oni abstraktny;
- mozhno li ikh proverit;
- pokryvayut li oni klyuchevye bloki.

### Stage 05 - Course Architecture

Proveryaem:

- est li logika `ot prostogo k slozhnomu`;
- net li peregruza;
- ne propushchena li TB;
- est li `5-7 critical behaviors`, esli kurs sobiraetsya dlya `worker` track;
- vydeleny li organizatsionnye i upravlencheskie bloky, esli kurs sobiraetsya dlya `ITR` track;
- est li modul povtoreniya;
- sootvetstvuet li struktura formatu kursa.

### Stage 06 - Scriptwriting

Proveryaem:

- u kazhdogo slayda est li odna mysl;
- prost li yazyk;
- sobran li obyazatelnyy `writer core`, a ne tolko nabor razroznennykh poley;
- est li speaker notes;
- ponyatno li, na chem osnovan slayd (`source basis`);
- viden li perekhod mezhdu slaydami i blokami, a ne tolko spisok tem;
- net li razryva mezhdu `slide script` i budushchim lektorskim konturom;
- ponyatno li, kakoy nuzhen vizual;
- chestno li otmechena asset dependency i net li slaydov, kotorye derzhatsya na nesushchestvuyushchem vizuale;
- est li perekhody mezhdu blokami.

### Stage 07 - Asset Collection

Proveryaem:

- khvataet li assets na kurs;
- sootvetstvuyut li oni teme;
- net li somnitelnykh vizualov;
- pokryty li `correct / incorrect / risk` visuals po klyuchevym blokam;
- ne nuzhny li dosbory.

### Stage 08 - Visual Production

Proveryaem:

- soblyuden li master-template;
- chitabelen li tekst;
- ne razrushena li logika obucheniya;
- net li verstochnykh oshibok;
- gotov li deck k review.

### Stage 09 - QA Review

Proveryaem:

- est li vse tipy proverki;
- klassifitsirovany li zamechaniya;
- net li kritichnykh oshibok;
- pokryvaet li `instructor guide` `100%` aktualnogo `slide script`;
- sobran li `lecturer questions bank` po riskovym i spornym voprosam;
- est li teaching paths dlya `worker` i `ITR`, esli kurs podderzhivaet obe auditorii;
- mozhno li peredat kurs novomu lektoru bez avtora ryadom;
- ponyatno li eto rabochemu bez metodista ryadom, esli kurs dlya `worker` track;
- dostatochno li raskryty organizatsionnye i upravlencheskie voprosy, esli kurs dlya `ITR` track;
- ponyaten li obem pravok;
- gotov li kurs k testu.

### Stage 10 - Test Creation

Proveryaem:

- test svyazan s outcomes;
- est li situatsionnye voprosy;
- est li vizualnye voprosy;
- vypolneny li minimalnye kvoty po vizualnym i situatsionnym voprosam dlya `worker` track;
- est li organizatsionnye keysy i voprosy po kontrolyu dlya `ITR` track;
- ponyatny li formulirovki;
- validen li klyuch.

### Stage 11 - Pilot

Proveryaem:

- sobran li feedback;
- ponyatny li provaly po vnimaniyu;
- vidny li slabye slaydy;
- est li analiz testa;
- sformulirovan li plan dorabotki.

### Stage 12 - Release

Proveryaem:

- polon li paket;
- pravylnye li versii;
- est li release note;
- est li instructor guide i lecturer questions bank v aktualnoy release-versii;
- ponyatno li, chto peredano;
- mozhno li bezopasno ispolzovat paket.

### Stage 13 - Maintenance

Proveryaem:

- est li owner;
- est li review cadence;
- vedetsya li update log;
- est li signal na obnovlenie;
- sistemna li podderzhka kursa.
