# Pipeline Blueprint v1

## 1. Tsel

Postroit povtoryaemuyu sistemu proizvodstva uchebnykh kursov dlya rabochikh spetsialnostey i liniynogo ITR, gde novyy kurs mozhno sobirat ne s nulya, a iz standartnykh etapov, shablonov i proverok.

## 2. Rezultat proekta

Na vykhode dolzhna poyavitsya operational system, kotoraya sobiraet ne tolko prezentatsii, no i polnyy paket dlya zakazchika, i vklyuchaet:

- pipeline proizvodstva;
- nabor shablonov;
- QA gates;
- definition of done dlya kazhdogo etapa;
- bazu pereispolzuemykh komponentov;
- AI-assisted workflow dlya uskoreniya raboty.

## 3. Printsipy sistemy

- `checklist-driven production` vmesto raboty po pamyati;
- `one stage -> one output`;
- `one output -> one gate`;
- `learning first, slides second`;
- `modular scalability over fixed length`;
- `content-brand separation`;
- `multi-delivery readiness`;
- `online-portable core`;
- `lecturer-ready handoff`;
- `writer-first scripting`;
- `reusability over custom work`;
- `clarity over beauty`;
- `fast review loops`;
- `updateable system`, a ne razovaya prezentatsiya.
- `controlled client approval flow`, a ne beskonechnye pravki.

## 4. Rekomenduemyy instrumentariy

- Production: `PowerPoint`
- Knowledge Base: `Obsidian`
- Text workflow: `Markdown`
- Versioning: `Git / GitHub`
- Assets: `Google Drive`, `NAS` ili drugoe media-khranilishche
- Task tracking: `Trello`, `Notion` ili prostaya kanban-doska
- AI support: prompty dlya analiza, struktury, testov i QA

## 5. Master Production Stages

| Stage | Nazvanie | Tsel | Klyuchevoy vykhod |
|---|---|---|---|
| 00 | Backlog | Reshit, chto delat seychas | Prioritet kursa |
| 01 | Intake | Ponyat zadachu i ogranicheniya | Brief |
| 02 | Source Audit | Sobrat i otsenit istochniki | Source register |
| 03 | Job Decomposition | Razobrat professiyu na bloki i navyki | Job map |
| 04 | Learning Outcomes | Zafiksirovat izmerimye rezultaty obucheniya | Outcomes map |
| 05 | Course Architecture | Postroit karkas kursa | Course structure |
| 06 | Scriptwriting | Opisat logiku kazhdogo slayda | Slide script |
| 07 | Asset Collection | Podobrat vizualy i istochniki | Asset pack |
| 08 | Visual Production | Sobrat prezentatsiyu | Draft deck |
| 09 | QA Review | Proverit metodiku, dizayn i korrektnost | QA report |
| 10 | Test Creation | Sozdat kontrol znaniy | Test pack i answer key |
| 11 | Pilot | Proverit kurs na auditornom teste | Pilot report |
| 12 | Release | Sformirovat finalnyy paket | Release pack |
| 13 | Maintenance | Obnovlyat kurs po regulyarnomu tsiklu | Update log |

## 6. Stage Flow

```text
Backlog
  -> Intake
  -> Source Audit
  -> Job Decomposition
  -> Learning Outcomes
  -> Course Architecture
  -> Scriptwriting
  -> Asset Collection
  -> Visual Production
  -> QA Review
  -> Test Creation
  -> Pilot
  -> Release
  -> Maintenance
```

## 7. Klyuchevye artefakty

Minimalnyy nabor artefaktov po kursu:

- `01_course_brief.md`
- `01_brand_profile.md` pri multi-client ili branded release
- `01_design_options_pack.md` pri vybore vizualnogo napravleniya do sborki deck
- `01_itr_requirements.md` pri sborke versii dlya ITR ili slozhnogo organizatsionnogo kontura
- `02_source_register.md`
- `03_job_map.md`
- `04_learning_outcomes.md`
- `05_course_architecture.md`
- `05_worker_behavior_map.md` pri sborke worker-track versii
- `06_slide_script.md`
- `07_asset_register.md`
- `08_<course-code>_draft_vX.Y.pptx`
- `09_qa_report.md`
- `10_test_pack.md`
- `10_answer_key.md`
- `11_pilot_report.md`
- `12_instructor_guide.md`
- `12_lecturer_questions_bank.md`
- `12_online_adaptation_map.md`
- `12_module_summary_pack.md`
- `12_narration_pack.md`
- `12_online_handoff_pack.md`
- `12_release_note.md`
- `13_update_log.md`

## 8. Roli

Minimalnaya model dlya komandy:

- `Koordinator` - sroki, status, soglasovanie
- `Metodist` - struktura obucheniya i logika
- `Tekhnicheskiy ekspert` - korrektnost professionnogo soderzhaniya
- `Dizayner` - vizualnaya sborka
- `Prepodavatel` - signal s polya i feedback

Model dlya `solo mode`:

- odin operator vedet vse etapy;
- kachestvo derzhitsya ne na opyte, a na cheklistakh;
- handoff zamenyaetsya kontrolnymi tochkami;
- AI ispolzuetsya kak uskoritel i dopolnitelnyy reviewer.

## 9. QA Logic

Posle kazhdogo etapa stavitsya `QA gate`.

Pyat bazovykh kriteriev:

- polnota;
- ponyatnost;
- sootvetstvie trebovaniyam;
- otsutstvie peregruza;
- gotovnost k sleduyushchemu etapu.

Skoring:

- kazhdyy kriteriy otsenivaetsya ot `0` do `20`;
- maksimalnyy ball: `100`;
- prokhodnoy ball: `80`;
- esli etap < `80`, on vozvrashchaetsya na dorabotku.

## 10. Pravilo Definition of Done

Etap schitaetsya zavershennym tolko togda, kogda:

- est ponyatnyy artefakt;
- artefakt proveren po cheklistu;
- artefakt gotov dlya sleduyushchego etapa;
- prinyato reshenie `pass` ili `revise`.

## 11. Format kursov

Vmesto zhostkogo standarta na odin obem ispolzuem tri paketa:

- `Short` - do `60` slaydov + test;
- `Standard` - `80-90` slaydov + test;
- `Deep` - `110-120` slaydov + test.

V klientskom konture eti versii mozhno nazyvat:

- `korotkaya` ili `malaya` = `Short`;
- `srednyaya` = `Standard`;
- `dlinnaya` ili `bolshaya` = `Deep`.

Dopolnitelno sistema dolzhna podderzhivat dva slozhnostnykh tracka:

- `Worker` - prakticheskiy uroven dlya rabochikh, s fokusom na deystviya, zaprety, stop-logiku i vizualnoe raspoznavanie riskov;
- `ITR` - usilennyy uroven dlya inzhenerov, masterov i prorabov, s fokusom na organizatsiyu rabot, roli, otvetstvennost, dokumenty, kontrol i upravlencheskie resheniya.

Pravilo vklyucheniya trackov:

- `worker` track schitaetsya bazovym po umolchaniyu dlya rabochikh professiy;
- `ITR` track ne yavlyaetsya obyazatelnym dlya kazhdogo kursa;
- `ITR` track sobiraetsya tolko togda, kogda tselevaya auditoriya ili zadacha kursa realno vklyuchaet inzhenerov, masterov, prorabov ili nuzhdaetsya v organizatsionnom konture;
- esli kurs ne prednaznachen dlya `ITR`, to `01_itr_requirements.md`, ITR teaching path, ITR test cases i drugie ITR-artefakty ne sobirayutsya;
- prostoe nalichie potentsialnogo zakazchika s ITR ne delaet ITR-kontur obyazatelnym bez otdelnogo zaprosa.

Dopolnitelno:

- `1 slayd = 1 mysl`;
- minimum sploshnykh tekstov;
- maksimum vizualnykh opor;
- obyazatelnyy blok po bezopasnosti;
- test dolzhen proverat ponimanie, a ne zapominanie opredeleniy.

Delivery modes:

- `instructor-led` - klassicheskoe provedenie s lektorom;
- `blended` - lektor + video / ssylki / dopolnitelnye materialy;
- `self-paced online` - prokhozhdenie bez lektora, s ozvuchkoy, ssylkami i vstroennoy navigatsiey.

Pravilo online-portable core:

- prezentatsiya ne dolzhna byt edinstvennym nositelem uchebnogo soderzhaniya;
- uchebnoe yadro kursa dolzhno byt prigodno dlya povtornoy sborki v budushchiy online-produkt bez perepisyvaniya s nulya;
- dlya kursa, kotoryy mozhet pereyti v online, nuzhno sobirat otdelnyy `online handoff`-kontur;
- etot kontur dolzhen opisivat, kak slaydy i moduli perenodyatsya v budushchie video, interaktivy, micro-checks, reference blocks i finalnyy quiz;
- online-layer dolzhen byt rasshireniem `content core`, a ne otdelnym paralelnym kursom.

Pravilo sborki:

- karkas moduley dolzhen ostavatsya stabilnym;
- pri perekhode mezhdu `Short`, `Standard` i `Deep` menyayetsya ne logika kursa, a glubina prokrytiya;
- kazhdyy modul dolzhen imet sloi `core`, `standard` i pri neobkhodimosti `extended`;
- `core` kontent dolzhen sobirat minimalno zhiznesposobnuyu versiyu kursa;
- `extended` kontent ne dolzhen lomat strukturu pri udalenii.
- odno i to zhe uchebnoe yadro dolzhno pozvolyat sobirat versii dlya raznykh grupp ili urovney podgotovki bez polnoy peresborki kursa;
- uvelichenie kursa dlya bolee slozhnoy auditorii dolzhno idti cherez dobavlenie dopolnitelnoy informatsii, keysov, razborov i organizatsionnykh blokov poverkh yadra, a ne cherez lomku bazovoy logiki.

Pravilo dlya scriptwriting:

- script dolzhen byt osnovnym kontentnym sloem kursa, a ne svodkoy srazu dlya vsekh downstream-zadach;
- u kartochki slayda est obyazatelnyy `writer core`: tsel, odna mysl, chto dolzhen ponyat slushatel, tekst na slayde, speaker notes, source basis, perekhod i vizualnoe namerenie;
- source basis dolzhen pokazyvat, na chem derzhitsya slayd: normativ, source register, ekspertnaya logika, worker behavior ili vnutrenniy modulnyy vyvod;
- perekhod mezhdu slaydami i modulami dolzhen byt yavno vidim v script, a ne derzhat'sya "na intuicii avtora";
- zavisimost slayda ot assets dolzhna byt vidna uzhe v script: mozhno li sobrat vizual vnutri prezentatsii, nuzhen li storonniy asset, ili est blokiruyushchiy visual gap;
- online, lecturer i release-layer polya mogut doobogashchat kartochku posle stabilizatsii writer core, a ne do nachala smyslovoy sborki.

Pravilo dlya `worker` tracka:

- v kazhdom worker-kurse dolzhny byt zafiksirovany `5-7 critical behaviors per course`;
- eti povedencheskie opory dolzhny byt svyazany s modules, slaydami, testom i worker-materialami;
- worker-versiya dolzhna byt ponyatna bez metodista ryadom, na yazyke deystviy i ogranicheniy.

Pravilo dlya `ITR` tracka:

- ITR-versiya dolzhna usilivat organizatsionnye, normativnye i upravlencheskie voprosy;
- v ney dolzhny byt yavno raskryty roli, raspredelenie otvetstvennosti, dopusk, kontrol, dokumenty, eskalatsiya i prinyatie resheniy;
- prostoe rasshirenie worker-versii bez dobavleniya organizatsionnoy logiki ne schitaetsya polnotsennoy ITR-sborkoy.

Pravilo dlya lektorskogo handoff:

- paket schitaetsya `lecturer-ready`, tolko esli novyy lektor mozhet podgotovitsya bez avtora kursa ryadom;
- `instructor guide` dolzhen pokryvat `100%` aktualnogo `slide script` tekushchey versii bez "khvostov" po slaydam;
- dlya kursa dolzhen byt sobran otdelnyy `lecturer questions bank` so slozhnymi voprosami, granitsami otvetov i sluchayami, kogda nuzhna ogovorka ili eskalatsiya;
- v `instructor guide` dolzhny byt razvedeny teaching paths minimum dlya `worker` i `ITR`, esli sistema predpolagaet obe auditorii.

Pravilo dlya testa:

- test mozhno derzhat kak bank voprosov, a ne kak odin zafiksirovannyy nabor;
- dlya korotkikh i dlinnikh versiy kursa dopustimy raznye obemy testa, esli sokhranyaetsya pokrytie `core` outcomes.
- blok voprosov mozhet byt vstroen v prezentatsiyu, no dolzhen ostavatsya otklyuchaemym bez polomki osnovnogo uchebnogo potoka.
- dlya `worker` tracka minimalno nuzhny kvoty na vizualnye i situatsionnye voprosy;
- dlya `ITR` tracka nuzhny keysy po organizatsii rabot, kontrolyu i raspredeleniyu otvetstvennosti.

