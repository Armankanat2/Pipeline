# Local File Opening Protocol v0.1

## Status

- Kurs: `Montazhnik lesov`
- Kod: `ML`
- Data sborki: `2026-05-18`
- Status: `active working rule`

## Naznachenie

Etot protokol nuzhen, chtoby odinakovo pokazyvat polzovatelyu lokalnye fayly, preview i istochniki v khode tekushchey raboty.

## Osnovnye pravila

1. Esli fayl mozhno otkryt cherez programmu, ustanovlennuyu na etom komp'yutere, nado otkryvat ego cherez etu programmu.
2. Esli nuzhnaya programma na moment raboty uzhe otkryta, povtorno ee ne zapuskat; nuzhno otkryvat tolko konkretnyy fayl dlya pokaza.
3. Fayl, kotoryy byl otkryt ranee, mozhno zakryt tolko posle pryamogo razresheniya polzovatelya.
4. Esli na komp'yutere net nuzhnoy programmy dlya otkrytiya fayla ili nuzhno otkryt storonniy istochnik, dlya otkrytiya ispolzuetsya `Google Chrome`.

## Prakticheskoe primenenie

- `pptx` i drugie fayly dlya lokalnoy pravki otkryvayutsya v ikh rabochey programme, esli ona est na komp'yutere;
- dlya browser-preview, storonnikh ssylok i fallback-prosmotra ispolzuetsya `Google Chrome`;
- pri otkrytii lokalnykh `html` i drugikh browser-preview v `Google Chrome` nuzhno peredavat `file:///...` URI, a ne syroy put fayla, osobenno esli v puti est probely ili kirillitsa;
- esli programma uzhe rabotaet, nado izbegat povtornogo `Start-Process` dlya samoy programmy i peredavat ей tolko nuzhnyy fayl;
- bez otdelnogo razresheniya nelzya zakryvat ranee otkrytyy fayl tolko radi perekhoda k sleduyushchemu preview.

## Primechanie po tekushchemu komp'yuteru

Na moment fiksatsii etogo pravila lokalno podtverzhdeno nalichie:

- `Google Chrome`
- `Mozilla Firefox`

No browser-fallback po etomu protokolu schitaetsya imenno `Google Chrome`.
