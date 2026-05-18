# Label Plaque Rules v0.1

## Status

- Kurs: `Montazhnik lesov`
- Kod: `ML`
- Data sborki: `2026-05-18`
- Status: `active working rule`

## Naznachenie

Etot dokument fiksiruet obshchee pravilo dlya vsekh plashok pod podpisi i korotkiy tekst v tekushchem proekte.

On nuzhen, chtoby:

- vse slaydy ispolzovali odin i tot zhe podkhod k podpisyam;
- ne vozvrashchat'sya k sporam o cvete i forme plashok na kazhdom novom slayde;
- derzhat odin visual language vo vsem tekushchem decke.
- Pravila dlya strelok ot plashki k risunku vyneseny otdelno v `08_Deck/08_label_connector_arrow_rules_v0.1.md`.

## Reference-source

Etalonnym approved-primerom schitaetsya slayd:

- `13A` `Instrumenty montazhnika`
- approved local output: `07_Assets/02_Edit_Ready/ML_tools_markup_final_v01.png`
- editable source: `07_Assets/02_Edit_Ready/ML_tools_markup_editable_single_v0.1.pptx`

Eto znachit:

- geometriya plashok beretsya s approved tools-slide;
- skruglenie uglov beretsya s approved tools-slide;
- pryamyye pryamougolnye plashki bez skrugleniya v etom proekte ne ispolzuyutsya.

## Obshchee pravilo dlya tekushchego proekta

1. Esli na slayde est plashki pod tekst ili podpis, vse takie plashki dolzhny byt odnogo tsveta.
2. Etot tsvet dolzhen byt serym.
3. Kraya plashok dolzhny byt skruglennymi po etalonu approved tools-slide `13A`.
4. Rabochee znachenie skrugleniya dlya plashok podpisei: `10 px`.
5. Etot nabor pravil primenyaetsya ko vsem slaydam tekushchego proekta.
6. Bez pryamogo soglasovaniya nelzya v odnom slayde delat odni plashki serymi, a drugie drugogo tsveta.

## Palitry serogo na vybor

Nizhe ne raznye pravila, a varianty odnoy semyi, iz kotoroy dolzhen byt vybran odin rabochiy set dlya tekushchego proekta.

| Kod | Nazvanie | Osnovnaya plashka | Temnyy variant | Svetlyy reserve | Tekst po plashke | Kharakter |
|---|---|---|---|---|---|---|
| `GP-01` | Neutral Slate | `#6B7280` | `#4B5563` | `#E5E7EB` | `#FFFFFF` | samyy neytralnyy i bezriskovyy |
| `GP-02` | Warm Concrete | `#7A746E` | `#5E5852` | `#E7E2DC` | `#FFFFFF` | teplee i chut bolee materialnyy |
| `GP-03` | Cool Steel | `#66707A` | `#4E5862` | `#DDE3E8` | `#FFFFFF` | bolee tekhnichnyy i kholodnyy |
| `GP-04` | Deep Graphite | `#535861` | `#3E434B` | `#D6DADE` | `#FFFFFF` | bolee kontrastnyy i sobrannyy |

## Tekushchiy status vybora

- Finalnaya palitra dlya plashok: `GP-04`
- Osnovnoy cvet plashok po umolchaniyu: `#535861`
- Skruglenie plashok po umolchaniyu: `10 px`
- Temnyy variant: `#3E434B`
- Svetlyy reserve: `#D6DADE`
- Tekst po plashke: `#FFFFFF`
- Do vybora palitry zapreshcheno samostoyatelno menyat semeystvo plashok ot slayda k slaydu.

## Pravilo dlya sleduyushchego proekta

Pered nachalom sleduyushchego proekta nuzhno zadat tochnyy vopros:

`my sokhranyaem tekushchie nastroyki dlya plashok podpisey? ili vnosim izmeneniya?`

Bez pryamogo otveta polzovatelya:

- ne menyat tsvet plashok;
- ne menyat geometriyu plashok;
- ne menyat skruglenie uglov;
- ne perenaznachat etalon bez otdelnogo soglasovaniya.

Po umolchaniyu dlya sleduyushchikh proektov sokhranyaetsya tekushchee skruglenie `10 px`, poka polzovatel ne podtverdit inoe reshenie.
