# Release Folder

Eta papka nuzhna kak release hub kursa `Montazhnik lesov`: zdes khranitsya universalnaya release-baza i klientskie branded-pakety.

## Struktura paketa

- `01_PPTX/01_With_Test` - prezentatsii so vstroyennym blokom voprosov
- `01_PPTX/02_No_Test` - prezentatsii bez bloka voprosov
- `02_PDF/01_With_Test` - PDF-versii so vstroyennym blokom voprosov
- `02_PDF/02_No_Test` - PDF-versii bez bloka voprosov
- `03_Test` - test pack i answer key
- `04_Notes` - speaker notes, instructor guide ili metodichka
- `05_Admin` - release note, update log i release-administrirovanie
- `10_Clients` - branded release-konteinery pod konkretnykh zakazchikov

## Logika raboty s klientami

- kornevaya release-struktura v etoy papke = `generic` osnova bez zhestkoy privyazki k odnomu zakazchiku
- branded release dlya klienta sobiraetsya v `10_Clients/<CLIENT_CODE>`
- v klientskuyu papku ukhodyat logo, tsveta, nazvanie zakazchika i finalnye branded-fayly
- uchebnoe yadro, script i testovaya logika dolzhny ostavat'sya sinkhronnymi s generic-versiey

## Ozhidaemye fayly dlya etogo kursa

### PPTX

- `ML_12_short_with-test_v1.0.pptx`
- `ML_12_standard_with-test_v1.0.pptx`
- `ML_12_deep_with-test_v1.0.pptx`
- `ML_12_short_no-test_v1.0.pptx`
- `ML_12_standard_no-test_v1.0.pptx`
- `ML_12_deep_no-test_v1.0.pptx`

### PDF

- `ML_12_short_with-test_v1.0.pdf`
- `ML_12_standard_with-test_v1.0.pdf`
- `ML_12_deep_with-test_v1.0.pdf`
- `ML_12_short_no-test_v1.0.pdf`
- `ML_12_standard_no-test_v1.0.pdf`
- `ML_12_deep_no-test_v1.0.pdf`

### Soprovozhdayushchie release-fayly

- `03_Test/10_test_pack_v1.0.md`
- `03_Test/10_answer_key_v1.0.md`
- `04_Notes/12_instructor_guide_v1.0.pdf`
- `04_Notes/12_speaker_notes_v1.0.md` ili ekvivalentnaya metodichka
- `05_Admin/12_release_note_v1.0.md`
- `05_Admin/13_update_log_v1.0.md`

## Tekushchiy status

Papka podgotovlena kak release-skeleton. Napolnenie faylami budet delat'sya na stage `12 Release`.
