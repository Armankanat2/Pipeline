# Instructor Guide

## Obshchaya informatsiya

- Nazvanie kursa: `Montazhnik lesov`
- Kod kursa: `ML`
- Versiya: `v0.1`
- Dlya kakogo release / klienta: `generic`
- Owner: vy
- Format vydachi: `PDF`

## QR-ready policy

- Standartnoe raspolozhenie QR: pravyy niz kazhdoy stranitsy ili pravaya kolonka ryadom s blokom materialov
- Chto mozhet byt zakodirovano: `video demonstratsii`, `skhema`, `vyderzhka iz normativa`, `FAQ-video`, `mini-razbor oshibki`
- Est li v etoy versii aktivnye QR: net
- Est li rezervnye QR-sloty bez ssylki: da, predusmotret na kazhdoy stranitse

## 0. Delivery profile dlya lektora

- Track auditorii: tekushchaya versiya `worker`, s zalozhennym perekhodom k `ITR` i `mixed`
- Tselevoi format provedenia: `Short / Standard / Deep`
- Rezhim: `with-test / no-test`
- Delivery mode: `instructor-led`, s rezervom pod `blended`
- Chto obyazatelno ne poteryat pri etom profile: logiku dopuska, stop-resheniya, bezopasnyy start montazha, proverku pered ekspluatatsiey i granitsy kursa po konkretnoy sisteme lesov

## 0a. Teaching paths po auditorii

| Auditoriya | Na chem delat glavniy aktsent | Chto ne peregruzhat | Kakie voprosy veroyatny |
|---|---|---|---|
| Worker | chto delat, chego ne delat, kogda ostanovit rabotu | sukhie normativnye formulirovki i uzkuyu tekhnicheskuyu terminologiyu bez vizuala | `mozhno li nachat`, `mozhno li ispolzovat etot element`, `kto reshaet ostanovit` |
| ITR | organizatsiya rabot, dopusk, kontrol, raspredelenie otvetstvennosti, stop-resheniya | slishkom dlinnye povtory worker-logiki bez dobavleniya upravlencheskogo sloya | `kto otvechaet`, `kakie dokumenty proverit`, `kogda blokirovat raboty`, `kak rassudit spornuyu situatsiyu` |
| Mixed | skvoznaya logika bezopasnosti + razdelenie resheniy po rolyam | spetsialnye detali tolko dlya odnoy gruppy, esli oni ne pomecheny kak otdelnyy kommentarij | `kto chto reshaet`, `kak vzaimosvyazany rabochie i ITR`, `chto delat pri raznoglasii` |

## 1. Pasport kursa

- Dlya kogo kurs: dlya montazhnikov stroitelnykh lesov, auditoriya `novichok / bazovyy uroven`; mozhet byt adaptirovan dlya `ITR`
- Chto obyazatelno ponyat lektoru: kurs uchit ne "sbirat konstruktsiyu voobshche", a prinimat bezopasnye resheniya pri sborke, proverke, ekspluatatsii i demontazhe lesov
- Chto kurs pokryvaet: dopusk, SIZ, ustroystvo lesov, podgotovku ploshchadki, priemku elementov, bazovuyu logiku montazha, ekspluatatsiyu, tipovye oshibki, demontazh, finalnyy test
- Chto kurs ne pokryvaet: ne zamenyaet pasport konkretnoy sistemy lesov, lokalnye reglamenty i instruktsii rabotodatelya
- Kakoy rezultat dolzhen byt u slushatelya: slushatel dolzhen raspoznavat risk, ponimat logiku ustoychivosti i ne dopuskat tipovye opasnye oshibki

## 2. Bystryy vkhod v professiyu

