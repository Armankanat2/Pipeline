# Assessment Visual Content Pack v0.1

## Status

- Kurs: `Montazhnik lesov`
- Kod: `ML`
- Data sborki: `2026-05-14`
- Owner: vy
- Coverage etoy iteratsii: `A-44` - `A-48`
- Status: `active working draft`

## Rol dokumenta

Etot paket ne zamenyaet:

- `08_assessment_visual_build_spec_v0.1.md`
- `07_asset_register_v0.3.md`
- `10_test_pack_v0.2.md`

Ego zadacha uzhe konkretnee:

- dat kazhdomu assetu ponyatnoe soderzhimoe;
- svyazat visual block s tochnym testovym voprosom;
- zafiksirovat minimum on-screen copy, signalov i logiki kompozitsii;
- sokratit improvizatsiyu pri sborke v `PowerPoint / Figma`.

## Obshchie pravila dlya paketa

1. Kazhdyy asset dolzhen obyasnyat reshenie glazami, a ne tolko tekstom.
2. Kazhdyy asset dolzhen rabotat bez obyazatelnogo realnogo foto.
3. Esli mezhdu krasivym i proveryaemym variantom est konflikt, vybirat proveryaemyy.
4. Nikakikh system-specific uzlov, tochnykh normativnykh rasstoyaniy i pasportnykh detalei bez dopolnitelnykh dokazatelstv.
5. Minimum teksta na samom visual, no dostatochno, chtoby lektor i slushatel ne domyslivali bazovyy smysl.

## Asset content cards

### `A-44` / `TV-01` / `Q-07`

- Tip: `recognition board`
- Svazannye outcomes: `LO-03`
- Opora na script: `slayd 10`, `slayd 13`
- Rol: perevesti raspoznavanie grupp elementov iz slov v vizualnoe uznavanie

#### Chto dolzhno byt na ekrane

- odna obobshchennaya skhema lesov bez melkih pasportnykh uzlov;
- `3` krupnykh zony s raznym tsvetovym ili form-factor signalom:
  - `rabochaya ploshchadka`
  - `zhestkost / svyazi`
  - `kreplenie / fiksatsiya`
- minimum `1` dopolnitelnyy distractor, kotoryy ne yavlyaetsya osnovnym otvetom na Q-07:
  - `ograzhdenie opasnoy zony`

#### Minimalnyy on-screen text

- zagolovok: `Kakie gruppy elementov za chto otvechayut`
- support line: `Nastily dayut rabochuyu ploshchadku. Svyazi derzhat geometriyu. Krepleniya uderzhivayut skhemu.`
- task prompt dlya testa: `Ukazhite gruppu, kotoraya formiruet rabochuyu ploshchadku`

#### Chto markirovat na visuale

- badge `1`: `nastily / rabochaya ploshchadka`
- badge `2`: `svyazi / zhestkost`
- badge `3`: `kreplenie / fiksatsiya`
- optional badge `4`: `ne eto ishchem`

#### Chto ne delat

- ne prevraschat board v terminologicheskiy slovar;
- ne dobavlyat desyatki strelok i mikro-podpisey;
- ne podmenyat smysl `rabochaya ploshchadka` obshchim slovom `elementy`.

### `A-45` / `TV-02` / `Q-08`

- Tip: `intake compare-card`
- Svazannye outcomes: `LO-05`
- Opora na script: `slayd 17`, `slayd 18`
- Rol: dat prostoy filtr `godno / ne godno` do starta sborki

#### Chto dolzhno byt na ekrane

- levaya storona: `godno v sborku`
- pravaya storona: `ne godno v sborku`
- `2` yavno schityvaemykh markera defekta na pravoy storone:
  - `deformatsiya`
  - `nekomplektnyy ili povrezhdennyy uzel`
- levaya storona dolzhna vygljadet neutralno i raboche, a ne "idealno novoy"

#### Minimalnyy on-screen text

- zagolovok: `Priemka elementov do sborki`
- support line: `V sborku idut tolko ispravnye i komplektnye elementi.`
- task prompt dlya testa: `Kakoy element nado srazu vyvesti iz sborki`

#### Chto markirovat na visuale

- label sleva: `godno`
- label sprava: `ne godno`
- callout `1`: `bez deformatsii`
- callout `2`: `komplektnyy uzel`
- callout `3`: `deformatsiya`
- callout `4`: `nekoplekt / povrezhdenie`

#### Chto ne delat

- ne delat "pochti godno";
- ne stroit kartochku na odnom proizvoditele ili odnom profile;
- ne uhodit v fotograficheskuyu zavisimost, esli mozhno pokazat controllable pair.

### `A-46` / `TV-03` / `Q-16`

- Tip: `working tier compare-board`
- Svazannye outcomes: `LO-07`, `LO-09`
- Opora na script: `slayd 28`, `slayd 30`, `slayd 33`, `slayd 37`, `slayd 38`
- Rol: dat worker-facing contrast po gotovnosti yarusa k rabote

#### Chto dolzhno byt na ekrane

- levaya storona: `yarus gotov`
- pravaya storona: `yarus ne gotov`
- na levoy storone dolzhny odnovremenno schityvat'sya:
  - `polnyy nastil`
  - `bezopasnyy dostup`
  - `zashchitnyy kontur`
