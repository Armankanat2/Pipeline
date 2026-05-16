# Client Image Intake Manifest

## Status

- Versiya: `v0.1`
- Kurs: `Montazhnik lesov`
- Kod kursa: `ML`
- Data sborki: `2026-05-16`
- Rol etoy versii: zafiksirovat pervye realnye izobrazheniya, uzhe zanesennye v `01_Client_Intake`

## Git policy note

Sam `manifest` mozhno derzhat v repo.

Sami intake-izobrazheniya i `edit-ready` vizualy schitayutsya lokalnymi assetami i na GitHub ne otpravlyayutsya.

## Chto uzhe zagruzheno

| Intake target | Tekushchiy fayl | Istochnik | Uroven uverennosti | Primechanie |
|---|---|---|---|---|
| `S14` | `ML_S14_KL_vid_v_sbore_client_v01.png` | `knowledge_base/images/storage/reference/ML-IMG-REF-007_klinovye_overview.png` | `high` | khoroshiy kandidat na finalnyy overview klinovykh lesov |
| `S14` | `ML_S14_KL_vid_v_sbore_client_v02.png` | `рисунки/клиновые леса/референс.png` | `medium` | alternativenyy overview, nuzhen visual review |
| `S16` | `ML_S16_HL_soedinenie_trub_client_v01.png` | `knowledge_base/images/storage/reference/ML-IMG-REF-010_homutovye_node.png` | `high` | pryamoy kandidat dlya uzla soedineniya trub |
| `S16` | `ML_S16_HL_soedinenie_trub_client_v02.png` | `рисунки/хомутовые леса/хомутовые-соединеие.png` | `medium` | alternativenyy variant uzla, nuzhen visual review |
| `REF` | `ML_REF_HL_homutovye_overview_client_v01.png` | `knowledge_base/images/storage/reference/ML-IMG-REF-009_homutovye_overview.png` | `high` | obshchiy reference po khomutovym lesam, poka bez zhestkoy privyazki k slaydu |
| `REF` | `ML_REF_KL_klinovoy_uzel_client_v01.png` | `рисунки/клиновые леса/1bfb485a-e32d-4ce4-b8a0-bbee85c74b1b.png` | `high` | krupnyy uzel klinovogo soedineniya, polezen dlya reserve-contour |
| `REF` | `ML_REF_KL_klinovoy_uzel_client_v02.jfif` | `рисунки/клиновые леса/henHgWEM... .jfif` | `medium` | explainer-variant po tomu zhe uzlu |
| `REF` | `ML_REF_KL_klinovye_overview_client_v01.jfif` | `рисунки/клиновые леса/DknMf8i... .jfif` | `medium` | dopolnitelnyy obshchiy vid klinovykh lesov |
| `REF` | `ML_REF_HL_khomut_uzel_client_v02.jfif` | `рисунки/хомутовые леса/2N9shW... .jfif` | `high` | khoroshiy foto-uzel khomutovogo soedineniya |
| `REF` | `ML_REF_HL_khomut_uzel_client_v03.jfif` | `рисунки/хомутовые леса/AUXBml... .jfif` | `high` | eshche odin uzel khomuta v realnom foto |
| `REF` | `ML_REF_HL_homutovye_frame_client_v01.jfif` | `рисунки/хомутовые леса/7MNL_F... .jfif` | `medium` | obshchiy karkas bez zhestkoy slide-privyazki |
| `REF` | `ML_REF_HL_homutovye_overview_client_v02.jfif` | `рисунки/хомутовые леса/RKI1JZ... .jfif` | `medium` | realnyy overview khomutovykh lesov na obekte |

## Chto eshche ne zakryto

Poka ne zapolneny realnymi faylami:

- klinovye slaydy `01-13`;
- khomutovye slaydy `17-18`;
- reference po ankerovaniyu klinovykh i khomutovykh lesov.

Utochnenie po etoy iteratsii:

- reference-layer po uzlam i overview uzhe sushchestvenno usilen;
- no pryamykh i uverenno razmechaemykh kadrov pod `S17` i `S18` poka ne naideno.
- `S14` i `S16` uzhe proshli pervyy `edit-first` review i imeyut po odnomu `edit-ready` variantu.

## Pravilo etoy iteratsii

V etu versiyu intake dobavlyalis tolko te fayly, kotorye mozhno privyazat dostatochno uverenno.

Spornye ili slabo-opisannye fayly poka ne raskladyvalis po konkretnym slaydam, chtoby ne sozdat lozhnuyu tochku sborki.

## Sleduyushchaya ochered

1. Iskat ili poluchit bolee tochnye klientskie kadry pod `S17` i `S18`.
2. Proverit, est li otdelnye materialy po ankerovaniyu.
3. Posle etogo nachat pervyy `edit-first` review po uzhe zagruzhennym `S14` i `S16`.
