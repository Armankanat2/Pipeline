# Source Register

## Obshchaya informatsiya

- Nazvanie kursa: `Montazhnik lesov`
- Kod kursa: `ML`
- Data sborki reestra: `2026-05-12`
- Owner: vy
- Etap: `02_Source_Audit`

## Reestr istochnikov

| ID | Tip istochnika | Nazvanie / opisanie | Status | Obyazatelnost | Nadyozhnost | Uroven istochnika | Gde ispolzuetsya | Legal review | Primechanie |
|---|---|---|---|---|---|---|---|---|---|
| S-01 | normativ | Prikaz Mintruda Rossii ot 16.11.2020 N 782n `Ob utverzhdenii Pravil po okhrane truda pri rabote na vysote` - https://publication.pravo.gov.ru/Document/View/0001202012160036 | review | required | high | official | TB, dopusk, rabota na vysote, organizatsiya rabot, SIZ | `_Control/Legal_Review_2026-05_v0.1.md` | Ofitsialno opublikovan `16.12.2020`; original'nyy istochnik podtverzhden, no aktual'nyy status ostavlen v review do official follow-up |
| S-02 | normativ | Prikaz Mintruda Rossii ot 11.12.2020 N 883n `Ob utverzhdenii Pravil po okhrane truda pri stroitelstve, rekonstruktsii i remonte` - https://publication.pravo.gov.ru/Document/View/0001202012240062 | active | required | high | official | stroitelnyy kontekst, montazh / demontazh, organizatsiya rabot na ploshchadke | not started | Ofitsialno opublikovan `24.12.2020`; vazhen dlya uvyazki kursa s obshchimi trebovaniyami v stroitelstve |
| S-03 | normativ | Postanovlenie Pravitelstva RF ot 24.12.2021 N 2464 `O poryadke obucheniya po okhrane truda i proverki znaniya trebovaniy okhrany truda` - https://publication.pravo.gov.ru/Document/View/0001202112290004 | active | required | high | official | trebovaniya k obucheniyu, instruktagu i proverke znaniy | not started | Ofitsialno opublikovano `29.12.2021`; nuzhno dlya metodiki obucheniya i testa |
| S-04 | standart | GOST 27321-2018 `Lesa stoechnye pristavnye dlya stroitelno-montazhnykh rabot. Tekhnicheskie usloviya` - https://docs.cntd.ru/document/1200160712 | active | required | medium | trusted mirror | uzly lesov, tekhnicheskie trebovaniya, terminologiya, ekspluatatsiya | not started | Rabochiy tekst udobno brat otsyuda; pri finalnoy validatsii proverit aktualnost po ukazatelyu Rosstandarta |
| S-05 | standart | GOST R 58752-2019 `Sredstva podmashchivaniya. Obshchie tekhnicheskie usloviya` - https://docs.cntd.ru/document/1200170178 | active | required | medium | trusted mirror | obshchie trebovaniya k sredstvam podmashchivaniya, klassifikatsiya, pasporta, zhurnaly ucheta | not started | Vazhno dlya obshchey logiki lesov i podmostey; tekst rabochiy, no nuzhna proverka statusa po ofitsialnomu ukazatelyu standartov |
| S-06 | standart | GOST 24258-88 `Sredstva podmashchivaniya. Obshchie tekhnicheskie usloviya` - https://docs.cntd.ru/document/9054710 | review | supporting | medium | trusted mirror | sopostavlenie so starymi pasportami, instruktsiyami i zhurnalami | not started | Polezen dlya raboty so starymi sistemami i dokumentami, no ne dolzhen byt edinstvennoy osnovoy kursa |
| S-07 | normativ | Prikaz Mintruda Rossii ot 29.10.2021 N 766n `Ob utverzhdenii Pravil obespecheniya rabotnikov sredstvami individualnoy zashchity i smyvayushchimi sredstvami` - https://publication.pravo.gov.ru/Document/View/0001202112290039 | active | required | high | official | logika obespecheniya SIZ, obyazannosti rabotodatelya | not started | Ofitsialno opublikovan `29.12.2021`; nuzhen dlya bloka po SIZ i rolyam rabotodatelya |
| S-08 | normativ | Prikaz Mintruda Rossii ot 29.10.2021 N 767n `Ob utverzhdenii Edinykh tipovykh norm vydachi sredstv individualnoy zashchity i smyvayushchikh sredstv` - https://publication.pravo.gov.ru/Document/View/0001202112290045 | active | supporting | high | official | utochnenie po vydache SIZ i sostavu komplektov | not started | Ofitsialno opublikovan `29.12.2021`; polezen dlya prakticheskikh primerov i lokalnykh norm vydachi |
| S-09 | reglament | TR TS 019/2011 `O bezopasnosti sredstv individualnoy zashchity` - https://docs.cntd.ru/document/902320567 | active | required | medium | trusted mirror | proverka sootvetstviya SIZ, markirovka, podtverzhdenie sootvetstviya | not started | Vazhno dlya proverki, kakie SIZ dopustimy k primeneniyu; rabochiy tekst s uchetom izmeneniy do `28.05.2019` |
| S-10 | instruktsiya proizvoditelya | Pasport i instruktsiya po sborke konkretnoi sistemy lesov, kotoraya ispolzuetsya na vashem obekte | missing | required | low | n/a | tochnaya posledovatelnost sborki, krepleniya, dopustimye nagruzki, nomenklatura elementov | n/a | Kriticheski vazhnyy gap: bez etogo kurs nelyzya delat slishkom predmetnym po tipu sistemy |
| S-11 | vnutrenniy reglament | Vnutrennie instruktsii, PPR, tekhkarty ili reglamenty rabotodatelya po montazhu / demontazhu lesov | missing | required | medium | n/a | lokalnyy poryadok dopuska, osmotra, hraneniya i ekspluatatsii | n/a | Nuzhno zaprosit u zakazchika ili sformirovat vmeste s ekspertom |
| S-12 | foto / video | Paket foto i video realnykh lesov: uzly, krepleniya, nastily, ograzhdeniya, nepravilnaya sborka, tipovye oshibki | missing | supporting | medium | n/a | vizualnaya baza dlya slaydov, testa i QA | n/a | Bez etogo kurs budet slishkom tekstovym i obobshchennym |
| S-13 | ekspert | Tekhnicheskaya validatsiya ot inzhenera, mastera ili spetsialista po okhrane truda, rabotayushchego s lesami | missing | required | medium | n/a | proverka korrektnosti job map, terminologyi, risk points i tipovykh oshibok | n/a | Eto ne zamenyaet normativy, no obyazatelno dlya prakticheskoy tochnosti kursa |

