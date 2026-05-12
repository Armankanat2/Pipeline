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

## 1. Pasport kursa

- Dlya kogo kurs: dlya montazhnikov stroitelnykh lesov, auditoriya `novichok / bazovyy uroven`
- Chto obyazatelno ponyat lektoru: kurs uchit ne "sbirat konstruktsiyu voobshche", a prinimat bezopasnye resheniya pri sborke, proverke, ekspluatatsii i demontazhe lesov
- Chto kurs pokryvaet: dopusk, SIZ, ustroystvo lesov, podgotovku ploshchadki, priemku elementov, bazovuyu logiku montazha, ekspluatatsiyu, tipovye oshibki, demontazh, finalnyy test
- Chto kurs ne pokryvaet: ne zamenyaet pasport konkretnoy sistemy lesov, lokalnye reglamenty i instruktsii rabotodatelya
- Kakoy rezultat dolzhen byt u slushatelya: slushatel dolzhen raspoznavat risk, ponimat logiku ustoychivosti i ne dopuskat tipovye opasnye oshibki

## 2. Bystryy vkhod v professiyu

- Chem zanimaetsya spetsialist: gotovit mesto rabot, prinimaet i proveryaet elementi, sobiraet lesa po pravilnoy logike, proveryaet gotovnost k ekspluatatsii i bezopasno uchastvuet v demontazhe
- Iz kakikh tipovykh blokov sostoit rabota: dopusk -> SIZ -> ploshchadka -> elementi -> baza i pervyy yarus -> nabor vysoty -> proverka -> ekspluatatsiya -> demontazh
- Gde glavnye riski: rabota na vysote, neustoychivaya osnova, otsutstvie svyazey ili krepleniy, povrezhdennye elementi, narushenie SIZ i dopuska
- Kakie oshibki samye opasnye: nachat rabotu bez proverki usloviy, dopustit v sborku neispravnye elementi, narastit skhemu bez zhestkosti i krepleniy, schitat demontazh "obratnoy sborkoy"
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
| Ploshchadka i priemka | kak ne pustit oshibku v kurs eshche do sborki | osnova, risk-zony, povrezhdennye elementi | pokazhite primer "godno / ne godno" | vazhno svyazat s realnymi riskami |
| Montazh i ekspluatatsiya | kak ne polomat logiku ustoychivosti pri narashchivanii | poryadok, zhestkost, krepleniya, proverka pered ekspluatatsiey | zadayte situatsionnyy vopros "chto opasnee vsego propustit?" | tut nuzhna samaya spokoynaya i tochnaya podacha |
| Oshivki, demontazh i test | kak raspoznat opasnye otkloneniya i zakrepit kurs | ne schitat demontazh prostym "obratnym khodom" | razobrat 2-3 tipovykh keisa | v kontse ne peregruzhat normativami |

## 5. Tayming

| Versiya | Vremya | Primechanie |
|---|---|---|
| Short | `45-60 min` | tolko `core`, minimum razborov i korotkiy test ili versiya `no-test` |
| Standard | `75-100 min` | osnovnaya rabochaya versiya dlya tipovogo zanyatiya |
| Deep | `110-150 min` | polnyy prokhod s razborami, vizualami i finalnym blokom `15-30` voprosov |

## 6. Poslaydovye poyasneniya

