# Master Transcript Template v1

## Naznachenie

Shablon nuzhen dlya sborki etalonnogo tekstovogo sloya kursa, iz kotorogo mozhno delat:

- ozvuchku;
- subtitry;
- language packs;
- kontroliruemyy perevod po stable IDs.

Glavnyy printsip:

- perevodim ne "prezentatsiyu tselikom";
- perevodim stabilnye content-segmenty po ID.

## Pravilo ispolzovaniya

- `master transcript` ne zamenyaet `slide script`, a sobiraetsya na ego osnove;
- etot shablon nuzhen tam, gde kurs mozhet poluchit audio-first, subtitle-first ili multilingual delivery;
- tekst v kartinkakh i raster-skhemakh na etom etape ne perestraivaetsya, a pomechaetsya kak `asset-bound`;
- kazhdyy segment dolzhen byt svyazan s moduljem, blokom ili slaydom, chtoby obnovleniya mozhno bylo version-controlit.

## 1. Obshchaya informatsiya

- Nazvanie kursa:
- Kod kursa:
- Versiya:
- Owner:
- Track: `worker / ITR / mixed`
- Uroven sborki: `Base / Future-ready`
- Nuzhen li multilingual contour: `yes / no / later`
- Svyazannyy `slide script`:
- Svyazannyy `narration pack`:

## 2. Rol master transcript

- Zachem sobiraetsya transcript:
- Dlya kakogo delivery-scenariya on nuzhen:
- Kakie yazyki planiruyutsya v pervoy iteratsii:
- Chto schitaetsya etalonnoi russkoy bazoy:

## 3. Pravilo segmentatsii

Segment dolzhen byt dostatochno stabilnym, chtoby ego mozhno bylo:

- otdelno ozvuchit;
- otdelno perevesti;
- otdelno obnovit bez polnoy peresborki kursa.

Rekomenduemyy format ID:

- `COURSE-M<modul>-S<segment>`

Primer:

- `ML-M02-S01`
- `ML-M02-S02`
- `ML-M04-S03`

## 4. Reestr segmentov

| Segment ID | Modul / slayd | Track | Content layer | Route relevance | Stable ID est | Primechanie |
|---|---|---|---|---|---|---|
| ML-M01-S01 | `01 / 01-03` | `worker / ITR / mixed` | `core / standard / extended` | `all / korotkaya / srednyaya / dlinnaya` | `yes / no` |  |

## 5. Master Transcript Blocks

Kazhdyy blok zapolnyaetsya na odin stabilnyy segment, a ne obyazatelno na odin slayd.

| Segment ID | On-screen summary | Voiceover master text | Simplified RU | Micro-check wording | Reference note | Critical terms |
|---|---|---|---|---|---|---|
| ML-M01-S01 |  |  |  |  |  |  |

## 6. Segment Delivery Mapping

| Segment ID | Chto idet v audio | Chto idet v subtitles | Chto ostayotsya on-screen | Chto idet v reference | Asset-bound risk |
|---|---|---|---|---|---|
| ML-M01-S01 | `full / short / none` | `full / short / none` | `core message / title only / key phrase` | `link / glossary / FAQ / none` | `yes / no` |

## 7. Kriticheskie terminologicheskie pravila

Zdes nuzhno vyvesti terminy i konstruktsii, kotorye nelzya svobodno uproshchat ili zamenyat bez pravila.

| Term / phrase | Pochemu kritichno | Chto nelzya delat pri perevode | Nuzhen li glossary-lock |
|---|---|---|---|
| `dopusk k rabotam` | safety i organizatsionnyy smysl | ne svodit tolko k "razresheniyu" bez konteksta | `yes / no` |

## 8. Asset-bound Note

Zdes nuzhno chestno pometchat segmenty, gde chast smysla zhivet v kartinke, skheme ili raster-vizuale.

| Segment ID | Gde est tekst v assete | Mozhno li kompensirovat audio/subtitles | Nuzhna li asset-refactor pozhe |
|---|---|---|---|
| ML-M01-S01 | `yes / no` | `yes / no` | `yes / no` |

## 9. Variant / Track Sensitivity

| Segment ID | Dlya kakikh variantov | Dlya kakikh trackov | Chto menyaetsya | Chto ostayotsya stabilnym |
|---|---|---|---|---|
| ML-M01-S01 | `all / korotkaya / srednyaya / dlinnaya` | `all / worker / ITR` |  |  |

## 10. Language Pack Readiness

| Segment ID | Gotov dlya perevoda | Gotov dlya ozvuchki | Gotov dlya subtitrov | Chto nado dosobrat |
|---|---|---|---|---|
| ML-M01-S01 | `yes / no` | `yes / no` | `yes / no` |  |

## 11. Conflict Check

`Master transcript` ne dolzhen sozdavat parallel'nyy kurs.

Nuzhno proverit:

1. ne razmnozhayem li my odin i tot zhe smysl v neskolkikh segmentakh bez nuzhdy;
2. ne zhivet li kriticheskiy safety-smysl tolko v speaker notes;
3. ne pytaemsya li perevodit to, chto poka zhestko zashito v assete;
4. ne slivaem li v odin blok `on-screen`, `voiceover` i `reference` bez razdeleniya roley;
5. ne protivorechit li transcript aktualnoy release-versii kursa.

## 12. Svyaz s maintenance

- Kakie izmeneniya v transcript schitat `patch / minor / major`:
- Kogda nuzhno obnovlyat vse language packs:
- Kogda nuzhno pereozvuchivat audio:
- Kak pometchat rassinkhron mezhdu `slide script`, `narration pack` i `master transcript`:

## 13. Reshenie po gotovnosti

- Master transcript gotov: `yes / no`
- Kakie segmenty uzhe mozhno otdavat v translation:
- Kakie segmenty uzhe mozhno otdavat v audio production:
- Gde poka est `asset-bound` ogranicheniya:
- Chto nado dosobrat do multilingual-ready sloya:
