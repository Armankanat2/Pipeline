# Visual Label Map

## 1. Obshchaya informatsiya

- Nazvanie kursa: `Montazhnik lesov`
- Kod kursa: `ML`
- Data sborki: `2026-05-13`
- Owner: vy
- Bazovyy yazyk: `ru`
- Aktivnye language add-ons: `uz / tg`, `hi` planned
- Svyazannyy `asset register`: `07_asset_register_v0.1.md`
- Svyazannyy bazovyy `terminology glossary`: `01_Brief/01_terminology_glossary_v0.1.md`
- Svyazannyy `multilang glossary`: `01_Brief/01_terminology_glossary_multilang_v0.1.md`
- Svyazannyy `master transcript`: `06_Script/06_master_transcript_v0.1.md`

## 2. Rol visual label map

- Zachem sobiraetsya etot map: svyazat multilingual-chuvstvitelnye visuals s glossary-lock terminami i budushchimi language packs
- Dlya kakogo delivery-scenariya on nuzhen: `PPTX`, `PDF`, `audio-first`, `subtitles`, `gateway`, `QR + direct link`
- Kakie assets schitayutsya multilingual-sensitive: `A-06`, `A-10`, `A-11`, `A-12`, `A-14`, `A-16`
- Chto v etoy iteratsii ne pokryvaetsya: polnyy redraw kartinok, text-inside-image localization, moduli `05-07`

## 3. Asset-to-Label Registry

| Asset ID | Label ID | Asset type | Gde na assete zhivet label | Chto eto za obekt | Svazannyy Term ID | Asset-bound | Editable separately | Nuzhen redraw pozhe | Status |
|---|---|---|---|---|---|---|---|---|---|
| A-06 | ML-L-A06-01 | `photo / scheme` | `callout` | obshchee oboznacheniye komplekta SIZ | `ML-T02` | `yes` | `no` | `yes` | `draft` |
| A-06 | ML-L-A06-02 | `photo / scheme` | `callout` | kaska | `none` | `yes` | `no` | `yes` | `draft` |
| A-06 | ML-L-A06-03 | `photo / scheme` | `callout` | strakhovochnaya sistema / harness | `ML-T02` | `yes` | `no` | `yes` | `draft` |
| A-10 | ML-L-A10-01 | `scheme` | `embedded label` | opora / stoyka konstruktsii | `ML-T04` | `yes` | `no` | `yes` | `draft` |
| A-10 | ML-L-A10-02 | `scheme` | `embedded label` | svyaz | `ML-T04` | `yes` | `no` | `yes` | `draft` |
| A-10 | ML-L-A10-03 | `scheme` | `embedded label` | kreplenie | `ML-T07` | `yes` | `no` | `yes` | `draft` |
| A-11 | ML-L-A11-01 | `diagram` | `caption` | osnovanie | `none` | `no` | `yes` | `maybe` | `draft` |
| A-11 | ML-L-A11-02 | `diagram` | `caption` | geometriya | `ML-T04` | `no` | `yes` | `maybe` | `draft` |
| A-11 | ML-L-A11-03 | `diagram` | `caption` | kreplenie | `ML-T07` | `no` | `yes` | `maybe` | `draft` |
| A-12 | ML-L-A12-01 | `comparison scheme` | `title` | ustoychivo | `ML-T04` | `yes` | `no` | `yes` | `draft` |
| A-12 | ML-L-A12-02 | `comparison scheme` | `title` | opasno | `ML-T06` | `yes` | `no` | `yes` | `draft` |
| A-14 | ML-L-A14-01 | `photo` | `overlay callout` | opasnaya zona | `ML-T06` | `yes` | `partial` | `later` | `draft` |
| A-16 | ML-L-A16-01 | `photo pair` | `badge` | gotovo | `ML-PH-03` | `yes` | `partial` | `later` | `draft` |
| A-16 | ML-L-A16-02 | `photo pair` | `badge` | ne gotovo | `ML-PH-03` | `yes` | `partial` | `later` | `draft` |

## 4. Label Language Matrix