## Obyazatelnye istochniki

- Normativy po bezopasnosti: `782n`, `883n`, `2464`
- Tekhnicheskie trebovaniya k lesam i sredstvam podmashchivaniya: `GOST 27321-2018`, `GOST R 58752-2019`
- Trebovaniya k SIZ: `766n`, `TR TS 019/2011`
- Istochniki, kotorye eshche nado do sobrat: pasport konkretnoi sistemy lesov, vnutrennie reglamenty, ekspertnaya validatsiya

## Vspomogatelnye istochniki

- Dopolnitelnye normy po vydache SIZ: `767n`
- Legacy-istochnik dlya sopostavleniya so starymi sistemami: `GOST 24258-88`
- Foto, video i skhemy realnykh uzlov i tipovykh oshibok

## Specificity boundary

- Chto uzhe mozhno utverzhdat kak `generic-safe`:
  - bazovuyu logiku dopuska, SIZ, stop-signalov i eskalatsii;
  - printsip podgotovki ploshchadki, priemki elementov i proverki pered ekspluatatsiey;
  - obshchuyu logiku ustoychivosti, krepleniy i nedopustimosti opasnoy improvizatsii.
- Chto nelzya zhestko utverzhdat bez `S-10`, `S-11` i `S-13`:
  - tochnuyu posledovatelnost sborki imenno dlya konkretnoy sistemy lesov;
  - konkretnye skhemy krepleniya, shag krepleniy i dopustimye nagruzki;
  - lokalnyy poryadok dopuska, osmotra i ekspluatatsii, esli on zavisit ot reglamentov rabotodatelya.
- Kak eto vliyaet na course-core seychas:
  - moduli `03`, `06`, `07` i `09` mozhno delat kak `generic-safe core`;
  - vse system-specific formulirovki v etikh modulyakh nuzhno otkladyvat do polucheniya `S-10`, `S-11` i `S-13`.

## Gap analysis

- Chego ne khvataet:
  - konkretnogo pasporta / instruktsii po sisteme lesov, s kotoroy budet svyazan kurs;
  - vnutrennikh reglamentov rabotodatelya;
  - vizualnogo paketa dlya slaydov i testa;
  - ekspertnoy proverki po praktike montazha.
- Chto vyzyvaet somneniya:
  - bez pasporta konkretnoy sistemy nelzya zhestko fiksirovat shag krepleniy, nagruzki i varianty uzlov;
  - bez lokalnykh reglamentov nelzya utochnit poryadok dopuska i osmotra imenno dlya vashey organizatsii.
- Chto nuzhno proverit pered perekhodom dalshe:
  - kakoy tip lesov yavlyaetsya bazovym dlya kursa;
  - kakie SIZ i poryadok dopuska deystvuyut na realnom obekte;
  - kto budet tekhnicheskim reviewerom po kursu.

## Reshenie po gotovnosti

- Source base gotova dlya `job decomposition`: `yes`
- Klyuchevye blokery:
  - net konkretnogo pasporta sistemy lesov;
  - net lokalnykh foto / video;
  - net ekspertnoy validatsii.

## Vyvod

Na `2026-05-12` bazovaya normativnaya i metodicheskaya osnova dlya stage `03_Job_Decomposition` sobrana. Mozhno perekhodit k razbivke professii na rabochie bloki, no vse predmetnye detali po konkretnomu tipu lesov nuzhno dal'she utochnyat po pasportu sistemy i s tekhnicheskim ekspertom.