- Chem zanimaetsya spetsialist: gotovit mesto rabot, prinimaet i proveryaet elementy, sobiraet lesa po pravilnoy logike, proveryaet gotovnost k ekspluatatsii i bezopasno uchastvuet v demontazhe
- Iz kakikh tipovykh blokov sostoit rabota: dopusk -> SIZ -> ploshchadka -> elementi -> baza i pervyy yarus -> nabor vysoty -> proverka -> ekspluatatsiya -> demontazh
- Gde glavnye riski: rabota na vysote, neustoychivaya osnova, otsutstvie svyazey ili krepleniy, povrezhdennye elementy, narushenie SIZ i dopuska
- Kakie oshibki samye opasnye: nachat rabotu bez proverki usloviy, dopustit v sborku neispravnye elementy, narastit skhemu bez zhestkosti i krepleniy, schitat demontazh "obratnoy sborkoy"
- Chto lektoru nado ponyat pered pervym zanyatiem: u kursa silnaya TB-logika; esli lektor ne praktik po lesam, emu nuzhno minimum prochitat normativnuyu bazu i ponyat skvoznuyu logiku riskov

## 3. Normativnyy minimum

| Dokument | Zachem nuzhen lektoru | Chto iz nego obyazatelno znat | Gde v kurse ispolzuetsya |
|---|---|---|---|
| `782n` | bazovyy dokument po rabote na vysote | dopusk, organizatsiya rabot, bazovye zaprety i trebovaniya bezopasnosti | moduli `02`, `04`, `07`, `09` |
| `883n` | stroitelnyy kontekst | obshchie trebovaniya bezopasnosti pri stroitelno-montazhnykh rabotakh | moduli `01`, `04`, `05`, `09` |
| `2464` | metodika obucheniya i proverki znaniy | kak opravdat obuchenie, instruktag i finalnyy blok voprosov | modul `11`, logika testa |
| `GOST 27321-2018` | tekhnicheskaya logika lesov | osnovnye elementi, terminologiya, obshchie tekhnicheskie trebovaniya | moduli `03`, `05`, `06` |
| `GOST R 58752-2019` | obshchie trebovaniya k sredstvam podmashchivaniya | klassifikatsiya i logika bezopasnoy ekspluatatsii | moduli `03`, `07`, `09` |
| `766n` | logika obespecheniya SIZ | chto SIZ eto ne formalnost, a uslovie dopuska | modul `02` |
| `TR TS 019/2011` | dopustimost i markirovka SIZ | kak obyasnit, chto SIZ dolzhny byt ne tolko vydany, no i sootvetstvovat trebovaniyam | modul `02` |

## 4. Stsenariy zanyatiya

| Blok | O chem govorit lektor | Na chto sdelat aktsent | Interaktiv / vopros gruppe | Primechanie |
|---|---|---|---|---|
| Vvedenie | zachem kurs i pochemu tema vysokoriskovaya | kurs pro bezopasnye resheniya, a ne pro "sdelat kak-nibud" | sprosite, gde po mneniyu gruppy nachinaetsya bezopasnost: s montazha ili ran'she | ne ukhodyt srazu v uzkuyu tekhniku |
| Dopusk i SIZ | kto i pri kakikh usloviyakh mozhet nachat rabotu | dopusk, SIZ, usloviya ploshchadki | poprosite gruppu nazvat minimum proverok do starta | eto odin iz glavnykh metodicheskikh blokov |
| Ustroystvo lesov | iz chego sostoyat lesa i pochemu derzhatsya | sistema, a ne odin element; geometriya, svyazi, krepleniya | predlozhite opisat rol stoek, svyazey i nastilov | bez vizualov modul bystro stanet abstraktnym |
| Ploshchadka i priemka | kak ne pustit oshibku v kurs eshche do sborki | osnova, risk-zony, povrezhdennye elementy | pokazhite primer `godno / ne godno` | vazhno svyazat s realnymi riskami |
| Start montazha | kak ne slomat skhemu v samom nachale | opory, geometriya, pervye svyazi i poryadok sborki | zadayte vopros, chto opasnee: toroplivost ili odin propushchennyy kontrol | eto tochka, gde auditoriya lyubit "uskorit" logiku |
| Nabor vysoty | kak rastet risk pri narashchivanii skhemy | zhestkost, krepleniya, nastily, zashchita, dostup | predlozhite nayti red flags na skheme ili foto | tut nuzhna samaya spokoynaya i tochnaya podacha |
| Proverka i ekspluatatsiya | pochemu sobrat ne ravno dopustit k rabote | cheklist proverki, zapret ekspluatatsii, nagruzka i marshruty | zadayte situatsionnyy vopros `mozhno li uzhe rabotat` | v kontse ne peregruzhat normativami |