| Slayd | Glavnaya mysl | Chto skazat obyazatelno | Tipichnyy vopros ili risk | QR-slot |
|---|---|---|---|---|
| 01 | kurs pro bezopasnuyu rabotu s lesami | eto ne pasport sistemy, a baza dlya pravilnykh resheniy | risk: slushatel mozhet vosprinyat kurs kak "obshchie slova" | `QR-01 reserved` |
| 02 | kurs uchit prinimat resheniya, a ne zubrit terminy | oboznachte marshrut kursa ot dopuska do demontazha | vopros: "budut li tochnye skhemy?" | `QR-02 reserved` |
| 03 | ne vse resheniya montazhnik prinimaet sam | pokazhite granitsy polnomochiy i logiku eskalatsii | risk: auditoriya mozhet putat otvetstvennost brigady i rukovoditelya | `QR-03 reserved` |
| 04 | raboty nachinayutsya s dopuska, a ne s instrumenta | svyazhite slayd s `782n` i proverkoy usloviy | vopros: "mozhno li nachat, esli brigada uzhe na meste?" | `QR-04 reserved` |
| 05 | est obyazatelnyy minimum proverok | dayte zapominaemyy cheklist pered startom | risk: popytka rasshirit cheklist do beskonechnosti | `QR-05 reserved` |
| 06 | SIZ dolzhny byt prigodny k rabote | ne tolko vydacha, no i fakticheskaya gotovnost | vopros: "kakie imenno SIZ obyazatelny?" | `QR-06 reserved` |
| 07 | ekipirovka mozhet vygljadet formalno pravilnoy, no byt opasnoy | predlozhite nayti oshibki glazami slushateley | risk: skatit'sya v poverkhnostnyy razbor bez kriteriev | `QR-07 reserved` |
| 08 | dopusk otsenivaetsya kompleksno | razberite keys "mozhno li nachat seychas?" | vopros: "kto prinimaet finalnoe reshenie?" | `QR-08 reserved` |
| 09 | lesa derzhatsya na sisteme | pokazhite, pochemu nelzya smotret na uzel v otryve | risk: auditoriya zahochet srazu "pravilnyy uzel" bez bazy | `QR-09 reserved` |
| 10 | u kazhdoy gruppy elementov svoya funktsiya | fokus na roli elementov, a ne na sukhom spiske terminov | vopros: "chto samoe kritichnoe dlya ustoychivosti?" | `QR-10 reserved` |
| 11 | ustoychivost = osnova + geometriya + kreplenie | eto opornaya formula vsego dalneyshego kursa | risk: perevesti v slishkom tekhnicheskiy yazyk | `QR-11 reserved` |
| 12 | propusk elementa lomayet skhemu, a ne "meloch" | pokazhite kontrast `ustoychivo / opasno` | vopros: "kak bystro eto zametit na obekte?" | `QR-12 reserved` |
| 13 | raspoznavanie elementa = ponimanie ego funktsii | ispolzuyte kak mini-praktiku | risk: prevratit v ugadayku bez obyasneniya | `QR-13 reserved` |
| 14 | ploshchadka tozhe stroit bezopasnost | svyazhite sostoyanie mesta s kachestvom budushchey skhemy | vopros: "kakie risk-zony smotret pervymi?" | `QR-14 reserved` |
| 15 | pered sborkoy est cheklist po ploshchadke | nado proverit osnovanie, podkhody, opasnuyu zonu | risk: auditoriya nedootsenivaet etap podgotovki mesta | `QR-15 reserved` |
| 16 | ploshchadka mozhet byt gotova ili ne gotova eshche do montazha | razberite `gotovo / ne gotovo` na konkretnykh priznakakh | vopros: "kakie defekty kritichny?" | `QR-16 reserved` |
| 17 | povrezhdennye ili spornye elementi nelzya puskat v sborku | podcherknite logiku priemki, a ne "doterpim" | risk: auditoriya privykaet k kompromissam po sostoyaniyu elementov | `QR-17 reserved` |
| 18 | spornyy element = povod ostanovit reshenie i proverit | ispolzuyte mini-keys po priemke | vopros: "kto reshaet, goden li element?" | `QR-18 reserved` |
| 19 | ploshchadka i elementi gotovy -> mozhno perekhodit k montazhu | svyazhite modul s dalsheyshey logikoy sborki | risk: zakryt modul bez chetkogo perekhoda | `QR-19 reserved` |

## 7. FAQ dlya lektora

