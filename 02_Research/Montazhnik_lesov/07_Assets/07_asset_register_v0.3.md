# Asset Register

## Status

- Versiya: `v0.3`
- Nazvanie kursa: `Montazhnik lesov`
- Kod kursa: `ML`
- Data sborki registra: `2026-05-14`
- Owner: vy
- Rol etoy iteratsii: materializovat `minimum viable visual layer` dlya `TV-01` - `TV-05` posle `09_qa_report_v0.1.md`

## Chto izmenilos v `v0.3`

- `v0.2` ostayetsya bazovym coverage-registerom po slaydam `01-43`;
- dobavlen assessment-anchor package dlya post-QA testa `10_test_pack_v0.2.md`;
- zavedeny novye asset IDs `A-44` - `A-48` kak controllable visual blocks dlya targeted QA po assessment-validity;
- snizhen risk togo, chto `LO-03`, `LO-05`, `LO-07`, `LO-11`, `LO-12` ostanutsya "tolko tekstovymi";
- generic-safe granitsa sokhranena: nikakikh system-specific uzlov, pasportnykh tochnostey ili ekspertno-zavisimykh mikrodetaley ne dobavlyaetsya.

## Rol etoy versii v pipeline

Eta versiya ne zamenyaet `07_asset_register_v0.2.md`, a usilivaet ego.

`v0.2` otvechaet za:
- obshchiy production contour slaydov `01-43`;
- scheme-first strategiyu kursa;
- perevod asset-layer iz `photo-blocked` v `controlled draft`.

`v0.3` otvechaet za:
- assessment-validity bridge;
- minimum viable visuals dlya testa;
- gotovnost k targeted QA po post-formal revise-cycle.

## Svaz s testom `v0.2`

| Test anchor | Chto proveryaem | Svazannye outcomes | Nuzhen li realnyy foto-layer seychas | Chto mozhno sobrat uzhe seychas |
|---|---|---|---|---|
| `TV-01` | raspoznavanie grupp elementov i ikh funktsiy | `LO-03` | `no` | controllable scheme / recognition board |
| `TV-02` | `godno / ne godno` pri intake-check | `LO-05` | `no` | compare-card s markerami defekta |
| `TV-03` | `dopustimo / nedopustimo` po yarusu i dostupu | `LO-07`, `LO-09` | `no` | compare-board po rabochemu yarusu |
| `TV-04` | hazard signs i stop-logika | `LO-11`, `LO-13` | `no` | red-flag scene / hazard board |
| `TV-05` | bezopasnaya sequence-logika demontazha | `LO-12` | `no` | sequence-board / step strip |

## Assessment anchor package

| Asset ID | Test anchor | Tip | Opisanie | Istochnik | Redaktiruemost | Status | Gde ispolzuetsya | Primechanie |
|---|---|---|---|---|---|---|---|---|
| A-44 | `TV-01` | recognition scheme | Board po gruppam elementov: chto dayot rabochuyu ploshchadku, chto zhestkost, chto kreplenie | sobrat vnutri prezentatsii na osnove `A-10`, `A-13` | editable | planned | `10_test_pack_v0.2.md`, targeted QA | ne trebuet realnogo foto, mozhno sobrat shemno |
| A-45 | `TV-02` | compare-card | `godno / ne godno` po intake-check elementa s markerami tipovykh defektov | sobrat vnutri prezentatsii, optionalno usilit pozhe chastyu `A-17` | editable | planned | `10_test_pack_v0.2.md`, worker-check | v etoy iteratsii ne privyazyvat k odnomu proizvoditelyu |
| A-46 | `TV-03` | compare-board | Rabochiy yarus `dopustimo / nedopustimo`: nastil, dostup, bazovaya gotovnost | sobrat vnutri prezentatsii na osnove `A-28`, `A-30`, `A-33` | editable | planned | `10_test_pack_v0.2.md`, release-test contour | odin iz samykh vazhnykh worker-facing visual blocks |
| A-47 | `TV-04` | hazard board | Red-flag scene po tipovoy opasnoy oshibke i signalu dlya stopa | sobrat kak sobstvennuyu skhemu / hybrid scene | editable | planned | `10_test_pack_v0.2.md`, modul `08` | ne zhit na "krasivom" foto; vazhna yavnaya signalika |
| A-48 | `TV-05` | sequence board | Bazovaya sequence-logika demontazha s no-go variantami | sobrat kak step-strip / algorithm board | editable | planned | `10_test_pack_v0.2.md`, modul `09` | derzhat generic-safe contour bez system-specific uzlov |

## Build logic dlya `A-44` - `A-48`

### Paket 1: recognition + compare

- `A-44`
- `A-45`
- `A-46`

Pochemu pervym:
- imenno eti assets zakryvayut samyy pryamoy QA-gap po `LO-03`, `LO-05`, `LO-07`, `LO-09`;
- oni luchshe vsego sobirayutsya scheme-first i ne trebuyut zhdat foto-bazu;
- oni dadut maksimalnuyu polzu dlya worker-ponyatnosti.

### Paket 2: hazard + sequence

- `A-47`
- `A-48`

Pochemu vtorym:
- eti assets silnee zavisyat ot tonkoy metodicheskoy formulirovki;
- ikh nuzhno sobirat tak, chtoby ne slomat generic-safe granitsu;
- oni luchshe proveryayutsya uzhe posle sborki recognition / compare sloya.

## Acceptance criteria

| Asset ID | Chto schitaem dostatochnym v etoy iteratsii | Chto eshche ne trebuetsya |
|---|---|---|
| A-44 | ponyatnaya visual-gruppirovka elementov i ikh roley | finalnyy branded polish |
| A-45 | yavnoe `godno / ne godno` s 1-2 markerami defekta | realnoe polevoe foto vsekh variantov |
| A-46 | mgnovenno schityvaemoe sravnenie yarusa `mozhno / nelzya` | pasportnye chisla i system-specific normy |
| A-47 | hazard sign chitaetsya bez dlinnykh poyasneniy | photoreal scene |
| A-48 | sequence demontazha ponyatna kak logic strip | detalnaya zavisimost ot odnoi modeli lesov |

## Graphic risk note

Glavnaya opasnost etoy iteratsii ne v tom, chto assets "slishkom prostye", a v tom, chto ikh mozhno sobrat slishkom tekstovo i nazvat visual-layerom.

Poetomu dlya `A-44` - `A-48` deystvuyut tri zhostkikh pravila:

1. asset dolzhen rabotat kak vizual, a ne kak tekstovaya kartochka;
2. risk-signal dolzhen schityvat'sya bez dlinnykh podpisey;
3. esli mezhdu krasivym i proveryaemym variantom est konflikt, vybirat proveryaemyy.

## Reshenie po gotovnosti

- Assessment asset package opredelen: `yes`
- Mozhno li peredat ego v realnuyu sborku: `yes`
- Zakryt li visual gap polnostyu: `no`
- Chto nado delat dalshe:
  - sobrat `A-44` - `A-46` kak pervyy MVP-batch;
  - potom sobrat `A-47` - `A-48`;
  - zatem vernutsya k targeted QA po test-validity i worker-ponyatnosti.
