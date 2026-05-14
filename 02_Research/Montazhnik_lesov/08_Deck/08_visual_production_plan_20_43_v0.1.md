# Visual Production Plan 20-43 v0.1

## Status

- Kurs: `Montazhnik lesov`
- Kod: `ML`
- Coverage: slaydy `20-43`
- Data sborki: `2026-05-13`
- Owner: vy
- Status: `active working draft`

## Naznachenie

Etot dokument nuzhen kak most mezhdu:

- `06_slide_script_v0.2.md`
- `07_asset_register_v0.2.md`
- `01_design_system_spec_v0.1.md`
- budushchim `08_draft_deck`

On ne zamenyaet `asset register` i ne dubliruet `slide script`.

Ego rol:

- dat ponyatnyy poryadok sborki slaydov `20-43`;
- sokratit kolichestvo unikalnykh maketov;
- zafiksirovat, gde my idem `scheme-first`, a gde realno nuzhny foto;
- podgotovit controlled draft production bez polomki struktury kursa.

## Production printsip dlya etogo bloka

### Glavnoe reshenie

Blok `20-43` sobiraetsya kak `controlled visual system`, a ne kak nabor razroznennykh slaydov.

Osnovnaya logika:

1. `scheme-first` dlya moduley `05`, `06`, `07`;
2. `comparison-first` dlya slaydov, gde nuzhna otsenka `mozhno / nelzya`, `gotovo / ne gotovo`, `dopustimo / opasno`;
3. `scenario-card` dlya extended-slaydov;
4. realnye foto ne yavlyayutsya blokiruyushchim usloviem dlya pervoy sborki etogo bloka.

### Pochemu eto logichno

- eti moduli uchat ne "lyubovat'sya polevym kadrom", a ponimat logiku sborki, kontrolya i ekspluatatsii;
- upravlyaemye skhemy dayut stabilnuyu chitaemost dlya `PPTX`, `PDF`, `A3`, `A5`;
- sravneniya i kartochki mozhno sobirat bez ozhidaniya sluchaynoy foto-bazy;
- takoy podkhod ne lomaet `Pipeline`, a sootvetstvuet ego production-distsipline.

## Chto schitat gotovym rezultatom etoy iteratsii

Na vykhode dolzhno poyavit'sya ne vse i srazu, a sleduyushchiy minimum:

1. stabilnyy visual route dlya slaydov `20-43`;
2. nabor povtoryaemykh maketov;
3. sobirаемye assets dlya controlled draft deck;
4. chestnaya pometka, gde photo-layer eshche mozhno usilit pozhe.

## Klyuchevye reusable makety

V etom bloke nuzhno ne 24 unikalnykh slayda, a `7` tipov maketov.

| Kod maketa | Tip | Dlya kakikh slaydov | Chto delaet |
|---|---|---|---|
| `VP-01` | principle scheme | `20`, `26`, `36` | otkryvaet modul cherez odnu lineynuyu ili etapnuyu logiku |
| `VP-02` | construction scheme | `21`, `23`, `29`, `31`, `35`, `43` | obyasnyaet strukturu, kontrol, kreplenie, algoritm |
| `VP-03` | sequence strip | `22`, `27` | poshagovaya sborka bez peregruza |
| `VP-04` | comparison board | `24`, `28`, `30`, `32`, `33`, `39`, `40` | sravneniya `bezopasno / opasno`, `dopustimo / nelzya` |
| `VP-05` | scenario card | `25`, `34`, `42` | situatsionnoe reshenie s 3-4 usloviyami |
| `VP-06` | checklist / status board | `37`, `38` | minimum proverki ili status-dopusk |
| `VP-07` | hazard scene | `41` | risk zona i istochnik opasnosti v odnom kadre |

## Visual semantics dlya vsego bloka

Vo vsem diapazone `20-43` nuzhno derzhat odnu i tu zhe semantiku:

- `warning / risk` = odin warning-accent
- `safe / allowed` = odin secondary-safe accent
- `blocked / no-go` = ne prosto krasnyy fon, a yavnaya logika zapreta
- `control point` = odin i tot zhe marker
- `sequence step` = odin i tot zhe modulnyy step-shell
- `scenario decision` = odna i ta zhe logika dlya `prodolzhit / ostanovit / eskalirovat`

## Marshrut sborki

### Ocherednost

Sborka dolzhna idti ne po nomeram slaydov, a po proizvodstvennym paketam:

1. sobrat `VP-01` i `VP-03` kak opornye modulnye makety;
2. sobrat `VP-02` dlya skhem kontrolya i krepleniya;
3. sobrat `VP-04` kak universalnyy compare-shell;
4. sobrat `VP-05` dlya scenario-cards;
5. sobrat `VP-06` dlya checklist/status;
6. sobrat `VP-07` kak otdelnyy risk-scene;
7. tolko potom finalno proyti po slaydam `20-43` i sverit ritm.

