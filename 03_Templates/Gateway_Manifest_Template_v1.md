# Gateway Manifest Template v1

## Naznachenie

Shablon nuzhen dlya opisaniya sostava `gateway-ready` sborki i svyazey mezhdu `content core`, `online translation layer` i budushchim `gateway`.

Ego zadacha:

- zafiksirovat, kakie content-bloki podklyuchayutsya v online-kontur;
- ne dubliruyat `gateway spec`, a zafiksirovat fakticheskiy sostav i privyazki sborki;
- ponimat, kakie `variant / track / depth` podderzhivayutsya;
- zafiksirovat ustoychivye ID i istochniki dlya dalneyshey marshrutizatsii i event-layer.

## Pravilo ispolzovaniya

- etot shablon ne zamenyaet `gateway spec`, a konkretiziruet ego na urovne content-sostava;
- etot shablon ne zamenyaet `gateway event map`, a daet oporu dlya event-privyazok;
- manifest ne dolzhen byt zavisim ot konkretnoy platformy;
- manifest sobiraetsya tolko dlya kursov, u kotorykh est realnyy `gateway-ready` kontur.

## 1. Obshchaya informatsiya

- Nazvanie kursa:
- Kod kursa:
- Versiya:
- Owner:
- Uroven sborki: `Base / Future-ready`
- Svyazannyy `gateway spec`:
- Svyazannyy `gateway event map`:
- Status manifesta: `draft / working / approved`

## 2. Rol manifesta

- Zachem etot manifest sobiraetsya:
- Kakuyu online-zadachu on podderzhivaet:
- Dlya kakogo release-kontura on nuzhen:
- Kakoe minimalnoe primenenie vozmozhno uzhe seychas:

## 3. Sostav gateway-ready sborki

| Build ID | Variant | Track | Depth | Status | Chto pokryvaet |
|---|---|---|---|---|---|
| GW-BLD-01 | `korotkaya / srednyaya / dlinnaya` | `worker / ITR / mixed` | `core / standard / extended` | `draft / ready` |  |

## 4. Reestr content-blokov

Kazhdyy blok dolzhen imet ustoychivyy ID i ponyatnyy istochnik.

| Block ID | Modul ID | Block type | Naznachenie | Istochnik | Stable ID est | Primechanie |
|---|---|---|---|---|---|---|
| BLK-01 | MOD-01 | `on-screen / voiceover / interaction / reference` |  | `slide script / narration pack / adaptation map / handoff pack` | `yes / no` |  |

## 5. Mapping k istochnikam `Pipeline`

| Gateway element | Otkuda beretsya | Kak proverit aktualnost | Gde obnavlyaetsya |
|---|---|---|---|
| On-screen block | `slide script` | sravnit s release-versiey | `Stage 06 / 12` |
| Voiceover block | `narration pack` | proverit sync s on-screen | `Stage 12` |
| Interaction block | `online adaptation map / quiz hook` | proverit protiv route logic | `Stage 06 / 12` |
| Reference block | `resource / direct link / handout` | proverit dostupnost i aktualnost | `Stage 12 / 13` |

## 6. Variant / Track Coverage

Nuzhno zafiksirovat, gde blok universalnyy, a gde adaptiruetsya pod konkretnuyu sborku.

| Block ID | Dlya kakikh variantov | Dlya kakikh trackov | Dlya kakoy glubiny | Universalnyy ili adaptivnyy |
|---|---|---|---|---|
| BLK-01 | `all / korotkaya / srednyaya / dlinnaya` | `all / worker / ITR / mixed` | `core / standard / extended / all` | `universal / adaptive` |

## 7. Layer Assignment

Zdes nuzhno ponyat, kakoy sloy chto neset v gateway.

| Block ID | Layer | Kak otdaetsya | Nuzhen li route-control | Nuzhen li event-hook |
|---|---|---|---|---|
| BLK-01 | `on-screen / voiceover / interaction / reference` | `screen / audio / quiz / popup / link` | `yes / no` | `yes / no` |

## 8. Stable IDs i version compatibility

- Kak ustroeny ID moduley:
- Kak ustroeny ID blokov:
- Kak svyazat ID manifesta s `gateway spec`:
- Kak svyazat ID manifesta s `gateway event map`:
- Kak obnaruzhit, chto blok izmenilsya mezhdu versiyami:
- Kak ne poteryat privyazki pri `patch / minor / major`:

## 9. Reusable vs platform-specific

Manifest dolzhen pomoch otdelit to, chto ostayetsya v `Pipeline`, ot togo, chto mozhno ostavit platforme.

| Element | Reusable v lyubom gateway | Zavisim ot platformy | Primechanie |
|---|---|---|---|
| Content block IDs | `yes / no` | `yes / no` |  |
| Route labels | `yes / no` | `yes / no` |  |
| Progress UI | `yes / no` | `yes / no` |  |
| Quiz rendering | `yes / no` | `yes / no` |  |
| Reference delivery | `yes / no` | `yes / no` |  |

## 10. Gaps i nedostayushchie elementy

- Kakikh blokov poka ne khvataet dlya `gateway-ready` sborki:
- Gde net ustoychivykh ID:
- Gde content est, no ne razdelen po sloyam:
- Gde est risk, chto odin blok slishkom zavisit ot prezentatsionnoy logiki:
- Gde nuzhna dopolnitelnaya rabota pered realnym online-podklyucheniem:

## 11. Conflict Check

Manifest ne dolzhen uzhestochat `Pipeline` ili razrushat `content core`.

Nuzhno proverit:

1. ne dubliruem li my odin i tot zhe smysl v neskolkikh blokakh bez nuzhdy;
2. ne zamenyaet li platformennaya upakovka uchebnoe yadro;
3. ne voznikayet li vzryv sborok iz-za `variant / track / depth`;
4. mozhno li reshit problemu adaptatsiey, a ne peresborkoy yadra;
5. ne protivorechit li manifest pravilam standartizatsii vsego `Pipeline`.

## 12. Svyaz s maintenance

- Kakie elementi manifesta dolzhny otslezhivatsya v `Stage 13`:
- Kakie izmeneniya v blokakh schitat `patch / minor / major`:
- Kakie izmeneniya mozhno vnosit bez lomki route logic:
- Kogda nuzhno obnovlyat srazu `spec + manifest + event map`:

## 13. Reshenie po gotovnosti

- Gateway manifest gotov: `yes / no`
- Kakaya chast manifesta uzhe rabotosposobna:
- Chto nuzhno dosobrat do polnogo `gateway contract`:
- Kakie bloki uzhe mozhno peredat platforme:
- Chto eshche dolzhno ostat'sya vnutri `Pipeline`:
