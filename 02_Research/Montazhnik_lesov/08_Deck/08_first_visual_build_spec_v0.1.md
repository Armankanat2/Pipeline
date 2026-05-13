# First Visual Build Spec v0.1

## Status

- Kurs: `Montazhnik lesov`
- Kod: `ML`
- Data sborki: `2026-05-13`
- Owner: vy
- Coverage etoy iteratsii: `Batch 1` + `Batch 2`
- Status: `active working draft`

## Naznachenie

Etot dokument nuzhen, chtoby pereyti ot `visual production plan` k realnoy pervoy sborke vizualnogo fragmenta deck.

On otvechaet na vopros:

- chto konkretno sobirat pervym;
- v kakom poryadke;
- kakie makety ispolzovat;
- kakie visual decisions schitat zafiksirovannymi uzhe seychas;
- po kakim kriteriyam ponimat, chto pervyy build udalsya.

## Chto schitaetsya first visual build

First visual build - eto ne finalnyy deck i ne finalnyy style lock.

Ego zadacha:

- proverit, derzhit li kurs vybrannuyu `scheme-first` logiku;
- proverit, dostatochno li chitaem generic shell `D-06 Corporate Neutral`;
- proverit, rabotaet li systema povtoryaemykh maketov;
- poluchit pervyy kusok deck, kotoryy uzhe vygladit kak proizvodimaya sistema, a ne kak nabor zametok.

## Granitsy etoy iteratsii

V etu sborku vkhodyat:

- `Batch 1`
- `Batch 2`

To est slaydy:

- `20`
- `21`
- `22`
- `23`
- `26`
- `27`
- `29`
- `31`
- `35`
- `36`
- `37`
- `38`
- `43`

Ne vkhodyat poka:

- compare-heavy slaydy `24`, `28`, `30`, `32`, `33`, `39`, `40`
- scenario-cards `25`, `34`, `42`
- special risk scene `41`

## Zachem nachinat imenno s etogo nabora

Etot nabor:

- pokryvaet tri modulia `05-07`;
- proveryaet vse bazovye makety, krome compare-heavy i scenario-heavy;
- daet karkas bez zavisimosti ot realnykh foto;
- pokazyvaet, mozhet li kurs derzhat odin visual language na dlinnom otrezke.

## Makety, kotorye dolzhny byt sobrany v pervuyu ochered

| Kod maketa | Tip | Slaydy |
|---|---|---|
| `VP-01` | principle scheme | `20`, `26`, `36` |
| `VP-02` | construction / summary scheme | `21`, `23`, `29`, `31`, `35`, `43` |
| `VP-03` | sequence strip | `22`, `27` |
| `VP-06` | checklist / status board | `37`, `38` |

## Chto nuzhno zafiksirovat v etom build

### 1. Tipografika

- odin rabochiy title-style;
- odin subhead / support style;
- odin body style;
- odin label style dlya skhem i markerov;
- odin checklist-item style.

### 2. Setka

- odna bazovaya modulnaya setka;
- odna safe area;
- odin footer-shell;
- odin rezervnyy QR-slot princip.

### 3. Visual semantics

- `warning / risk`
- `control point`
- `allowed / ready`
- `blocked / no-go`
- `step / sequence`

V etom build vse oni dolzhny poluchit odin vizualnyy slovar.

### 4. Shape language

- odin radius / odna logika uglov;
- odna logika strelok;
- odna logika markerov;
- odna logika container-cards;
- odna logika line-weight dlya skhem.

## Poryadok sborki

### Etap 1. Sobrat shell

Snachala nuzhno sdelat ne slaydy, a bazovyy shell:

1. title zone
2. content zone
3. footer zone
4. QR reserve zone
5. note dlya warning accent

Rezultat:

- odin bazovyy master-content shell
- odin shell dlya sequence
- odin shell dlya checklist/status

### Etap 2. Sobrat principle trio

Sobrat:

- `20`
- `26`
- `36`

Tsel:

- proverit, rabotaet li odin modul-entry pattern dlya trekh moduley;
- proverit, ne nado li menyat ritm title/content.

### Etap 3. Sobrat sequence pair

Sobrat:

- `22`
- `27`

Tsel:

- proverit, chitaetsya li 4-5 shagov bez peregruza;
- proverit, nuzhen li odinakovyy step-shell dlya vsego kursa.

### Etap 4. Sobrat control block

Sobrat:

