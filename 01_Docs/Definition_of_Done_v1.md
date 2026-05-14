# Definition of Done v1

## Naznachenie

Etot dokument opredelyaet, kogda etap pipeline schitaetsya zavershennym.

## Obshchie pravila

Etap mozhno zakryt tolko esli:

- sozdan obyazatelnyy artefakt etapa;
- artefakt zapolnen ne formalno, a po sushchestvu;
- proyden bazovyy cheklist;
- ponyatno, chto delat dal'she;
- postavlen status `pass` ili `revise`.

## Stage 01 - Intake

Done if:

- ukazana professiya;
- opredelena auditoriya;
- zafiksirovan tselevoy track: `worker / ITR / mixed`;
- ponyatna tsel kursa;
- zafiksirovany sroki i format;
- zafiksirovany ogranicheniya i kritichnye source-gaps;
- razvedeny `base intake` i `optional intake expansion`;
- po kazhdomu expansion-sloyu est reshenie: `required now / deferred / not applicable`;
- esli kurs vyvoditsya iz chisto vnutrennego drafta v review ili release-contour, zafiksirovany `language style guide` i `terminology glossary`;
- otdelno prinyato reshenie, nuzhen li voobshche `ITR` track;
- esli nuzhen vneshniy production kontur, zafiksirovan publishing handoff scope;
- opredelen zakazchik ili soglasuyushchiy.

## Stage 02 - Source Audit

Done if:

- sobran spisok istochnikov;
- ponimayem, chego ne khvataet;
- kritichnye normativy vydeleny otdelno;
- istochniki razdeleny na obyazatelnye i vspomogatelnye;
- dlya RF-law references ukazan uroven' istochnika;
- normativnye istochniki s nepodtverzhdennoy aktual'nost'yu ne ostayutsya v statuse `active`;
- neispolzuemye ili somnitel'nye istochniki pometcheny.

## Stage 03 - Job Decomposition

Done if:

- professiya razbita na bloki rabot;
- vydeleny navyki;
- vydeleny instrumenty i materialy;
- vydeleny tipovye oshibki;
- vydeleny risk zones i punkty bezopasnosti.

## Stage 04 - Learning Outcomes

Done if:

- kazhdyy blok imeet rezultat obucheniya;
- rezultat mozhno proverit;
- rezultaty ne sformulirovany slishkom abstraktno;
- ponyatno, chto proverit v teste;
- est svyazka s prakticheskim povedeniem.

## Stage 05 - Course Architecture

Done if:

- kurs razbit na moduli;
- opredelena posledovatelnost blokov;
- net lishnikh dubley;
- obem kursa sootvetstvuet formatu;
- est blok povtoreniya i blok proverki.

## Stage 06 - Scriptwriting

Done if:

- u kazhdogo slayda est tsel;
- u kazhdogo slayda est osnovnaya mysl;
- sobran obyazatelnyy `writer core`, a ne tolko chast kartochki;
- est speaker notes;
- ponyatno, na chem osnovan slayd (`source basis`);
- viden perekhod: pochemu etot slayd stoit zdes i k kakomu sleduyushchemu resheniyu on vedet;
- est ukazaniya po vizualu i chestno zafiksirovana asset dependency;
- slaydy s blokiruyushchim visual gap ne zamaskirovany pod "gotovo";
- net slaydov s dvumya raznymi smyslami.

## Stage 07 - Asset Collection

Done if:

- podobrany nuzhnye foto, skhemy i illyustratsii;
- istochnik ili proiskhozhdenie assets ponyatny;
- po klyuchevym assetam ponyaten rights-status;
- assets sootvetstvuyut kursu;
- assets dostatochno dlya sborki;
- problemnye assets pometcheny.

## Stage 08 - Visual Production

Done if:

- vse moduli sobrany v deke;
- soblyuden shablon;
- tekst chitabelen;
- vizualy ne protivorechat soderzhaniyu;
- deck gotov k proverke bez tekhnicheskogo khaosa.

## Stage 09 - QA Review

Done if:

- proyden metodicheskiy review;
- proyden dizayn-review;
- proyden tekhnicheskiy review;
- proyden proofreading-review;
- vse zamechaniya klassifitsirovany;
- terminologiya i yazykovye pravila ne protivorechat glossary i style guide;
- esli kurs soderzhit RF-law references, proyden `Legal_Compliance_Checklist_v1.md`;
- yesli est lektorskiy contour, `instructor guide` pokryvaet `100%` aktualnogo `slide script`;
- yesli est publishing contour, ponyatny source bundle, rights-status, fonty i eksportnye pravila;
- ponyatno, chto obyazatelno pravit do reliza.

## Stage 10 - Test Creation

Done if:

- test pokryvaet klyuchevye outcomes;
- est balans po tipam voprosov;
- formulirovki prostye;
- est klyuch otvetov;
- net voprosov, kotorye proveryayut tolko zubrezhku.

## Stage 11 - Pilot

Done if:

- kurs proveden na testovoy gruppe ili analogichnom prokhode;
- sobran feedback;
- izvestny problemnye slaydy;
- razobran rezultat testa;
- est reshenie, chto pravit pered relizom.

## Stage 12 - Release

Done if:

- sobran finalnyy paket;
- finalnye fayly nazvany po pravilu versiy;
- release note zapolnen;
- release-paket ne podmenyaetsya planned-slotami i starter drafts vmesto finalnykh faylov;
- esli v `05_Release` est `release-staging drafts`, oni yavno pomecheny kak nefinalnye i ne vydayutsya za gotovyy release;
- esli v release est lektorskiy kontur, v pakete est aktualnye `instructor guide` i `lecturer questions bank`;
- esli kurs dolzhen byt portable v budushchiy online-produkt, v pakete est aktualnyy `online handoff` kontur;
- esli v online-kontur dobavlen `gateway-ready` sloy, ego `gateway spec / manifest / event map` ne protivorechat release-versii kursa i ostayutsya optional rasshireniem, a ne obyazatelnym blokatorom release;
- esli paket ukhodit vo vneshniy production kontur, v pakete est aktualnyy `publishing handoff` kontur i `preflight checklist`;
- release-grade dokumenty ne soderzhat bitoy kodirovki i sluchaynykh smesey alfavitov;
- po klyuchevym assetam i brand-materialam net neproyasnennykh pravovykh blokov;
- proyden proofreading checklist;
- versiya kursa zafiksirovana;
- paket gotov k peredache.

## Stage 13 - Maintenance

Done if:

- naznachen owner;
- est grafik prosmotra;
- vedetsya update log;
- izmeneniya v normativakh mogut byt otrazheny;
- esli kurs zavisit ot RF-law references, review-forma sozdana do zameny statusa, ssylki ili nomera;
- izvestno, kogda kurs nuzhno peresmotret.
