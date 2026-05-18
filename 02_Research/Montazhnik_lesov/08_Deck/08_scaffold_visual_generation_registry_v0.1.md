# Scaffold Visual Generation Registry v0.1

## Status

- Kurs: `Montazhnik lesov`
- Kod: `ML`
- Data sborki: `2026-05-16`
- Owner: vy
- Status: `working production draft`
- Rol etoy versii: svyazat tekushchuyu prezentatsiyu po lesam s visual production mode, prompt-source i avatar cycle

## Naznachenie

Etot dokument nuzhen kak proizvodstvennyy reestr dlya tekushchey prezentatsii po lesam.

On svyazyvaet v odnom meste:

- poryadok slaydov;
- tip vizuala;
- rezhim `generate / edit`;
- istochnik prompta;
- potrebst v klientskom izobrazhenii;
- ocherednost ispolzovaniya postoyannykh avatarov.

Dokument ne zamenyaet:

- `06_slide_script_v0.2.md`
- `06_klinovye_lesa_montage_sequence_pack_v0.1.md`
- `07_asset_register_v0.3.md`
- `07_Assets/07_client_image_intake_standard_v0.1.md`
- `08_Deck/08_local_markup_brief_S14_S16_v0.1.md`
- `08_Deck/08_local_markup_brief_S18_v0.1.md`
- `01_Docs/AI_Prompt_Library_v0.1.md`

On nuzhen kak operatsionnyy most mezhdu nimi pered realnoy sborkoy izobrazheniy i deck.

## Production assumptions

### 1. Dva sloya sborki

V etoy prezentatsii est dva raznykh tipa vizualov:

1. `fixed scaffold contour`
2. `reusable safety inserts`

`fixed scaffold contour`:

- klinovye lesa;
- khomutovye lesa;
- montazh, ankerovanie, klyuchevye otlichiya.

`reusable safety inserts`:

- `RB-04`
- `RB-05`
- `RB-06`
- `RB-07`
- `RB-08`

### 2. Rezhim sborki po umolchaniyu

`edit-first` nuzhen dlya:

- poshagovogo montazha klinovykh lesov;
- differentsialnykh slaydov po khomutovym lesam;
- tam, gde klient planiruet dat realnye izobrazheniya.

`generate-first` nuzhen dlya:

- reusable safety blocks;
- explanatory visuals, gde net obyazatelnoy privyazki k klientskomu foto;
- slaydov, gde nuzhna upravlyaemaya scene logic vmesto sluchaynogo kadra.

### 3. Pravilo avatar cycle

Esli v generate-scene nuzhen personazh, ispolzuetsya zafiksirovannaya rotatsiya:

1. `Avatar 1`
2. `Avatar 2`
3. `Avatar 3`
4. dalshe snova po krugu

Esli v odnom kadre nuzhno bolshe trekh razlichimykh personazhey, sozdaetsya novyy avatar.

## Fixed scaffold contour

## Approved pre-montage inserts

| Insert | Nazvanie | Status | Local output |
|---|---|---|---|
| `13A` | Instrumenty montazhnika | `approved local layout` | `ML_tools_markup_final_v01.png` |

Globalnoe pravilo dlya tekushchego deck-contoura:

- vse plashki podpisei i korotkogo teksta vo vsem proekte sobirayutsya po `08_Deck/08_label_plaque_rules_v0.1.md`;
- approved slayd `13A` schitaetsya etalonom po skrugleniyu i geometrii plashok;
- bez otdelnogo soglasovaniya ne dopuskaetsya smena tsveta plashok ot slayda k slaydu.
- vse strelki ot plashok k obektam sobirayutsya po `08_Deck/08_label_connector_arrow_rules_v0.1.md`.
- rasterovye izobrazheniya sobirayutsya po dvum globalnym pravilam: nezametnyy perekhod po krayu na belom / neytralnom fone i otsutstvie deformatsii otnositelno pervoistochnika po `08_Deck/08_image_edge_integration_rules_v0.1.md` i `08_Deck/08_image_aspect_ratio_rules_v0.1.md`.

### Klinovye lesa