### Pochemu imenno tak

Tak my:

- stroim sistemu, a ne improviziruem slayd za slaydom;
- poluchaem bystruyu bazu dlya `A3/A5`;
- sokrashchaem kolichestvo visual decisions;
- ne lomаем QR-ready i branded-slot logiku.

## Slide-by-slide plan

| Slayd | Modul | Vizualnyy tip | Maket | Asset ID | Rezhim sborki | Slozhnost | Chto vazhno ne polomat |
|---|---|---|---|---|---|---|---|
| `20` | `05` | modul entry principle | `VP-01` | `A-20` | sobrat skhemu | low | yavnaya logika perekhoda iz proverki v montazh |
| `21` | `05` | foundation control scheme | `VP-02` | `A-21` | sobrat skhemu | medium | ne ukhodyt v pasport sistemy, a derzhat printsip |
| `22` | `05` | sequence strip | `VP-03` | `A-22` | sobrat skhemu | low | chitaemost 4-5 shagov |
| `23` | `05` | control triad | `VP-02` | `A-23` | sobrat skhemu | low | marker `vertikalnost / geometriya / svyazi` |
| `24` | `05` | `mozhno / nelzya` start | `VP-04` | `A-24` | sobrat schematic compare | medium | chestnoe sravnenie bez dekorativnogo shumа |
| `25` | `05` | scenario card | `VP-05` | `A-25` | sobrat kartochku | low | ne prevrashchat v stenu teksta |
| `26` | `06` | modul entry principle | `VP-01` | `A-26` | sobrat skhemu | low | vertikalnaya logika modulia |
| `27` | `06` | sequence strip | `VP-03` | `A-27` | sobrat skhemu | low | ne melchit etapy yarusa |
| `28` | `06` | `polnyy / nepolnyy` nastil | `VP-04` | `A-28` | sobrat compare | medium | kontrast dolzhen byt prakticheski ponyatnym |
| `29` | `06` | protection scheme | `VP-02` | `A-29` | sobrat skhemu | low | zashchita kak chast gotovnosti, a ne dekor |
| `30` | `06` | access compare | `VP-04` | `A-30` | sobrat compare | medium | trayektoriya dvizheniya dolzhna byt srazu schityvaemoy |
| `31` | `06` | anchoring scheme | `VP-02` | `A-31` | sobrat skhemu | high | eto odin iz glavnykh teaching visuals bloka |
| `32` | `06` | load compare | `VP-04` | `A-32` | sobrat compare | medium | ne ukhodyt v tochnye chisla, derzhat printsip |
| `33` | `06` | stable / unsafe growth | `VP-04` | `A-33` | sobrat compare | medium | red flags dolzhny byt yavno markirovany |
| `34` | `06` | scenario card | `VP-05` | `A-34` | sobrat kartochku | low | reshienie `ostanovit / eskalirovat` dolzhno byt centralnym |
| `35` | `06` | summary control scheme | `VP-02` | `A-35` | sobrat skhemu | low | most v modul `07` |
| `36` | `07` | modul entry principle | `VP-01` | `A-36` | sobrat skhemu | low | otdelit sborku ot dopuska k ekspluatatsii |
| `37` | `07` | readiness checklist | `VP-06` | `A-37` | sobrat board | low | maksimalnaya chitaemost dlya worker-materiala |
| `38` | `07` | allow / block board | `VP-06` | `A-38` | sobrat board | low | status dolzhen byt binarnym i ponyatnym |
| `39` | `07` | load regime compare | `VP-04` | `A-39` | sobrat compare | medium | ne sdelat peregruzhennym vizualno |
| `40` | `07` | movement compare | `VP-04` | `A-40` | sobrat compare | medium | marshrut i oshibka dvizheniya dolzhny chitatsya mgnovenno |
| `41` | `07` | hazard scene | `VP-07` | `A-41` | sobrat hybrid scene | high | svyazat verkhnyuyu i nizhnyuyu risk-zonu |
| `42` | `07` | decision card | `VP-05` | `A-42` | sobrat kartochku | low | ne uvlekat'sya tekstom vmesto resheniya |
| `43` | `07` | summary algorithm | `VP-02` | `A-43` | sobrat skhemu | low | finalnyy algoritm dolzhen byt korotkim i silnym |

## Build batches

### Batch 1: skeleton

Sobrat pervymi:

- `20`
- `22`
- `26`
- `27`
- `36`
- `37`
- `43`

Zachem:

- eto daet karkas trekh moduley;
- my srazu proverim, rabotaet li generic visual shell;
- eti slaydy luchshe vsego pokazhut, derzhit li sistemu `D-06 Corporate Neutral`.

### Batch 2: control logic

Sobrat potom:

