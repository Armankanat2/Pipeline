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
- est li modul povtoreniya;
- sootvetstvuet li struktura formatu kursa.

### Stage 06 - Scriptwriting

Proveryaem:

- u kazhdogo slayda est li odna mysl;
- prost li yazyk;
- est li speaker notes;
- ponyatno li, kakoy nuzhen vizual;
- est li perekhody mezhdu blokami.

### Stage 07 - Asset Collection

Proveryaem:

- khvataet li assets na kurs;
- sootvetstvuyut li oni teme;
- net li somnitelnykh vizualov;
- pokryty li oshibki i pravilnye primery;
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
- ponyaten li obem pravok;
- gotov li kurs k testu.

### Stage 10 - Test Creation

Proveryaem:

- test svyazan s outcomes;
- est li situatsionnye voprosy;
- est li vizualnye voprosy;
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
- ponyatno li, chto peredano;
- mozhno li bezopasno ispolzovat paket.

### Stage 13 - Maintenance

Proveryaem:

- est li owner;
- est li review cadence;
- vedetsya li update log;
- est li signal na obnovlenie;
- sistemna li podderzhka kursa.
