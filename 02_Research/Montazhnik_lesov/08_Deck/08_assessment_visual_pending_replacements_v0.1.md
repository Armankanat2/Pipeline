# Assessment Visual Pending Replacements v0.1

## Napominanie

- Позже заменить рисунок в `A-47`.
- Когда будет готово новое изображение, заменить все текущие использования etogo referens-kadra i ego proizvodnykh.

## Podtverzhdennaya referens-baza

- Vneshniy fayl: `e:/нейросети/ПРОЕКТ МОНТАЖНИК/рисунки/клиновые леса/референс.png`
- Vnutrennyaya rabochaya kopiya: `02_Research/Montazhnik_lesov/07_Assets/02_Edit_Ready/ML_S14_KL_vid_v_sbore_edit_ready_v01.png`
- Fakt proverki: `SHA-256` oboikh faylov sovpadaet:
  - `A1A8A001DE3C70C9C28A3D120581BAF0228B8871ABBB4BB752750D0B1C43F9C5`

Eto znachit, chto vnutrennyaya `edit_ready` kopiya = etot zhe samyy reference-frame.

## Gde zamenyat obyazatelno

### 1. Assessment build

- `tools/build_ml_assessment_visual_build.ps1`
  - `A-44` beret dva crop-fragmenta iz `ML_S14_KL_vid_v_sbore_edit_ready_v01.png`
  - `A-47` beret generated hazard-image iz current reference-lineage
- `05_Release/Montazhnik_lesov/01_PPTX/02_No_Test/ML_08_assessment_visual_build_v0.8.pptx`
  - v tekushchey sborke soderzhit embedded-izobrazheniya iz etoy zhe lineyki:
  - `A-44` recognition board
  - `A-47` hazard photo

### 2. Generated derivatives

- `02_Research/Montazhnik_lesov/07_Assets/03_Generated/ML_A47_hazard_scaffold_defects_v01.png`
- `02_Research/Montazhnik_lesov/07_Assets/03_Generated/ML_A47_hazard_scaffold_defects_v02.png`
- `02_Research/Montazhnik_lesov/08_Deck/A47_imagegen_prompt_v01.md`

### 3. S14 working chain

- `02_Research/Montazhnik_lesov/08_Deck/08_local_markup_brief_S14_S16_v0.1.md`
- `02_Research/Montazhnik_lesov/07_Assets/07_client_image_intake_manifest_v0.1.md`
- `02_Research/Montazhnik_lesov/07_Assets/07_edit_first_review_S14_S16_v0.1.md`

## Chto proverit dopolnitelno pri zamene

- `A-44`: posle zameny novogo base-image pereproverit oba cropa:
  - `Nastil / ploshchadka`
  - `Rigel / zhestkost`
- `A-47`: zamenit hazard-photo i vse ego generated derivatives
- vse release-exporty, poluchennye posle pereborki assessment deck

## Vazhnoe primechanie

- V `07_edit_first_review_S14_S16_v0.1.md` est staraya zapis, chto v rabotu bralsya bazovyy variant `v01`.
- Fakticheskaya hash-proverka pokazyvaet, chto current `ML_S14_KL_vid_v_sbore_edit_ready_v01.png` identichen vneshnemu `референс.png`.
- Znachit, pri zamene nado doveryat ne istoricheskoy zametke, a tekushchey fakticheskoy referens-svyazi po faylu i hash.

## Chto schitat tekushchim temporary-use

- `A-47` hazard visual, sobiravshiysya ot current scaffold reference / ego generated derivative.
- `A-44` recognition board, esli v nem ostayutsya overview-crops, proiskhodyashchie iz togo zhe current scaffold reference lineage.

## Pravilo na sleduyushchiy prokhod

- novyy visual dolzhen zamenit current reference bez sokhraneniya ego temporary-derivatives v finalnom assessment pack;
- posle polucheniya novogo izobrazheniya nado proyti po `A-47` i po vsem slaydam, gde ispolzovana eta zhe referens-baza.
