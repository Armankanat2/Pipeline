# Pilot Report Template v1

## Obshchaya informatsiya

- Nazvanie kursa:
- Kod kursa:
- Data pilota:
- Format pilota:
- Prepodavatel / moderator:
- Kolichestvo uchastnikov:
- Versiya kursa na pilote:
- Track: `worker / ITR / mixed`
- Uroven sborki: `Base / Future-ready`

## Tsel pilota

- Chto proveryaem:
- Kakoy signal schitaem uspeshnym:
- Kakie riski khotim nayti:

## Nablyudeniya po khodu kursa

- Gde auditoriya teryaet vnimanie:
- Gde voznikayut voprosy:
- Gde slishkom mnogo teksta:
- Gde ne khvataet vizuala:
- Gde terminologiya okazalas slozhnoy:
- Gde slushatel ne perekhodit ot znaniya k deystviyu:
- Gde lektor byl vynuzhden obyasnyat sverkh skripta:

## Rezul'taty testa

- Sredniy rezultat:
- Samye slozhnye voprosy:
- Samye prostye voprosy:
- Gde oshibki povtoryalis:
- Est li povtoryaemyy pattern po odnomu outcome:

## Feedback ot uchastnikov

- Chto bylo ponyatno:
- Chto bylo neponyatno:
- Chto zapomnilos luchshe vsego:
- Chto nuzhno uprostit:

## Feedback ot prepodavatelya

- Gde deka rabotaet khorosho:
- Gde notes ne khvataet:
- Gde nuzhna peresborka slaydov:
- Gde nuzhny dopolnitelnye primery:

## Reestr signalov

Kazhdyy signal dolzhen byt zafiksirovan cherez obyazatelnuyu klassifikatsiyu. Bez etogo signal ne dolzhen zapuskat pravku kursa.

| ID | Gde zametili | Opisanie signala | Source | Type | Frequency | Impact | Predvaritelnyy conflict | Predvaritelnoe reshenie |
|---|---|---|---|---|---|---|---|---|
| SIG-01 | modul / slayd / test |  | `learner / lecturer / client / test / pilot / incident / regulation / qa` | `bug fix / content improvement / scope expansion` | `single / repeated / systemic` | `local / module / course / pipeline` | `none / client-vs-core / lecturer-vs-method / speed-vs-version / local-vs-pipeline` | `ignore / monitor / patch candidate / minor candidate / major candidate / escalate` |

## Conflict Check

Proverit kazhdyy signal po zhestkim prioritetam:

1. povtoryaemyy pattern vyshe edinichnogo mneniya;
2. tselostnost uchebnogo yadra vyshe zaprosa klienta;
3. pravilnaya metodika vyshe udobstva lektora;
4. stabilnost versii vyshe bystroy pravki;
5. standartizatsiya vsego `Pipeline` vyshe lokalnoy optimizatsii odnogo kursa.

Zafiksirovat:

- Kakie signaly okazalis `single` i ne mogut dvigat yadro:
- Kakie signaly okazalis `repeated` ili `systemic`:
- Est li konflikt s uchebnym yadrom:
- Est li konflikt so stabilnostyu versii:
- Est li konflikt so standartami vsego `Pipeline`:

## Itogi pilota

- Klyuchevye problemy:
- Klyuchevye uluchsheniya:
- Chto nuzhno ispravit do release:
- Chto nuzhno tolko monitorit, a ne pravit seychas:
- Chto nuzhno eskalirovat kak pipeline-reshenie:

## Reshenie

- Status: `pass / revise / repeat pilot`
- Kto prinimaet reshenie:
- Data resheniya:
- Razreshennyy tip izmeneniy do sleduyushchego tsikla: `patch only / patch + minor / escalate before change`
- Mozhno li menyat release-pryamuyu versiyu: `yes / no`
