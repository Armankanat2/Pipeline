# Klinovye lesa montage sequence pack v0.1

## Status

- Kurs: `Montazhnik lesov`
- Kod: `ML`
- Data sborki: `2026-05-16`
- Owner: vy
- Scope: `image-driven step contour`
- Status: `working draft`

## Naznachenie

Etot dokument nuzhen, chtoby zafiksirovat otdelnyy obuchayushchiy contour po posledovatelnosti montazha klinovykh lesov v formate:

- `1 etap = 1 slayd`
- na kazhdom slayde est:
  - odin etap raboty;
  - kommentariy po trebovaniyam;
  - kommentariy po vozmozhnym oshibkam;
  - slot pod konkretnoye izobrazhenie etogo etapa.

Paket nuzhen ne dlya finalnogo release sam po sebe, a kak image-driven production-base, kotoruyu potom mozhno vlit v osnovnoy `slide script`.

## Source boundary

- Posledovatelnost nizhe schitaetsya `client-provided / production-provided`.
- Do polucheniya pasporta sistemy, PPR i finalnoy ekspertnoi proverki ee nado derzhat kak system-layer dlya klinovykh lesov, a ne kak universalnuyu normu dlya lyuboy sistemy.
- Tam, gde v etape est konkretnaya sistema-zavisimost (`shag 2 metra`, `soglasno PPR` i drugie tochki), eto nado progovarivat chestno kak trebovanie etogo production-contoura, a ne kak obobshchennyy zakon dlya vsekh lesov.

## Adaptation rule dlya khomutovykh lesov

Esli v etom zhe kurse poyavlyaetsya contour po khomutovym lesam, ego ne nado sobirat kak vtoroy polnyy `1-12` montage-pack.

Pravilo adaptatsii takoe:

- bazovaya logika sborki ostayetsya toy zhe, chto i v klinovom contour;
- ne nado otdelno demonstrirovat kazhdyy shag, esli on metodicheski sovpadaet;
- nuzhno pokazat tolko te mesta, gde khomutovye lesa realno otlichayutsya ot klinovykh.

V etoy iteratsii raznitsa fokusiruetsya na dvukh zonakh:

1. soedineniya trub mezhdu soboy;
2. spetsifika obvyazki kollon.

Znacit, dlya khomutovogo contoura nuzhen ne polnyy parallel'nyy script, a compact differential-pack:

- bazovyy slayd: `skhema sborki analogichna klinovoy`;
- slayd po soedineniyu trub;
- slayd po obvyazke kollon;
- otdelnyy slayd po ankerovaniyu khomutovykh lesov;
- pri nuzhde odin summary-slayd `na chto obratit vnimanie imenno zdes`.

## Pravilo sborki slaydov

Dlya vsekh `12` slaydov deystvuet odin format:

1. Vverkh: nazvanie etapa.
2. V tsentre: odno krupnoe izobrazhenie ili skhema imenno etogo etapa.
3. Sleva ili vnizu: blok `Trebovaniya`.
4. Sprava ili vnizu: blok `Vozmozhnye oshibki`.
5. Speaker notes: chto imenno kommentiruet prepodavatel.

## Obyazatelnyy blok pered Step cards

Do etogo image-driven contoura dolzhen stoyat otdelnyy `pre-montage insert`.

On ne zamenyaet samu posledovatelnost sborki, a gotovit slushatelya k ney.

Minimalnyy contour pered `Etap 01`:

1. `Instrumenty montazhnika`
2. `Komplektuyushchie klinovykh lesov. Osnovnye elementi`
3. `Komplektuyushchie klinovykh lesov. Rabochie i spetsialnye elementi`
4. `Komplektuyushchie khomutovykh lesov. Osnovnye elementi`
5. `Komplektuyushchie khomutovykh lesov. Zazhimy i spetsialnye elementi`

Eto nuzhno, chtoby dalneyshee pravilo `1 etap = 1 slayd` ne nachinalos "v pustotu", kogda slushatel eshche ne znaet bazovyy instrument i sostav sistemy.

## Step cards

### Etap 01

- Rabochee nazvanie slayda: `Podpyatniki ili reguliruemye opory na derevyannykh prokladkakh`
- Etap: ustanovit na derevyannye prokladki podpyatniki ili reguliruemye opory (`domkraty`)
- Tsel slayda: pokazat, chto bezopasnyy montazh nachinaetsya s pravilnoy bazy pod opory
- Chto dolzhno byt na izobrazhenii:
  - derevyannye prokladki;
  - podpyatniki ili domkraty;
  - ponyatnaya opornaya zona bez sluchaynoy podkladki
