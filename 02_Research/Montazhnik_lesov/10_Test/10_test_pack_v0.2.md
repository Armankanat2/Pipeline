# Test Pack

## Status

Post-QA revise draft for modules `01-09`.

## Svyazannye artefakty

- otdelnyy klyuch otvetov dolzhen sobirat'sya v `10_answer_key_v0.2.md`
- test check sheet dlya lektora dolzhen sobirat'sya v `10_test_check_sheet_v0.2.md`
- istochnik revise-triggera: `09_QA/09_qa_report_v0.1.md`

## Rol etoy versii

Eta versiya ne schitaetsya finalnym testom. Ee zadacha:

1. oslabit razryv mezhdu `visual / practical` outcomes i slishkom tekstovym contourom proverki;
2. perevesti kritichnye voprosy v `visual-simulated` ili `recognition-ready` format;
3. ostavit generic-safe granitsu tam, gde net pasporta sistemy ili ekspertnoy validatsii.

## Tselevaya struktura testa

- test razmeshchaetsya v kontse prezentatsii
- tselevoy obem: `15-30` voprosov
- tekushchiy expanded-set: `22` voprosa po modulyam `01-09`
- iz nikh minimum `5` voprosov teper proektirovany kak `visual-simulated` ili `recognition-ready`
- bazovyy production-variant: `Standard`

## Assessment visual anchors

| Anchor ID | Rol v teste | Svazannye outcomes | Opora na asset-layer | Status | Primechanie |
|---|---|---|---|---|---|
| TV-01 | raspoznavanie grupp elementov i ikh funktsiy | `LO-03` | logic-bridge k `A-10`, `A-13` | `planned` | mozhno sobrat kak controllable scheme bez foto |
| TV-02 | intake-check po `godno / ne godno` | `LO-05` | logic-bridge k `A-17`, `A-18` | `planned` | poka razreshen kak visual-simulated card |
| TV-03 | sravnenie yarusa `dopustimo / nedopustimo` | `LO-07`, `LO-09` | logic-bridge k `A-28`, `A-30`, `A-33` | `planned` | opornyy compare block dlya worker-ponimaniya |
| TV-04 | hazard-sign scene dlya moduley `08` | `LO-11`, `LO-13` | novyy controlled draft visual | `planned` | poka ne zavisit ot realnogo foto |
| TV-05 | sequence-board dlya demontazha | `LO-12` | novyy controlled draft visual | `planned` | generic-safe, bez system-specific uzlov |

## Printsipy

- maksimum situatsionnykh i raspoznavatelnykh voprosov;
- visual build ne dolzhen trebovat finalnoy foto-bazy, esli mozhno sdelat controllable scheme;
- tam, gde visual eshche ne gotov, vopros vse ravno dolzhen imet ponyatnyy `visual-simulated` contour;
- pravilnyy otvet tolko odin;
- varianty markiruyutsya kak `A / B / V / G` v markdown-baze;
- v finalnom klientskom russkoyazychnom makete dolzhny ispolzovat'sya kirillicheskie bukvennye metki.

## Matritsa pokrytiya outcomes

| ID outcome | Tema | Voprosy testa | Tip proverki v `v0.2` | Visual anchor | Primechanie |
|---|---|---|---|---|---|
| LO-01 | dopusk i bazovyy minimum proverki | Q-01, Q-05 | single / situational | none | bazovyy filtr pered rabotoy |
| LO-02 | SIZ | Q-02 | single | none | TB-logika |
| LO-03 | elementi i ikh funktsii | Q-07 | visual-simulated / recognition-ready | TV-01 | usilenie validnosti po sravneniyu s `v0.1` |
| LO-04 | ploshchadka i opasnaya zona | Q-03, Q-09, Q-10 | single / situational | none | start montazha zavisit ot gotovnosti ploshchadki |
| LO-05 | priemka elementov | Q-08, Q-10 | visual-simulated / situational | TV-02 | intake contour teper mozhet byt sobran bez zhivogo foto |
| LO-06 | baza i pervyy yarus | Q-11, Q-12, Q-13 | single / situational | none | logika starta sborki |
| LO-07 | nabor vysoty i rabochie yarusy | Q-14, Q-16 | situational + visual-simulated | TV-03 | compare-based check po rabochemu yarusu |
| LO-08 | kreplenie i ustoychivost | Q-06, Q-12, Q-14, Q-15 | concept / situational | none | generic-safe ramka sokhranena |
| LO-09 | proverka pered ekspluatatsiey | Q-16, Q-18, Q-20 | situational + visual-simulated | TV-03 | dopusk i osnovaniya dlya zapreta rabot |
| LO-10 | bezopasnaya ekspluatatsiya | Q-17, Q-19, Q-20 | single / situational | none | nagruzka, marshruty, padeniye predmetov |
| LO-11 | tipovye oshibki i hazard signs | Q-21 | visual-simulated / hazard recognition | TV-04 | teper ne chisto tekstovyy stop-vopros |
| LO-12 | bezopasnyy demontazh | Q-22 | visual-simulated / sequence logic | TV-05 | generic-safe proverka modulia `09` |
| LO-13 | granitsy polnomochiy | Q-04, Q-20, Q-21 | situational / hazard-stop | TV-04 | stop-logika i eskalatsiya |

