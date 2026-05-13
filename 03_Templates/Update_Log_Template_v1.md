# Update Log Template v1

## Naznachenie

Shablon nuzhen dlya vedeniya istorii obnovleniy kursa posle reliza.

## Obshchaya informatsiya

- Nazvanie kursa:
- Kod kursa:
- Owner:
- Data poslednego review:
- Sleduyushchaya planovaya data review:
- Tekushchaya release-versiya:
- Uroven sborki: `Base / Future-ready`

## Zhurnal obnovleniy

| Data | Versiya | Change type | Chto izmeneno | Pochemu | Istochnik izmeneniya | Conflict check | Kto vnes | Status |
|---|---|---|---|---|---|---|---|---|
|  |  | `patch / minor / major` |  |  | `normativ / feedback / pilot / release / correction / client / qa` | `passed / escalated / blocked` |  | `planned / done / blocked` |

## Signaly na obnovlenie

- Izmenenie normativov:
- Novyy feedback s pilota:
- Kritichnye zamechaniya iz ekspluatatsii:
- Izmeneniya vo vnutrennikh reglamentakh:
- Povtoryaemye patterny po testu:
- Konfliktnye klientskie zaprosy:

## Reestr signalov i resheniy

| Signal ID | Source | Type | Frequency | Impact | Reshenie | Obosnovanie prioriteta | Sleduyushchee deystvie |
|---|---|---|---|---|---|---|---|
| SIG-01 | `learner / lecturer / client / test / pilot / incident / regulation / qa` | `bug fix / content improvement / scope expansion` | `single / repeated / systemic` | `local / module / course / pipeline` | `ignore / monitor / patch / minor / major / escalate to pipeline` | `pattern > single / core > client / method > convenience / version > speed / pipeline > local` |  |

## Ustarevshie bloki ili slaydy

- 

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

- Kurs trebuet obnovleniya: `yes / no`
- Prioritet sleduyushchego peresmotra:
- Razreshennyy obem izmeneniy v sleduyushchem tsikle: `patch / minor / major / escalate`