| Slide | Zagolovok | Block | Visual mode | Prompt source | Client image | Avatar slot | Chto delat seychas |
|---|---|---|---|---|---|---|---|
| `01` | Ustanovka podpyatnikov ili domkratov | klinovye montage | `edit-first` | custom step prompt | `yes` | `none` | zhdat klientskiy kadr; pri otsutstvii sobrat generate fallback |
| `02` | Ustanovka startovykh elementov | klinovye montage | `edit-first` | custom step prompt | `yes` | `none` | to zhe pravilo: realnyy etap prioritetnee |
| `03` | Soedinenie startovykh opor gorizontalnymi svyazyami | klinovye montage | `edit-first` | custom step prompt | `yes` | `none` | nuzhen chitaemyy nizhniy kontur |
| `04` | Ustanovka vertikalnykh stoek | klinovye montage | `edit-first` | custom step prompt | `yes` | `none` | prioritet uzlu ustanovki i vertikalnosti |
| `05` | Soedinenie stoek gorizontalnymi svyazyami | klinovye montage | `edit-first` | custom step prompt | `yes` | `none` | nuzhna chitaemaya geometriya i ritm po vysote |
| `06` | Montazh diagonalnykh raskosov | klinovye montage | `edit-first` | custom step prompt | `yes` | `none` | prioritet raskosam i tochkam krepleniya |
| `07` | Ukladka shchitov nastila na pervyy yarus | klinovye montage | `edit-first` | custom step prompt | `yes` | `none` | nuzhna polnaya rabochaya poverkhnost |
| `08` | Ustanovka stoek vtorogo yarusa | klinovye montage | `edit-first` | custom step prompt | `yes` | `none` | nuzhno pokazat controlled growth konstruktsii |
| `09` | Montazh lestnitsy i marsha | klinovye montage | `edit-first` | custom step prompt | `yes` | `none` | prioritet bezopasnomu dostupu |
| `10` | Montazh vtorogo rabochego yarusa | klinovye montage | `edit-first` | custom step prompt | `yes` | `none` | nuzhen gotovyy verhniy rabochiy uroven |
| `11` | Ustanovka ograzhdeniy | klinovye montage | `edit-first` | custom step prompt + `RB-07` support | `yes` | `none` | mozhno usilit logicoy iz `RB-07` |
| `12` | Ustanovka otbortovochnoy doski | klinovye montage | `edit-first` | custom step prompt | `yes` | `none` | krupnyy fragment kromki yarusa |
| `13` | Ankerovanie klinovykh lesov | klinovye special | `edit-first` | custom anchor prompt + `RB-04` support | `yes` | `none` | prezhniy lokalnyy markup schitaetsya `superseded`; slayd otpravlen na peredelku |
| `14` | Klinovye lesa v sbore | klinovye summary | `edit-first` | custom summary prompt | `yes` | `none` | prezhniy lokalnyy markup schitaetsya `superseded`; slayd otpravlen na peredelku |

### Khomutovye lesa

| Slide | Zagolovok | Block | Visual mode | Prompt source | Client image | Avatar slot | Chto delat seychas |
|---|---|---|---|---|---|---|---|
| `15` | Obshchaya skhema sborki analogichna klinovoy | khomutovye intro | `generate-first` | custom differential prompt | `none / optional` | `none` | mozhno sobrat schematic intro bez klientskogo foto |
| `16` | Soedinenie trub mezhdu soboy | khomutovye differential | `edit-first` | custom differential prompt | `yes` | `none` | prezhniy lokalnyy markup schitaetsya `superseded`; slayd otpravlen na peredelku |
| `17` | Kreplenie lesov k balke | khomutovye differential | `edit-first` | custom differential prompt | `yes` | `none` | prezhniy lokalnyy markup schitaetsya `superseded`; slayd otpravlen na peredelku |
| `18` | Ankerovanie khomutovykh lesov | khomutovye differential | `edit-first` | custom differential prompt + `RB-04` support | `yes` | `none` | prezhniy lokalnyy markup schitaetsya `superseded`; slayd otpravlen na peredelku |
| `19` | Klyuchevye otlichiya i na chto obratit vnimanie | khomutovye summary | `generate-first` | custom compare prompt | `optional` | `none` | mozhno sobrat kak schematic compare-board |

Primechanie k content-sloyu:

- etot registry pokryvaet tolko differential-block `15-19`;
- otdelnyy component-layer po khomutovym lesam vse eshche zhivet v script inserts `13D/13E`;
- dlya etogo layera ograzhdeniya otdelno ne vynosyatsya, a obyazatelnyy minimum derzhim cherez truby, khomuty, shchift soedinitelnyy, bashmak, zazhimy i khomut dlya krepleniya k balke.

## Reusable safety inserts

Etot sloy ne zakreplyaetsya zhestko za nomerami slaydov poka ne utverzhden finalnyy marshrut kursa.

Rekomenduemye tochki vstavki:

- posle bloka po dopusku i SIZ;
- pered montage-sequence, esli nado usilit safety entry;
- posle montazhnogo bloka, esli nuzhno otdelno razobrat pravila ekspluatatsii i risk-zony.

### Safety insert registry

