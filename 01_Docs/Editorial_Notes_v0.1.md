# Editorial Notes v0.1

## Status

- Status: `inactive / working layer`
- Data sborki: `2026-05-14`
- Owner: `vy`
- Rezhim primeneniya: `neblokiruyushchiy`

## Naznachenie

Etot dokument nuzhen, chtoby smotret na `Pipeline` i konkretno na kurs `Montazhnik_lesov` glazami redaktora na urovne vsey sistemy, a ne otdelnoy frazy ili otdelnogo spets-dokumenta.

Na tekushchem etape on:

- ne dobavlyaet novykh obyazatelnykh QA-gates;
- ne ostanavlivaet sborku `script`, `asset layer`, `deck`, `release` ili `maintenance`;
- ne podmenyaet `Copy_Production_Notes`, `Technical_Writing_Notes`, `Blueprint`, `Workflow` i `QA gates`;
- ne schitaetsya finalnoy editorial policy.

Ego zadacha seychas:

- zafiksirovat, gde tekstovaya sistema `Pipeline` uzhe zvuchit tselno, a gde raspadayetsya na raznye golosa;
- otdelit `internal working language` ot `release-grade language`;
- sledit za stabilnostyu yazykovoy politiki mezhdu `brief`, `script`, `QA`, `release` i systemnymi docs;
- podgotovit osnovu dlya bolee zhestkogo editorial layer pozhe, esli on ponadobitsya.

## Pravilo ispolzovaniya poka dokument ne aktivirovan

- eti notes smotryat ne na krasotu otdelnoy frazy, a na soglasovannost vsey tekstovoy sistemy;
- vse punkty iz dokumenta seychas schitayutsya `production guidance`, a ne `release stop`;
- esli kakoy-to punkt ne zakryt, sborka mozhet prodolzhatsya, esli smyslovoy kontur i QA-layer sokhranyayutsya;
- aktivatsiya etogo sloya kak obyazatelnogo pravila dolzhna byt otdelnym resheniem.

## Chto etot sloy delaet i chego ne delaet

Etot sloy:

- proveryaet edinuyu yazykovuyu politiku;
- smotrit na mezhdokumentnuyu soglasovannost tona;
- otslezhivaet, ne plyvut li terminy i statusnye formulirovki;
- podsvetivaet mesta, gde dokument uzhe vygladit official, no eshche govorit kak rabochiy draft.

Etot sloy ne dolzhen:

- razbirat silu otdelnoy copy-formulirovki;
- otsenivat tekhnicheskuyu polnotu spetsifikatsii kak takovoy;
- vvodit novye gate'y v `QA`;
- dublirivat `Copy_Production_Notes` ili `Technical_Writing_Notes`.

## Glavnaya editorial-pozitsiya dlya etogo proekta

`Pipeline` uzhe ne prosto pishet dokumenty.

On uzhe stroit tekstovuyu sredu, v kotoroy:

- `Blueprint` obyasnyaet printsipy;
- `Workflow` obyasnyaet poryadok raboty;
- `Script` neset uchebnoe yadro;
- `QA` proveryaet kachestvo;
- `Release` peredaet gotovyy paket dalshe.

Zadacha redaktora zdes ne v tom, chtoby "uluchshit tekst", a v tom, chtoby vse eti sloi govorili odnim i ponyatnym dlya cheloveka sposobom.

Prostoe pravilo:

Esli kazhdyy otdelnyy dokument po-svoemu khorosh, no mezhdu dokumentami slushatel ili operator teryaet yazykovuyu logiku, editorial layer eshche ne zavershen.

## Chto uzhe sdelano pravilno

- v `Blueprint` uzhe yavno vydelen editorial layer;
- v `Workflow` uzhe zashity `language style guide`, `terminology glossary` i `proofreading-review`;
- v `QA` uzhe est proverki terminologii, bitoy kodirovki i proofreading;
- systema uzhe ponimaet raznitsu mezhdu vnutrenney markdown-bazoy i release-grade paketom;
- v script uzhe silno derzhitsya printsip `1 slayd = 1 mysl`.

## Reestr editorial-riskov i pravil

| ID | Zona | Chto vazhno s tochki zreniya redaktora | Tekushchiy signal | Risk seychas | Chto delat poka |
|---|---|---|---|---|---|
| ED-01 | Language policy boundary | Dolzhno byt ponyatno, gde dopustim `translit`, gde nuzhen russkiy release-grade tekst, a gde normalny anglitsizmy sistemy | V `Blueprint` politika priznana, no course-level style guide eshche net | `high` | Ne rasshiryat release-contour bez fiksatsii yazyikovoy granitsy |
| ED-02 | Cross-document voice | `Blueprint`, `Workflow`, `Script`, `QA` i `Release` ne dolzhny zvuchat kak pyat raznykh proektov | Sistema silna, no golosa sloev poka eshche ne do kontsa vyrovneny | `medium / high` | Smotret na voice ne po dokumentu, a po tsepochke dokumentov |
| ED-03 | Terminology continuity | Odin i tot zhe etap, rol, status ili artefakt dolzhen nazyvat'sya odinakovo | Glossary predusmotren, no ne sobran dlya aktivnogo kursa | `high` | Derzhat terminology drift kak watchlist dazhe do polnoy sborki glossary |
| ED-04 | Internal vs release language | Vnutrenniy rabochiy tekst ne dolzhen sluchayno vydavat'sya za gotovyy klientskiy yazyk | Sistema markdown-first, poetomu risk estestvenen | `medium / high` | Otdelno smotret, kak govoryat working docs i kak dolzhny govorit release docs |
| ED-05 | Status voice mismatch | Dokument mozhet zayavlyat bolshe uverennosti, chem ego yazyk i soderzhanie | V nekotorykh spec-dokumentakh status zvuchit silnee, chem napolnenie | `high` | Sledit ne tolko za statusom, no i za tonom statusnoy podachi |
| ED-06 | Transition readability | Perekhod `brief -> script -> QA -> release` dolzhen byt yazykovo gladkim | Logika est, no bez style guide i glossary perekhody uyazvimy | `medium` | Prosmatrivat ne odin fail, a marshrut chteniya operatora |
| ED-07 | Register drift | Uroven formalnosti mozhet plavat mezhdu systemnym, uchebnym i release-yazykom | Vnutrennyaya i vypusknaya rechi poka ne do kontsa razvedeny | `medium` | Derzhat watchlist po registru: vnutrenniy, obuchayushchiy, release |
| ED-08 | Transliteration fatigue | Dlitelnaya rabota v translite mozhet meshat vypusknoy chistote i vizualnoy doverennosti | Risk uzhe priznann v `Blueprint` i `QA` | `medium / high` | Ne schitat translit avtomaticheski neytralnym dlya release-layer |
| ED-09 | Editorial transition risk | Dokument mozhet vygladet official, no po yazyku ostavat'sya draft-om | Osobenno chuvstvitelno v specs i handoff-dokumentakh | `medium / high` | Pometchat, gde dokument uzhe "na vitrine", no eshche ne proshyol editorial pass |
| ED-10 | Layer overlap confusion | Redaktorskiy sloy mozhet nachat dublirivat copy i technical writing | My uzhe sobirali sosednie notes-sloi | `medium` | Derzhat etot dokument uzko pro consistency, a ne pro tekst voobshche |

## Gde editorial layer deystvitelno mozhet byt usilen

### 1. Yedinaya yazykovaya granitsa

Proektu nuzhen ne prosto `language style guide`, a ponyatnoe razdelenie:

- chto normalno dlya vnutrenney markdown-bazy;
- chto normalno dlya operatora i metodista;
- chto uzhe dolzhno zvuchat kak release-grade tekst.

Pochemu eto vazhno:

- inache translit i russkiy release budut postoyanno perekhodit drug v druga bez pravila;
- inache odni docs budut "rabochimi", a drugie "ofitsialnymi" tolko po oshchushcheniyu.

### 2. Mezhdokumentnyy golos

Sisteme nuzhno, chtoby pri chtenii:

- `Blueprint`
- `Workflow`
- `Script`
- `QA`
- `Release`

chitatel ne pereuchivalsya na novyy ton kazhdye neskolko dokumentov.

Pravilo:

- systemny docs mogut byt bolee reglamentnymi;
- course docs mogut byt bolee obuchayushchimi;
- no oni dolzhny ostavatsya v odnom professionalnom semeystve golosov.

### 3. Statusnaya chestnost ne tolko v kolonke, no i v tone

Dazhe esli status dokumenta formalno ukazan pravilno, yazyk mozhet sozdavat lozhnoe oshchushchenie zavershennosti.

Pravilo:

- ne tolko `status`, no i ton dolzhen byt chestnym;
- draft ne dolzhen zvuchat kak final;
- final ne dolzhen zvuchat kak zametka dlya sebya.

## Gde editorial layer skoree vsego navredit, esli ego ne kontrollirovat

Editorial layer skoree vsego navredit:

- esli nachnet dublirivat copy-review;
- esli nachnet dublirivat technical writing-review;
- esli popytaetsya srazu perevesti vsyu sistemu iz translita v release-russkiy bez promezhutochnoy politiki;
- esli iz nablyudatelnogo sloya prevratitsya v eshche odin obyazatelnyy gate.

Pochemu:

- togda vmesto proyasneniya granits on nachnet plodit konflikt sloev;
- vmesto pomoshchi on nachnet zamedlyat sborku.

## Minimalnye prakticheskie pravila poka sloy ne aktivirovan

- smotret na voice ne po odnomu failu, a po tsepochke `brief -> script -> QA -> release`;
- ne schitat translit problemoy sam po sebe, poka ne narushena granitsa mezhdu vnutrennim i release-yazykom;
- ne vvodit cherez etot dokument novye zaprety dlya `QA`;
- ispolzovat ego kak watchlist, kogda proekt nachnet perekhodit iz working-state v release-state.

## Kogda etot sloy stoit aktivirovat pozhe

Etot sloy imeet smysl perevodit iz `inactive` v bolee aktivnyy rezhim, kogda:

- poyavitsya minimum odin vypuskaemyy release-grade kurs;
- budet sobiran `language style guide`;
- budet sobiran `terminology glossary`;
- vozniknet nuzhda peredavat proekt ne odnomu operatoru, a vtoromu cheloveku ili vo vneshniy kontur;
- stanut vidny povtoryayushchiesya sluchai, gde sistema protivorechit sama sebe ne po smyslu, a po yazyku i podache.

## Prakticheskiy vyvod seychas

Na segodnya `Pipeline` uzhe silen po smyslu, strukture i discipline.

No kak redaktorskaya sistema on eshche v perekhodnom sostoyanii:

- pravila uzhe ob'yavleny;
- chast kontrolnykh proverok uzhe est;
- no kursovoy editorial contour eshche ne do kontsa sobran.

Poetomu etot sloy poka nuzhen ne dlya upravleniya, a dlya pamyati i nablyudeniya:

chtoby kogda proekt sozreet do bolee zhestkoy editorial policy, nuzhnye signaly uzhe byli zafiksirovany i ne prikhodilos sobirat ikh zanovo.
