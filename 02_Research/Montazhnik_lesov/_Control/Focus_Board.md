# Focus Board

## Aktivnoe okno fokusa

- Period: `2026-05-14 -> do zakrytiya post-QA revise-cycle`
- Bazovyy variant: `Standard`

## Glavnye tochki koncentratsii

1. Assessment validity fix
   Ustranit razryv mezhdu `visual / practical` outcomes i tekstovym contourom proverki, osobenno po `LO-03`, `LO-05`, `LO-07`, `LO-11`, `LO-12`.

2. Minimum viable visual layer
   Sobrat controlled draft visuals tam, gde bez nikh formalnyy QA ne mozhet chestno proverit ponyatnost i worker-usefulness.

3. Evidence boundary
   Derzhat generic-safe granitsu i ne perekhodit k release-confidence bez pasporta sistemy i ekspertnoy validatsii.

## Chto seychas ne usilivaem pervym

- glubokie `Deep` expansion-blocks;
- finalnyy release-polish do zakrytiya assessment / visual gap;
- system-specific tekhnicheskie utochneniya bez novykh dokazatelstv;
- novye optional layers, kotorye ne pomogayut vyiti iz `post-formal QA / revise`.

## Sleduyushchiy review

- Proverit, zakryty li zamechaniya iz `09_qa_report_v0.1.md`.
- Reshit, gotov li kurs k povtornomu targeted QA ili nuzhen eshche odin fix-cycle.
- Posmotret, ne nuzhen li dlya Pipeline otdelnyy pattern `assessment-validity check` do formalnogo QA.