- na pravoy storone dolzhen byt minimum odin yavno blokiruyushchiy priznak:
  - `nepolnyy nastil`
  - ili `net bezopasnogo dostupa`

#### Minimalnyy on-screen text

- zagolovok: `Rabochiy yarus: gotov ili net`
- support line: `Esli net polnogo nastila ili bezopasnogo dostupa, yarus ne gotov k rabote.`
- task prompt dlya testa: `Kakoy yarus schitaetsya nedopustimym dlya raboty`

#### Chto markirovat na visuale

- marker `A`: `polnyy nastil`
- marker `B`: `bezopasnyy dostup`
- marker `C`: `zashchita na meste`
- blocked marker: `rabotu ne nachinat`

#### Chto ne delat

- ne smeshivat v odin board nagruzku, kreplenie i marshruty vnizu;
- ne dobavlyat tochnye chisla i system-specific normy;
- ne prevrashchat visual v tekstovyy cheklist.

### `A-47` / `TV-04` / `Q-21`

- Tip: `hazard board`
- Svazannye outcomes: `LO-11`, `LO-13`
- Opora na script: `slayd 44`, `slayd 47`, `slayd 49`
- Rol: materializovat red flag i signal `stop / ustranit / potom prodolzhit`

#### Chto dolzhno byt na ekrane

- odna problemnaya situatsiya na lesakh;
- minimum `3` schityvaemykh risk-signala:
  - `narushena zashchita`
  - `spornyy ili opasnyy contour raboty`
  - `yavnyy signal dlya stopa`
- odin otdelnyy panel-signal sprava ili vnizu:
  - `stop`
  - `ustranit`
  - `prodolzhit posle proverki`

#### Minimalnyy on-screen text

- zagolovok: `Red flags: kogda nuzhen stop`
- support line: `Yavnyy risk-signal ne normalizuyut i ne "dotyagivayut".`
- task prompt dlya testa: `Kakoy priznak trebuet nemedlennogo stopa i ustraneniya`

#### Chto markirovat na visuale

- risk marker `1`: `zdes opasno`
- risk marker `2`: `narushenie zashchity`
- risk marker `3`: `rabotu ne prodolzhat`
- action panel: `stop -> ustranit -> vernutsya`

#### Chto ne delat

- ne delat slayd "pro opasnost voobshche";
- ne razmyvat signal mnogimi pogranichnymi usloviyami;
- ne stroitsya na odnom krasivom foto bez controllable markerov.

### `A-48` / `TV-05` / `Q-22`

- Tip: `sequence board`
- Svazannye outcomes: `LO-12`
- Opora na script: `slayd 50`, `slayd 51`, `slayd 52`, `slayd 55`
- Rol: dat generic-safe logic strip dlya bezopasnogo demontazha

#### Chto dolzhno byt na ekrane

- minimum `4` shaga:
  - `podgotovit i kontrollirovat zonu`
  - `vesti demontazh po posledovatelnosti`
  - `peredavat / priemat element bez sbrosa vniz`
  - `ostanovit rabotu pri spornom riske`
- odin yavno pokazannyy `no-go` variant:
  - `sbros vniz`
  - ili `snyatie bez kontrolya zony`

#### Minimalnyy on-screen text

- zagolovok: `Bezopasnyy demontazh po shagham`
- support line: `Demontazh idet po poryadku, s kontrolem zony i bez sbrosa vniz.`
- task prompt dlya testa: `Kakaya logika demontazha yavlyaetsya pravilnoy`

#### Chto markirovat na visuale

- step `1`: `zona pod kontrolem`
- step `2`: `poryadok deystviy`
- step `3`: `bez sbrosa vniz`
- step `4`: `stop pri riske`
- no-go badge: `tak nelzya`

#### Chto ne delat

- ne obeshchat universalnyy poryadok dlya kazhdoy modeli lesov;
- ne risovat eto kak "obratnuyu sborku" bez safety-ramki;
- ne peregruzhat shemu tekhnicheskimi detalymi.

## Targeted QA hooks

| Asset ID | Chto proverit posle sborki | Kriteriy uspekha |
|---|---|---|
| `A-44` | uznaetsya li rabochaya ploshchadka bez ustnoy podskazki | slushatel ne putayet `nastily` so `svyazyami` i `krepleniem` |
| `A-45` | schityvaetsya li `godno / ne godno` bez polemiki o "pochti godnom" | risk-defekt vyvoditsya iz sborki s pervogo vzglyada |
| `A-46` | chitaetsya li binarnyy signal gotovnosti yarusa | nepolnyy nastil ili plokhoy dostup avtomaticheski dayut `ne gotov` |
| `A-47` | vyzyvaet li visual nemedlennuyu logiku `stop` | risk-signal ne trebuet dlinnoi rasshifrovki vedushchim |
| `A-48` | chitaetsya li sequence logic kak poryadok deystviy | slushatel ne vybiraet `lyuboy udobnyy poryadok` ili `sbros vniz` |

## Reshenie po gotovnosti

- Est li u `A-44` - `A-48` uzhe konkretnoye soderzhimoe: `yes`
- Zamenyaet li eto realnuyu sborku v `PowerPoint / Figma`: `no`
- Umenshaet li eto risk proizvolnoy sborki: `yes`
- Sleduyushchiy shag:
  - perevesti etot content-pack v realnye controllable visuals;
  - posle etogo proyti targeted QA po test-validity.
