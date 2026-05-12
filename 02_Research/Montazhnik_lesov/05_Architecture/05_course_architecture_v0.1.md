# Course Architecture

## Obshchaya informatsiya

- Nazvanie kursa: `Montazhnik lesov`
- Kod kursa: `ML`
- Format kursa: `Deep`
- Tselevoy obem: `110-120 slaydov`
- Owner: vy

## Struktura kursa

| Modul | Tsel modulia | Klyuchevye temy | Svazannye outcomes | Otsenka nagruzki | Primechanie |
|---|---|---|---|---|---|
| 01. Vvedenie v kurs i granitsy otvetstvennosti | Zadaty kontekst kursa, obyasnit rol montazhnika lesov i granitsy bezopasnoy raboty | tsel kursa, risk rabot na vysote, chto vkhodit v rol, kogda nuzhno ostanovit raboty i eskalirovat | `LO-01`, `LO-13` | short | Startovyy modul, 4-6 slaydov |
| 02. Dopusk, SIZ i bazovye pravila TB | Sformirovat bazovuyu ramku bezopasnosti pered montazhom i ekspluatatsiey | dopusk, instrukta zh, obuchenie, bazovye SIZ, nedopustimye usloviya raboty | `LO-01`, `LO-02`, `LO-13` | medium | Odin iz klyuchevykh moduley; nuzhny prostye keysy i foto po SIZ |
| 03. Ustroystvo lesov: elementi i logika ustoychivosti | Dati slushatelyu ponimanie, iz chego sostoyat lesa i pochemu konstruktsiya derzhitsya | osnovnye elementi, uzly, funktsii elementov, svyazi, krepleniya, obshchaya logika ustoychivosti | `LO-03`, `LO-08` | medium | Nuzhny skhemy i podpisannye vizualy; bez etogo modul budet slishkom abstraktnym |
| 04. Podgotovka ploshchadki i priemka elementov | Nauchit otsenivat gotovnost mesta rabot i ne dopuskat v sborku problemnye komponenty | osnovanie, opasnaya zona, podkhody, proverka elementov, nekomplekt, povrezhdeniya | `LO-04`, `LO-05` | medium | Khorosho podkhodit dlya foto-sravneniy `mozhno / nelzya` |
| 05. Start montazha: baza i pervyy yarus | Pokazat bezopasnuyu logiku nachala sborki bez propuska kritichnykh shagov | opory, poryadok sborki, geometriya, pervye svyazi, tipovye oshibki na starte | `LO-06`, `LO-08` | medium | Logichnyy perekhod k poshagovomu script |
| 06. Nabor vysoty, kreplenie i zhestkost skhemy | Obyasnit, kak narashchivat konstruktsiyu bez poteri ustoychivosti | nabor yarusov, nastily, ograzhdeniya, lestnitsy, skhema krepleniy, risk peregruzki i perekosa | `LO-07`, `LO-08` | heavy | Odin iz samykh obemnykh moduley; veroyaten bolshoy obem vizualov i situatsiy |
| 07. Proverka pered ekspluatatsiey i pravila raboty na lesakh | Perevesti sborku v stadiyu bezopasnoy ekspluatatsii | cheklist gotovnosti, osnovaniya dlya zapreta, dopustimye nagruzki, poryadok peremeshcheniya, zaprety v ekspluatatsii | `LO-09`, `LO-10` | heavy | Vazhno ne smeshat proverku i ekspluatatsiyu v odin "obshchiy" slayd; nuzhen chetkiy cheklist |
| 08. Tipovye oshibki i avariynye predposylki | Nauchit raspoznavat opasnye otkloneniya do intsidenta | oshibki montazha, ekspluatatsii i demontazha, priznaki opasnoy konstruktsii, kogda nuzhno ostanovit raboty | `LO-11`, `LO-13` | medium | Modul udobno sobirat na keysakh i foto-primerakh |
| 09. Bezopasnyy demontazh | Pokazat, chto demontazh trebuet otdelnoi logiki i ne yavlyaetsya "obratnoy sborkoy bez pravil" | poryadok demontazha, kontrol opasnoy zony, snyatie krepleniy, zapret na sbros elementov | `LO-12`, `LO-13` | medium | Nuzhny keysy po narusheniyam pri demontazhe |
| 10. Itogi i povtorenie | Sobrat klyuchevye pravila v kompaktnuyu sistemu pered proverkoy znaniy | povtor kluchevykh resheniy, cheklisty, tipovye "red flags" | `LO-01`-`LO-13` | short | Modul-perekhod k testu, 4-6 slaydov |
| 11. Test i razbor situatsiy | Proverit, kak slushatel prinimaet resheniya po TB, montazhu i ekspluatatsii | situatsionnye voprosy, vizualnye voprosy, razbor oshibok | `LO-01`-`LO-13` | heavy | Finalnyy blok v kontse prezentatsii, tselevoy obem `15-30` voprosov |

