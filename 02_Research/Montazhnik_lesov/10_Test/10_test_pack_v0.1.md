# Test Pack

## Status

Expanded draft for modules `01-09`.

## Svyazannyy artefakt

- otdelnyy klyuch otvetov dolzhen sobirat'sya v `10_answer_key_v0.1.md`
- test check sheet dlya lektora dolzhen sobirat'sya v `10_test_check_sheet_v0.1.md`

## Tselevaya struktura testa

- test razmeshchaetsya v kontse prezentatsii
- tselevoy obem: `15-30` voprosov
- `5-8` voprosov po TB i SIZ
- `4-8` voprosov po protsessu montazha i proverke gotovnosti
- `3-7` voprosov po elementam, ustoychivosti i krepleniyam
- `3-7` voprosov po tipovym oshibkam, ekspluatatsii i demontazhu
- tekushchiy expanded-set: `22` voprosa po modulyam `01-09`

## Printsipy

- maksimum situatsionnykh voprosov;
- vizualnye voprosy prioritetny;
- minimum slozhnykh formulirovok;
- proverka ponimaniya, a ne zubrezhki;
- u kazhdogo voprosa `4` varianta otveta;
- varianty markiruyutsya kak `A / B / V / G` v markdown-baze;
- v finalnom klientskom russkoyazychnom makete dolzhny ispolzovat'sya kirillicheskie bukvennye metki;
- pravilnyy otvet tolko odin;
- blok voprosov dolzhen mozhno bylo ostavit vnutri prezentatsii ili otklyuchit dlya lektsionnoy versii bez peresborki vsego kursa.

## Tekushchaya sborka expanded-set

- `Q-01` - start rabot i dopusk
- `Q-02` - SIZ kak uslovie dopuska
- `Q-03` - negotovaya ploshchadka
- `Q-04` - granitsy polnomochiy i eskalatsiya
- `Q-05` - minimum proverki pered montazhom
- `Q-06` - formula ustoychivosti
- `Q-07` - funktsii elementov lesov
- `Q-08` - priemka povrezhdennykh elementov
- `Q-09` - proverka opasnoy zony vokrug ploshchadki
- `Q-10` - dva filtra do starta montazha
- `Q-11` - pravilnyy start bazy i pervogo yarusa
- `Q-12` - rol osnovaniya i nizhnego kontura
- `Q-13` - kontrol pervogo yarusa pered prodolzheniem
- `Q-14` - opasnaya logika nabora vysoty
- `Q-15` - zachem nuzhny svyazi i krepleniya
- `Q-16` - nedopustimyy rabochiy yarus i dostup
- `Q-17` - pravila nagruzki na yaruse
- `Q-18` - dopusk k ekspluatatsii po cheklistu
- `Q-19` - zashchita ot padeniya predmetov
- `Q-20` - usloviya ostanovki ekspluatatsii
- `Q-21` - tipovaya opasnaya oshibka i pravilnaya reaktsiya
- `Q-22` - bazovaya logika bezopasnogo demontazha

## Matritsa pokrytiya outcomes

| ID outcome | Tema | Voprosy testa | Tip proverki | Primechanie |
|---|---|---|---|---|
| LO-01 | dopusk i bazovyy minimum proverki | Q-01, Q-05 | single / situational | bazovyy filtr pered rabotoy |
| LO-02 | SIZ | Q-02 | single | TB-logika |
| LO-03 | elementi i ikh funktsii | Q-07 | single | ponimanie sistemy elementov |
| LO-04 | ploshchadka i opasnaya zona | Q-03, Q-09, Q-10 | single / situational | start montazha zavisit ot gotovnosti ploshchadki |
| LO-05 | priemka elementov | Q-08, Q-10 | single / situational | filtr godnosti elementov |
| LO-06 | baza i pervyy yarus | Q-11, Q-12, Q-13 | single / situational | logika starta sborki |
| LO-07 | nabor vysoty i rabochie yarusy | Q-14, Q-16 | situational | opasnye narusheniya pri prodolzhenii sborki |
| LO-08 | kreplenie i ustoychivost | Q-06, Q-12, Q-14, Q-15 | concept / situational | svyaz mezhdu geometriyey, osnovaniem i krepleniyami |
| LO-09 | proverka pered ekspluatatsiey | Q-16, Q-18, Q-20 | single / situational | dopusk i osnovaniya dlya zapreta rabot |
| LO-10 | bezopasnaya ekspluatatsiya | Q-17, Q-19, Q-20 | single / situational | nagruzka, marshruty, padeniye predmetov |
| LO-11 | tipovye oshibki i hazard signs | Q-21 | situational | poka bez finalnogo visual-backfill, no uzhe svyazano so script `08` |
| LO-12 | bezopasnyy demontazh | Q-22 | situational | generic-safe proverka bez system-specific detalei |
| LO-13 | granitsy polnomochiy | Q-04, Q-20 | situational | stop-logika i eskalatsiya |

