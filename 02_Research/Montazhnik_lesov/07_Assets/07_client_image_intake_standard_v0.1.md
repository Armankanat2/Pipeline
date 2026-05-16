# Client Image Intake Standard

## Status

- Versiya: `v0.1`
- Kurs: `Montazhnik lesov`
- Kod kursa: `ML`
- Data sborki: `2026-05-16`
- Owner: vy
- Rol etoy versii: zafiksirovat papki i naming convention dlya klientskikh izobrazheniy pod `edit-first` slaydy `01-14` i `16-18`

## Zachem nuzhen etot standart

Etot dokument nuzhen, chtoby:

- ne putat klinovye i khomutovye vizualy;
- ne teryat svyaz mezhdu kartinkoy i nomerom slayda;
- podgotovit assets k bystroy sborke `edit-first` bez ruchnoy pereupakovki;
- derzhat odin i tot zhe production contour dlya klienta, sborshchika i deck-layera.

Dokument svyazan s:

- `08_Deck/08_scaffold_visual_generation_registry_v0.1.md`
- `06_Script/06_klinovye_lesa_montage_sequence_pack_v0.1.md`
- `01_Docs/AI_Prompt_Library_v0.1.md`

## Papki dlya intake

Vse klientskie izobrazheniya po etoy prezentatsii skladyvayutsya vnutr:

- `07_Assets/01_Client_Intake/01_Klinovye_01_14/`
- `07_Assets/01_Client_Intake/02_Homutovye_16_18/`
- `07_Assets/01_Client_Intake/03_Anchor_Reference/`
- `07_Assets/02_Edit_Ready/`

Smysl papok:

- `01_Klinovye_01_14` - realnye montazhnye kadry dlya klinovykh lesov;
- `02_Homutovye_16_18` - realnye kadry dlya differentsialnykh slaydov po khomutovym lesam;
- `03_Anchor_Reference` - dopolnitelnye skhemy, uzly, reference po ankerovaniyu i slozhnym detalym;
- `02_Edit_Ready` - uzhe otobrannye i pereimenovannye fayly, s kotorymi mozhno idti v visual production.

## Naming convention

### Bazovaya formula

`ML_S##_KL|HL_slug_client_v##.ext`

gde:

- `ML` - kod kursa;
- `S##` - nomer slayda v tekushchem konture;
- `KL` - klinovye lesa;
- `HL` - khomutovye lesa;
- `slug` - korotkoe opisanie kadra;
- `client` - istochnik: klientskiy vizual;
- `v##` - versiya ili dubль poluchennogo kadra;
- `ext` - rasshirenie fayla.

### Primery

- `ML_S01_KL_podpyatniki_client_v01.jpg`
- `ML_S09_KL_lestnitsa_marsh_client_v02.png`
- `ML_S17_HL_kolonna_obvyazka_client_v01.jpg`
- `ML_S13_KL_ankerovanie_client_v03.webp`

## Dopuskaemye rasshireniya

- `.jpg`
- `.jpeg`
- `.png`
- `.webp`
- `.tif` / `.tiff`

Esli klient prisylaet fayly s drugimi imenami, ikh mozhno vremenno sokhranit kak est, no pered peredachey v `02_Edit_Ready` ikh nado pereimenovat po etomu standardu.

## Pravilo po variantam

Esli po odnomu slaydu est neskolko variantov:

- sokhranyat vse varianty;
- povyshat tolko `v##`;
- ne menyaat `S##` i `slug`, esli eto odin i tot zhe smyslovoy kadr.

Primer:

- `ML_S06_KL_raskosy_client_v01.jpg`
- `ML_S06_KL_raskosy_client_v02.jpg`
- `ML_S06_KL_raskosy_client_v03.jpg`

## Required file map

### Klinovye lesa

| Slide | Rekomenduemoe imya fayla |
|---|---|
| `01` | `ML_S01_KL_podpyatniki_client_v01` |
| `02` | `ML_S02_KL_startovye_elementy_client_v01` |
| `03` | `ML_S03_KL_nizhnie_svyazi_client_v01` |
| `04` | `ML_S04_KL_vertikalnye_stoyki_client_v01` |
| `05` | `ML_S05_KL_gorizontalnye_svyazi_client_v01` |
| `06` | `ML_S06_KL_raskosy_client_v01` |
| `07` | `ML_S07_KL_nastil_pervyy_yarus_client_v01` |
| `08` | `ML_S08_KL_stoyki_vtorogo_yarusa_client_v01` |
| `09` | `ML_S09_KL_lestnitsa_marsh_client_v01` |
| `10` | `ML_S10_KL_vtoroy_rabochiy_yarus_client_v01` |
| `11` | `ML_S11_KL_ograzhdeniya_client_v01` |
| `12` | `ML_S12_KL_otbortovochnaya_doska_client_v01` |
| `13` | `ML_S13_KL_ankerovanie_client_v01` |
| `14` | `ML_S14_KL_vid_v_sbore_client_v01` |

### Khomutovye lesa

| Slide | Rekomenduemoe imya fayla |
|---|---|
| `16` | `ML_S16_HL_soedinenie_trub_client_v01` |
| `17` | `ML_S17_HL_kolonna_obvyazka_client_v01` |
| `18` | `ML_S18_HL_ankerovanie_client_v01` |

### Anchor / reference reserve

Esli klient daet dopolnitelnye uzly, reference ili skhemy bez zhestkoy privyazki k odnomu slaydu, ispolzovat:

- `ML_REF_KL_anker_uzel_client_v01`
- `ML_REF_HL_anker_uzel_client_v01`
- `ML_REF_HL_khomut_uzel_client_v01`
- `ML_REF_KL_montazh_obshchiy_client_v01`

## Chto delat pri priemke

1. Poluchennyy fayl kladem v sootvetstvuyushchuyu intake-papku.
2. Srazu dayom imya po standardu.
3. Esli kadr podkhodit dlya sborki, kopiruem ego v `02_Edit_Ready`.
4. Esli kadr spornyy, ostavlyaem ego v `01_Client_Intake` do review.

## Minimalnyy kriteriy kadrа

- kartinka dolzhna byt dostatochno bolshoy;
- kriticheskiy uzel dolzhen byt chitaem bez glubokogo kropa;
- fon ne dolzhen polnostyu zabivat glavnuyu detal;
- dlya montage-step slaydov prioritet u realnogo uzla, a ne u krasivogo obshchego vida.

## Reshenie po gotovnosti

- Intake contour opredelen: `yes`
- Naming convention opredelena: `yes`
- Mozhno nachat priem klientskikh faylov: `yes`
- Mozhno li idti v `edit-first` production srazu posle intake: `yes`
