# Label Connector Arrow Rules v0.1

## Status

- Kurs: `Montazhnik lesov`
- Kod: `ML`
- Data sborki: `2026-05-18`
- Status: `active working rule`

## Naznachenie

Etot dokument fiksiruet pravila dlya strelok, kotorye idut ot tekstovoy plashki k risunku, uzlu ili elementu na slayde.

## Obshchee pravilo dlya tekushchego proekta

1. Vse takie strelki dolzhny byt odnogo tsveta.
2. Rabochiy cvet etikh strelok: `#000000`.
3. Strelki dolzhny byt kontrastnymi i legko schityvat'sya na slayde.
4. Na vsekh slaydakh tekushchego proekta ispolzuetsya odin dizayn strelok i odin tsvet strelok.
5. Bez pryamogo soglasovaniya nelzya menyat dizayn strelok ot slayda k slaydu.

## Vybrannyy dizayn

V tekushchem proekte utverzhden variant:

- `A2` `Clean Technical`

Ego rabochie parametry:

- geometriya: `bentConnector3`
- cvet linii: `#000000`
- line weight: `2.25 pt` (`28575` EMU)
- line cap: `round`
- end arrowhead: `triangle`
- arrowhead size: `sm / sm`

Etot dizayn schitaetsya tekushchim etalonom dlya strelok ot plashki k obektu.

## Tekushchiy status vybora

- Cvet strelok po umolchaniyu: `#000000`
- Contrast target: `high`
- Design status: `A2 Clean Technical zafiksirovan dlya vsego proekta`

## Svyaz s drugimi pravilami

- tekstovye plashki reguliruyutsya `08_Deck/08_label_plaque_rules_v0.1.md`;
- etot dokument reguliruet ne sami plashki, a imenno soedinitelnye strelki ot plashki k obektu;
- vmeste oni obrazuyut odin callout-system tekushchego proekta.

## Pravilo dlya sleduyushchego proekta

Pered nachalom sleduyushchego proekta, esli v nem nuzhny takie strelki, nuzhno zadat tochnyy vopros:

`trebuyetsya li izmenenie dlya strelki, kotoraya idet ot plashki pod slova k risunku, ili mozhem ispolzovat tekushchie nastroiki?`

Bez pryamogo otveta polzovatelya:

- ne menyat tsvet strelok;
- ne menyat dizayn strelok;
- ne menyat ikh obshchuyu visual-logiku.

Po umolchaniyu dlya sleduyushchikh proektov sokhranyayutsya tekushchie nastroyki strelok, poka polzovatel ne podtverdit inoe reshenie.