## Voprosy expanded-set

| ID | Tip | Vopros | Varianty otveta `A / B / V / G` v rabochey baze | Pravilnyy otvet | Svazannyy outcome | Primechanie |
|---|---|---|---|---|---|---|
| Q-01 | single | S chego dolzhny nachinat'sya raboty na lesakh? | A: dopusk i proverka; B: instrument; V: raskladka; G: pervaya stoyka | A | LO-01 | startovaya logika kursa |
| Q-02 | single | Kakoy vyvod po SIZ yavlyaetsya pravilnym? | A: vydachi khvataet; B: neispravnyy SIZ blokiruet rabotu; V: nuzhen posle sborki; G: ostorozhnost zamenyaet SIZ | B | LO-02 | uslovie dopuska |
| Q-03 | situational | Chto oznachaet negotovaya ploshchadka? | A: mozhno nachat opytnoy brigade; B: ograzhdenie potom; V: start otkladyvaetsya; G: prosto snizit temp | V | LO-04 | filtr ploshchadki |
| Q-04 | situational | Kogda montazhnik ne dolzhen reshat odin? | A: pri spornoy situatsii; B: pri vybore instrumenta; V: pri pereryve; G: pri perenose sklada | A | LO-13 | eskalatsiya |
| Q-05 | single | Chto vhodit v minimum proverki pered montazhom? | A: instrument i brigada; B: dopusk, instruktag, SIZ, brigada, ploshchadka; V: tolko elementi; G: gotovnost mastera | B | LO-01 | checklist |
| Q-06 | concept | Kak luchshe vsego obyasnit ustoychivost lesov? | A: samyy tyazhelyy element; B: tolko osnovanie; V: osnova + geometriya + kreplenie; G: dobavlyaetsya v kontse | V | LO-08 | opornaya formula |
| Q-07 | single | Pochemu nelzya putat funktsii elementov lesov? | A: odna zadacha; B: raznye zadachi v konstruktsii; V: tolko dlya sklada; G: tolko dlya dokumentov | B | LO-03 | sistema elementov |
| Q-08 | situational | Chto delat s povrezhdennym elementom? | A: ispolzovat, esli defekt malyy; B: ostavit na posledniy etap; V: otbrakovat; G: ispolzovat na nizhnikh yarusakh | V | LO-05 | filtr priemki |
| Q-09 | single | Chto proverit na ploshchadke vokrug zony rabot? | A: sklad; B: pogodu; V: grafik smeny; G: podkhody, ograzhdenie, pomekhi, risk padeniya | G | LO-04 | opasnaya zona |
| Q-10 | situational | Kakie dva filtra nuzhny do starta montazha? | A: ploshchadka i elementi; B: instrument i skorost; V: dopusk i master; G: osnovanie i nastily | A | LO-04, LO-05 | finalnyy filtr modulia `04` |
| Q-11 | situational | Kakaya logika starta bazy i pervogo yarusa yavlyaetsya pravilnoy? | A: sobrat proizvolno, potom vyravnyat; B: idti po skheme ot osnovaniya s kontrolom geometrii; V: nachat s verkhnego uzla; G: montirovat tam, gde udobnee brigade | B | LO-06 | bazovaya posledovatelnost modulia `05` |
| Q-12 | concept | Pochemu osnovanie i nizhniy kontur nelzya "podpravit potom"? | A: eto nuzhno tolko dlya dokumentov; B: oni zadayut geometriyu i peredayut nagruzku vsey skheme; V: eto vazhno tolko dlya demontazha; G: potomu chto tak udobnee skladu | B | LO-06, LO-08 | logika nizhnego yarusa |
| Q-13 | single | Chto nado proverit do perekhoda k dalneyshemu naboru vysoty? | A: tolko nalichie materiala; B: osnovanie, geometriyu i zakreplenie pervogo yarusa; V: tolko vremya smeny; G: tolko chislo rabochikh | B | LO-06 | kontrol pervogo yarusa |
| Q-14 | situational | Kakoe narushenie pri nabore vysoty naibolee opasno? | A: medlennaya podacha elementov; B: prodolzhenie sborki bez nuzhnykh svyazey i krepleniy; V: izbytok rabochikh na ploshchadke; G: korotkiy pereryv v rabote | B | LO-07, LO-08 | kritichnyy risk modulia `06` |
| Q-15 | single | Zachem v skheme nuzhny svyazi i krepleniya? | A: dlya inventarizatsii; B: dlya ustoychivosti i zhestkosti vsey konstruktsii; V: tolko dlya verkhnikh yarusov; G: tolko dlya proverki posle rabot | B | LO-08 | printsip zhestkosti |
| Q-16 | situational | Kak otsenit rabochiy yarus bez polnogo nastila ili bez bezopasnogo dostupa? | A: dopustim pri malom obeme rabot; B: dopustim kak vremennoe reshenie; V: nedopustim dlya raboty; G: dopustim tolko dlya opytnogo montazhnika | V | LO-07, LO-09 | filtr pered dopuskom k rabote |
| Q-17 | single | Kakoe reshenie po razmeshcheniyu materialov na yaruse pravilno? | A: skladavat v plotnuyu kuchu gde udobno; B: raspredelyat po rezhimu nagruzki i ne peregruzhat yarus; V: podavat s zapasom bez ogranicheniy; G: razmeshchat u kraya dlya bystrogo dostupa | B | LO-10 | nagruzka pri ekspluatatsii |
| Q-18 | situational | Kogda lesa mozhno dopustit k ekspluatatsii? | A: kogda montazh v tselom zakonchen; B: kogda proyden cheklist i net osnovaniy dlya zapreta; V: kogda razreshil samyy opytnyy rabochiy; G: kogda na yarus podan instrument | B | LO-09 | bazovyy dopusk modulia `07` |
| Q-19 | single | Chto luchshe vsego snizhaet risk padeniya predmetov s lesov? | A: otkrytyy perimetr; B: distsiplina materialov, instrumenta i zashchita opasnoy zony; V: ubrat ograzhdeniya; G: uvelichit skorost rabot | B | LO-10 | zashchita okruzhayushchikh |
| Q-20 | situational | V kakoy situatsii ekspluatatsiyu nuzhno ostanovit i eskalirovat? | A: tolko posle proisshestviya; B: pri priznakakh peregruzki, povrezhdeniya ili otsutstvii zashchity; V: tolko po prosbe zakazchika; G: tolko v kontse smeny | B | LO-09, LO-10, LO-13 | stop-logika modulia `07` |
| Q-21 | situational | Kakaya reaktsiya na tipovuyu opasnuyu oshibku vo vremya rabot yavlyaetsya pravilnoy? | A: dodelat uchastok i popravit potom; B: ostanovit rabotu, ustranit opasnoe otklonenie i tolko potom prodolzhit; V: ostavit kak est, esli brigada opytnaya; G: snizit temp, no ne meniat skhemu | B | LO-11 | most k modulyu `08` pro red flags i avariynye predposylki |
| Q-22 | situational | Kakaya bazovaya logika demontazha lesov yavlyaetsya pravilnoy? | A: snimat elementi v lyubom udobnom poryadke; B: razbirat po upravlyaemoy posledovatelnosti s kontrolem zony i bez sbrosa elementov vniz; V: nachinat so snyatiya klyuchevykh svyazey dlya uskoreniya; G: dopuskat sbros vniz pri maloy vysote | B | LO-12 | generic-safe proverka modulia `09` bez system-specific skhemy |

