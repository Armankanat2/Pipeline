# High Risk Education Regulatory Base v0.1

## Status

- Status: `active / working layer`
- Data sborki: `2026-05-14`
- Owner: `vy`
- Scope seychas: `worker professions + high-risk works`

## Naznachenie

Etot dokument nuzhen, chtoby sobrat bazovuyu normativnuyu oporu dlya proizvodstva kursov po rabochim professiyam i opasnym / vysokoriskovym rabotam.

Tsel:

- ne sobirat kurs "iz golovy";
- ponimat, kakie akty zadayut ramku obrazovatelnoy deyatelnosti;
- otdelit `DPO`, `professional training` i `OT / special safety` contoury;
- postroit reestr professiy i grupp trebovaniy bez vymyshlennykh norm.

## Vazhno s samogo nachala

V etom sloe my ne iskhodim iz predpolozheniya, chto odin dokument polnostyu opisyvaet trebovaniya k kazhdoy professii.

Rabochaya model sleduyushchaya:

1. est `obrazovatelnyy contour` programmy;
2. est `spisok professiy / dolzhnostey`, po kotorym voobshche idet professionalnoe obuchenie;
3. est `OT / safety contour`;
4. est `profession-specific` pravila i ogranicheniya;
5. est `group split`, kogda dlya raznykh roley vnutri odnogo rabochego polya trebuyutsya raznye navyki i raznyy obem obucheniya.

## Bazovye normativnye sloi

| ID | Sloy | Akt | Zachem nuzhen | Istochnik |
|---|---|---|---|---|
| EDU-01 | bazovyy zakon | Federalnyy zakon ot 29.12.2012 N 273-FZ `Ob obrazovanii v Rossiyskoy Federatsii` | obshchaya pravovaya ramka obrazovaniya, DPO i professionalnogo obucheniya | https://publication.pravo.gov.ru/document/0001201212300007 |
| EDU-02 | DPO contour | Prikaz Minobrnauki Rossii ot 24.03.2025 N 266 `Ob utverzhdenii Poryadka organizatsii i osushchestvleniya obrazovatelnoy deyatelnosti po dopolnitelnym professionalnym programmam` | reglament dlya `DPO` programm | https://publication.pravo.gov.ru/document/0001202504230011 |
| EDU-03 | professional training contour | Prikaz Minprosveshcheniya Rossii ot 26.08.2020 N 438 `Ob utverzhdenii Poryadka organizatsii i osushchestvleniya obrazovatelnoy deyatelnosti po osnovnym programmam professionalnogo obucheniya` | reglament dlya programm professionalnogo obucheniya rabochikh i sluzhashchikh | https://rg.ru/documents/2020/09/14/minpros-prikaz438-site-dok.html |
| EDU-04 | profession list contour | Prikaz Minprosveshcheniya Rossii ot 14.07.2023 N 534 `Ob utverzhdenii Perechnya professiy rabochikh, dolzhnostey sluzhashchikh, po kotorym osushchestvlyaetsya professionalnoe obuchenie` | bazovyy federalnyy perechen dlya profession base | https://rg.ru/documents/2023/08/16/minpros-prikaz534-site-dok.html |
| EDU-05 | aktualizatsiya perechnya | Izmeneniya k prikazu N 534: prikaz ot 29.02.2024 N 136; prikaz ot 05.11.2024 N 768; prikaz ot 10.09.2025 N 656 | nuzhny dlya monitoringa aktualnogo sostava professiy | https://rg.ru/documents/2024/04/04/minpros-prikaz136-site-dok.html ; https://rg.ru/documents/2024/12/10/minpros-prikaz768-site-dok.html ; https://publication.pravo.gov.ru/document/0001202510100013 |
| SAFE-01 | OT training contour | Postanovlenie Pravitelstva RF ot 24.12.2021 N 2464 `O poryadke obucheniya po okhrane truda i proverki znaniya trebovaniy okhrany truda` | bazovyy contour obucheniya po OT i proverki znaniy | https://publication.pravo.gov.ru/Document/View/0001202112290004 |
| SAFE-02 | work at height contour | Prikaz Mintruda Rossii ot 16.11.2020 N 782n `Ob utverzhdenii Pravil po okhrane truda pri rabote na vysote` | bazovyy contour dlya rabot na vysote | https://publication.pravo.gov.ru/Document/View/0001202012160036 |
| SAFE-03 | construction contour | Prikaz Mintruda Rossii ot 11.12.2020 N 883n `Ob utverzhdenii Pravil po okhrane truda pri stroitelstve, rekonstruktsii i remonte` | bazovyy contour dlya stroitelnykh i montazhnykh rabot | https://publication.pravo.gov.ru/Document/View/0001202012240062 |
| SAFE-04 | electrical contour | Prikaz Mintruda Rossii ot 15.12.2020 N 903n `Ob utverzhdenii Pravil po okhrane truda pri ekspluatatsii elektroustanovok`; prikaz ot 29.04.2022 N 279n o vnesenii izmeneniy | contour dlya elektroustanovok i elektrobezopasnosti | https://publication.pravo.gov.ru/Document/View/0001202012300142 ; https://publication.pravo.gov.ru/Document/View/0001202206010011 |
| SAFE-05 | welding contour | Prikaz Mintruda Rossii ot 11.12.2020 N 884n `Ob utverzhdenii Pravil po okhrane truda pri vypolnenii elektrosvarochnykh i gazosvarochnykh rabot` | contour dlya svarochnykh rabot | https://publication.pravo.gov.ru/Document/View/0001202012290083 |
| SAFE-06 | confined space contour | Prikaz Mintruda Rossii ot 15.12.2020 N 902n `Ob utverzhdenii Pravil po okhrane truda pri rabote v ogranichennykh i zamknutykh prostranstvakh` | contour dlya OZiP | https://publication.pravo.gov.ru/Document/View/0001202012300160 |
| QUAL-01 | qualification contour | Reestr professionalnykh standartov Mintruda | nuzhen dlya kvalifikatsionnykh trebovaniy, trudovykh funktsiy i kompetentnostnogo sloya | https://profstandart-rosmintrud.ru/ |

