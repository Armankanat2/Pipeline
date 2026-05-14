# Release Folder

Eta papka nuzhna kak release hub kursa `Montazhnik lesov`: zdes khranitsya universalnaya release-baza i klientskie branded-pakety.

## Struktura paketa

- `01_PPTX/01_With_Test` - prezentatsii so vstroyennym blokom voprosov
- `01_PPTX/02_No_Test` - prezentatsii bez bloka voprosov
- `02_PDF/01_With_Test` - PDF-versii so vstroyennym blokom voprosov
- `02_PDF/02_No_Test` - PDF-versii bez bloka voprosov
- `03_Test` - test pack i answer key
- `04_Notes` - speaker notes, instructor guide, lecturer questions bank ili metodichka
- `05_Admin` - release note, update log i release-administrirovanie
- `06_Worker_Materials` - A3-stendovye instruktsii i pechatnye materialy dlya rabochikh
- `07_Worker_Handouts` - A5-razdatochnye materialy dlya rabochikh
- `08_Online_Handoff` - pakety dlya budushchey sborki LMS, web-course ili drugogo self-paced produkta
- `09_Publishing_Handoff` - publishing handoff pack, preflight i production-bundle dlya izdatelya, tipografii ili vneshnego podryadchika
- `10_Clients` - branded release-konteinery pod konkretnykh zakazchikov

## Logika raboty s klientami

- kornevaya release-struktura v etoy papke = `generic` osnova bez zhestkoy privyazki k odnomu zakazchiku
- branded release dlya klienta sobiraetsya v `10_Clients/<CLIENT_CODE>`
- v klientskuyu papku ukhodyat logo, tsveta, nazvanie zakazchika i finalnye branded-fayly
- uchebnoe yadro, script i testovaya logika dolzhny ostavat'sya sinkhronnymi s generic-versiey

## Ozhidaemye fayly dlya etogo kursa

### PPTX

- `ML_GENERIC_12_short_with-test_v1.0.pptx`
- `ML_GENERIC_12_standard_with-test_v1.0.pptx`
- `ML_GENERIC_12_deep_with-test_v1.0.pptx`
- `ML_GENERIC_12_short_no-test_v1.0.pptx`
- `ML_GENERIC_12_standard_no-test_v1.0.pptx`
- `ML_GENERIC_12_deep_no-test_v1.0.pptx`

### PDF

- `ML_GENERIC_12_short_with-test_v1.0.pdf`
- `ML_GENERIC_12_standard_with-test_v1.0.pdf`
- `ML_GENERIC_12_deep_with-test_v1.0.pdf`
- `ML_GENERIC_12_short_no-test_v1.0.pdf`
- `ML_GENERIC_12_standard_no-test_v1.0.pdf`
- `ML_GENERIC_12_deep_no-test_v1.0.pdf`

### Soprovozhdayushchie release-fayly

- `03_Test/10_test_pack_v1.0.md`
- `03_Test/10_answer_key_v1.0.md`
- `03_Test/10_test_check_sheet_v1.0.md`
- `04_Notes/12_instructor_guide_v1.0.pdf`
- `04_Notes/12_speaker_notes_v1.0.md` ili ekvivalentnaya metodichka
- `08_Online_Handoff/12_online_adaptation_map_v1.0.md`
- `08_Online_Handoff/12_gateway_spec_v1.0.md` optionalno
- `08_Online_Handoff/12_gateway_manifest_v1.0.md`
- `08_Online_Handoff/12_gateway_event_map_v1.0.md` optionalno
- `08_Online_Handoff/12_module_summary_pack_v1.0.md`
- `08_Online_Handoff/12_narration_pack_v1.0.md`
- `08_Online_Handoff/12_online_handoff_pack_v1.0.md`
- `09_Publishing_Handoff/12_publishing_handoff_pack_v1.0.md`
- `09_Publishing_Handoff/12_preflight_checklist_v1.0.md`
- `06_Worker_Materials/12_worker_instruction_v1.0.pdf`
- `06_Worker_Materials/12_worker_instruction_v1.0.pptx`
- `06_Worker_Materials/12_worker_instruction_extra_v1.0.pdf` pri dopolnitelnom zaprose klienta
- `06_Worker_Materials/12_worker_instruction_extra_v1.0.pptx` pri dopolnitelnom zaprose klienta
- `07_Worker_Handouts/12_worker_handout_v1.0.pdf`
- `07_Worker_Handouts/12_worker_handout_v1.0.pptx`
- `07_Worker_Handouts/12_worker_handout_custom_v1.0.pdf` pri sborke po tablitse tem
- `07_Worker_Handouts/12_worker_handout_custom_v1.0.pptx` pri sborke po tablitse tem
- `05_Admin/12_release_note_v1.0.md`
- `05_Admin/13_update_log_v1.0.md`

## Tekushchiy status

Papka podgotovlena kak release-skeleton. Chast' faylov vnutri mozhet sushchestvovat kak `release-staging drafts`, no oni ne schitayutsya utverzhdennym release, poka ne proydut svoi contour proverki.

Source of truth do approval:

- stage-artefakty i control-sostoyanie zhivut v `02_Research/Montazhnik_lesov`;
- task board i QA-opisaniya imeyut prioritet nad release-staging chernovikami;
- release-grade status nachinaetsya tol'ko posle yavnogo podtverzhdeniya i release-note resheniya.
