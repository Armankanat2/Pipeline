# Profession Register High Risk v0.1

## Obshchaya informatsiya

- Scope: `worker professions + high-risk works`
- Data obnovleniya: `2026-05-14`
- Owner: `vy`
- Bazovaya normativnaya karta: `01_Docs/High_Risk_Education_Regulatory_Base_v0.1.md`

## Reestr

| ID | Rabochiy cluster | Working title v Pipeline | Exact profession title | Program contour | Bazovye akty | Group split | Fixed volume / time | Fixed blocks / themes | Status | Primechanie |
|---|---|---|---|---|---|---|---|---|---|---|
| HR-01 | rabota na vysote / lesa / podmashchivanie | `Montazhnik_lesov` | to verify from `534` | professional training + OT; separate DPO / ITR contour to review | `273-FZ`, `266`, `438`, `534`, `2464`, `782n`, `883n` | yes | to verify | partial | `active seed` | pervyy zhivoy keys dlya profession base |
| HR-02 | elektroustanovki / elektrobezopasnost | `Electro_high_risk` | to verify from `534` | professional training + OT | `273-FZ`, `438`, `534`, `2464`, `903n`, `279n` | yes | to verify | partial | `queue` | nuzhno otdelit worker i gruppy dopuska |
| HR-03 | elektro- i gazosvarochnye raboty | `Welding_high_risk` | to verify from `534` | professional training + OT | `273-FZ`, `438`, `534`, `2464`, `884n` | yes | to verify | partial | `queue` | nuzhen exact profession title i gruppy trebovaniy |
| HR-04 | rabota v ogranichennykh i zamknutykh prostranstvakh | `Confined_space_high_risk` | to verify from `534` | professional training + OT | `273-FZ`, `438`, `534`, `2464`, `902n` | yes | to verify | partial | `queue` | nuzhno utochnit opornye worker-professii |

## Ochered dekompozitsii

1. `HR-01` - aktivnyy keys i pryamaya svyaz s `Montazhnik_lesov`
2. `HR-02`
3. `HR-03`
4. `HR-04`

## Pravilo aktualizatsii

- Esli po clusteru nayden exact profession title, on dolzhen zamenit working title.
- Esli po clusteru naydena professiya, dlya kotoroy nuzhen otdelnyy ITR / responsible contour, eto dolzhno byt otmecheno otdelno.
- Esli poyavlyayutsya exact hours / time / blocks, oni vnosyatsya tolko s ssylkoy na istochnik.