## Voprosy expanded-set

| ID | Tip | Vopros | Varianty otveta `A / B / V / G` v rabochey baze | Pravilnyy otvet | Svazannyy outcome | Visual anchor | Primechanie |
|---|---|---|---|---|---|---|---|
| Q-01 | single | S chego dolzhny nachinat'sya raboty na lesakh? | A: dopusk i proverka; B: instrument; V: raskladka; G: pervaya stoyka | A | LO-01 | none | startovaya logika kursa |
| Q-02 | single | Kakoy vyvod po SIZ yavlyaetsya pravilnym? | A: vydachi khvataet; B: neispravnyy SIZ blokiruet rabotu; V: nuzhen posle sborki; G: ostorozhnost zamenyaet SIZ | B | LO-02 | none | uslovie dopuska |
| Q-03 | situational | Chto oznachaet negotovaya ploshchadka? | A: mozhno nachat opytnoy brigade; B: ograzhdenie potom; V: start otkladyvaetsya; G: prosto snizit temp | V | LO-04 | none | filtr ploshchadki |
| Q-04 | situational | Kogda montazhnik ne dolzhen reshat odin? | A: pri spornoy situatsii; B: pri vybore instrumenta; V: pri pereryve; G: pri perenose sklada | A | LO-13 | none | eskalatsiya |
| Q-05 | single | Chto vhodit v minimum proverki pered montazhom? | A: instrument i brigada; B: dopusk, instruktag, SIZ, brigada, ploshchadka; V: tolko elementi; G: gotovnost mastera | B | LO-01 | none | checklist |
| Q-06 | concept | Kak luchshe vsego obyasnit ustoychivost lesov? | A: samyy tyazhelyy element; B: tolko osnovanie; V: osnova + geometriya + kreplenie; G: dobavlyaetsya v kontse | V | LO-08 | none | opornaya formula |
| Q-07 | visual-simulated | Na skheme `TV-01` kakaya gruppa elementov dolzhna opredelyat rabochuyu ploshchadku, a ne svyaz ili zhestkost konstruktsii? | A: nastily; B: diagonali; V: krepleniya; G: ograzhdenie opasnoy zony | A | LO-03 | TV-01 | recognition-ready vopros po funktsiyam elementov |
| Q-08 | visual-simulated | Na intake-card `TV-02` kakoy element dolzhen byt srazu vyveden iz sborki? | A: rovnyy i komplektnyy; B: s deformatsiey ili nekomplektnym uzlom; V: chistyy, no tyazhelyy; G: neispolzovannyy, no bez markirovki mesta | B | LO-05 | TV-02 | `godno / ne godno` bez ozhidaniya realnogo foto |
| Q-09 | single | Chto proverit na ploshchadke vokrug zony rabot? | A: sklad; B: pogodu; V: grafik smeny; G: podkhody, ograzhdenie, pomekhi, risk padeniya | G | LO-04 | none | opasnaya zona |
| Q-10 | situational | Kakie dva filtra nuzhny do starta montazha? | A: ploshchadka i elementi; B: instrument i skorost; V: dopusk i master; G: osnovanie i nastily | A | LO-04, LO-05 | none | finalnyy filtr modulia `04` |
| Q-11 | situational | Kakaya logika starta bazy i pervogo yarusa yavlyaetsya pravilnoy? | A: sobrat proizvolno, potom vyravnyat; B: idti po skheme ot osnovaniya s kontrolom geometrii; V: nachat s verkhnego uzla; G: montirovat tam, gde udobnee brigade | B | LO-06 | none | bazovaya posledovatelnost modulia `05` |
| Q-12 | concept | Pochemu osnovanie i nizhniy kontur nelzya "podpravit potom"? | A: eto nuzhno tolko dlya dokumentov; B: oni zadayut geometriyu i peredayut nagruzku vsey skheme; V: eto vazhno tolko dlya demontazha; G: potomu chto tak udobnee skladu | B | LO-06, LO-08 | none | logika nizhnego yarusa |
| Q-13 | single | Chto nado proverit do perekhoda k dalneyshemu naboru vysoty? | A: tolko nalichie materiala; B: osnovanie, geometriyu i zakreplenie pervogo yarusa; V: tolko vremya smeny; G: tolko chislo rabochikh | B | LO-06 | none | kontrol pervogo yarusa |
| Q-14 | situational | Kakoe narushenie pri nabore vysoty naibolee opasno? | A: medlennaya podacha elementov; B: prodolzhenie sborki bez nuzhnykh svyazey i krepleniy; V: izbytok rabochikh na ploshchadke; G: korotkiy pereryv v rabote | B | LO-07, LO-08 | none | kritichnyy risk modulia `06` |
| Q-15 | single | Zachem v skheme nuzhny svyazi i krepleniya? | A: dlya inventarizatsii; B: dlya ustoychivosti i zhestkosti vsey konstruktsii; V: tolko dlya verkhnikh yarusov; G: tolko dlya proverki posle rabot | B | LO-08 | none | printsip zhestkosti |
| Q-16 | visual-simulated | Na compare-card `TV-03` kakoy rabochiy yarus dolzhen schitatsya nedopustimym dlya raboty? | A: yarus s polnym nastilom i bezopasnym dostupom; B: yarus bez polnogo nastila ili bez bezopasnogo dostupa; V: yarus s ravnomernoy nagruzkoy; G: yarus posle prokhozhdeniya cheklista | B | LO-07, LO-09 | TV-03 | worker-facing compare vopros |
| Q-17 | single | Kakoe reshenie po razmeshcheniyu materialov na yaruse pravilno? | A: skladavat v plotnuyu kuchu gde udobno; B: raspredelyat po rezhimu nagruzki i ne peregruzhat yarus; V: podavat s zapasom bez ogranicheniy; G: razmeshchat u kraya dlya bystrogo dostupa | B | LO-10 | none | nagruzka pri ekspluatatsii |
| Q-18 | situational | Kogda lesa mozhno dopustit k ekspluatatsii? | A: kogda montazh v tselom zakonchen; B: kogda proyden cheklist i net osnovaniy dlya zapreta; V: kogda razreshil samyy opytnyy rabochiy; G: kogda na yarus podan instrument | B | LO-09 | none | bazovyy dopusk modulia `07` |
| Q-19 | single | Chto luchshe vsego snizhaet risk padeniya predmetov s lesov? | A: otkrytyy perimetr; B: distsiplina materialov, instrumenta i zashchita opasnoy zony; V: ubrat ograzhdeniya; G: uvelichit skorost rabot | B | LO-10 | none | zashchita okruzhayushchikh |
| Q-20 | situational | V kakoy situatsii ekspluatatsiyu nuzhno ostanovit i eskalirovat? | A: tolko posle proisshestviya; B: pri priznakakh peregruzki, povrezhdeniya ili otsutstvii zashchity; V: tolko po prosbe zakazchika; G: tolko v kontse smeny | B | LO-09, LO-10, LO-13 | none | stop-logika modulia `07` |
| Q-21 | visual-simulated | Na hazard-scene `TV-04` kakoy priznak trebuet nemedlennogo stopa i ustraneniya do prodolzheniya rabot? | A: medlennyy temp brigady; B: opasnoe otklonenie v skheme ili zashchite; V: korotkiy prostoy s podachey; G: izbytok zamechaniy v zhurnale bez risk-signala | B | LO-11, LO-13 | TV-04 | most k modulyu `08` pro red flags |
| Q-22 | visual-simulated | Na sequence-board `TV-05` kakaya logika demontazha yavlyaetsya pravilnoy? | A: snimat elementi v lyubom udobnom poryadke; B: razbirat po upravlyaemoy posledovatelnosti s kontrolem zony i bez sbrosa vniz; V: nachinat so snyatiya klyuchevykh svyazey dlya uskoreniya; G: dopuskat sbros vniz pri maloy vysote | B | LO-12 | TV-05 | generic-safe sequence logic |