| Vopros | Korotkiy otvet | Rasshirennyy otvet | Kogda nuzhna ogovorka |
|---|---|---|---|
| Mozhno li po etomu kursu sobrat lyubye lesa? | net, eto obshchaya baza | kurs dayot logiku i trebovaniya bezopasnosti, no konkretnaya sistema trebuet pasporta i instruktsii proizvoditelya | vsegda |
| Kto reshaet, mozhno li nachat rabotu? | ne odin montazhnik | dopusk svyazan s usloviyami raboty, instruktagom, SIZ i organizatsiey rabot | esli sprashivayut pro lokalnyy poryadok |
| Kakie SIZ obyazatelny? | zavisit ot usloviy, no printsip obyazatelen | vydacha i prigodnost SIZ dolzhny sootvetstvovat trebovaniyam i lokalnym normam | esli net konkretnogo komplekta zakazchika |
| Chto samoe opasnoe v sborke lesov? | narushenie logiki ustoychivosti | osnova, geometriya, svyazi i kreplenie rabotayut kak sistema | nikogda ne obeshchat universalnyy odin faktor |
| Mozhno li ispolzovat povrezhdennyy element, esli "eshche derzhit"? | net | spornye i povrezhdennye elementi ne dolzhny popadat v sborku bez proverki i resheniya po reglamentu | vsegda |
| Demontazh proshche montazha? | net | demontazh imeet sobstvennye riski i trebuet logiki bezopasnogo poryadka | vsegda |
| Mozhno li vypustit versiyu bez testa? | da | lektsionnyy potok i blok voprosov razdelyayutsya, no coverage `core` dolzhen sokhranyat'sya | pri release `no-test` |

## 8. Video i materialy dlya podgotovki

| ID | Tip | Chto posmotret ili prochitat | Zachem eto nuzhno | QR-slot |
|---|---|---|---|---|
| M-01 | document | `782n` | ponyat bazovuyu logiku raboty na vysote i organizatsii bezopasnosti | `QR-M01 reserved` |
| M-02 | document | `883n` | uvyazat kurs s obshchim stroitel'nym kontekstom | `QR-M02 reserved` |
| M-03 | document | `2464` | korrektno obyasnit logiku obucheniya i proverki znaniy | `QR-M03 reserved` |
| M-04 | document | `GOST 27321-2018` | razobrat bazovye elementi i logiku lesov | `QR-M04 reserved` |
| M-05 | document | `GOST R 58752-2019` | podkrepit blok po sredstvam podmashchivaniya i ekspluatatsii | `QR-M05 reserved` |
| M-06 | video | video sborki konkretnoi sistemy lesov, kogda poyavitsya | uskorit ponimanie logiki montazha i perekhodov mezhdu yarusami | `QR-M06 reserved` |
| M-07 | video | video s tipovymi oshibkami po SIZ i ploshchadke, kogda poyavitsya | dat lektoru vizualnye primery dlya razbora | `QR-M07 reserved` |

## 9. Cheklist podgotovki lektora

- Prochten pasport kursa i ponyaty granitsy kursa
- Prochitan normativnyy minimum `782n`, `883n`, `2464`
- Povereny opornye tekhnicheskie dokumenty po lesam i SIZ
- Ponyata logika moduley `01-11`
- Prochteny poslaydovye poyasneniya minimum po tekushchey versii script
- Podgotovleny otvety na FAQ
- Otsenon tayming pod nuzhnuyu versiyu `Short / Standard / Deep`
- Povereno, est li versiya `with-test` ili `no-test`
- Povereno, gde v budushchem budut stoyat QR-kody i ne konfliktuyut li oni s maketom
- Esli tema novaya dlya lektora, zaplanirovano dopolnitelnoe izuchenie video i pasporta konkretnoy sistemy lesov

## Reshenie po gotovnosti

- Instructor guide gotov k eksportu v `PDF`: `yes`, kak rabochiy draft
- Chto nado dosobrat:
  - prodolzhit poslaydovye poyasneniya posle rasshireniya script na moduli `05-11`;
  - dobavit realnye video i aktivnye QR-ssylki;
  - utochnit blok po konkretnoy sisteme lesov posle polucheniya pasporta i ekspertnoy validatsii.
