# Image Edge Integration Rules v0.1

## Status

- Kurs: `Montazhnik lesov`
- Kod: `ML`
- Data sborki: `2026-05-18`
- Status: `active working rule`

## Naznachenie

Etot dokument fiksiruet pravila integrirovaniya izobrazheniya v pole slayda, chtoby kartinka ne vyglyadela otdelnym pryamikom s vizualnoy granitsey po krayu.

## Obshchee pravilo dlya tekushchego proekta

1. Esli na slayde net otdelnogo fona ili fon slayda belyy, perekhod ot izobrazheniya k polyu slayda dolzhen byt nezametnym.
2. Vertikalnaya polosa, yavnaya granitsa, rezkiy svetovoy shov ili vizualnyy styk po krayu izobrazheniya ne dopuskayutsya.
3. Izobrazhenie dolzhno vizualno slivat'sya so slaydom, a ne vyglyadet kak vstavlennyy chuzherodnyy blok.
4. Esli nuzhno, dlya etogo primenyayutsya akuratnyy crop, svetovoe vyravnivanie, myagkaya integrirovannaya granitsa ili drugoy neytralnyy sposob bez dekorativnogo effekta.
5. Etot printsip primenyaetsya ko vsem slaydam tekushchego proekta, gde est foto, render ili drugoe rasternoe izobrazhenie.

Svyazannoe pravilo:

- kontrol proportsiy i otsutstviya deformatsii reguliruetsya otdelno v `08_Deck/08_image_aspect_ratio_rules_v0.1.md`.

## Prakticheskiy kriteriy proverki

- esli polzovatel ili zritel schityvaet po krayu kartinki otdelnuyu vertikalnuyu polosku, znachit integrirovanie vypolneno ploho;
- esli perekhod ne privlekaet vnimanie i glavnoe schityvaetsya iz samogo izobrazheniya, znachit pravilo vypolneno.

## Pravilo dlya sleduyushchego proekta

Po umolchaniyu eto zhe pravilo sokhranyaetsya i v sleduyushchikh proektakh.

Esli pered novym proektom nuzhno utochnit podkhod, nuzhno zadat vopros:

`ostavlyaem tekushchee pravilo nezametnogo perekhoda ot izobrazheniya k polyu slayda ili dlya novogo proekta nuzhna inaya logika?`