## Bank voprosov po urovnyam

- `Short`: Q-01, Q-02, Q-03, Q-05, Q-06, Q-08, Q-10, Q-11, Q-14, Q-18, Q-20, Q-22
- `Standard`: Q-01 - Q-10, Q-12, Q-13, Q-15, Q-17, Q-19, Q-21, Q-22
- `Deep`: Q-01 - Q-22

## Proverka kachestva testa

- Est li voprosy po TB: da
- Est li situatsionnye voprosy: da
- Est li vizualnye voprosy: poka net, nuzhny visuals
- Net li zubrezhki radi zubrezhki: da, tekushchiy nabor stroitsya na logike resheniy
- Sokhranyaetsya li pokrytie `core` outcomes v samoy korotkoy versii testa: da, bazovoe pokrytie est po modulyam `01-09`, no bez finalnogo visual-backfill

## Reshenie po gotovnosti

- Test gotov k pilotu / release: `expanded draft / no`
- Answer key gotov k vydache zakazchiku: `expanded draft / no`
- Chto nuzhno peresobrat:
  - dobavit vizualnye voprosy posle sborki asset-bazy;
  - proverit `Q-21` i `Q-22` v formalnom QA i pri neobkhodimosti usilit ikh keysami ili visuals;
  - privezat finalnyy nabor k realnomu slide deck.