- `21`
- `23`
- `29`
- `31`
- `35`
- `43`

Tsel:

- proverit, ne razvalivaetsya li kurs na raznye stili skhem;
- zafiksirovat glavnuyu logiku diagramm i summary-slaydov.

### Etap 5. Sobrat access / admission block

Sobrat:

- `37`
- `38`

Tsel:

- proverit, rabotaet li worker-readable board language;
- proverit, mozhno li bez poteri perevesti eti slaydy v `A3/A5`.

## Slide-level production notes

| Slayd | Chto proverit vizualno | Gde risk |
|---|---|---|
| `20` | yasen li perekhod `ploshchadka -> opory -> pervyy yarus -> kontrol` | risk sdelat slishkom abstraktno |
| `21` | ne ukhodyat li podpisi v melkie tekhnicheskie detali | risk pereuslozhnit foundation visual |
| `22` | dostatochno li vozdukha mezhdu shagami | risk sdelat sequence melkim |
| `23` | chitaetsya li triada s pervogo vzglyada | risk slishkom odinakovykh ikonok |
| `26` | derzhit li vertikalnaya logika modul `06` | risk poteri ritma pri modular entry |
| `27` | ne skatyvaetsya li в list instead of process | risk zamenit vizual tekstom |
| `29` | yasen li contour zashchity bez lishnego dekora | risk sdelat "ograzhdenie kak krasivost" |
| `31` | ponyatna li rol krepleniy i diagonaley | eto samyy riskovyy skhemnyy slayd |
| `35` | rabotaet li summary bez peregruza | risk povtorit vse proshloe bez kompressii |
| `36` | otdelena li `sborka` ot `dopusk k ekspluatatsii` | risk slishkom blizkikh blokov |
| `37` | checklist chitaetsya li kak rabochiy minimum | risk sdelat plakat vmesto slayda |
| `38` | status `dopustit / ne dopustit` binaren li i chesten | risk tonut v dekorativnom krasno-zelenom |
| `43` | algoritm finala silen li i korotkiy li | risk sdelat final slishkom kholodnym |

## Asset map etoy iteratsii

| Slayd | Asset ID | Rezhim |
|---|---|---|
| `20` | `A-20` | sobrat vnutri prezentatsii |
| `21` | `A-21` | sobrat vnutri prezentatsii |
| `22` | `A-22` | sobrat vnutri prezentatsii |
| `23` | `A-23` | sobrat vnutri prezentatsii |
| `26` | `A-26` | sobrat vnutri prezentatsii |
| `27` | `A-27` | sobrat vnutri prezentatsii |
| `29` | `A-29` | sobrat vnutri prezentatsii |
| `31` | `A-31` | sobrat vnutri prezentatsii |
| `35` | `A-35` | sobrat vnutri prezentatsii |
| `36` | `A-36` | sobrat vnutri prezentatsii |
| `37` | `A-37` | sobrat vnutri prezentatsii |
| `38` | `A-38` | sobrat vnutri prezentatsii |
| `43` | `A-43` | sobrat vnutri prezentatsii |

## Definition of done dlya first visual build

First visual build mozhno schitat gotovym, esli:

1. vse `13` slaydov imeyut sobstvennuyu sobiraemuyu kompozitsiyu;
2. ispolzuetsya ne bolee `4` bazovykh maketov + ikh predskazuemye varianty;
3. title, labels, lines, markers i warning semantics vygladyat kak odna sistema;
4. ni odin iz slaydov ne trebuet obyazatelnogo vneshnego foto dlya ponyatnosti;
5. `37` i `38` mogut byt pereneseny v `A3/A5` bez polnoy pererisovki s nуля;
6. `31` i `43` ponyatny bez ustnogo kommentariya avtora.

## Chto ne pytatsya zakryt v etoy iteratsii

- finalnyy branded shell;
- client-specific typography;
- finalnyy print tuning;
- multilingual redraw;
- photo realism;
- compare-shell dlya vsekh spornykh situatsiy.

## Sledushchiy shag posle etogo build

Posle uspeshnogo first visual build logichno delat:

1. `Batch 3` compare-layer
2. potom `Batch 4` scenario-layer
3. potom `Batch 5` risk-scene

## Reshenie po gotovnosti

- Spec sobran: `yes`
- Mozhno li po nemu nachinat realnuyu sborku pervogo vizualnogo fragmenta: `yes`
- Lomaet li on strukturu `Pipeline`: `no`
