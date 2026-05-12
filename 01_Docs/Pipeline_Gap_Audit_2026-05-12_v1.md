# Pipeline Gap Audit 2026-05-12 v1

## 1. Tsel

Zafiksirovat, chego ne khvataet v `Pipeline`, chtoby sistema rabotala ne tolko kak nabor dokumentov, no i kak povtoryaemyy production workflow.

## 2. Srez sostoyaniya

Na moment `2026-05-12` v proekte uzhe est:

- `blueprint`;
- `definition of done`;
- `operational workflow`;
- bazovye QA gates;
- chast shablonov;
- pilotnyy keys `Montazhnik_lesov`.

Etogo dostatochno dlya starta, no nedostatochno dlya polnogo vosproizvodimogo tsikla.

## 3. Chto uzhe zakryto

- stage-model `00-13` opisana;
- folder architecture zafiksirovana;
- logic `one stage -> one output -> one QA gate` opisana;
- est primer realnogo kursa vnutri `02_Research`;
- est shablony dlya brief, task board, slide script, QA, assets, pilot, release.

## 4. Klyuchevye gapy

### 4.1 Template coverage

Na starte ne khvatalo shablonov dlya obyazatelnykh artefaktov:

- `source register`;
- `job map`;
- `learning outcomes`;
- `course architecture`;
- `test pack`;
- `update log`.

Status na etom shage:

- gap zakryvaetsya dobavleniem komplekta shablonov `v1`.

### 4.2 Operatsionnaya polnota

V sisteme est opisanie `Maintenance`, no do etogo shaga ne bylo rabochego shablona `update log`.

Risk:

- reliz est, no podderzhka kursa ne perevedena v regulyarnyy kontur.

### 4.3 Pilot execution gap

Kurs `Montazhnik_lesov` uzhe sozdan kak keys, no bolshaya chast artefaktov poka draft ili placeholder.

Risk:

- pipeline mozhet byt khorosho opisan, no ne proveritsya na polnom prokhode.

### 4.4 Governance gap

Pokuda net:

- master index vsey sistemy;
- otdelnoy biblioteki AI prompts;
- unifitsirovannogo pravila, gde by v odnom meste skhodilis stage, artifact ID i naming.

Risk:

- pri roste chisla kursov povyshaetsya putanitsa i snizhaetsya skorost onboardinga.

## 5. Prioritet zakrytiya gapov

### P0

- zakryt template gaps;
- dovesti `Montazhnik_lesov` do realnogo `source register`, `outcomes`, `architecture`, `script`;
- provesti pervyy realnyy QA gate.

### P1

- sobrat master index;
- sobrat biblioteku AI prompts;
- vyrovnyat naming i natsionalnuyu logiku artefaktov vo vsekh dokumentakh.

## 6. Reshenie po itogu audita

Sostoyanie `Pipeline`:

- `methodology-ready`;
- `template-complete after PL-02`;
- `not yet fully pilot-proven`.

Glavnyy sleduyushchiy fokus:

1. Zakrepit polnyy komplekt shablonov.
2. Dovesti `Montazhnik_lesov` do pervogo polnogo prokhoda.
3. Posle pilota obnovit sistemu po fakticheskim uzkim mestam.