## 12. Release Package

Finalnyy paket dolzhen vklyuchat:

- `PPTX` minimum dlya soglasovannykh versiy kursa;
- `PDF` minimum dlya soglasovannykh versiy kursa;
- pri neobkhodimosti `online-ready` ili `self-paced` variant s ozvuchkoy;
- versii s blokom voprosov, esli on nuzhen v samoy prezentatsii;
- pri neobkhodimosti versii bez bloka voprosov;
- speaker notes;
- test / bank voprosov;
- otdelnyy klyuch otvetov;
- otdelnyy `test check sheet` dlya lektora s voprosom, variantami, pravilnym otvetom i obyasneniem;
- kratkuyu metodichku dlya prepodavatelya;
- instructor guide v vide `PDF`, po kotoromu novyy lektor mozhet podgotovitsya k provedeniyu zanyatiya;
- otdelnyy `lecturer questions bank` so slozhnymi voprosami, granitsami otvetov i podskazkami po eskalatsii;
- pri neobkhodimosti `online handoff pack` dlya perenosa kursa v budushchiy online-produkt bez peresborki yadra;
- pri neobkhodimosti metodicheskie materialy dlya rabochikh dvukh tipov:
  - `Materials 1`: A3-stendovye instruktsii, gotovye k pechati i laminatsii;
  - `Materials 2`: A5-razdatochnye materialy dlya vydachi na ruki;
- klientskiy brand layer: logo, tsveta, nazvanie zakazchika, pri neobkhodimosti kontaktnyy blok;
- release note s versiyey.

Trebovanie k instructor guide:

- dolzhen rabotat kak samostoyatelnyy material dlya podgotovki lektora;
- dolzhen vklyuchat `delivery profile` i teaching path dlya auditorii `worker / ITR / mixed`;
- dolzhen vklyuchat kursovoy passport, bystryy vkhod v professiyu, normativnyy minimum, stsenariy zanyatiya, poslaydovye poyasneniya, FAQ, tayming, spisok video i materialov, cheklist podgotovki;
- dolzhen imet blok `coverage control`, gde zafiksirovano, kakoy diapazon slaydov pokryt v etoy versii guide;
- dolzhen byt `QR-ready`: na kazhdoy stranitse dolzhno byt mesto pod opzionalnyy QR-kod na video, skhemu ili dopolnitelnyy resurs;
- dlya on-line kontura dolzhen podderzhivat paru `QR + direct link`, a ne tolko QR v odinochku.

Trebovanie k `lecturer questions bank`:

- material adresovan lektoru, a ne slushatelyu;
- dolzhen pokryvat minimum `worker`, `ITR` i `mixed` voprosy, esli kurs potentsialno vedetsya dlya raznykh auditoriy;
- po kazhdomu voprosu dolzhny byt korotkiy otvet, rasshirennyy otvet, granitsy dopustimoy interpretatsii i signal, kogda nuzhna ogovorka, lokalnyy reglament ili eskalatsiya;
- bank dolzhen snyat s lektora neobkhodimost improvizirovat v samykh riskovykh i spornykh mestakh.

Trebovanie k `online handoff pack`:

- paket adresovan ne studentu i ne lektoru, a komande, kotoraya budet sobirat budushchiy online-produkt;
- dolzhen hranit ne odin finalnyy nositel, a nabor pereispolzuemykh sloev: `online adaptation map`, `module summary pack`, `narration pack`, pri neobkhodimosti resource map i online quiz hooks;
- dolzhen pozvolyat perenosit kurs v LMS, video-kurs ili drugoy self-paced format bez povtornogo proektirovaniya vsego soderzhaniya;
- dolzhen otdelyat, chto idet v `on-screen`, chto idet v `voiceover`, chto idet v `interaction`, chto ostayotsya kak `reference`;
- dolzhen byt sinkhronizirovan s tekushchim `slide script`, outcomes i testovoy logikoy.

Trebovanie k worker materials:

