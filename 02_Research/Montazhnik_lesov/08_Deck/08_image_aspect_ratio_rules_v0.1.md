# Image Aspect Ratio Rules v0.1

## Status

- Kurs: `Montazhnik lesov`
- Kod: `ML`
- Data sborki: `2026-05-18`
- Status: `active working rule`

## Naznachenie

Etot dokument fiksiruet pravilo, po kotoromu rasternye izobrazheniya na slaydakh ne dolzhny deformirovat'sya po vertikali ili gorizontali otnositelno pervoistochnika.

## Obshchee pravilo dlya tekushchego proekta

1. Izobrazhenie na slayde dolzhno sokhranyat korrektnye proportsii pervoistochnika.
2. Nedopuskaetsya vertikalnoe vytyagivanie, gorizontalnoe szhatie, vertikalnoe szhatie ili gorizontalnoe vytyagivanie bez otdelnogo soglasovaniya.
3. Dopustimo ispolzovat crop, esli on ne menyaet sootnoshenie storon samogo vidimogo izobrazheniya.
4. Mashtabirovanie dolzhno byt proportionalnym.
5. Etot printsip primenyaetsya ko vsem slaydam tekushchego proekta, gde est foto, render ili drugoe rasternoe izobrazhenie.

## Prakticheskiy kriteriy proverki

- esli kartinka na slayde vizualno vyglyadit vytyanutoy ili splyusnutoy otnositelno istochnika, pravilo narusheno;
- esli sootnoshenie storon sokhraneno, a izmenen tolko crop ili obshchiy masshtab, pravilo vypolneno.

## Pravilo dlya sleduyushchego proekta

Po umolchaniyu eto zhe pravilo sokhranyaetsya i v sleduyushchikh proektakh.

Pered novym proektom, esli nuzhno utochnit podkhod, nuzhno zadat vopros:

`ostavlyaem pravilo bez deformatsii izobrazheniy otnositelno pervoistochnika ili dlya novogo proekta nuzhen drugoy podkhod?`
