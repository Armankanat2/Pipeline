# Test Check Sheet

## Status

Expanded draft for modules `01-09`.

## Naznachenie

Etot artefakt nuzhen lektoru ili proveryayushchemu dlya bystroy proverki testovogo bloka kursa `Montazhnik lesov`.

## Parametry

- Svazannyy test pack: `10_test_pack_v0.1.md`
- Svazannyy answer key: `10_answer_key_v0.1.md`
- Kolichestvo variantov na vopros: `4`
- Markirovka variantov v markdown-baze: `A / B / V / G`
- Markirovka variantov v finalnom klientskom makete: kirillicheskie bukvennye metki
- Tolko odin pravilnyy otvet: da
- Itogovyy obem dokumenta dolzhen zaviset ot finalnogo kolichestva voprosov v prezentatsii
- Tekushchiy expanded-set: `22` voprosa po modulyam `01-09`

## Expanded-set voprosov dlya maketa

### Q-01

- Vopros: `S chego dolzhny nachinat'sya raboty na lesakh?`
- Variant `A`: `S dopuska i proverki usloviy raboty`
- Variant `B`: `S podbora instrumenta`
- Variant `V`: `S raskladki elementov po ploshchadke`
- Variant `G`: `S ustanovki pervoy stoyki`
- Pravilnyy otvet: `A`
- Pochemu eto pravilno: raboty na lesakh nachinayutsya ne s montazha elementa, a s dopuska, SIZ i proverki usloviy
- Szhatyy kommentariy: opornyy vopros po logike `dopusk -> SIZ -> ploshchadka -> montazh`
- Svazannyy outcome: `LO-01`

### Q-02

- Vopros: `Kakoy vyvod po SIZ yavlyaetsya pravilnym?`
- Variant `A`: `Esli SIZ vydan, znachit ego sostoyanie uzhe ne nado proverat`
- Variant `B`: `Otsutstvie ili neispravnost SIZ delaet rabotu nedopustimoy`
- Variant `V`: `SIZ obyazatelen tolko dlya rabot posle sborki lesov`
- Variant `G`: `SIZ mozhno zamenit ostorozhnym povedeniem`
- Pravilnyy otvet: `B`
- Pochemu eto pravilno: vydacha SIZ sama po sebe nichego ne garantiruet; vazhna ego fakticheskaya prigodnost k rabote
- Szhatyy kommentariy: vopros proveryaet ponimanie, chto SIZ eto uslovie dopuska, a ne formalnost
- Svazannyy outcome: `LO-02`

### Q-03

- Vopros: `Chto oznachaet negotovaya ploshchadka pered sborkoy lesov?`
- Variant `A`: `Chto mozhno nachat sborku, esli brigada opytnaya`
- Variant `B`: `Chto mozhno nachat raboty, a ograzhdenie postavit potom`
- Variant `V`: `Chto start montazha dolzhen byt otlozhen do ustraneniya problem`
- Variant `G`: `Chto nuzhno prosto umenshit temp raboty`
- Pravilnyy otvet: `V`
- Pochemu eto pravilno: negotovaya ploshchadka blokiruet bezopasnyy start montazha tak zhe, kak i neispravnye elementi
- Szhatyy kommentariy: vopros zakreplyaet filtr `ploshchadka + elementi = start montazha`
- Svazannyy outcome: `LO-04`

### Q-04

- Vopros: `V kakoy situatsii montazhnik ne dolzhen prinimat reshenie v odinochku?`
- Variant `A`: `Kogda nado ostanovit raboty iz-za spornoy ili neyasnoy situatsii`
- Variant `B`: `Kogda nado vybrat bolee bystryy instrument`
- Variant `V`: `Kogda nado opredelit posledovatelnost pereryva`
- Variant `G`: `Kogda nado perenesti sklad elementov blizhe k zone rabot`
- Pravilnyy otvet: `A`
- Pochemu eto pravilno: pri spornoy skheme, povrezhdennykh elementakh ili neyasnom dopuske nuzhna eskalatsiya, a ne samodelnoe reshenie
- Szhatyy kommentariy: vopros po granitsam polnomochiy i stop-logike
- Svazannyy outcome: `LO-13`

### Q-05

- Vopros: `Chto iz perechislennogo dolzhno obyazatelno vhodit v minimum proverki pered nachalom montazha?`
- Variant `A`: `Tolko nalichie instrumenta i brigady`
- Variant `B`: `Dopusk, instruktag, SIZ, sostav brigady i usloviya ploshchadki`
- Variant `V`: `Tolko nalichie elementov lesov`
- Variant `G`: `Tolko gotovnost mastera k kontrolyu`
- Pravilnyy otvet: `B`
- Pochemu eto pravilno: start montazha dopustim tolko pri prokhozhdenii minimalnogo filtra gotovnosti, a ne po odnomu priznaku
- Szhatyy kommentariy: bazovyy checklist-vopros po dopusku
- Svazannyy outcome: `LO-01`

### Q-06

- Vopros: `Kakaya formulirovka luchshe vsego obyasnyaet ustoychivost lesov?`
- Variant `A`: `Lesa derzhatsya glavnym obrazom na samom tyazhelom elemente`
- Variant `B`: `Ustoychivost opredelyaetsya tolko kachestvom osnovaniya`
- Variant `V`: `Ustoychivost = osnova + geometriya + kreplenie`
- Variant `G`: `Ustoychivost mozhno dobavit v kontse montazha`
- Pravilnyy otvet: `V`
- Pochemu eto pravilno: ustoychivost voznikayet iz sovmestnoy raboty osnovaniya, geometrii skhemy i krepleniya, a ne iz odnogo faktora
- Szhatyy kommentariy: opornyy vopros po logike modulia `03`
- Svazannyy outcome: `LO-08`

### Q-07

- Vopros: `Pochemu nelzya putat funktsii elementov lesov?`
- Variant `A`: `Potomu chto vse elementi vypolnyayut odnu i tu zhe funktsiyu`
- Variant `B`: `Potomu chto u stoek, svyazey, nastilov i ograzhdeniy raznye zadachi v konstruktsii`
- Variant `V`: `Potomu chto eto vazhno tolko dlya sklada`
- Variant `G`: `Potomu chto eto nuzhno tolko dlya oformleniya dokumentov`
- Pravilnyy otvet: `B`
- Pochemu eto pravilno: raznye gruppy elementov otvechayut za nesushchuyu funktsiyu, geometriyu, rabochuyu ploshchadku i zashchitu
- Szhatyy kommentariy: proverka ponimaniya sistemy, a ne terminov radi terminov
- Svazannyy outcome: `LO-03`

### Q-08

- Vopros: `Kak nuzhno postupit s povrezhdennym ili nekomplektnym elementom lesov pri priemke?`
- Variant `A`: `Ispolzovat ego, esli povrezhdenie ne ochen zametno`
- Variant `B`: `Ostavit ego na posledniy etap montazha`
- Variant `V`: `Otbrakovat ego do nachala sborki`
- Variant `G`: `Ispolzovat ego tolko na nizhnikh yarusakh`
- Pravilnyy otvet: `V`
- Pochemu eto pravilno: v sborku dolzhny idti tolko ispravnye i sootvetstvuyushchie elementi; povrezhdennyy element ne dolzhen dojti do obekta
- Szhatyy kommentariy: vopros po filtru priemki elementov
- Svazannyy outcome: `LO-05`

### Q-09

- Vopros: `Chto nuzhno proverit na ploshchadke pered sborkoy lesov, krome mesta pod samoy konstruktsiey?`
- Variant `A`: `Tolko nalichie svobodnogo mesta dlya sklada`
- Variant `B`: `Tolko pogodu`
- Variant `V`: `Tolko grafik smeny`
- Variant `G`: `Podkhody, ograzhdenie, pomekhi i risk padeniya predmetov vokrug zony rabot`
- Pravilnyy otvet: `G`
- Pochemu eto pravilno: proverka ploshchadki vklyuchaet ne tolko tochku ustanovki lesov, no i opasnuyu zonu vokrug rabot
- Szhatyy kommentariy: vopros po prostroystvu bezopasnoy zony
- Svazannyy outcome: `LO-04`

### Q-10

- Vopros: `Kakie dva kontrolnykh filtra dolzhny byt proydeny do starta montazha?`
- Variant `A`: `Ploshchadka i elementi`
- Variant `B`: `Instrument i skorost brigady`
- Variant `V`: `Tolko dopusk i nalichie mastera`
- Variant `G`: `Tolko osnovanie i nastily`
- Pravilnyy otvet: `A`
- Pochemu eto pravilno: esli ne gotova ploshchadka ili ne proshli priemku elementi, montazh ne dolzhen nachinat'sya
- Szhatyy kommentariy: sobiraet modul `04` v odin proverochnyy printsip
- Svazannyy outcome: `LO-04`, `LO-05`

