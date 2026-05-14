# Improvement Items

## Aktivnyy spisok

| ID | Data | Istochnik | Uroven | Problem / idea | Deystvie | Status |
|---|---|---|---|---|---|---|
| ML-IMP-01 | 2026-05-14 | architecture review | `course` | Zafiksirovat course-level control contour, chtoby pravki ne raspolzalis po stage-papkam | Dobavit `_Control` i ispolzovat ego kak edinuyu tochku upravleniya | `done` |
| ML-IMP-02 | 2026-05-14 | architecture review | `course` | Zafiksirovat feedback contour do realnogo pilota | Dobavit `_Feedback` i gotovit signal capture po edinym pravilam | `done` |
| ML-IMP-03 | 2026-05-14 | bottleneck review | `course` | Nedostatochno yasen tekushchiy fokus | Uderzhivat fokus na `test + script` do sleduyushchego review | `done` |
| ML-IMP-04 | 2026-05-14 | first control review | `course` | Posle `06_slide_script_v0.2.md` nuzhno perenesti fokus s dogonki script na vhod v formalnyy QA | Smestit aktivnyy fokus v `QA readiness + test contour consolidation` | `active` |
| ML-IMP-05 | 2026-05-14 | first control review | `course` | Est risk razmyt generic-safe granitsy do ekspertnoy validatsii | Derzhat system-specific utochneniya v monitoringe do usileniya source-base | `monitoring` |
| ML-IMP-06 | 2026-05-14 | QA readiness sync | `course` | Testovyy contour otnositelno script `01-09` otstaval po `LO-11` i `LO-12` | Rasshirit test pack, answer key i check sheet do modules `08-09` eshche do formalnogo QA | `done` |
| ML-IMP-07 | 2026-05-14 | QA readiness sync | `pipeline` | Nuzhna otdelnaya tochka vhoda mezhdu `course-core` i `formal QA` | Ispolzovat `09_qa_readiness_sync_v0.1.md` kak obyazatelnyy predgate dlya zhivykh kursov | `active` |
| ML-IMP-08 | 2026-05-14 | formal QA | `course` | Odnogo readiness-sync nedostatochno, esli practical / visual outcomes vse eshche proveryayutsya slishkom tekstovo | Vvesti post-QA fix dlya assessment-validity i minimum visual checks | `active` |
| ML-IMP-09 | 2026-05-14 | formal QA | `pipeline` | Pipeline vyigraet ot otdelnoy proverki `outcome -> assessment validity` eshche do polnogo formalnogo QA | Dobavit etot check v budushchiy control pattern ili template | `active` |
