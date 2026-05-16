# Client Image Intake Manifest

## Status

- Versiya: `v0.1`
- Kurs: `Montazhnik lesov`
- Kod kursa: `ML`
- Data sborki: `2026-05-16`
- Rol etoy versii: zafiksirovat realnye lokalnye izobrazheniya, uzhe zanesennye v `01_Client_Intake`

## Git policy note

Sam `manifest` mozhno derzhat v repo.

Sami intake-izobrazheniya i `edit-ready` vizualy schitayutsya lokalnymi assetami i na GitHub ne otpravlyayutsya.

## Chto uzhe zagruzheno

| Intake target | Tekushchiy fayl | Istochnik | Uroven uverennosti | Primechanie |
|---|---|---|---|---|
| `S14` | `ML_S14_KL_vid_v_sbore_client_v01.png` | `knowledge_base/images/storage/reference/ML-IMG-REF-007_klinovye_overview.png` | `high` | khoroshiy kandidat na finalnyy overview klinovykh lesov |
| `S14` | `ML_S14_KL_vid_v_sbore_client_v02.png` | `risunki/klinovye lesa/referens.png` | `medium` | alternativenyy overview, nuzhen visual review |
| `S13` | `ML_S13_KL_ankerovanie_client_v01.png` | `risunki/aekirovanie klinovyh lesov/c02da378-4650-4189-80be-937780576a66.png` | `high` | realnyy foto-uzel; ostavlen kak reserve-variant, no ne vybran glavnym rabochim vizualom |
| `S13` | `ML_S13_KL_ankerovanie_client_v02.jfif` | `risunki/aekirovanie klinovyh lesov/anker.jfif` | `medium` | teper osnovnoy rabochiy vizual dlya `S13`; vybran kak bolee universalnyy explanatory-kadr po logike ankerovaniya |
| `S16` | `ML_S16_HL_soedinenie_trub_client_v01.png` | `knowledge_base/images/storage/reference/ML-IMG-REF-010_homutovye_node.png` | `high` | pryamoy kandidat dlya uzla soedineniya trub |
| `S16` | `ML_S16_HL_soedinenie_trub_client_v02.png` | `risunki/homutovye lesa/homutovye-soedinenie.png` | `medium` | alternativenyy variant uzla, nuzhen visual review |
| `S17` | `ML_S17_HL_kreplenie_k_balke_client_v01.png` | `risunki/obvyazka vokrug balki/homut i balka 1.png` | `high` | supporting kadr: khorosho chitaetsya obshchiy kontekst lesov i balki |
| `S17` | `ML_S17_HL_kreplenie_k_balke_client_v02.png` | `risunki/obvyazka vokrug balki/homut i balka 2.png` | `high` | osnovnoy rabochiy vizual: krupno i chisto pokazano kreplenie lesov k balke |
| `S18` | `ML_S18_HL_ankerovanie_client_v01.png` | `risunki/aekirovanie klinovyh lesov/a47fb654-99ca-4b14-97ca-620437844162.png` | `high` | osnovnoy kandidat: krupno chitaetsya uzel krepleniya lesov k stene i svyaz s konstruktsiey |
| `S18` | `ML_S18_HL_ankerovanie_client_v02.png` | `risunki/aekirovanie klinovyh lesov/S18-2.png` | `high` | supporting technical frame: chistaya tyaga, kronshteyn i tochka krepleniya k konstruktsii |
| `REF` | `ML_REF_HL_homutovye_overview_client_v01.png` | `knowledge_base/images/storage/reference/ML-IMG-REF-009_homutovye_overview.png` | `high` | obshchiy reference po khomutovym lesam, poka bez zhestkoy privyazki k slaydu |
| `REF` | `ML_REF_KL_klinovoy_uzel_client_v01.png` | `risunki/klinovye lesa/1bfb485a-e32d-4ce4-b8a0-bbee85c74b1b.png` | `high` | krupnyy uzel klinovogo soedineniya, polezen dlya reserve-contour |
| `REF` | `ML_REF_KL_klinovoy_uzel_client_v02.jfif` | `risunki/klinovye lesa/henHgWEM...jfif` | `medium` | explainer-variant po tomu zhe uzlu |
| `REF` | `ML_REF_KL_klinovye_overview_client_v01.jfif` | `risunki/klinovye lesa/DknMf8i...jfif` | `medium` | dopolnitelnyy obshchiy vid klinovykh lesov |
| `REF` | `ML_REF_HL_khomut_uzel_client_v02.jfif` | `risunki/homutovye lesa/2N9shW...jfif` | `high` | khoroshiy foto-uzel khomutovogo soedineniya |
| `REF` | `ML_REF_HL_khomut_uzel_client_v03.jfif` | `risunki/homutovye lesa/AUXBml...jfif` | `high` | eshche odin uzel khomuta v realnom foto |
| `REF` | `ML_REF_HL_homutovye_frame_client_v01.jfif` | `risunki/homutovye lesa/7MNL_F...jfif` | `medium` | obshchiy karkas bez zhestkoy slide-privyazki |
| `REF` | `ML_REF_HL_homutovye_overview_client_v02.jfif` | `risunki/homutovye lesa/RKI1JZ...jfif` | `medium` | realnyy overview khomutovykh lesov na obekte |

## Chto eshche ne zakryto

Poka ne zapolneny realnymi faylami:

- klinovye slaydy `01-12`;
- dopolnitelnyy reference po ankerovaniyu klinovykh lesov, esli nuzhen otdelnyy explanatory reserve.

Utochnenie po etoy iteratsii:

- reference-layer po uzlam i overview uzhe sushchestvenno usilen;
- `S13` teper imeet dva intake-kandidata po ankerovaniyu klinovykh lesov; rabochee reshenie: glavnym vizualom schitat explanatory-kadr `v02`, a realnyy foto-uzel `v01` derzhat kak reserve;
- `S17` pereopredelen v `Kreplenie lesov k balke` i teper zakryt dvumya klientskimi intake-kadrami; glavnyy visual `v02`, supporting `v01`;
- `S18` teper zakryt dvumya klientskimi intake-kadrami i gotov k `edit-first` layout-sborke;
- `S14` i `S16` uzhe proshli pervyy `edit-first` review i imeyut po odnomu utverzhdennomu rabochemu variantu.

## Pravilo etoy iteratsii

V etu versiyu intake dobavlyalis tolko te fayly, kotorye mozhno privyazat dostatochno uverenno.

Spornye ili slabo-opisannye fayly poka ne raskladyvalis po konkretnym slaydam, chtoby ne sozdat lozhnuyu tochku sborki.

## Sleduyushchaya ochered

1. Sobrat `edit-first` layout dlya `S17`.
2. Posle etogo pereyti k sleduyushchemu dostupnomu montage-uzlu.