| Label ID | RU master | UZ | TG | HI | EN bridge | Predpochtitelnaya audio-forma | Subtitle-safe short form | Review status | Primechanie |
|---|---|---|---|---|---|---|---|---|---|
| ML-L-A06-01 | `SIZ` | `SIZ / shaxsiy himoya vositalari` | `SIZ / vositahoi himoyai shakhsi` | `to be reviewed` | `PPE` | `shaxsiy himoya vositalari` / `vositahoi himoyai shakhsi` | `SIZ` | `draft` | abbreviatura vysokogo TTS-riska |
| ML-L-A06-02 | `kaska` | `kaska` | `kaska` | `to be reviewed` | `helmet` | `kaska` | `kaska` | `draft` | luchshe ne uslozhnyat wording |
| ML-L-A06-03 | `strakhovochnaya sistema` | `xavfsizlik boglami / harness` | `sistemi strakhovka / harness` | `to be reviewed` | `harness` | `harness` | `harness` | `draft` | mozhno derzhat bridge-term |
| ML-L-A10-01 | `opora` | `tayanch` | `takya` | `to be reviewed` | `support` | `tayanch` / `takya` | `opora` | `draft` | proverit s technical review |
| ML-L-A10-02 | `svyaz` | `boglanish` | `payvastagi` | `to be reviewed` | `brace / connection` | `boglanish` / `payvastagi` | `svyaz` | `draft` | ne putat s krepleniem |
| ML-L-A10-03 | `kreplenie` | `mahkamlash nuqtasi` | `nuqtai mustahkamsazi` | `to be reviewed` | `anchoring / fastening` | `mahkamlash nuqtasi` / `nuqtai mustahkamsazi` | `kreplenie` | `draft` | glossary-lock term |
| ML-L-A11-01 | `osnovanie` | `asos` | `asos` | `to be reviewed` | `base` | `asos` | `osnovanie` | `draft` | poka mozhno derzhat prosto |
| ML-L-A11-02 | `geometriya` | `geometriya` | `geometriya` | `to be reviewed` | `geometry` | `geometriya` | `geometriya` | `draft` | technical bridge acceptable |
| ML-L-A11-03 | `kreplenie` | `mahkamlash nuqtasi` | `nuqtai mustahkamsazi` | `to be reviewed` | `anchoring / fastening` | `mahkamlash nuqtasi` / `nuqtai mustahkamsazi` | `kreplenie` | `draft` | dolzhno sovpadat s A-10 |
| ML-L-A12-01 | `ustoychivo` | `barqaror` | `poydor` | `to be reviewed` | `stable` | `barqaror` / `poydor` | `ustoychivo` | `draft` | svyazat s `ML-T04` |
| ML-L-A12-02 | `opasno` | `xavfli` | `xatarnok` | `to be reviewed` | `unsafe / dangerous` | `xavfli` / `xatarnok` | `opasno` | `draft` | ne smyagchat |
| ML-L-A14-01 | `opasnaya zona` | `xavfli zona` | `zonai xatarnok` | `to be reviewed` | `hazard zone` | `xavfli zona` / `zonai xatarnok` | `opasnaya zona` | `draft` | glossary-lock |
| ML-L-A16-01 | `gotovo` | `tayyor` | `tayyor` | `to be reviewed` | `ready` | `tayyor` | `tayyor` | `draft` | para k `ne gotovo` |
| ML-L-A16-02 | `ne gotovo` | `tayyor emas` | `tayyor nest` | `to be reviewed` | `not ready` | `tayyor emas` / `tayyor nest` | `ne gotovo` | `draft` | ne sokrashchat do myagkoy formy |

## 5. Glossary Link Check

| Label ID | Svazannyy Term ID | Sovpadaet li s glossary | Mozhno li ispolzovat uproshchennuyu formu | Nedopustimaya forma | Pochemu kritichno |
|---|---|---|---|---|---|
| ML-L-A06-01 | `ML-T02` | `yes` | `partial` | `zashchita` bez ukazaniya SIZ | inache teryaetsya PPE-smysl |
| ML-L-A10-03 | `ML-T07` | `yes` | `no` | obshchee `zakrepit` bez konstruktsionnogo smysla | kritichno dlya modulya `03` |
| ML-L-A12-01 | `ML-T04` | `yes` | `partial` | `prochno` vmesto `ustoychivo` | menyaetsya systems meaning |
| ML-L-A14-01 | `ML-T06` | `yes` | `no` | obshchee `opasno` bez prostranstvennogo smysla | nuzhna zona, a ne obshchaya otsenka |
| `ML-L-A16-01` / `ML-L-A16-02` | `ML-PH-03` | `yes` | `no` | razmytye formy `pochti gotovo` | lomayut checklist-logiku |

## 6. Usage Mapping

| Label ID | Gde ispolzuetsya | Slide / module reference | On-screen | Audio | Subtitles | Reference pack | Gateway / online | Primechanie |
|---|---|---|---|---|---|---|---|---|
| ML-L-A06-01 | `PPTX / PDF / LMS` | `06 / modul 02` | `yes` | `yes` | `yes` | `yes` | `yes` | odin iz glavnykh multilingual-riskov |
| `ML-L-A10-01` - `ML-L-A10-03` | `PPTX / PDF / LMS` | `10 / modul 03` | `yes` | `yes` | `yes` | `yes` | `yes` | skhema elementov |
| `ML-L-A11-01` - `ML-L-A11-03` | `PPTX / PDF / LMS` | `11 / modul 03` | `yes` | `yes` | `yes` | `yes` | `yes` | diagramma logic contour |
| `ML-L-A12-01` - `ML-L-A12-02` | `PPTX / PDF / LMS` | `12 / modul 03` | `yes` | `yes` | `yes` | `yes` | `yes` | visual compare block |
| ML-L-A14-01 | `PPTX / PDF / LMS` | `14 / modul 04` | `yes` | `yes` | `yes` | `yes` | `yes` | photo s risk-zone overlay |
| `ML-L-A16-01` - `ML-L-A16-02` | `PPTX / PDF / LMS / test` | `16 / modul 04` | `yes` | `yes` | `yes` | `yes` | `yes` | ready-not-ready pair |

