# Montazhnik lesov

## Status

Aktivnyy kurs v razrabotke.

## Tsel

Sozdat bazovyy uchebnyy kurs `Montazhnik lesov` i odnovremenno proyti na nem polnyy tsikl obucheniya po production pipeline.

## Srok

Start raboty: `2026-05-09`

Planovoe zavershenie proekta i obucheniya: `2026-05-30`

## Dva rezultata etogo proekta

- gotovyy kurs po professii `Montazhnik lesov`;
- vasha lichnaya praktika po sozdaniyu kursa ot brifa do release.

## Rabochie papki kursa

- `01_Brief`
- `02_Sources`
- `03_Job_Map`
- `04_Outcomes`
- `05_Architecture`
- `06_Script`
- `07_Assets`
- `08_Deck`
- `09_QA`
- `10_Test`
- `11_Pilot`
- `_Control`
- `_Feedback`

## Kak rabotaet etot kurs teper

`Montazhnik_lesov` ostayetsya stage-kursom, no poverkh stage-papok u nego teper est dva zhivykh kontura:

- `_Control` - gde zhivut pasport kursa, varianty, focus board, critical path i decision log;
- `_Feedback` - gde zhivut pilot signals, retrospective i improvement items.

## Minimalnyy ritm raboty

Pri kazhdom vozvrate v kurs:

1. otkryt `01_Brief/03_task_board_v1.0.md`;
2. proverit `_Control/Course_Profile.md`;
3. proverit `_Control/Focus_Board.md`;
4. tolko potom idti v stage-fayl, kotoryy seychas dvigaem.

Pri kazhdom znachimom reshenii:

- esli menyaetsya yadro, variant ili release-logika, zapisat eto v `_Control/Decision_Log.md`;
- esli vsplylo uzkoe mesto, obnovit `_Control/Bottleneck_Register.md`;
- esli smenilsya glavniy fokus, obnovit `_Control/Focus_Board.md`.

Posle QA, pilota ili seryoznogo review:

- zafiksirovat signal v `_Feedback`;
- reshit, eto lokalnaya pravka kursa ili kandidat v system-level improvement;
- pri neobkhodimosti podnyat signal v `04_QA/Improvement_Backlog.md`.