### Q-11

- Vopros: `Kakaya logika starta bazy i pervogo yarusa yavlyaetsya pravilnoy?`
- Variant `A`: `Sobrat proizvolnyy kontur, a vyravnivanie ostavit na potom`
- Variant `B`: `Idti po skheme ot osnovaniya s kontrolom geometrii`
- Variant `V`: `Nachat s verkhnego uzla, esli tak bystree`
- Variant `G`: `Montirovat tam, gde brigade udobnee`
- Pravilnyy otvet: `B`
- Pochemu eto pravilno: baza i pervyy yarus dolzhny sobirat'sya po skheme, potomu chto oni zadayut geometriyu vsey dalneyshey konstruktsii
- Szhatyy kommentariy: bazovaya posledovatelnost modulia `05`
- Svazannyy outcome: `LO-06`

### Q-12

- Vopros: `Pochemu osnovanie i nizhniy kontur nelzya "podpravit potom"?`
- Variant `A`: `Potomu chto eto vazhno tolko dlya dokumentov`
- Variant `B`: `Potomu chto oni zadayut geometriyu i put peredachi nagruzki vsey skheme`
- Variant `V`: `Potomu chto eto vazhno tolko dlya demontazha`
- Variant `G`: `Potomu chto tak udobnee dlya sklada`
- Pravilnyy otvet: `B`
- Pochemu eto pravilno: oshibka v osnovanii ili nizhnyom konture potom rasshiryaetsya na vse verkhnie yarusy
- Szhatyy kommentariy: printsip osnovaniya i peredachi nagruzki
- Svazannyy outcome: `LO-06`, `LO-08`

### Q-13

- Vopros: `Chto nado proverit do perekhoda k dalneyshemu naboru vysoty?`
- Variant `A`: `Tolko nalichie materiala na sleduyushchiy yarus`
- Variant `B`: `Osnovanie, geometriyu i zakreplenie pervogo yarusa`
- Variant `V`: `Tolko vremya do kontsa smeny`
- Variant `G`: `Tolko kolichestvo rabotnikov v brigade`
- Pravilnyy otvet: `B`
- Pochemu eto pravilno: perekhod k sleduyushchim yarusam bez kontrolya pervogo yarusa zakreplyaet skrytye oshibki
- Szhatyy kommentariy: kontrolnaya tochka mezhdu `05` i `06`
- Svazannyy outcome: `LO-06`

### Q-14

- Vopros: `Kakoe narushenie pri nabore vysoty naibolee opasno?`
- Variant `A`: `Medlennaya podacha elementov`
- Variant `B`: `Prodolzhenie sborki bez nuzhnykh svyazey i krepleniy`
- Variant `V`: `Izbytok rabochikh na ploshchadke`
- Variant `G`: `Korotkiy pereryv v rabote`
- Pravilnyy otvet: `B`
- Pochemu eto pravilno: pri nabore vysoty konstruktsiya ochen chuvstvitelna k narusheniyam skhemy zhestkosti i krepleniya
- Szhatyy kommentariy: kritichnyy risk modulia `06`
- Svazannyy outcome: `LO-07`, `LO-08`

### Q-15

- Vopros: `Zachem v skheme nuzhny svyazi i krepleniya?`
- Variant `A`: `Dlya inventarizatsii i ucheta`
- Variant `B`: `Dlya ustoychivosti i zhestkosti vsey konstruktsii`
- Variant `V`: `Tolko dlya verkhnikh yarusov`
- Variant `G`: `Tolko dlya proverki posle rabot`
- Pravilnyy otvet: `B`
- Pochemu eto pravilno: svyazi i krepleniya rabotayut kak chast obshchey sistemy ustoychivosti, a ne kak vtorostepennaya detal
- Szhatyy kommentariy: printsip zhestkosti skhemy
- Svazannyy outcome: `LO-08`

### Q-16