- Trebovaniya dlya kommentariya:
  - opora dolzhna stavitsya na podgotovlennuyu bazu;
  - element ne dolzhen stoyat sluchayno ili na neustoychivom osnovanii;
  - start montazha nachinaetsya s kontrolya bazy, a ne s nabora vysoty
- Vozmozhnye oshibki:
  - otsutstvie prokladki;
  - sluchaynaya ili neravnaya opora;
  - popitka nachat sborku bez kontrolya osnovaniya
- Speaker notes:
  - eto pervaya tochka, gde oshibka pozhe potyanet vsyu geometriyu;
  - ne ukhodyt v tochnye dopuski bez pasporta sistemy

### Etap 02

- Rabochee nazvanie slayda: `Startovye elementy na podpyatnikakh ili domkratakh`
- Etap: ustanovit startovye elementy na podpyatniki ili domkraty
- Tsel slayda: perevesti slushatelya ot bazy k nachalnomu konturu sborki
- Chto dolzhno byt na izobrazhenii:
  - startovye elementy;
  - opora pod nimi;
  - ponyatnyy start nizhnego kontura
- Trebovaniya dlya kommentariya:
  - startovye elementy dolzhny byt pravilno posazheny na opornyy contour;
  - na etape starta vazhna akkurtnost i sovmeshchenie elementov;
  - ne nachinat dalneyshee narashchivanie, poka startovaya baza ne ponyatna
- Vozmozhnye oshibki:
  - nepolnaya posadka elementa;
  - perekos na starte;
  - prodolzhenie montazha pri spornom nizhnyem konture
- Speaker notes:
  - eto ne "meloch pered osnovnoy rabotoy", a prodolzhenie sborki bazy

### Etap 03

- Rabochee nazvanie slayda: `Gorizontalnaya svyaz startovykh opor`
- Etap: svyazat startovye opory gorizontalnymi svyazyami mezhdu soboy
- Tsel slayda: pokazat, chto geometriya poyavlyaetsya ne sama, a za schet svyazki opor
- Chto dolzhno byt na izobrazhenii:
  - startovye opory;
  - gorizontalnye svyazi;
  - chitaemaya ramka nizhnego kontura
- Trebovaniya dlya kommentariya:
  - startovye opory dolzhny byt svyazany mezhdu soboy;
  - gorizontalnaya svyaz nuzhna ne dlya "udobstva", a dlya logiki skhemy;
  - nizhniy kontur dolzhen schityvatsya kak sistema, a ne nabor odinochnykh tochek
- Vozmozhnye oshibki:
  - propusk svyazi;
  - popytka uskoryat montazh bez sborki nizhney ramki;
  - vospriyatie svyazey kak vtorostepennogo elementa
- Speaker notes:
  - zdes udobno podcherknut printsip `stoiki nesut, svyazi derzhat geometriyu`

### Etap 04

- Rabochee nazvanie slayda: `Ustanovka vertikalnykh stoek v startovye elementy`
- Etap: ustanovit vertikalnye stoyki v startovye elementy
- Tsel slayda: perevesti nizhniy contour v vertikalnuyu sborku
- Chto dolzhno byt na izobrazhenii:
  - startovye elementy;
  - vertikalnye stoyki;
  - ponyatnyy moment perekhoda v rost konstruktsii
- Trebovaniya dlya kommentariya:
  - stoyki dolzhny ustanavlivatsya v uzhe podgotovlennyy startovyy contour;
  - vazhno uderzhivat logiku vertikalnosti i geometrii;
  - dalneyshaya sborka ne dolzhna obgonyat kontrol etogo etapa
- Vozmozhnye oshibki:
  - ustanovka pri neustoychivom nizhnyem konture;
  - perekos stoek;
  - prodolzhenie sborki bez proverki logiki etogo perekhoda
- Speaker notes:
  - mozhno kommentirovat, chto oshibka v stoykakh pozhe usilitsya po vysote

### Etap 05

- Rabochee nazvanie slayda: `Gorizontalnye svyazi po stoykam s shagom 2 metra`
- Etap: soedinit stoyki gorizontalnymi svyazyami mezhdu soboy s shagom po vysote `2` metra
- Tsel slayda: zafiksirovat trebovanie etogo production-contoura po narashchivaniyu ramki
- Chto dolzhno byt na izobrazhenii:
  - stoyki;
  - gorizontalnye svyazi;
  - chitaemyy ritm po vysote