## 5. Tayming

| Versiya | Vremya | Primechanie |
|---|---|---|
| Short | `45-60 min` | tolko `core`, minimum razborov i korotkiy test ili versiya `no-test` |
| Standard | `75-100 min` | osnovnaya rabochaya versiya dlya tipovogo zanyatiya |
| Deep | `110-150 min` | polnyy prokhod s razborami, vizualami i finalnym blokom `15-30` voprosov |

## 5a. Coverage control

- Aktualnyy diapazon `slide script`: `01-43`, moduli `01-07`
- Pokryto v etoy versii guide: `01-43`
- Est li slaydy bez lektorskikh notes: net
- Reshenie po pokrytiyu: `full`

## 6. Poslaydovye poyasneniya

| Slayd | Glavnaya mysl | Chto skazat obyazatelno | Tipichnyy vopros ili risk | QR-slot |
|---|---|---|---|---|
| 01 | kurs pro bezopasnuyu rabotu s lesami | eto ne pasport sistemy, a baza dlya pravilnykh resheniy | risk: slushatel mozhet vosprinyat kurs kak `obshchie slova` | `QR-01 reserved` |
| 02 | kurs uchit prinimat resheniya, a ne zubrit terminy | oboznachte marshrut kursa ot dopuska do demontazha | vopros: `budut li tochnye skhemy?` | `QR-02 reserved` |
| 03 | ne vse resheniya montazhnik prinimaet sam | pokazhite granitsy polnomochiy i logiku eskalatsii | risk: auditoriya mozhet putat otvetstvennost brigady i rukovoditelya | `QR-03 reserved` |
| 04 | raboty nachinayutsya s dopuska, a ne s instrumenta | svyazhite slayd s `782n` i proverkoy usloviy | vopros: `mozhno li nachat, esli brigada uzhe na meste?` | `QR-04 reserved` |
| 05 | est obyazatelnyy minimum proverok | dayte zapominaemyy cheklist pered startom | risk: popytka rasshirit cheklist do beskonechnosti | `QR-05 reserved` |
| 06 | SIZ dolzhny byt prigodny k rabote | ne tolko vydacha, no i fakticheskaya gotovnost | vopros: `kakie imenno SIZ obyazatelny?` | `QR-06 reserved` |
| 07 | ekipirovka mozhet vygljadet formalno pravilnoy, no byt opasnoy | predlozhite nayti oshibki glazami slushateley | risk: skatit'sya v poverkhnostnyy razbor bez kriteriev | `QR-07 reserved` |
| 08 | dopusk otsenivaetsya kompleksno | razberite keys `mozhno li nachat seychas?` | vopros: `kto prinimaet finalnoe reshenie?` | `QR-08 reserved` |
| 09 | lesa derzhatsya na sisteme | pokazhite, pochemu nelzya smotret na uzel v otryve | risk: auditoriya zahochet srazu `pravilnyy uzel` bez bazy | `QR-09 reserved` |
| 10 | u kazhdoy gruppy elementov svoya funktsiya | fokus na roli elementov, a ne na sukhom spiske terminov | vopros: `chto samoe kritichnoe dlya ustoychivosti?` | `QR-10 reserved` |
| 11 | ustoychivost = osnova + geometriya + kreplenie | eto opornaya formula vsego dalneyshego kursa | risk: perevesti v slishkom tekhnicheskiy yazyk | `QR-11 reserved` |
| 12 | propusk elementa lomaet skhemu, a ne `meloch` | pokazhite kontrast `ustoychivo / opasno` | vopros: `kak bystro eto zametit na obekte?` | `QR-12 reserved` |
| 13 | raspoznavanie elementa = ponimanie ego funktsii | ispolzuyte kak mini-praktiku | risk: prevratit v ugadayku bez obyasneniya | `QR-13 reserved` |
| 14 | ploshchadka tozhe stroit bezopasnost | svyazhite sostoyanie mesta s kachestvom budushchey skhemy | vopros: `kakie risk-zony smotret pervymi?` | `QR-14 reserved` |
| 15 | pered sborkoy est cheklist po ploshchadke | nado proverit osnovanie, podkhody, opasnuyu zonu | risk: auditoriya nedootsenivaet etap podgotovki mesta | `QR-15 reserved` |
| 16 | ploshchadka mozhet byt gotova ili ne gotova eshche do montazha | razberite `gotovo / ne gotovo` na konkretnykh priznakakh | vopros: `kakie defekty kritichny?` | `QR-16 reserved` |
| 17 | povrezhdennye ili spornye elementy nelzya puskat v sborku | podcherknite logiku priemki, a ne `doterpim` | risk: auditoriya privykaet k kompromissam po sostoyaniyu elementov | `QR-17 reserved` |
| 18 | spornyy element = povod ostanovit reshenie i proverit | ispolzuyte mini-keys po priemke | vopros: `kto reshaet, goden li element?` | `QR-18 reserved` |
| 19 | ploshchadka i elementy gotovy -> mozhno perekhodit k montazhu | svyazhite modul s dalsheyshey logikoy sborki | risk: zakryt modul bez chetkogo perekhoda | `QR-19 reserved` |
| 20 | bezopasnyy montazh nachinaetsya s pravilnoy bazy | podvedite k tomu, chto posle proverok rabota tolko nachinaetsya | risk: auditoriya zahochet pereskocit k vysote, ne zakrepiv start | `QR-20 reserved` |
| 21 | baza dolzhna byt ne prosto postavlena, a vyverena | govorite o printsipe opory i geometrii, bez imitatsii pasporta sistemy | vopros: `a kak imenno eto delaetsya na nashey sisteme?` | `QR-21 reserved` |
| 22 | poryadok sborki vazhen ne menshe elementov | zakrepit, chto pervyy yarus ne sobiraetsya `kak udobno` | risk: normalizovat improvizatsiyu brigady | `QR-22 reserved` |
| 23 | pervye svyazi i kontrol geometrii obyazatelny | dazhe `stoit` ne ravno `sobrano bezopasno` | vopros: `mozhno li ukrepit pozhe?` | `QR-23 reserved` |
| 24 | opasnyy start vidno po perekosu i propuskam | dayte gruppe samostoyatelno nayti otlichiya | risk: skatit'sya v bystryy otvet bez razbora priznaka | `QR-24 reserved` |
| 25 | start mozhno zablokirovat dazhe pri gotovoy ploshchadke | poka logika sborki narushena, prodolzhat nelzya | vopros: `kto dolzhen ostanovit?` | `QR-25 reserved` |
| 26 | vysota dobavlyaetsya tolko vmeste s kontrolom | ne dayte vosprinyat nabor yarusov kak prostuyu dostavku detaley vverkh | risk: auditoriya nedootsenivaet narashchivanie riska | `QR-26 reserved` |
| 27 | sleduyushchiy yarus sobiraetsya v upravlyaemoy posledovatelnosti | nedostroennyy yarus ne yavlyaetsya bezopasnoy pozitsiey | vopros: `mozhno li bystro dorabotat na khodu?` | `QR-27 reserved` |
| 28 | rabochaya ploshchadka dolzhna byt gotova do raboty | nepolnyy nastil = pryamoy risk padeniya | risk: svesti razbor k odnomu faktu nalichiya nastila | `QR-28 reserved` |
| 29 | ograzhdenie i bortovaya zashchita eto uslovie ekspluatatsii | zashchita vklyuchaetsya v gotovnost yarusa, a ne dobavlyaetsya potom | vopros: `mozhno li rabotat poka ne dostavili bortovye elementy?` | `QR-29 reserved` |
| 30 | bezopasnyy dostup tak zhe vazhen, kak sborka yarusa | `dobratsya kak poluchitsya` ne mozhet byt normoy | risk: auditoriya mozhet vosprinyat eto kak vtorostepennuyu meloch | `QR-30 reserved` |
| 31 | krepleniya i svyazi derzhat vsyu logiku skhemy | derzhite fokus na funktsii, a ne na chrezmernykh tekhnicheskikh detalyakh | vopros: `kakoe kreplenie samoe glavnoe?` | `QR-31 reserved` |
| 32 | dazhe sobrannaya skhema mozhet rabotat opasno | peregruzka i nesbalansirovannaya ukladka tozhe razrushayut bezopasnost | risk: slushateli budut zhdat tochnye chisla bez pasporta sistemy | `QR-32 reserved` |
| 33 | opasnuyu skhemu nado ostanovit do intsidenta | poprosite nayti red flags bez podskazki | risk: prevratit slayd v prostoe sravnenie bez povedencheskogo vyvoda | `QR-33 reserved` |
| 34 | argument `my skoro zakonchim` ne otmenyaet risk | vyvedite gruppu na reshenie `ostanovit / eskalirovat` | vopros: `kogda ostanovka obyazatelna?` | `QR-34 reserved` |
| 35 | gotovnost yarusa = sistema proverok | rastet ne tolko vysota, no i trebovanie k kontrolyu | risk: poteryat most k proverke pered ekspluatatsiey | `QR-35 reserved` |
| 36 | sobral ne znachit dopustil k rabote | mezhdu montazhom i ekspluatatsiey est obyazatelnyy etap proverki | vopros: `raz uje sobrano, pochemu nelzya rabotat?` | `QR-36 reserved` |
| 37 | dopusk k ekspluatatsii delaetsya po cheklistu | ne razduvayte minimum v neobrabatyvaemyy reglament | risk: slushateli popytayutsya zamenit proverku `obshchim vpechatleniem` | `QR-37 reserved` |
| 38 | est osnovaniya dlya zapreta ekspluatatsii | esli zashchita, dostup, nastil ili uzly vyzyvayut voprosy, rabota blokiruetsya | vopros: `a esli sroki goryat?` | `QR-38 reserved` |
| 39 | ekspluatatsiya lomaetsya tam, gde ne kontroliruyut nagruzku | derzhite fokus na povedencheskom printsipe, ne na tochnykh tsifrakh | risk: slushateli popytayutsya izvlech `dopustimye chisla` bez opory na sistemu | `QR-39 reserved` |
| 40 | bystryy put ne raven bezopasnomu puti | distsiplina peremeshcheniya eto chast ekspluatatsii | risk: rassmatrivat marshrut kak lichnoe udobstvo, a ne uslovie TB | `QR-40 reserved` |
| 41 | risk padeniya predmetov kasayetsya i niza, i verkha | poryadok raboty s instrumentom i materialami eto chast bezopasnosti | vopros: `chto delat s opasnoy zonoy vnizu?` | `QR-41 reserved` |
| 42 | ekspluatatsiya trebuet otsenki resheniya, a ne avtomatizma | odna kriticheskaya i 1-2 pogranichnykh usloviya dayut khoroshiy razbor | risk: auditoriya mozhet tratit slishkom mnogo vremeni na spor bez kriteriev | `QR-42 reserved` |
| 43 | ekspluatatsiya eto upravlyaemaya distsiplina | proverka, dopusk, nagruzka, marshruty i stop pri riskakh dolzhny byt svyazany v odin algoritm | risk: zakryt modul bez chetkogo vyvoda `chto delat na obekte` | `QR-43 reserved` |

