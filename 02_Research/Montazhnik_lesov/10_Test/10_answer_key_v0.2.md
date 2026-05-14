# Answer Key

## Status

Post-QA revise draft for modules `01-09`.

## Naznachenie

Etot artefakt nuzhen dlya otdelnoy vydachi klyucha otvetov po post-QA versii testa.

## Parametry

- Svazannyy test: `10_test_pack_v0.2.md`
- Svazannyy test check sheet: `10_test_check_sheet_v0.2.md`
- Tekushchiy expanded-set: `22` voprosa
- Kritichnye visual anchors: `TV-01`, `TV-02`, `TV-03`, `TV-04`, `TV-05`

## Klyuch otvetov

| ID voprosa | Pravilnyy otvet | Kratkoe obosnovanie | Svazannyy outcome | Visual anchor | Primechanie |
|---|---|---|---|---|---|
| Q-01 | A | Raboty na lesakh nachinayutsya s dopuska i proverki usloviy, a ne s montazha pervogo elementa. | LO-01 | none | baza startovogo filtra |
| Q-02 | B | Neispravnyy ili otsutstvuyushchiy SIZ delaet rabotu nedopustimoy, dazhe esli SIZ formalno vydan. | LO-02 | none | uslovie dopuska |
| Q-03 | V | Negotovaya ploshchadka blokiruet bezopasnyy start montazha do ustraneniya problem. | LO-04 | none | filtr ploshchadki |
| Q-04 | A | Pri spornoy situatsii montazhnik dolzhen eskalirovat vopros, a ne reshat ego samostoyatelno. | LO-13 | none | granitsy polnomochiy |
| Q-05 | B | Minimalnyy filtr vklyuchaet dopusk, instruktag, SIZ, sostav brigady i ploshchadku. | LO-01 | none | bazovyy checklist |
| Q-06 | V | Ustoychivost obyasnyaetsya svyazkoy osnovaniya, geometrii i krepleniya. | LO-08 | none | opornaya formula |
| Q-07 | A | V `TV-01` pravilnyy fokus dolzhen padat na gruppu elementov, kotorye dayut rabochuyu ploshchadku, a ne zhestkost ili kreplenie. | LO-03 | TV-01 | recognition-ready vopros |
| Q-08 | B | Element s deformatsiey ili nekomplektnym uzlom dolzhen byt srazu vyveden iz sborki. | LO-05 | TV-02 | intake-check |
| Q-09 | G | V proverku ploshchadki vkhodit ne tolko tochka montazha, no i zona vokrug rabot. | LO-04 | none | opasnaya zona |
| Q-10 | A | Do starta montazha dolzhny byt proydeny dva filtra: gotovnost ploshchadki i godnost elementov. | LO-04, LO-05 | none | finalnyy filtr modulia `04` |
| Q-11 | B | Start bazy i pervogo yarusa dolzhen idti po skheme ot osnovaniya s kontrolnymi proverkami, a ne po improvizatsii. | LO-06 | none | logika modulia `05` |
| Q-12 | B | Nizhniy kontur zadayet geometriyu i put peredachi nagruzki dlya vsey skhemy. | LO-06, LO-08 | none | printsip osnovaniya |
| Q-13 | B | Do prodolzheniya sborki nado proverit osnovanie, geometriyu i zakreplenie pervogo yarusa. | LO-06 | none | kontrolnaya tochka |
| Q-14 | B | Prodolzhenie sborki bez svyazey i krepleniy razrushayet logiku ustoychivosti pri nabore vysoty. | LO-07, LO-08 | none | kritichnyy risk |
| Q-15 | B | Svyazi i krepleniya obespechivayut zhestkost i ustoychivost vsey konstruktsii. | LO-08 | none | printsip zhestkosti |
| Q-16 | B | V `TV-03` nedopustim dlya raboty yarus bez polnogo nastila ili bez bezopasnogo dostupa. | LO-07, LO-09 | TV-03 | compare-based check |
| Q-17 | B | Materialy nuzhno raspredelyat po rezhimu nagruzki i ne dopuskat peregruzki yarusa. | LO-10 | none | nagruzka pri ekspluatatsii |
| Q-18 | B | Dopusk k ekspluatatsii vozmozhen tolko posle prokhozhdeniya proverki po cheklistu i otsutstvii osnovaniy dlya zapreta. | LO-09 | none | bazovyy dopusk |
| Q-19 | B | Risk padeniya predmetov snizhaetsya distsiplinoy materialov i instrumenta, a takzhe kontrolem opasnoy zony. | LO-10 | none | zashchita okruzhayushchikh |
| Q-20 | B | Pri peregruzke, povrezhdenii ili otsutstvii zashchity raboty nado ostanovit i eskalirovat. | LO-09, LO-10, LO-13 | none | stop-logika |
| Q-21 | B | V `TV-04` opasnoe otklonenie v skheme ili zashchite trebuet nemedlennogo stopa i ustraneniya. | LO-11, LO-13 | TV-04 | hazard recognition |
| Q-22 | B | V `TV-05` bezopasnyy demontazh vedetsya po upravlyaemoy posledovatelnosti, s kontrolem zony i bez sbrosa elementov vniz. | LO-12 | TV-05 | sequence logic |

## Kontrol pokrytiya

- Pokryty li `core` outcomes: da, po modulyam `01-09`
- Ustranen li chisto tekstovyy status dlya kritichnykh practical / visual outcomes: chastichno da
- Est li realnye visual assets za vsemi anchorami: poka net
- Sokhranena li generic-safe granitsa: da

## Reshenie po gotovnosti

- Answer key gotov k vydache: `post-QA revise draft / no`
- Chto nuzhno proverit:
  - sootvetstvuet li finalnyy visual build anchor-logike `TV-01` - `TV-05`;
  - net li raspadeniya mezhdu `test pack` i realnym slide-deckom;
  - nuzhno li usilit `TV-04` i `TV-05` posle targeted QA.