- Trebovaniya dlya kommentariya:
  - stoyki dolzhny svyazyvatsya mezhdu soboy po zadanomu production-shagu;
  - v etom konture shag po vysote kommentiruetsya kak `2 metra`;
  - eto mesto nado svyazyvat s PPR i pasportom sistemy pri finalnoy validatsii
- Vozmozhnye oshibki:
  - propusk svyazey;
  - narushenie ritma po vysote;
  - samovolnaya improvizatsiya po skheme svyazey
- Speaker notes:
  - obyazatelno pometchat, chto konkretnyy shag zavisit ot system-layer i dolzhen byt proveryaem po iskhodnoy dokumentatsii

### Etap 06

- Rabochee nazvanie slayda: `Ukladka shchitov nastila na pervyy rabochiy yarus`
- Etap: ulozhit derevyannye ili metallicheskie shchity nastila na pervyy rabochiy yarus
- Tsel slayda: pokazat moment poyavleniya rabochey ploshchadki
- Chto dolzhno byt na izobrazhenii:
  - pervyy rabochiy yarus;
  - shchity nastila;
  - ponyatnaya rabochaya poverkhnost
- Trebovaniya dlya kommentariya:
  - nastil dolzhen formirovat rabochuyu ploshchadku;
  - rabochiy yarus dolzhen schityvatsya kak podgotovlennaya poverkhnost, a ne sluchaynaya opora pod nogami;
  - nado kommentirovat prigodnost yarusa dlya raboty
- Vozmozhnye oshibki:
  - nepolnyy nastil;
  - sluchaynaya opora vmesto rabochey poverkhnosti;
  - perekhod k rabote s yarusa, kotoryy eshche ne gotov
- Speaker notes:
  - eto odin iz klyuchevykh momentov dlya worker-ponyatnosti

### Etap 07

- Rabochee nazvanie slayda: `Stoyki vtorogo yarusa i ikh gorizontalnaya svyaz`
- Etap: ustanovit stoyki vtorogo yarusa, soediniv ikh gorizontalnymi svyazyami
- Tsel slayda: pokazat, kak konstruktsiya narashchivaetsya posle sborki pervogo rabochego yarusa
- Chto dolzhno byt na izobrazhenii:
  - vtoroy yarus v progresee;
  - stoyki;
  - gorizontalnye svyazi
- Trebovaniya dlya kommentariya:
  - vtoroy yarus poyavlyaetsya ne kuskom, a v upravlyaemoy posledovatelnosti;
  - rost konstruktsii dolzhen idti vmeste so svyazyami;
  - bez svyazey i kontrolya geometrii nelzya prodolzhat nabor vysoty
- Vozmozhnye oshibki:
  - nabiranie vysoty bez svyazki;
  - perekos vtorogo yarusa;
  - prodolzhenie rabot pri nedostroennom konture
- Speaker notes:
  - eto most k teme `nedostroennyy yarus ne yavlyaetsya bezopasnoy rabochey pozitsiey`

### Etap 08

- Rabochee nazvanie slayda: `Montazh lestnitsy i nastila na lestnichnyy marsh`
- Etap: smontirovat lestnitsu i zakrepit nastil na lestnichnyy marsh
- Tsel slayda: vydelit dostup kak obyazatelnuyu chast sborki, a ne dodatok
- Chto dolzhno byt na izobrazhenii:
  - lestnitsa;
  - marsh;
  - nastil na marsh
- Trebovaniya dlya kommentariya:
  - dostup k yarusu dolzhen byt organizovan;
  - lestnitsa i marsh dolzhny rassmatrivatsya kak chast bezopasnogo perekhoda, a ne "potom dodelaem";
  - etot etap nuzhno svyazyvat s gotovnostyu yarusa k rabote
- Vozmozhnye oshibki:
  - otsutstvie organizovannogo dostupa;
  - popytka rabotat pri negotovom marshrute dvizheniya;
  - vospriyatie lestnitsy kak vtorostepennoy opcii
- Speaker notes:
  - odin iz vazhneyshikh aktsentov: esli k yarusu net bezopasnogo dostupa, znachit yarus ne gotov

### Etap 09

