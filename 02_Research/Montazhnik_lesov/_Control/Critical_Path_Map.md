# Critical Path Map

## Obshchaya informatsiya

- Kurs: `Montazhnik lesov`
- Bazovyy variant: `Standard`
- Data obnovleniya: `2026-05-14`

## Karta kriticheskogo puti

| Shag | Vkhod | Vyhod | Pochemu kritichno | Chto blokiruet | Plan snizheniya riska |
|---|---|---|---|---|---|
| 1 | Source register + job map + outcomes | Ustoychivaya architecture | Bez etogo script ne imeet opornogo yadra | nepolnye istochniki | Podderzhivat istochniki i gap list v aktualnom vide |
| 2 | Architecture | Script `01-09` | Script dvizhet assets, deck i QA | generic-safe granitsy i istochnikovye probely | Derzhat script stabilnym do QA, ne razmyvat yadro novymi rasshireniyami |
| 3 | Script `01-09` + assets + draft test contour | `QA readiness sync` | Bez etogo formalnyy QA budet fragmentarnym | nesvyazannyy test contour i neproverennye blokery | Svesti script, test i blockers v odnu kontrolnuyu tochku |
| 4 | `QA readiness sync` | Formalnyy QA | Posle sinka mozhno proveriat kurs kak sistemu, a ne kak nabor raznykh draftov | evidence / validation gap i otsutstvie formalnykh zamechaniy | Vyyti v `09_QA/09_qa_report_v0.1.md` kak sleduyushchiy zhestkiy vykhod |
| 5 | Formalnyy QA + explicit constraints | Post-QA revise cycle | Formalnyy QA uzhe dal zamechaniya, teper nuzhen ne novyy contour, a adresnyy fix | assessment-validity gap i nedosobrannyy visual-layer | Usilit test contour i sobrat minimum viable visuals dlya targeted re-check |
| 6 | Post-QA revise cycle | Pilot-ready package | Bez zakrytiya QA-zamechaniy i source-confidence kurs nelzya schitat gotovym k pilota / release | generic-safe mozhet ostat'sya slishkom abstraktnym bez evidence backfill | Posle fixa reshit, nuzhen li povtornyy QA ili mozhno perekhodit k pilot package |

## Aktualnyy vyvod

Samyy riskovyy perekhod seychas: `post-formal QA revise -> dostatochnaya validnost proverki bez poteri generic-safe granitsy`.