- Vopros: `Kak otsenit rabochiy yarus bez polnogo nastila ili bez bezopasnogo dostupa?`
- Variant `A`: `Dopustim pri malom obeme rabot`
- Variant `B`: `Dopustim kak vremennoe reshenie`
- Variant `V`: `Nedopustim dlya raboty`
- Variant `G`: `Dopustim tolko dlya opytnogo montazhnika`
- Pravilnyy otvet: `V`
- Pochemu eto pravilno: nepolnyy nastil ili otsutstvie bezopasnogo dostupa srivaet dopusk k ekspluatatsii dazhe pri zakonchennom montazhe
- Szhatyy kommentariy: filtr pered dopuskom k rabote
- Svazannyy outcome: `LO-07`, `LO-09`

### Q-17

- Vopros: `Kakoe reshenie po razmeshcheniyu materialov na yaruse pravilno?`
- Variant `A`: `Skladavat materialy v plotnuyu kuchu gde udobno`
- Variant `B`: `Raspredelyat po rezhimu nagruzki i ne peregruzhat yarus`
- Variant `V`: `Podavat materialy s maksimalnym zapasom`
- Variant `G`: `Razmeshchat ikh u kraya dlya bystrogo dostupa`
- Pravilnyy otvet: `B`
- Pochemu eto pravilno: pri ekspluatatsii yarus dolzhen rabotat v dopustimom rezhime nagruzki, a ne v rezhime "kak pomestitsya"
- Szhatyy kommentariy: vopros po distsipline nagruzki
- Svazannyy outcome: `LO-10`

### Q-18

- Vopros: `Kogda lesa mozhno dopustit k ekspluatatsii?`
- Variant `A`: `Kogda montazh v tselom zakonchen`
- Variant `B`: `Kogda proyden cheklist i net osnovaniy dlya zapreta`
- Variant `V`: `Kogda razreshil samyy opytnyy rabochiy`
- Variant `G`: `Kogda na yarus podan instrument`
- Pravilnyy otvet: `B`
- Pochemu eto pravilno: posle sborki dolzhen byt formalnyy i soderzhatelnyy filtr gotovnosti, a ne vizualnoe vpechatlenie
- Szhatyy kommentariy: bazovyy dopusk modulia `07`
- Svazannyy outcome: `LO-09`

### Q-19

- Vopros: `Chto luchshe vsego snizhaet risk padeniya predmetov s lesov?`
- Variant `A`: `Otkrytyy perimetr dlya bystrogo dvizheniya`
- Variant `B`: `Distsiplina materialov, instrumenta i zashchita opasnoy zony`
- Variant `V`: `Ubrat ograzhdeniya dlya udobstva`
- Variant `G`: `Uvelichit skorost rabot`
- Pravilnyy otvet: `B`
- Pochemu eto pravilno: padeniye predmetov kontrolirovat'sya organizatsiyey rabot i rezhimom zony, a ne odnim individualnym navykom
- Szhatyy kommentariy: zashchita okruzhayushchikh i lyudey vnizu
- Svazannyy outcome: `LO-10`

### Q-20

- Vopros: `V kakoy situatsii ekspluatatsiyu nuzhno ostanovit i eskalirovat?`
- Variant `A`: `Tolko posle proisshestviya`
- Variant `B`: `Pri priznakakh peregruzki, povrezhdeniya ili otsutstvii zashchity`
- Variant `V`: `Tolko po prosbe zakazchika`
- Variant `G`: `Tolko v kontse smeny`
- Pravilnyy otvet: `B`
- Pochemu eto pravilno: priznak opasnogo rezhima sam po sebe uzhe yavlyaetsya osnovaniem dlya stopa i eskalatsii
- Szhatyy kommentariy: finalnaya stop-logika modulia `07`
- Svazannyy outcome: `LO-09`, `LO-10`, `LO-13`

### Q-21

- Vopros: `Kakaya reaktsiya na tipovuyu opasnuyu oshibku vo vremya rabot yavlyaetsya pravilnoy?`
- Variant `A`: `Zakonchit tekushchiy uchastok i popravit oshibku potom`
- Variant `B`: `Ostanovit rabotu, ustranit opasnoe otklonenie i tolko potom prodolzhit`
- Variant `V`: `Ostavit kak est, esli brigada opytnaya`
- Variant `G`: `Snizit temp, no ne menyat skhemu raboty`
- Pravilnyy otvet: `B`
- Pochemu eto pravilno: tipovaya opasnaya oshibka dolzhna lovit'sya do intsidenta, a ne tolerirovat'sya radi tempi ili udobstva
- Szhatyy kommentariy: most k modulyu `08` pro red flags i avariynye predposylki
- Svazannyy outcome: `LO-11`