## Posledovatelnost moduley

1. Vvedenie v kurs i granitsy otvetstvennosti
2. Dopusk, SIZ i bazovye pravila TB
3. Ustroystvo lesov: elementi i logika ustoychivosti
4. Podgotovka ploshchadki i priemka elementov
5. Start montazha: baza i pervyy yarus
6. Nabor vysoty, kreplenie i zhestkost skhemy
7. Proverka pered ekspluatatsiey i pravila raboty na lesakh
8. Tipovye oshibki i avariynye predposylki
9. Bezopasnyy demontazh
10. Itogi i povtorenie
11. Test i razbor situatsiy

## Obyazatelnye bloki

- Vvedenie: modul `01`, gde fiksiruetsya rol, tsel kursa i granitsy samostoyatelnykh resheniy
- Bezopasnost: skvoznoy blok cherez moduli `02`, `04`, `06`, `07`, `08`, `09`
- Praktika / situatsii: obyazatelny v modulekh `02`, `04`, `06`, `07`, `08`, `09`, `11`
- Povtorenie: modul `10`
- Proverka: modul `11`
- Mozhno li otklyuchit blok voprosov bez peresborki osnovnogo potoka: da, modul `11` dolzhen ostavatsya otdelyaemym ot lektsionnogo kontura

## Logika raspredeleniya nagruzki

- `short`: 5-8 slaydov
- `medium`: 8-12 slaydov
- `heavy`: 12-18 slaydov

Razmery profiley:

- `Short` = do `60` slaydov + test
- `Standard` = `80-90` slaydov + test
- `Deep` = `110-120` slaydov + test

Pri takom raspredelenii kurs ukladyvaetsya v diapazon `110-120` slaydov, gde posledniy blok otdelen pod test i razbor situatsiy.

Yadro kursa dolzhno ostavat'sya stabilnym: pri perekhode mezhdu versiyami ili gruppami my ne peresobiraem logiku s nulya, a dobavlyaem dopolnitelnye razbory, foto-serii, keysy i rasshirennye kommentarii poverkh bazovogo worker-kontura.

## Otkrytye resheniya

- Chto nuzhno utochnit:
  - kakoy tip lesov budet bazovym dlya kursa;
  - nuzhen li otdelnyy mikroblok po dokumentalnomu oformleniyu dopuska;
  - nuzhno li vydelyat ekspluatatsiyu i proverku v dva samostoyatelnykh module pri rasshirenii kursa.
- Gde est risk peregruza:
  - v module `06`, esli popytatsya pokazat vse varianty uzlov bez privyazki k konkretnoy sisteme;
  - v module `07`, esli smeshat cheklist proverki i vse pravila ekspluatatsii bez strukturirovaniya;
  - v module `08`, esli dubliruyutsya oshibki, uzhe rassmotrennye ran'she.
- Kakie moduli mozhno sokratit ili obedinit:
  - moduli `01` i chast `02` mozhno kompaktirovat pri ochen korotkoy versii kursa;
  - moduli `08` i `10` mozhno chastichno obedinit v short-format kursa;
  - test mozhno vydelit v otdelnyy paket, esli kurs prokhodit ochno s ustnym razborom.

## Reshenie po gotovnosti

- Architecture gotova dlya `scriptwriting`: `yes`
- Kakie moduli nuzhno proverit pered script:
  - `03`, `06`, `07` i `09`, potomu chto oni silnee vsego zavisyat ot tipa lesov i nalichiya vizualov;
  - `02` i `08`, chtoby ne dopustit metodicheskogo dublazha po TB.
