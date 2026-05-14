# Answer Key

## Status

Expanded draft for modules `01-09`.

## Naznachenie

Etot artefakt nuzhen dlya otdelnoy vydachi klyucha otvetov po finalnomu bloku voprosov v prezentatsii `Montazhnik lesov`.

## Parametry

- Svazannyy test: `10_test_pack_v0.1.md`
- Svazannyy test check sheet: `10_test_check_sheet_v0.1.md`
- Dlya kakikh versiy kursa: minimum `Deep`, pri neobkhodimosti adaptirovat dlya `Short` i `Standard`
- Mozhno li vydat versiyu bez bloka voprosov: da
- Tekushchiy expanded-set: `22` voprosa

## Klyuch otvetov

| ID voprosa | Pravilnyy otvet | Kratkoe obosnovanie | Svazannyy outcome | Primechanie |
|---|---|---|---|---|
| Q-01 | A | Raboty na lesakh nachinayutsya s dopuska i proverki usloviy, a ne s montazha pervogo elementa. | LO-01 | baza startovogo filtra |
| Q-02 | B | Neispravnyy ili otsutstvuyushchiy SIZ delaet rabotu nedopustimoy, dazhe esli SIZ formalno vydan. | LO-02 | uslovie dopuska |
| Q-03 | V | Negotovaya ploshchadka blokiruet bezopasnyy start montazha do ustraneniya problem. | LO-04 | filtr ploshchadki |
| Q-04 | A | Pri spornoy situatsii montazhnik dolzhen eskalirovat vopros, a ne reshat ego samostoyatelno. | LO-13 | granitsy polnomochiy |
| Q-05 | B | Minimalnyy filtr vklyuchaet dopusk, instruktag, SIZ, sostav brigady i ploshchadku. | LO-01 | bazovyy checklist |
| Q-06 | V | Ustoychivost obyasnyaetsya svyazkoy osnovaniya, geometrii i krepleniya. | LO-08 | opornaya formula |
| Q-07 | B | Elementi lesov imeyut raznye funktsii v konstruktsii i ne mogut rassmatrivatsya kak vzaimozamenyaemye po smyslu. | LO-03 | sistema elementov |
| Q-08 | V | Povrezhdennyy ili nekomplektnyy element dolzhen byt otbrakovan do nachala sborki. | LO-05 | filtr priemki |
| Q-09 | G | V proverku ploshchadki vkhodit ne tolko tochka montazha, no i zona vokrug rabot. | LO-04 | opasnaya zona |
| Q-10 | A | Do starta montazha dolzhny byt proydeny dva filtra: gotovnost ploshchadki i godnost elementov. | LO-04, LO-05 | finalnyy filtr modulia `04` |
| Q-11 | B | Start bazy i pervogo yarusa dolzhen idti po skheme ot osnovaniya s kontrolnymi proverkami, a ne po improvizatsii. | LO-06 | logika modulia `05` |
| Q-12 | B | Nizhniy kontur zadayet geometriyu i put peredachi nagruzki dlya vsey skhemy, poetomu ego nelzya otkladyvat na potom. | LO-06, LO-08 | printsip osnovaniya |
| Q-13 | B | Do prodolzheniya sborki nado proverit osnovanie, geometriyu i zakreplenie pervogo yarusa. | LO-06 | kontrolnaya tochka |
| Q-14 | B | Prodolzhenie sborki bez svyazey i krepleniy razrushayet logiku ustoychivosti pri nabore vysoty. | LO-07, LO-08 | kritichnyy risk |
| Q-15 | B | Svyazi i krepleniya obespechivayut zhestkost i ustoychivost vsey konstruktsii, a ne odin lokalnyy uzel. | LO-08 | printsip zhestkosti |
| Q-16 | V | Rabochiy yarus bez polnogo nastila ili bez bezopasnogo dostupa ne mozhet byt dopushchen k rabote. | LO-07, LO-09 | filtr dopuska |
| Q-17 | B | Materialy nuzhno raspredelyat po rezhimu nagruzki i ne dopuskat peregruzki yarusa. | LO-10 | nagruzka pri ekspluatatsii |
| Q-18 | B | Dopusk k ekspluatatsii vozmozhen tolko posle prokhozhdeniya proverki po cheklistu i otsutstviya osnovaniy dlya zapreta. | LO-09 | bazovyy dopusk |
| Q-19 | B | Risk padeniya predmetov snizhaetsya distsiplinoy materialov i instrumenta, a takzhe kontrolem opasnoy zony. | LO-10 | zashchita okruzhayushchikh |
| Q-20 | B | Pri peregruzke, povrezhdenii ili otsutstvii zashchity raboty nado ostanovit i eskalirovat, a ne prodolzhat do avarii. | LO-09, LO-10, LO-13 | stop-logika |
| Q-21 | B | Tipovaya opasnaya oshibka ne "dozhidayetsya udobnogo momenta", a trebuet stopa, ustraneniya i tolko potom vozobnovleniya rabot. | LO-11 | most k modulyu `08` |
| Q-22 | B | Bezopasnyy demontazh vedetsya po upravlyaemoy posledovatelnosti, s kontrolem zony i bez sbrosa elementov vniz. | LO-12 | generic-safe proverka modulia `09` |

## Kontrol pokrytiya

- Pokryty li `core` outcomes: da, po modulyam `01-09`, vklyuchaya tekstovuyu proverku `LO-11` i `LO-12`
- Est li kommentarii k vizualnym voprosam: poka net, vizualnyy blok eshche ne sobran
- Est li kommentarii k situatsionnym voprosam: da, Q-03, Q-04, Q-08, Q-10, Q-11, Q-14, Q-16, Q-18, Q-20

## Reshenie po gotovnosti

- Answer key gotov k vydache: `expanded draft / no`
- Chto nuzhno proverit:
  - sinkhronizirovat s finalnym test pack;
  - proverit formulirovki `Q-21` i `Q-22` na formalnom QA;
  - pri neobkhodimosti vypustit klientskuyu versiyu s kirillicheskimi bukvennymi metkami variantov otveta.
