# Profession Register Template v1

## Naznachenie

Shablon nuzhen dlya sborki reestra professiy i rabochikh clusterov, po kotorym `Pipeline` budet sobirat kursy.

## Obshchaya informatsiya

- Scope:
- Data obnovleniya:
- Owner:
- Istochnik aktualizatsii:

## Reestr

| ID | Rabochiy cluster | Exact profession title | Program contour | Bazovye akty | Group split | Fixed volume / time | Fixed blocks / themes | Status | Primechanie |
|---|---|---|---|---|---|---|---|---|---|
| HR-01 | rabota na vysote / lesa | to verify from `534` | professional training / OT / optional DPO | `273-FZ`, `438`, `534`, `2464`, `782n`, `883n` | yes | to verify | partial | active seed | anchor case dlya `Montazhnik_lesov` |

## Statusy

- `active seed` - est bazovaya karta i mozhno nachinat detalizatsiyu
- `queue` - cluster v scope, no eshche ne razvernut
- `in progress` - profession card sbiraetsya
- `validated base` - bazovye NPA i contour zafiksirovany
- `monitor only` - cluster ostavlen dlya nablyudeniya bez aktivnoy sborki

## Pravila zapolneniya

- `Exact profession title` zapolnyaetsya tolko po realnomu NPA ili ofitsialnomu reestru.
- `Program contour` ne dolzhen smeshivat `DPO` i `professional training`, esli oni reguliruyutsya raznymi aktyami.
- `Fixed volume / time` zapolnyaetsya tolko esli eto priamo izvlecheno iz istochnika.
- `Fixed blocks / themes` mozhno pometit kak `partial`, esli contour ponimayem, no polnaya vygruzka tem eshche ne sdelana.