- Rabochee nazvanie slayda: `Montazh vtorogo rabochego yarusa na neobkhodimoy vysote`
- Etap: smontirovat vtoroy rabochiy yarus na neobkhodimoy vysote
- Tsel slayda: perevesti nabor vysoty v ponyatnuyu gotovnost rabochego urovnya
- Chto dolzhno byt na izobrazhenii:
  - vtoroy rabochiy yarus;
  - chitaemaya rabochaya poverkhnost;
  - gotovyy kontur etogo urovnya
- Trebovaniya dlya kommentariya:
  - yarus dolzhen byt smontirovan kak rabochaya pozitsiya, a ne kak promezhutochnaya zagotovka;
  - vazhno kommentirovat gotovnost poverkhnosti i logiki raboty na vysote;
  - etot etap nelzya svodit tolko k tomu, chto "stali vyshe"
- Vozmozhnye oshibki:
  - nedostroennyy yarus;
  - rabota s promezhutochnogo kontura;
  - poterya kontrolya nad gotovnostyu rabochego urovnya
- Speaker notes:
  - zdes udobno svyazat temu yarusa s budushchim blokom proverki pered ekspluatatsiey

### Etap 10

- Rabochee nazvanie slayda: `Ograzhdeniya rabochego yarusa`
- Etap: ustanovit ograzhdeniya na rabochiy yarus
- Tsel slayda: vydelit zashchitu yarusa kak obyazatelnuyu chast sborki
- Chto dolzhno byt na izobrazhenii:
  - rabochiy yarus;
  - ograzhdeniya;
  - chitaemyy zashchitnyy contour
- Trebovaniya dlya kommentariya:
  - ograzhdenie nado rassmatrivat kak chast gotovnosti yarusa;
  - rabochiy yarus bez zashchity ne dolzhen vosprinimatsya kak zavershennyy;
  - etot etap nuzhno kommentirovat vmeste s logikoy zapreta raboty pri nepolnoy zashchite
- Vozmozhnye oshibki:
  - rabota bez ograzhdeniya;
  - vospriyatie zashchity kak "dopolneniya na potom";
  - prodolzhenie rabot pri nezakrytom yaruse
- Speaker notes:
  - eto khoroshaya tochka dlya aktsenta `bez zashchity yarus ne gotov`

### Etap 11

- Rabochee nazvanie slayda: `Ustanovka otbortovochnoy doski`
- Etap: ustanovit otbortovochnuyu dosku
- Tsel slayda: vydelit zashchitu ot spadaniya predmetov kak otdelnyy obyazatelnyy element gotovogo yarusa
- Chto dolzhno byt na izobrazhenii:
  - rabochiy yarus;
  - otbortovochnaya doska;
  - ponyatnoe mesto ee ustanovki po krayu rabochey ploshchadki
- Trebovaniya dlya kommentariya:
  - otbortovochnaya doska dolzhna rassmatrivatsya kak chast zavershennogo rabochego yarusa;
  - ee zadacha svyazana s uderzhaniem predmetov i bezopasnoy organizatsiey rabochey zony;
  - etap nado kommentirovat ne kak dekorativnoe dopolnenie, a kak realnyy zashchitnyy element
- Vozmozhnye oshibki:
  - otsutstvie otbortovochnoy doski;
  - vospriyatie ee kak neobyazatelnogo elementa;
  - gotovnost yarusa "na glaz" bez proverki zashchity ot spadaniya predmetov
- Speaker notes:
  - eto udobnaya tochka, chtoby svyazat montazh yarusa s budushchey bezopasnoy ekspluatatsiey i riskom padeniya predmetov vniz

### Etap 12

- Rabochee nazvanie slayda: `Diagonalnye raskosy soglasno PPR`
- Etap: smontirovat diagonalnye raskosy soglasno PPR
- Tsel slayda: zafiksirovat finalnyy sistemnyy aktsent po prostranstvennoy zhestkosti
- Chto dolzhno byt na izobrazhenii:
  - diagonalnye raskosy;
  - ikh mesto v obshchey skheme;
  - ponyatnyy finalnyy vneshniy vid sborki
- Trebovaniya dlya kommentariya:
  - diagonalnye raskosy nuzhny dlya logiki ustoychivosti i zhestkosti skhemy;
  - etot etap obyazatelno privyazyvaetsya k PPR;
  - finalnyy vneshniy vid lesov nado kommentirovat cherez sobludenie skhemy, a ne cherez "pokhozhe gotovo"
- Vozmozhnye oshibki:
  - otsutstvie raskosov;
  - samovolnaya zamena skhemy;
  - finalnaya otsenka "na glaz" bez svyazi s PPR