- material adresovan rabochim, a ne lektoru ili metodistu;
- format bazovo `A3` kak stendovaya versiya, s dopustimoy variatsiey orientatsii pod dizayn;
- dolzhen povtoryat brand shell zakazchika: tsveta, shrifty, nazvanie, logotip, pri neobkhodimosti slogan;
- bazovaya versiya sobiraetsya na osnove tem iz prezentatsii cherez tablitsu sootneseniya `tema prezentatsii -> blok materiala`;
- dolzhen pokryvat blok `pered rabotoy / vo vremya raboty / posle raboty`;
- dolzhen vklyuchat blok `chego delat nelzya` s tipovymi oshibkami;
- bazovoe metodicheskoe posobie obyazatelno dolzhno umeshchat'sya v `1-5` listov;
- pri dopolnitelnom zaprose mozhno gotovit rasshirennoe dopolnitelnoe posobie poverkh bazovogo;
- summarnyy obem worker-paketa obychno lezhit v diapazone `3-10` listov, esli eto soglasovano s klientom;
- izobrazheniya i tekst dolzhny byt prigodny dlya pechati i laminatsii;
- nuzhno predusmatrivat do `5` variantov vizualnogo resheniya: naprimer `checklist-poster`, `step card`, `photo guide`, `icon board`, `comic`;
- stranitsy dolzhny byt yavnym obrazom prenumerovany;
- esli po tablitse tem ne khvataet dannykh, nuzhno sformirovat spisok utochnyayushchikh voprosov, a ne zapolnyat probely na ugad;
- pri neobkhodimosti mozhno ostavlyat `QR-ready` sloty na kazhdoy stranitse dlya budushchikh video ili dopolnitelnykh resursov.

Trebovanie k `Materials 2`:

- eto razdatochnyy format `A5` dlya vydachi rabotniku;
- bazovyy variant mozhno delat kak sverkhkompaktnuyu instruktsiyu s ochen melkym shriftom, no s obyazatelnym brand shell zakazchika;
- vnutri dolzhny sokhranyat'sya logotipy kompanii, nazvanie i drugie obyazatelnye identifikatory;
- vtoroy variant dolzhen sobirat'sya cherez tablitsu, analogichnuyu `Materials 1`: `tema prezentatsii -> blok A5-materiala`;
- esli po tablitse ne khvataet dannykh, nuzhno sobirat spisok utochnyayushchikh voprosov;
- format mozhet byt odnostoronnyy ili mnogostranichnyy, no dolzhen ostavat'sya udobnym dlya razdachi i khraneniya u rabochego.

Trebovanie k `test check sheet`:

- material adresovan lektoru ili proveryayushchemu, a ne slushatelyu;
- obem zavisit ot kolichestva voprosov v testovom bloke prezentatsii;
- po kazhdomu voprosu dolzhny byt:
  - tekst voprosa;
  - `4` varianta otveta;
  - bukvennaya markirovka variantov `A / B / V / G` v markdown-baze;
  - v finalnom klientskom russkoyazychnom makete varianty dolzhny vypuskat'sya kak `A / B / V / G` na kirillitse: `А / Б / В / Г`;
  - tolko `1` pravilnyy otvet;
  - otmetka pravilnogo otveta;
  - obyasnenie, pochemu on pravilnyy;
  - szhatyy kommentariy dlya lektora.

Trebovanie k design selection layer:

- do nachala visual production klient dolzhen imet vozmozhnost vybrat odin iz `10` bazovykh dizayn-kontseptov;
- etot vybor dolzhen delat'sya po preview-pack, a ne po odnomu tekstovomu opisaniyu;
- kazhdyy kontsept dolzhen minimum pokazyvat oblozhku, tipovoy kontentnyy slayd, slayd testa i finalnyy slayd;
- posle vybora kontsepta on stanovitsya bazovym visual shell dlya kursa i dlya klientskikh branded-versiy;
- uchebnoe yadro, outcomes, script i testovaya logika ne dolzhny zaviset ot vybora kontsepta;
- nado derzhat `10` gotovykh kontseptov kak bazovyy paket vybora;
- vybor dizayna dolzhen fiksirovat'sya v brief i pri neobkhodimosti v brand profile;
- esli klient ne vybral kontsept, po umolchaniyu dolzhen byt rekomendovannyy `generic` variant.

Trebovanie k klientskomu approval cycle:

- klientskiy stsenariy dolzhen ukladyvat'sya v tekushchiy pipeline bez otdelnogo "vnesistemnogo" kontura;
- na starte klient predostavlyaet iskhodnye materialy: brandbook, logotipy, refy, normativnye ili korporativnye dopolneniya, pri nalichii gotovye teksty i vizualy;
- do visual production klient mozhet vybrat odin iz `10` dizayn-kontseptov ili soglasit'sya na rekomenduemyy `generic` variant;
- posle sborki draft-deck klient poluchaet odin konsolidirovannyy paket na review, a ne razbrosannye fragmenty;
- v bazovyy paket soglasovaniya vhodit `2` klientskikh kruga pravok;
- tretiy klientskiy krug pravok ne schitaetsya normoy i dopustim tolko po otdelnomu soglasovaniyu;
- posle vtorogo klientskogo kruga pravok dalneyshee rasshirenie ili novye sushchestvennye izmeneniya dolzhny rassmatrivatsya kak novyy scope, doprabotka ili otdelnyy change request;
- esli zaprashivaetsya tretiy krug pravok, ego nuzhno yavno oformit kak change request ili spetsialno odobrennoe isklyuchenie;
- kolichestvo dopustimykh klientskikh krugov pravok dolzhno byt yavno zafiksirovano v brief.

## 13. Pravilo online-ready sborki

Esli kurs gotovitsya dlya on-line ili `self-paced` ispolzovaniya, nuzhno obespechit:

- `voiceover-ready` strukturu: u slayda est ponyatnyy tekst dlya ozvuchki ili ego osnova;
- `QR + direct link pair`: kazhdyy vneshniy resurs imeet ne tolko QR, no i obychnuyu ssylku;
- dostatochnuyu ponyatnost bez zhivogo lektora;
- tayming i logiku perekhodov dlya samostoyatelnogo prokhozhdeniya.
- `online adaptation map`: tablitzu, gde zafiksirovano, chto iz kursa stanet video, chto interaktivom, chto reference-blokom, a chto quiz-uzlom;
- `module summary pack`: korotkie vkhodnye i vykhodnye blokhi dlya kazhdogo modulia, prigodnye dlya LMS ili web-lesson;
- `narration pack`: tekst ozvuchki i transcript-ready fragmenty, kotorye mozhno otdelno peredat v online-production.

## 14. Pravilo white-label sborki

Esli kurs vypuskaetsya dlya neskolkikh zakazchikov, nuzhno otdelyat:

- `uchebnoe yadro` - logika, struktura, outcomes, testovaya matritsa;
- `brand shell` - logo, tsveta, nazvanie kompanii, kontakty, titulnye i finalnye slaydy.

Menyat mozhno bez peresborki metodiki:

- logotipy;
- tsvetovuyu palitru;
- nazvanie zakazchika;
- nazvanie professii na titulnom slayde, esli uchebnoe soderzhanie kursa ostayetsya tem zhe;
- kontaktnye i spravochnye bloki;
- oblozhku i closing slaydy.

Spetsialnyy sluchay:

- esli menyayetsya tolko professionalnoe nazvanie na pervoy stranitse, a outcomes, struktura i soderzhanie kursa ostayutsya bez izmeneniy, eto schitaetsya `title-only override`, a ne novym kursom.

Ne dolzhno zaviset ot klienta bez osobogo razloga:

- outcomes;
- logika moduley;
- osnovnoy slide script;
- bank voprosov i answer key, esli net klientskikh normativnykh dopolneniy.

## 15. Maintenance Loop

Posle reliza kurs ne zakryvaetsya navsegda.

Nuzhno fiksirovat:

- owner kursa;
- datu poslednego obnovleniya;
- osnovanie obnovleniya;
- planovuyu datu sleduyushchego prosmotra;
- spisok ustarevshikh slaydov ili moduley.

## 16. Plan pervoy iteratsii

Pervaya sborka sistemy:

1. Zafiksirovat `blueprint`.
2. Sobrat `definition of done`.
3. Sobrat `QA gates`.
4. Sozdat bazovye shablony.
5. Proyti pilot na odnom kurse.

## 17. Sleduyushchiy prakticheskiy shag

V ramkakh etogo proekta sleduet sobirat:

- operational workflow;
- task board;
- naming convention;
- folder architecture;
- artefact templates;
- QA rubrics;
- AI prompts.
