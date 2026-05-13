# Visual Label Map Template v1

## Naznachenie

Shablon nuzhen dlya svyazki mezhdu `Asset Register`, glossary i mnogoiazychnym delivery-sloem.

On ne zamenyaet `Asset Register` i ne dubliruet `Terminology Glossary`, a fiksiruet:

- kakie podpisi i nazvaniya zhivut na konkretnykh visual assets;
- s kakimi glossary-terminami oni svyazany;
- kakie `RU` / `UZ` / `TG` / `HI` i drugie formy dlya nikh utverzhdeny;
- mozhno li meniat label otdelno ot kartinki;
- gde est `asset-bound` risk i nuzhen li budushchiy redraw.

## 1. Obshchaya informatsiya

- Nazvanie kursa:
- Kod kursa:
- Data sborki:
- Owner:
- Bazovyy yazyk:
- Kakie language add-ons aktivny:
- Svyazannyy `asset register`:
- Svyazannyy bazovyy `terminology glossary`:
- Svyazannyy `multilang glossary`:

## 2. Rol visual label map

- Zachem sobiraetsya etot map:
- Dlya kakogo delivery-scenariya on nuzhen:
- Kakie assets schitayutsya multilingual-sensitive:
- Chto v etoy iteratsii ne pokryvaetsya:
- Bazovyy glossary schitaetsya primary source dlya safety-smysla i term-locka.
- Multilang glossary schitaetsya secondary source dlya target-language form i delivery-adaptatsii.

## 3. Asset-to-Label Registry

| Asset ID | Label ID | Asset type | Gde na assete zhivet label | Chto eto za obekt | Bazovyy Term ID | Multilang Term ID | Asset-bound | Editable separately | Nuzhen redraw pozhe | Status |
|---|---|---|---|---|---|---|---|---|---|---|
| A-01 | L-01-01 | photo / scheme / icon / raster label | top / left / callout / caption / embedded |  | G-01 | ML-T01 | yes / no | yes / no | yes / no / maybe | draft / approved / blocked |

## 4. Label Language Matrix

Dlya kazhdogo `Label ID` nuzhno derzhat etalon i target-language formy otdelno ot samogo asseta.

| Label ID | RU master | UZ | TG | HI | EN bridge | Predpochtitelnaya audio-forma | Subtitle-safe short form | Review status | Primechanie |
|---|---|---|---|---|---|---|---|---|---|
| L-01-01 |  |  |  |  |  |  |  | draft / reviewed / approved |  |

## 5. Glossary Link Check

| Label ID | Bazovyy Term ID | Multilang Term ID | Sovpadaet li s glossary | Mozhno li ispolzovat uproshchennuyu formu | Nedopustimaya forma | Pochemu kritichno |
|---|---|---|---|---|---|---|
| L-01-01 | G-01 | ML-T01 | yes / no / partial | yes / no / partial |  |  |

## 6. Usage Mapping

| Label ID | Gde ispolzuetsya | Slide / module reference | On-screen | Audio | Subtitles | Reference pack | Gateway / online | Primechanie |
|---|---|---|---|---|---|---|---|---|
| L-01-01 | PPTX / PDF / LMS / QR ref | `03 / 09-13` | yes / no | yes / no | yes / no | yes / no | yes / no |  |

## 7. Asset-bound Risk Note

| Label ID | V chem risk | Mozhno li kompensirovat audio | Mozhno li kompensirovat subtitles | Kogda nuzhen redraw | Prioritet |
|---|---|---|---|---|---|
| L-01-01 | tekst zashit v rastr / skhemu | yes / no / partial | yes / no / partial | now / later / optional | high / medium / low |

## 8. Variant / Track Sensitivity

| Label ID | Zavisimost ot variantov | Zavisimost ot tracka | Chto menyaetsya | Chto dolzhno ostat'sya stabilnym |
|---|---|---|---|---|
| L-01-01 | `korotkaya / srednyaya / dlinnaya / all` | `worker / ITR / all` |  |  |

## 9. Naming Rules

- `Asset ID` otvechaet tolko za sam visual object.
- `Term ID` otvechaet za smysl i glossary-lock.
- `Label ID` otvechaet za konkretnuyu podpis, callout ili nazvanie na assete.
- Odin `Asset ID` mozhet imet neskolko `Label ID`.
- Odin `Term ID` mozhet svyazyvat neskolko `Label ID`, esli term zhivet v raznykh visuals.
- Label ne dolzhen poluchat novyy smysl tolko iz-za target-language wording.

## 10. Conflict Check

1. ne protivorechat li visual labels glossary i `master transcript`;
2. ne poluchaet li odin i tot zhe obekt raznye nazvaniya v raznykh assets;
3. ne pytaemsya li zakryt asset-bound problemu odnim audio tam, gde nuzhen redraw;
4. ne razdelyaetsya li odin `Term ID` na raznye target-language smysly bez review;
5. ne zamedlyaet li multilingual label-layer vypusk bazovogo `ru` release.

## 11. Svyaz s maintenance

- Kakie izmeneniya schitat `patch / minor / major`:
  - wording odnoi podpisi = `patch`
  - dobavlenie novogo `Label ID` = `minor`
  - peresborka asseta, glossary-link ili redraw requirement = `major`
- Kogda nuzhno obnovlyat vse language packs:
  - pri izmenenii `RU master` dlya glossary-lock label;
  - pri izmenenii `Term ID`;
  - pri redraw asseta s tekstovymi izmeneniyami.
- Kak pometchat problemu v `Stage 13`:
  - kak `visual label drift`
  - kak `asset-bound multilingual signal`
  - kak `glossary mismatch`

## 12. Reshenie po gotovnosti

- Visual label map gotov: `yes / no`
- Kakie assets uzhe pokryty:
- Kakie labels uzhe pod glossary-link:
- Gde ostayotsya vysokiy risk:
- Chto nado dosobrat do production-ready sloya:
