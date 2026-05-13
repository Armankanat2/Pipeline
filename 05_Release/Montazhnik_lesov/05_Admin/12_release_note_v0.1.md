# Release Note

## Obshchaya informatsiya

- Nazvanie kursa: `Montazhnik lesov`
- Kod kursa: `ML`
- Klient / client code: `generic`
- Versiya release: `v0.1`
- Data release: `2026-05-12`
- Owner: vy
- Status: `release skeleton / not approved`

## Chto vklyucheno v release

- PPTX: poka ne vlozheny
- PDF: poka ne vlozheny
- Kakie versii vstroyeny v release: planned `korotkaya / srednyaya / dlinnaya`
- Est li variant bez bloka voprosov: da, zaplanirovan
- Title-only override: dopustim, esli klientu nuzhno pomenyat tolko nazvanie professii na oblozhke
- Speaker notes / metodichka: planned
- Worker materials: planned, kak bazovoe A3-stendovoe posobie `1-5` listov + optionalnoe dopolnitelnoe posobie po zaprosu klienta
- Worker handouts A5: planned, kak bazovyy kompaktniy handout + custom-handout po tablitse tem
- Test pack: draft only
- Answer key: draft only
- Online handoff pack: planned, kak budushchiy eksportnyy kontur dlya LMS ili drugogo online-produkta
- Publishing handoff pack: planned, kak kontur peredachi vo vneshniy production / publishing
- Preflight checklist: planned
- Test check sheet: planned
- Brand profile: generic white-label base
- Dopolnitelnye materialy: net
- Vybrannyy dizayn-kontsept: poka ne vybran, dopustim `D-06 Corporate Neutral` kak generic fallback
- Rights cleared po assetam: partial
- Font package / font list confirmed: no
- Print-ready status: no
- Digital-ready status: partial
- Klientskiy review round 1: planned
- Klientskiy review round 2: planned
- Change request posle bazovogo paketa: poka net

## Matritsa release-faylov

| Slot | Format | Variant | Fayl | Status |
|---|---|---|---|---|
| Short with test | PPTX | `korotkaya / with-test` | `ML_GENERIC_12_short_with-test_v1.0.pptx` | planned |
| Standard with test | PPTX | `srednyaya / with-test` | `ML_GENERIC_12_standard_with-test_v1.0.pptx` | planned |
| Deep with test | PPTX | `dlinnaya / with-test` | `ML_GENERIC_12_deep_with-test_v1.0.pptx` | planned |
| Short no test | PPTX | `korotkaya / no-test` | `ML_GENERIC_12_short_no-test_v1.0.pptx` | planned |
| Standard no test | PPTX | `srednyaya / no-test` | `ML_GENERIC_12_standard_no-test_v1.0.pptx` | planned |
| Deep no test | PPTX | `dlinnaya / no-test` | `ML_GENERIC_12_deep_no-test_v1.0.pptx` | planned |
| Short with test | PDF | `korotkaya / with-test` | `ML_GENERIC_12_short_with-test_v1.0.pdf` | planned |
| Standard with test | PDF | `srednyaya / with-test` | `ML_GENERIC_12_standard_with-test_v1.0.pdf` | planned |
| Deep with test | PDF | `dlinnaya / with-test` | `ML_GENERIC_12_deep_with-test_v1.0.pdf` | planned |
| Short no test | PDF | `korotkaya / no-test` | `ML_GENERIC_12_short_no-test_v1.0.pdf` | planned |
| Standard no test | PDF | `srednyaya / no-test` | `ML_GENERIC_12_standard_no-test_v1.0.pdf` | planned |
| Deep no test | PDF | `dlinnaya / no-test` | `ML_GENERIC_12_deep_no-test_v1.0.pdf` | planned |
| Test pack | MD | `test` | `10_test_pack_v1.0.md` | planned |
| Answer key | MD | `test` | `10_answer_key_v1.0.md` | planned |
| Test check sheet | MD | `test` | `10_test_check_sheet_v1.0.md` | planned |
| Instructor guide | PDF | `notes` | `12_instructor_guide_v1.0.pdf` | planned |
| Lecturer questions bank | PDF / MD | `notes` | `12_lecturer_questions_bank_v1.0.pdf` | planned |
| Worker instruction | PDF / PPTX | `worker materials` | `12_worker_instruction_v1.0.*` | planned |
| Worker handout | PDF / PPTX | `worker handouts` | `12_worker_handout_v1.0.*` | planned |
| Online adaptation map | MD | `online handoff` | `12_online_adaptation_map_v1.0.md` | planned |
| Module summary pack | MD | `online handoff` | `12_module_summary_pack_v1.0.md` | planned |
| Narration pack | MD | `online handoff` | `12_narration_pack_v1.0.md` | planned |
| Online handoff pack | MD | `online handoff` | `12_online_handoff_pack_v1.0.md` | planned |
| Gateway spec | MD | `online gateway optional` | `12_gateway_spec_v1.0.md` | starter draft exists as `v0.1` |
| Gateway manifest | MD | `online gateway optional` | `12_gateway_manifest_v1.0.md` | starter draft exists as `v0.1` |
| Gateway event map | MD | `online gateway optional` | `12_gateway_event_map_v1.0.md` | starter draft exists as `v0.1` |
| Publishing handoff pack | MD | `publishing handoff` | `12_publishing_handoff_pack_v1.0.md` | planned |
| Preflight checklist | MD | `publishing handoff` | `12_preflight_checklist_v1.0.md` | planned |