## 7. FAQ dlya lektora

| Vopros | Korotkiy otvet | Rasshirennyy otvet | Kogda nuzhna ogovorka |
|---|---|---|---|
| Mozhno li po etomu kursu sobrat lyubye lesa? | net, eto obshchaya baza | kurs dayot logiku i trebovaniya bezopasnosti, no konkretnaya sistema trebuet pasporta i instruktsii proizvoditelya | vsegda |
| Kto reshaet, mozhno li nachat rabotu? | ne odin montazhnik | dopusk svyazan s usloviyami raboty, instruktagom, SIZ i organizatsiey rabot | esli sprashivayut pro lokalnyy poryadok |
| Kakie SIZ obyazatelny? | zavisit ot usloviy, no printsip obyazatelen | vydacha i prigodnost SIZ dolzhny sootvetstvovat trebovaniyam i lokalnym normam | esli net konkretnogo komplekta zakazchika |
| Chto samoe opasnoe v sborke lesov? | narushenie logiki ustoychivosti | osnova, geometriya, svyazi i kreplenie rabotayut kak sistema | nikogda ne obeshchat universalnyy odin faktor |
| Mozhno li ispolzovat povrezhdennyy element, esli `eshche derzhit`? | net | spornye i povrezhdennye elementy ne dolzhny popadat v sborku bez proverki i resheniya po reglamentu | vsegda |
| Demontazh proshche montazha? | net | demontazh imeet sobstvennye riski i trebuet logiki bezopasnogo poryadka | vsegda |
| Mozhno li vypustit versiyu bez testa? | da | lektsionnyy potok i blok voprosov razdelyayutsya, no coverage `core` dolzhen sokhranyat'sya | pri release `no-test` |