## Kak chitat etu bazu

- `EDU-01` - obshchiy zakon;
- `EDU-02` i `EDU-03` - raznye obrazovatelnye contoury;
- `EDU-04` i `EDU-05` - baza dlya spiska professiy;
- `SAFE-*` - profession-specific safety contoury;
- `QUAL-01` - istochnik dlya svyazki professii s trudovymi funktsiyami i trebovaniyami k kvalifikatsii.

## Klyuchevoe pravilo dlya Pipeline

Pered nachalom sborki kursa nado otvetit ne na odin, a minimum na tri voprosa:

1. My sobiraem `DPO`, `professional training` ili smeshannyy paket?
2. Kakaya imenno professiya ili dolzhnost iz federalnogo / otraslevogo contoura yavlyaetsya opornoy?
3. Kakie safety-pravila i gruppy trebovaniy primenyayutsya k etomu keysu?

Poka net etikh trekh otvetov, karta professii ne schitaetsya normativno zafiksirovannoy.

## Chto my ne budem delat

- ne budem pridumyvat exact hours ili periodichnost, esli oni ne izvlecheny iz NPA;
- ne budem smeshivat `DPO` i `professional training` kak budto eto odin i tot zhe contour;
- ne budem nazyvat rabochiy cluster "zakonom", esli eto tolko nasha operatsionnaya gruppirovka;
- ne budem schitat safety-pravila dostatochnymi bez proverki, kakoy tip programmy voobshche sobiraetsya.

## Rabochaya gruppirovka dlya Phase 1

Na etom etape my ogranichivaem bazu sleduyushchimi high-risk konturami:

| ID | Rabochiy cluster | Bazovye akty | Status |
|---|---|---|---|
| HR-01 | rabota na vysote / lesa / podmashchivanie | `273-FZ`, `438`, `534`, `2464`, `782n`, `883n` | `active seed` |
| HR-02 | elektroustanovki / elektrobezopasnost | `273-FZ`, `438`, `534`, `2464`, `903n`, `279n` | `queue` |
| HR-03 | elektro- i gazosvarochnye raboty | `273-FZ`, `438`, `534`, `2464`, `884n` | `queue` |
| HR-04 | rabota v ogranichennykh i zamknutykh prostranstvakh | `273-FZ`, `438`, `534`, `2464`, `902n` | `queue` |

Vazhno:

Eta gruppirovka - rabochaya operatsionnaya ramka `Pipeline`, a ne zayavlenie, chto est odin federalnyy dokument s takim zhe obobshchayushchim nazvaniem.

## Minimalnyy marshrut napolneniya profession base

1. Vzyat exact profession title iz `534` i ego aktualizatsiy.
2. Otdelit worker-role ot ITR / responsible-role.
3. Podnyat safety-acts, kotorye upravlyayut konkretnym vidom rabot.
4. Otmetit, gde NPA priamo fiksiruet:
   - dopusk;
   - gruppy;
   - periodichnost;
   - attestatsiyu;
   - dokument na vykhode;
   - temi / moduli.
5. Vse, chto ne izvlecheno iz istochnika, ostavit kak `to verify`, a ne zapolnyat predpolozheniem.