## Osnovnoe soderzhanie reliza

- Kakie moduli ili bloki vklyucheny: release-paket eshche ne sobran; target architecture vklyuchaet moduli `01-11`
- Kakie obnovleniya vneseny: sozdana release-struktura pod `PPTX / PDF`, `with-test / no-test`, `test`, `answer key`, `notes`, `admin`
- Kakie kritichnye izmeneniya poyavilis: klientskiy paket teper rassmatrivaetsya kak nabor variantov, a ne odin finalnyy fayl; dobavlen generic-kontur dlya dalneyshey branded sborki

## Zakrytye pravki

- `critical`: net
- `important`: release-folder structure defined
- `optional`: net
- Status `round 1` klientskikh pravok: eshche ne nachat
- Status `round 2` klientskikh pravok: eshche ne nachat

## Ogranicheniya tekushchey versii

- Chto ne voshlo v release: sam deck, finalnyy test, finalnyy answer key, speaker notes
- Chto ne voshlo v online handoff: finalnye release-grade versii adaptation map, module summaries, narration pack i online handoff pack eshche ne sobrany; poka est tolko starter drafts
- Chto ne voshlo v gateway-ready contour: est primery `gateway spec v0.1`, `gateway manifest v0.1` i `gateway event map v0.1`; release-grade `v1.0` route/event detalizatsiya i platform-specific telemetry format eshche ne sobrany
- Chto ne voshlo v publishing handoff: finalnyy source bundle, rights-cleared asset summary, font list, finalnyy preflight i testovaya pechat
- Chto nuzhno proverit na pilote: naskolko rabochey okazhetsya svyazka `with-test / no-test` i khvataet li variantov dliny
- Chto nuzhno peresmotret v sleduyushchey versii: realnuyu nuzhnost vsekh shesti kombinatsiy prezentatsii dlya zakazchika

## Istochniki dlya obnovleniya

- Normativy: po reestru istochnikov kursa
- Vnutrennie reglamenty: poka ne predostavleny
- Ekspertnye kommentarii: poka ne predostavleny

## Svyazannye fayly

- Rabochaya papka kursa: `02_Research/Montazhnik_lesov`
- Finalnaya papka release: `05_Release/Montazhnik_lesov`
- QA report: poka net finalnogo reporta
- Pilot report: poka net
- Publishing handoff folder: `05_Release/Montazhnik_lesov/09_Publishing_Handoff`

## Reshenie

- Release approved by: not approved
- Data soglasovaniya: net
- Sleduyushchaya planovaya data review: `2026-05-30`