## 7a. Slozhnye voprosy i granitsy

- Nazvanie svyazannogo fayla ili banka voprosov: `12_lecturer_questions_bank_v0.1.md`
- Est li otdelnye worker-voprosy: da
- Est li otdelnye ITR-voprosy: da, kak starter contour dlya budushchey adaptatsii
- Est li voprosy, gde nuzhen pasport konkretnoy sistemy ili lokalnyy reglament: da, po krepleniyam, dopustimym rezhimam ekspluatatsii i lokalnomu poryadku dopuska

## 8. Video i materialy dlya podgotovki

| ID | Tip | Chto posmotret ili prochitat | Zachem eto nuzhno | QR-slot |
|---|---|---|---|---|
| M-01 | document | `782n` | ponyat bazovuyu logiku raboty na vysote i organizatsii bezopasnosti | `QR-M01 reserved` |
| M-02 | document | `883n` | uvyazat kurs s obshchim stroitelnym kontekstom | `QR-M02 reserved` |
| M-03 | document | `2464` | korrektno obyasnit logiku obucheniya i proverki znaniy | `QR-M03 reserved` |
| M-04 | document | `GOST 27321-2018` | razobrat bazovye elementy i logiku lesov | `QR-M04 reserved` |
| M-05 | document | `GOST R 58752-2019` | podkrepit blok po sredstvam podmashchivaniya i ekspluatatsii | `QR-M05 reserved` |
| M-06 | video | video sborki konkretnoy sistemy lesov, kogda poyavitsya | uskorit ponimanie logiki montazha i perekhodov mezhdu yarusami | `QR-M06 reserved` |
| M-07 | video | video s tipovymi oshibkami po SIZ i ploshchadke, kogda poyavitsya | dat lektoru vizualnye primery dlya razbora | `QR-M07 reserved` |