| Insert ID | Block | Recommended placement | Visual mode | Prompt source | Avatar slot start | Client image | Primechanie |
|---|---|---|---|---|---|---|---|
| `SI-01` | `RB-04` Ograjdeniya kak sredstvo kollektivnoy zashchity | pered / ryadom so slaydom `11` | `generate-first` | `AI_Prompt_Library -> RB-04` | `Avatar 1` | `no` | block gotov k production |
| `SI-02` | `RB-05` SIZ dlya raboty na vysote | pered montage block ili v safety-intro | `generate-first` | `AI_Prompt_Library -> RB-05` | `Avatar 2` | `no` | contour `height PPE`, bez zhiletki |
| `SI-03` | `RB-06` Spasenie i evakuatsiya | posle SIZ dlya vysoty ili pered ekspluatatsiey | `generate-first` | `AI_Prompt_Library -> RB-06` | `Avatar 3` | `no` | mozhno sobirat bez realnogo foto |
| `SI-04` | `RB-07` Ustanovka ograzhdeniy | vmeste s montage / pered dopuskom | `generate-first` | `AI_Prompt_Library -> RB-07` | `Avatar 1` | `no` | polezno kak explanatory usilenie slayda `11` |
| `SI-05` | `RB-08` Opasnaya zona padeniya predmetov | posle rabot na vysote / pered risk modulem | `generate-first` | `AI_Prompt_Library -> RB-08` | `Avatar 2` | `no` | personazh nuzhen ne na kazhdom slayde |

## Avatar usage log dlya generate-scenes

Nizhe zafiksirovana tekushchaya ocherednost ne dlya vsekh teoreticheskikh promptov, a dlya realnogo starta production.

| Production order | Scene / pack | Avatar |
|---|---|---|
| `01` | `SI-01 / RB-04` pervaya chelovecheskaya scene | `Avatar 1` |
| `02` | `SI-02 / RB-05` pervaya chelovecheskaya scene | `Avatar 2` |
| `03` | `SI-03 / RB-06` pervaya chelovecheskaya scene | `Avatar 3` |
| `04` | `SI-04 / RB-07` pervaya chelovecheskaya scene | `Avatar 1` |
| `05` | `SI-05 / RB-08` pervaya chelovecheskaya scene | `Avatar 2` |

Rabochee pravilo:

- vnutri odnogo packa avatar rotiruetsya dal'she po krugu po mere poyavleniya chelovecheskikh scen;
- esli slayd bez lyudey, slot ne raskhoduetsya;
- esli v odnom slayde nuzhno dva razlichimykh personazha, berutsya dva sleduyushchikh avatara po krugu.

## Chto nuzhno poluchit ot klienta

### Obyazatelno

1. Izobrazheniya dlya slaydov `01-14` po klinovym lesam.
2. Izobrazheniya dlya slaydov `16-18` po khomutovym lesam.
3. Esli est, realnye uzly po ankerovaniyu dlya klinovykh i khomutovykh lesov.

### Zhelatelno

1. Bolshie i chistye izobrazheniya bez vizualnogo peregruza.
2. Otdelnye kadry dlya pravilnogo vypolneniya i, esli vozmozhno, dlya tipichnykh oshibok.
3. Varianty, gde kriticheskiy uzel mozhno pokazat krupno.

## Chto mozhno nachinat bez klientskikh materialov uzhe seychas

Mozhno nachinat srazu:

- `RB-04`
- `RB-05`
- `RB-06`
- `RB-07`
- `RB-08`
- slayd `15`
- slayd `19`

Utverzhden lokalno:

- `Instrumenty montazhnika`

Na peredelke:

- `S13`
- `S14`
- `S16`
- `S17`
- `S18`

Nuzhno zhdat klientskie vizualy ili ikh analog:

- slaydy `01-12`

## Rekomenduemyy marshrut proizvodstva

1. Sobrat generate-first safety inserts.
2. Podgotovit papku i naming dlya klientskikh montage-izobrazheniy.
3. Pri prinimanii vizualov srazu raskladyvat ikh po `07_Assets/01_Client_Intake` i pereimenovyvat po `07_client_image_intake_standard_v0.1.md`.
4. Po mere polucheniya klientskikh kartinok delat `edit-first` production po slaydam `01-14`, `16-18`.
5. Posle etogo svesti fixed scaffold contour i reusable safety inserts v odin draft deck.

## Reshenie po gotovnosti

- Est li proizvodstvennyy reestr dlya tekushchey prezentatsii: `yes`
- Mozhno li nachat generate-sloy uzhe seychas: `yes`
- Zavisim li montage contour ot klientskikh izobrazheniy: `yes`
- Zakryt li finalnyy marshrut vstavki safety blocks: `no, mozhno utochnit pozhe bez lomki biblioteki`
