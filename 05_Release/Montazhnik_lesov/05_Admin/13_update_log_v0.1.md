# Update Log

## Naznachenie

Zhurnal nuzhen dlya fiksatsii release-izmeneniy i posleduyushchikh obnovleniy kursa `Montazhnik lesov`.

## Obshchaya informatsiya

- Nazvanie kursa: `Montazhnik lesov`
- Kod kursa: `ML`
- Owner: vy
- Data poslednego review: `2026-05-12`
- Sleduyushchaya planovaya data review: `2026-05-30`
- Tekushchaya release-versiya: `v0.1`
- Uroven sborki: `Base`

## Zhurnal obnovleniy

| Data | Versiya | Change type | Chto izmeneno | Pochemu | Istochnik izmeneniya | Conflict check | Kto vnes | Status |
|---|---|---|---|---|---|---|---|---|
| 2026-05-12 | `v0.1` | `minor` | Sozdana release-struktura i chernoviki `release note` / `update log` | release | `production setup` | `passed` | vy | done |
| 2026-05-30 | `v1.0` | `major` | Planiruetsya pervyy polnyy pilot-ready release | release | `roadmap` | `passed` | vy | planned |

## Signaly na obnovlenie

- Izmenenie normativov: vozmozhno, trebuet monitoringa
- Novyy feedback s pilota: ozhidaetsya posle stage `11 Pilot`
- Kritichnye zamechaniya iz ekspluatatsii: poka net
- Izmeneniya vo vnutrennikh reglamentakh: poka ne polucheny
- Povtoryaemye patterny po testu: poka net dannykh
- Konfliktnye klientskie zaprosy: poka net

## Reestr signalov i resheniy

| Signal ID | Source | Type | Frequency | Impact | Reshenie | Obosnovanie prioriteta | Sleduyushchee deystvie |
|---|---|---|---|---|---|---|---|
| SIG-01 | `pilot` | `content improvement` | `single` | `course` | `monitor` | `pattern > single` | dozhdatsya povtornogo pilota ili test-patterna |

## Ustarevshie bloki ili slaydy

- poka ne opredeleny; kurs eshche ne vyshel v release

## Version Rule

- `patch` - lokalnyy `bug fix`, ne menyayushchiy uchebnoe yadro;
- `minor` - soderzhatelnoe uluchshenie bez peresborki vsego kursa;
- `major` - izmenenie arhitektury, outcomes, track-logiki ili release-kontura.

Pravilo:

- ne obnovlyat release posredi aktivnogo tsikla bez zafiksirovannogo version-rule resheniya;
- ne smeshivat `bug fix`, `content improvement` i `scope expansion`;
- ne vnosit klientskie pozhelaniya v yadro kursa bez otdelnogo metodicheskogo resheniya;
- ne menyat pravila vsego `Pipeline` po odnomu lokalnomu signalu.

## Reshenie po podderzhke

- Kurs trebuet obnovleniya: `yes`
- Prioritet sleduyushchego peresmotra: `high`
- Razreshennyy obem izmeneniy v sleduyushchem tsikle: `minor`