### Q-22

- Vopros: `Kakaya bazovaya logika demontazha lesov yavlyaetsya pravilnoy?`
- Variant `A`: `Snimat elementi v lyubom udobnom poryadke`
- Variant `B`: `Razbirat po upravlyaemoy posledovatelnosti s kontrolem zony i bez sbrosa elementov vniz`
- Variant `V`: `Nachinat so snyatiya klyuchevykh svyazey dlya uskoreniya`
- Variant `G`: `Dopuskat sbros elementov vniz pri maloy vysote`
- Pravilnyy otvet: `B`
- Pochemu eto pravilno: demontazh yavlyaetsya otdelnoy operatsiey so svoey logikoy bezopasnosti i ne dopuskaet proizvolnogo razbora ili sbrosa elementov
- Szhatyy kommentariy: generic-safe proverka modulia `09` bez system-specific detaley
- Svazannyy outcome: `LO-12`

## Tablichnyy format dlya bystrogo review

| ID | Vopros | A | B | V | G | Pravilnyy otvet | Pochemu eto pravilno | Szhatyy kommentariy |
|---|---|---|---|---|---|---|---|---|
| Q-01 | S chego dolzhny nachinat'sya raboty na lesakh? | S dopuska i proverki usloviy raboty | S podbora instrumenta | S raskladki elementov po ploshchadke | S ustanovki pervoy stoyki | A | Raboty nachinayutsya s dopuska i proverki usloviy, a ne s montazha | Baza dlya vsego testa |
| Q-02 | Kakoy vyvod po SIZ yavlyaetsya pravilnym? | Vydacha dostatochna | Neispravnyy SIZ delaet rabotu nedopustimoy | SIZ nuzhen posle sborki | Ostorozhnost zamenyaet SIZ | B | SIZ dolzhen byt prigoden k rabote, a ne prosto vydan | Proverka TB-logiki |
| Q-03 | Chto oznachaet negotovaya ploshchadka? | Mozhno nachat opytnoy brigade | Ograzhdenie mozhno postavit potom | Start montazha otkladyvaetsya | Nado prosto snizit temp | V | Negotovaya ploshchadka blokiruet start montazha | Proverka startovogo filtra |
| Q-04 | Kogda montazhnik ne dolzhen reshat odin? | Nuzhno ostanovit raboty pri spornoy situatsii | Nado vybrat instrument | Nado perenesti pereryv | Nado sdvinut sklad | A | Pri spornoy ili neyasnoy situatsii nuzhna eskalatsiya | Granitsy polnomochiy |
| Q-05 | Chto vhodit v minimum proverki pered montazhom? | Instrument i brigada | Dopusk, instruktag, SIZ, sostav brigady, ploshchadka | Tolko elementi | Tolko gotovnost mastera | B | Start vozmozhen tolko pri prokhozhdenii polnogo minimalnogo filtra | Checklist pered rabotoy |
| Q-06 | Kak luchshe vsego obyasnit ustoychivost lesov? | Derzhatsya na samom tyazhelom elemente | Tolko ot osnovaniya | Osnova + geometriya + kreplenie | Dobavlyaetsya v kontse | V | Ustoychivost voznikayet iz sovmestnoy raboty neskolkikh faktorov | Opornaya formula modulia |
| Q-07 | Pochemu nelzya putat funktsii elementov? | U nikh odna zadacha | U nikh raznye zadachi v konstruktsii | Eto vazhno tolko dlya sklada | Eto nuzhno tolko dlya dokumentov | B | Gruppy elementov obsluzhivayut raznye funktsii konstruktsii | Ponimanie sistemy elementov |
| Q-08 | Chto delat s povrezhdennym elementom? | Ispolzovat, esli defekt malyy | Ostavit na posledniy etap | Otbrakovat do sborki | Ispolzovat na nizhnikh yarusakh | V | V sborku dolzhny idti tolko ispravnye elementi | Filtr priemki |
| Q-09 | Chto proverit na ploshchadke vokrug zony rabot? | Tolko sklad | Tolko pogodu | Tolko grafik | Podkhody, ograzhdenie, pomekhi, risk padeniya predmetov | G | Bezopasnaya zona vokrug rabot tozhe vhodit v proverku | Proverka ploshchadki |
| Q-10 | Kakie dva filtra nuzhny do starta montazha? | Ploshchadka i elementi | Instrument i skorost brigady | Dopusk i master | Osnovanie i nastily | A | Bez gotovoy ploshchadki i godnykh elementov start blokiruetsya | Finalnyy filtr modulia `04` |
| Q-11 | Kakaya logika starta bazy i pervogo yarusa pravilna? | Sobrat proizvolnyy kontur | Idti po skheme ot osnovaniya s kontrolom geometrii | Nachat s verkhnego uzla | Montirovat, gde udobnee | B | Nizhniy kontur zadayet geometriyu vsey skhemy | Start modulia `05` |
| Q-12 | Pochemu osnovanie nelzya podpravit potom? | Tolko dokumenty | Zadayet geometriyu i put nagruzki | Tolko dlya demontazha | Tak udobnee skladu | B | Oshibka v osnovanii rasshiryaetsya na vse yarusy | Printsip osnovaniya |
| Q-13 | Chto proverit do sleduyushchego yarusa? | Tolko material | Osnovanie, geometriyu i zakreplenie pervogo yarusa | Tolko vremya smeny | Tolko sostav brigady | B | Bez etogo oshibki ukhodyat v verkhnyuyu chast konstruktsii | Kontrolnaya tochka |
| Q-14 | Kakoe narushenie pri nabore vysoty samoe opasno? | Medlennaya podacha | Prodolzhenie bez svyazey i krepleniy | Mnogo rabochikh | Korotkiy pereryv | B | Narushaetsya logika zhestkosti i ustoychivosti | Kritichnyy risk |
| Q-15 | Zachem nuzhny svyazi i krepleniya? | Dlya ucheta | Dlya ustoychivosti i zhestkosti | Tolko dlya verkhnikh yarusov | Tolko dlya proverki posle rabot | B | Oni rabotayut kak chast obshchey sistemy ustoychivosti | Printsip zhestkosti |
| Q-16 | Kak otsenit yarus bez polnogo nastila ili dostupa? | Dopustim pri malom obeme | Dopustim vremenno | Nedopustim dlya raboty | Dopustim dlya opytnogo montazhnika | V | Takoy yarus ne mozhet byt dopushchen k rabote | Filtr dopuska |
| Q-17 | Kak pravilno razmeshchat materialy na yaruse? | Skladyvat gde udobno | Raspredelyat po rezhimu nagruzki | Podavat s maksimalnym zapasom | Razmeshchat u kraya | B | Peregruzka i plokhoye razmeshchenie sozdaut opasnyy rezhim | Distsiplina nagruzki |
| Q-18 | Kogda lesa mozhno dopustit k ekspluatatsii? | Kogda montazh zakonchen | Kogda proyden cheklist i net osnovaniy dlya zapreta | Kogda razreshil opytnyy rabochiy | Kogda podan instrument | B | Nuzhen soderzhatelnyy filtr gotovnosti | Bazovyy dopusk |
| Q-19 | Chto snizhaet risk padeniya predmetov? | Otkrytyy perimetr | Distsiplina materialov i zashchita zony | Ubrat ograzhdeniya | Uvelichit skorost | B | Risk snizhaetsya organizatsiyey rabot i kontrolom zony | Zashchita okruzhayushchikh |
| Q-20 | Kogda nuzhno ostanovit ekspluatatsiyu? | Tolko posle proisshestviya | Pri peregruzke, povrezhdenii ili otsutstvii zashchity | Tolko po prosbe zakazchika | Tolko v kontse smeny | B | Opasnyy priznak uzhe yavlyaetsya osnovaniem dlya stopa | Stop-logika |
| Q-21 | Kakaya reaktsiya na tipovuyu opasnuyu oshibku pravilna? | Zakonchit uchastok i popravit potom | Ostanovit, ustranit opasnoe otklonenie i tolko potom prodolzhit | Ostavit kak est pri opytnoy brigade | Snizit temp bez smeny skhemy | B | Opasnuyu oshibku nado lovit do intsidenta i ne normalizovat | Red flags modulia `08` |
| Q-22 | Kakaya logika demontazha pravilna? | Snimat v lyubom poryadke | Razbirat po posledovatelnosti s kontrolem zony i bez sbrosa vniz | Snimat klyuchevye svyazi dlya uskoreniya | Sbrasivat vniz pri maloy vysote | B | Demontazh eto otdelnaya bezopasnaya operatsiya, a ne proizvolnyy razbor | Bazovyy printsip modulia `09` |