## Bank voprosov po urovnyam

- `Short`: Q-01, Q-02, Q-03, Q-05, Q-08, Q-10, Q-11, Q-16, Q-18, Q-20, Q-21, Q-22
- `Standard`: Q-01 - Q-10, Q-12, Q-13, Q-15, Q-16, Q-17, Q-19, Q-21, Q-22
- `Deep`: Q-01 - Q-22

## Proverka kachestva testa

- Est li voprosy po TB: da
- Est li situatsionnye voprosy: da
- Est li visual-simulated ili recognition-ready voprosy: da, minimum `5`
- Sokhranyaetsya li generic-safe granitsa: da
- Est li pryamaya svyaz s QA-zamechaniem po assessment-validity: da
- Zakryt li visual gap polnostyu: net, teper on yavno pereveden v `anchor-driven` contour

## Reshenie po gotovnosti

- Test gotov k pilotu / release: `post-QA revise draft / no`
- Answer key gotov k vydache zakazchiku: `post-QA revise draft / no`
- Chto nuzhno peresobrat:
  - sobrat minimum viable visuals po `TV-01` - `TV-05`;
  - proverit worker-ponyatnost i release-chitaemost na targeted QA;
  - ne dobavlyat system-specific tekhnicheskie "tochnosti" bez novykh dokazatelstv.