- Speaker notes:
  - eto samaya yavnaya tochka, gde nuzhno chestno govorit o zavisimosti ot PPR i system-documentation

## Final frame

Posle `12` etapov mozhno dobavit otdelnyy summary-slayd:

- rabochee nazvanie: `Vneshniy vid klinovykh lesov v sbore`
- naznachenie:
  - sobrat vse etapy v odin finalnyy contour;
  - pokazat gotovuyu skhemu bez razryva mezhdu etapami;
  - ispolzovat kak most k bloke `proverka pered ekspluatatsiey`.

## Otdelnyy obyazatelnyy slayd: ankerovanie

Pomimo poshagovogo contoura `1-12`, dlya klinovykh lesov nuzhen eshche odin otdelnyy slayd pro ankerovanie.

Ego luchshe rassmatrivat ne kak "eshche odin obychnyy shag iz spiska", a kak otdelnyy sistemnyy uzel, kotoryy nuzhno obyasnit otdelno.

### Rabochee nazvanie slayda

`Ankerovanie klinovykh lesov`

### Zachem nuzhen etot slayd

- chtoby otdelno obyasnit, zachem lesa krepyatsya k konstruktsii;
- chtoby ne poteryat svyaz mezhdu geometriyey, zhestkostyu i uderzhaniem skhemy;
- chtoby ne ostavit u slushatelya oshchushchenie, chto lesa "derzhatsya sami po sebe", esli uzhe nabrana vysota.

### Chto dolzhno byt na izobrazhenii

- obshchiy vid fragmenta lesov s tochkami ankerovaniya;
- svyaz lesov s konstruktsiey ili nesushchey osnovoy;
- ponyatnaya logika: gde imenno ankerovanie vliyayet na ustoychivost skhemy.

### Trebovaniya dlya kommentariya

- ankerovanie nuzhno rassmatrivat kak chast obespecheniya ustoychivosti;
- bez obyasneniya ankerovaniya u slushatelya razryvaetsya svyaz mezhdu sborkoy i finalnoy zhestkostyu skhemy;
- konkretnaya skhema, shag i raspolozhenie tochek ankerovaniya dolzhny kommentirovatsya s privyazkoy k PPR, pasportu sistemy i proektnomu resheniyu.

### Vozmozhnye oshibki

- vospriyatie ankerovaniya kak "dopolneniya na potom";
- ignorirovanie svyazi mezhdu vysotoy konstruktsii i neobkhodimostyu krepleniya;
- samovolnoe uproshchenie ili izmenenie skhemy ankerovaniya;
- popytka delat vyvody "na glaz" bez svyazi s dokumentatsiey.

### Speaker notes

- etot slayd nado komментirovat otdelno ot obychnogo perechisleniya etapov montazha;
- nuzhno chestno skazat, chto printsip ankerovaniya obyazatelen dlya ponimaniya, no konkretnaya skhema zavisit ot system-layer i rabochey dokumentatsii;
- eto khoroshiy most mezhdu sborkoy, zhestkostyu skhemy i proverkoy gotovnosti pered ekspluatatsiey.

## Chto delat, kogda vy prishlete izobrazheniya

Posle polucheniya vizualov etot paket nado dovesti do sleduyushchego sostoyaniya:

1. privyazat k kazhdomu etapu konkretnoe izobrazhenie;
2. utochnit, gde nujen crop, marker, callout ili sravnenie;
3. otdelno privyazat izobrazhenie i komentariy dlya slayda po ankerovaniyu;
4. reshit, chto ostayetsya v osnovnom course-core, a chto ukhodyt v system-specific layer dlya klinovykh lesov;
5. posle etogo vstroyt paket v osnovnoy `06_slide_script_v0.2.md` ili v ego sleduyushchuyu versiyu.

Esli budet dobavlyat'sya khomutovyy contour, to posle polucheniya vizualov nado sobirat ne povtor vseh `12` etapov, a otdelnyy short-pack tolko po otlichiyam ot klinovoy sborki, vklyuchaya:

- soedineniya trub;
- obvyazku kollon;
- otdelnyy slayd po ankerovaniyu.

## Reshenie po gotovnosti

- Mozhno li po etomu dokumentu nachinat sborku slaydov: `yes`
- Nuzhny li eshche izobrazheniya dlya finalnoy sborki: `yes`
- Nuzhna li proverka po PPR / pasportu sistemy pered release-grade utochneniem: `yes`
