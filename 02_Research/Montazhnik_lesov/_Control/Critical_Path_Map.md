# Critical Path Map

## Obshchaya informatsiya

- Kurs: `Montazhnik lesov`
- Bazovyy variant: `Standard`
- Data obnovleniya: `2026-05-16`

## Karta kriticheskogo puti

| Shag | Vkhod | Vyhod | Pochemu kritichno | Chto blokiruet | Plan snizheniya riska |
|---|---|---|---|---|---|
| 1 | Source register + job map + outcomes | Ustoychivaya architecture | Bez etogo script ne imeet opornogo yadra | nepolnye istochniki | Podderzhivat istochniki i gap list v aktualnom vide |
| 2 | Architecture | Script `01-09` | Script dvizhet assets, deck i QA | generic-safe granitsy i istochnikovye probely | Derzhat script stabilnym do QA, ne razmyvat yadro novymi rasshireniyami |
| 3 | Script `01-09` + assets + draft test contour | `QA readiness sync` | Bez etogo formalnyy QA budet fragmentarnym | nesvyazannyy test contour i neproverennye blokery | Svesti script, test i blockers v odnu kontrolnuyu tochku |
| 4 | `QA readiness sync` | Formalnyy QA | Posle sinka mozhno proveriat kurs kak sistemu, a ne kak nabor raznykh draftov | evidence / validation gap i otsutstvie formalnykh zamechaniy | Vyyti v `09_QA/09_qa_report_v0.1.md` kak sleduyushchiy zhestkiy vykhod |
| 5 | Formalnyy QA + explicit constraints | Post-QA revise cycle + minimum viable assessment build | Formalnyy QA uzhe dal zamechaniya, teper nuzhen ne novyy contour, a adresnyy fix | assessment-validity gap i nedosobrannyy visual-layer | Usilit test contour i sobrat minimum viable visuals dlya targeted re-check |
| 6 | Post-QA revise cycle + assessment build | Targeted QA decision | Sam build eshche ne raven dokazanoy validnosti; nuzhen review po test-anchoram i outcomes | risk, chto visual blocks okazhutsya sobrany, no metodicheski slabymi | Proyti `09_targeted_test_validity_review_v0.1.md` i reshit, nuzhen li eshche odin fix-cycle |
| 7 | Targeted QA decision | Pilot-ready package | Bez zakrytiya QA-zamechaniy i source-confidence kurs nelzya schitat gotovym k pilota / release | generic-safe mozhet ostat'sya slishkom abstraktnym bez evidence backfill | Posle review reshit, mozhno li perekhodit k pilot package |

## Aktualnyy vyvod

Samyy riskovyy perekhod seychas: `real assessment build -> podtverzhdennaya test-validity bez poteri generic-safe granitsy`.