- `21`
- `23`
- `29`
- `31`
- `35`
- `38`

Zachem:

- eto opornye skhemy kontrolya, zhestkosti, krepleniya i dopuska;
- posle etogo mozhno chestno proverit, ponyatna li kursu ego safety-logika.

### Batch 3: compare layer

Sobrat potom:

- `24`
- `28`
- `30`
- `32`
- `33`
- `39`
- `40`

Zachem:

- compare-shell dolzhen byt odinakovym vo vsem kurse;
- eto samyy veroyatnyy istochnik vizualnogo khaosa, esli ne sobirat ego paketno.

### Batch 4: scenarios

Sobrat potom:

- `25`
- `34`
- `42`

Zachem:

- scenario-slides dolzhny byt legkimi dlya vedeniya lektorom;
- ikh vazhno ne peregruzit dekorom i detalizatsiey.

### Batch 5: special risk scene

Sobrat otdelno:

- `41`

Zachem:

- eto yedinstvennyy slayd bloka, gde risk nado pokazat ne lineynoy skhemoy, a prostranstvenno;
- emu nuzhna otdelnaya proverka chitaemosti.

## Production pravila po tipam slaydov

### Principle / summary schemes

- odin vizualnyy tsentr;
- minimum teksta;
- 3-4 uzla logiki maksimum;
- ne podmenyat tekstom to, chto mozhno pokazat strelochnoy logikoy.

### Construction schemes

- podpisy krupnye;
- tonkie linii ne ispolzovat;
- ne risovat slishkom mnogo malenkikh uzlov;
- esli est vybor mezhdu krasivoy skhemoy i chitaemoy skhemoy, vybirat chitaemuyu.

### Comparisons

- levaya i pravaya storony strogo simmetrichny;
- signal `opasno / bezopasno` dolzhen chitatsya bez chteniya teksta;
- ne delat "krasnyy protiv zelenogo" edinstvennym sposobom razlikeniya, nuzhny eshche formy i markery.

### Scenario cards

- 3-4 usloviya maksimum;
- yadro slayda = reshenie, a ne opisanie situatsii;
- ostavit prostranstvo pod ustnyy razbor lektora.

### Checklist / status boards

- maksimalno prostye ikonki;
- rabotat dolzhny i v `PPTX`, i v `A3`, i v `A5`;
- eto khoroshiy kandidat na povtornoe ispolzovanie v worker-materialakh.

## Asset dependency

### Ne blokiruet sborku

Ne blokiruyut controlled draft:

- `A-20` - `A-43`, krome togo chto oni dolzhny byt sobrany kak sobstvennye skhemy;
- icon-family mozhno zamenit vremenno na neutralnyy controlled set;
- photo-layer mozhno podklyuchit pozhe.

### Mozhet usilit pozhe

Mogut byt dobavleny pozhe bez polomki logiki:

- realnye foto dlya `A-28`
- staged-primery dlya `A-30`
- hybrid-risk scene enhancement dlya `A-41`

### Nuzhno derzhat pod kontrol'em

Naibolee riskovye po proizvodstvu:

- `A-31`
- `A-33`
- `A-41`
- `A-43`

## Minimalnyy set dlya pervogo visual build

Esli nuzhno bystro poluchit pervyy silnyy fragment deck, sbirat v takom наборе:

- `20`
- `21`
- `22`
- `23`
- `24`
- `26`
- `27`
- `31`
- `33`
- `36`
- `37`
- `38`
- `43`

Eto daet:

- start modulia `05`
- logiku modulia `06`
- razdelitel modulia `07`
- checklist / dopusk
- summary algoritm

## Svязь s drugimi nositelyami

Slaydy, kotorye luchshe vsego peredayutsya v `A3 / A5`:

- `23`
- `29`
- `37`
- `38`
- `43`

Slaydy, kotorye luchshe ostavit v prezentatsii kak lecture-first:

- `25`
- `34`
- `42`

Slaydy, kotorye mogut poluchit QR-slot pozhe:

- `31`
- `37`
- `41`
- `43`

## Riski etoy iteratsii

- esli nachat sobirat vizualy po odnomu slaydu bez reusable-shell, blok poteryaet yedinstvo;
- esli srazu poyti v photo-heavy podachu, kurs zastranet na poiske kartinok;
- esli ne sdelat odin compare-shell, moduli `05-07` budut vygladet kak tri raznykh kursa;
- esli `A-41` sobrat slishkom slozhno, on ubet chitaemost vmesto usileniya risk-logiki.

## Reshenie po gotovnosti

- Visual production plan po `20-43` sobran: `yes`
- Ne lomaet li strukturu kursa: `no`
- Dvigaet li on kurs k realnoy sborke deck: `yes`
- Sledushchiy logichnyy production-shag: sobrat first visual build po `Batch 1` i `Batch 2`