## 9. Cheklist podgotovki lektora

- Prochten pasport kursa i ponyaty granitsy kursa
- Prochitan normativnyy minimum `782n`, `883n`, `2464`
- Povereny opornye tekhnicheskie dokumenty po lesam i SIZ
- Ponyata logika moduley `01-07`
- Prochteny poslaydovye poyasneniya po slaydam `01-43`
- Otkryty FAQ i otdelnyy `lecturer questions bank`
- Otsenon tayming pod nuzhnuyu versiyu `Short / Standard / Deep`
- Povereno, est li versiya `with-test` ili `no-test`
- Povereno, gde v budushchem budut stoyat QR-kody i ne konfliktuyut li oni s maketom
- Esli tema novaya dlya lektora, zaplanirovano dopolnitelnoe izuchenie video i pasporta konkretnoy sistemy lesov

## Reshenie po gotovnosti

- Instructor guide gotov k eksportu v `PDF`: `yes`, kak rabochiy draft
- Pokrytie `slide script` polnoe: `yes`, dlya tekushchey versii `01-43`
- Chto nado dosobrat:
  - dobavit realnye video i aktivnye QR-ssylki;
  - utochnit blok po konkretnoy sisteme lesov posle polucheniya pasporta i ekspertnoy validatsii;
  - razvernut otdelnyy ITR-scenariy, kogda budet sobran rasshirennyy organizatsionnyy modul.