## 7. Asset-bound Risk Note

| Label ID | V chem risk | Mozhno li kompensirovat audio | Mozhno li kompensirovat subtitles | Kogda nuzhen redraw | Prioritet |
|---|---|---|---|---|---|
| `ML-L-A06-01` - `ML-L-A06-03` | text zashit v SIZ callouts | `yes` | `yes` | `now` | `high` |
| `ML-L-A10-01` - `ML-L-A10-03` | podpisi vnutri skhemy elementov | `partial` | `partial` | `now` | `high` |
| `ML-L-A11-01` - `ML-L-A11-03` | caption block mozhno sdvinut v editable layer | `yes` | `yes` | `later` | `medium` |
| `ML-L-A12-01` - `ML-L-A12-02` | large comparison labels mogut ne sovpast s audio | `partial` | `yes` | `now` | `high` |
| ML-L-A14-01 | overlay na foto mozhet byt nechten v mobilnoy vydache | `yes` | `yes` | `later` | `medium` |
| `ML-L-A16-01` - `ML-L-A16-02` | badge labels v pair-visual | `yes` | `yes` | `later` | `medium` |

## 8. Variant / Track Sensitivity

| Label ID | Zavisimost ot variantov | Zavisimost ot tracka | Chto menyaetsya | Chto dolzhno ostat'sya stabilnym |
|---|---|---|---|---|
| `ML-L-A06-01` - `ML-L-A06-03` | `all` | `worker / ITR` | glubina poyasneniya | naimenovanie SIZ i bazovaya safety-logika |
| `ML-L-A10-01` - `ML-L-A10-03` | `srednyaya / dlinnaya` | `worker / ITR` | glubina technical note | smysl elementa i svyaz s ustoychivostyu |
| `ML-L-A12-01` - `ML-L-A12-02` | `srednyaya / dlinnaya` | `worker / ITR` | uroven detalizatsii poravneniya | granitsa `ustoychivo / opasno` |
| ML-L-A14-01 | `all` | `worker / ITR` | obem callouts | ponyatie risk-zony |
| `ML-L-A16-01` - `ML-L-A16-02` | `all` | `worker / ITR` | slozhnost scenario | para `gotovo / ne gotovo` |

## 9. Conflict Check

1. labels ne dolzhny protivorechit `master transcript` i multilingual glossary;
2. `SIZ`, `kreplenie`, `ustoychivost` i `opasnaya zona` ne dolzhny poluchat raznye target-language smysly v raznykh visuals;
3. audio ne dolzhno skryvat problemu, esli na samoy kartinke net multilingual-ready label layer;
4. odin i tot zhe asset ne dolzhen odnovremenno schitatsya `asset-bound` i `editable separately` bez utochneniya, kakoy sloy redaktiruetsya;
5. etot layer ne dolzhen tormozit bazovyy `ru` release, esli foreign-language delivery ne zakazan.

## 10. Svyaz s maintenance

- Kakie izmeneniya schitat `patch / minor / major`:
  - wording odnoi podpisi = `patch`
  - dobavlenie novogo `Label ID` = `minor`
  - redraw asseta ili smena glossary-link = `major`
- Kogda nuzhno obnovlyat vse language packs:
  - pri izmenenii `RU master` dlya `ML-L-A06-01`, `ML-L-A10-03`, `ML-L-A12-01`, `ML-L-A14-01`;
  - pri izmenenii `ML-T02`, `ML-T04`, `ML-T06`, `ML-T07`, `ML-PH-03`;
  - pri redraw assetov `A-06`, `A-10`, `A-12`.
- Kak pometchat problemu v `Stage 13`:
  - `visual label drift`
  - `asset-bound multilingual signal`
  - `glossary mismatch`

## 11. Reshenie po gotovnosti

- Visual label map gotov: `starter draft`
- Kakie assets uzhe pokryty: `A-06`, `A-10`, `A-11`, `A-12`, `A-14`, `A-16`
- Kakie labels uzhe pod glossary-link: `SIZ`, `kreplenie`, `ustoychivost`, `opasnaya zona`, `gotovo / ne gotovo`
- Gde ostayotsya vysokiy risk: `A-06`, `A-10`, `A-12` iz-za embedded labels i budushchego redraw
- Chto nado dosobrat do production-ready sloya: svyaz s finalnymi visual assets, `hi` draft-equivalents, native review dlya `uz / tg`, utverzhdenie editable-layer strategy
