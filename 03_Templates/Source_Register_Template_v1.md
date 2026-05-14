# Source Register Template v1

## Naznachenie

Shablon nuzhen dlya ucheta i otsenki istochnikov, na kotorykh stroitsya kurs.

## Obshchaya informatsiya

- Nazvanie kursa:
- Kod kursa:
- Data sborki reestra:
- Owner:
- Etap:

## Reestr istochnikov

| ID | Tip istochnika | Nazvanie / opisanie | Status | Obyazatelnost | Nadyozhnost | Uroven istochnika | Gde ispolzuetsya | Legal review | Primechanie |
|---|---|---|---|---|---|---|---|---|---|
| S-01 | normativ / instruktsiya / uchebnik / ekspert / foto / video |  | active / review / replace / missing | required / supporting | high / medium / low | official / trusted mirror / needs verification / n/a |  | not started / linked / n/a |  |

## Rekomenduemye statusy

- `active` - istochnik mozhno ispolzovat v rabote
- `review` - istochnik nuzhno proverit dopolnitelno
- `replace` - istochnik slishkom slabyy ili somnitelnyy
- `missing` - istochnik nuzhen, no eshche ne nayden

## Urovni istochnika

- `official` - ofitsial'nyy istochnik ili publikatsiya
- `trusted mirror` - rabochaya kopiya ili zerkalo, kotoroe nuzhno derzhat pod kontrolem
- `needs verification` - status ili istochnik ne podtverzhdeny
- `n/a` - pole ne primenyaetsya k dannomu tipu istochnika

## Pravilo dlya RF-law references

- dlya normativnykh istochnikov RF nuzhno obyazatel'no zapolnyat `Uroven istochnika`;
- esli aktual'nost' normativnogo istochnika ne podtverzhdena, ego status ne dolzhen ostavat'sya `active`;
- esli po normativnomu istochniku zapushchen legal review, v pole `Legal review` dolzhna byt ssylka na sootvetstvuyushchuyu formu ili status `not started`.
- `active + not started` dopustimo tol'ko kak rabochiy status do starta tekushchego review-cikla, esli dokument sushchestvuet i net otkrytogo signala ob izmenenii;
- esli review uzhe zapushchen ili poyavilsya signal ob izmenenii, status dolzhen pereyti v `review` do zakrytiya proverki.

## Obyazatelnye istochniki

- Normativy po bezopasnosti:
- Tekhnicheskie trebovaniya:
- Vnutrennie reglamenty:
- Ekspertnaya validatsiya:

## Vspomogatelnye istochniki

- Uchebnye materialy:
- Vizualy:
- Prakticheskie primery:

## Gap analysis

- Chego ne khvataet:
- Chto vyzyvaet somneniya:
- Chto nuzhno proverit pered perekhodom dalshe:

## Reshenie po gotovnosti

- Source base gotova dlya `job decomposition`: `yes / no`
- Klyuchevye blokery:
