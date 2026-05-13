# QA Notes v0.1

## Status

- Status: `inactive / working layer`
- Data sborki: `2026-05-14`
- Owner: `vy`
- Rezhim primeneniya: `neblokiruyushchiy`

## Naznachenie

Etot dokument nuzhen, chtoby smotret na `Pipeline` i konkretno na kurs `Montazhnik_lesov` glazami QA-spetsialista.

Na tekushchem etape on:

- ne dobavlyaet novykh obyazatelnykh QA-gates poverkh uzhe sushchestvuyushchikh;
- ne ostanavlivaet sborku `script`, `asset layer`, `deck`, `A3/A5` ili `release`;
- ne podmenyaet `QA_Gates_v1`, `Methodology_Notes`, `Analysis_Notes` i `Technical_Writing_Notes`;
- ne schitaetsya finalnym acceptance protocol ili finalnym release approval.

Ego zadacha seychas:

- otsenit, naskolko proekt proveriaem ne tolko po ideye, no i po protsedure;
- zafiksirovat razryvy mezhdu umnymi gates i realnymi evidence-artefaktami;
- podsvetit, gde stage criteria uzhe silnye, a entry criteria eshche slaby;
- podgotovit osnovu dlya bolee tochnogo QA-layer pozhe, esli on ponadobitsya.

## Pravilo ispolzovaniya poka dokument ne aktivirovan

- eti notes smotryat na kurs kak na obekt proverki, a ne tolko kak na obekt razrabotki;
- vse punkty iz dokumenta seychas schitayutsya `production guidance`, a ne `release stop`;
- esli kakoy-to punkt ne zakryt, sborka mozhet prodolzhatsya, esli risk osoznan i ne vytdayetsya za finalno proverennoye kachestvo;
- aktivatsiya etogo sloya kak obyazatelnogo pravila dolzhna byt otdelnym resheniem.

## Chto etot sloy delaet i chego ne delaet

Etot sloy:

- otsenivaet `testability of the system`;
- smotrit na gates, definition of done i entry criteria;
- proveriaet, est li u kriteriev ponyatnye sposoby podtverzhdeniya;
- otslezhivaet, ne zapuskayetsya li review slishkom rano otnositelno gotovnosti artefaktov;
- podsvetivaet, gde systema uzhe khorosho myslit o kachestve, no eshche ne zakryla protseduru ego dokazatelstva.

Etot sloy ne dolzhen:

- dublirivat sam `QA_Gates_v1`;
- podmenyat metodicheskuyu, ekspertuyu ili legal validatsiyu;
- prevrashchat kazhdyy gap v full stop;
- zamenyat release decision soboy.

## Glavnaya QA-pozitsiya dlya etogo proekta

Khoroshie QA-gates sami po sebe eshche ne garantiruut khoroshee QA.

Esli kurs dolzhen stat pervym referensnym produktom dlya vsego `Pipeline`, to emu nuzhno ne tolko:

- imet umnye kriterii;
- imet release skeleton;
- imet definition of done;

no i imet ponyatnye `entry criteria`, evidence rules i fizicheski sushchestvuyushchie artefakty dlya proverki.

Glavnaya opasnost seychas ne v tom, chto sistema ne dumaet o kachestve, a v obratnom:

ona dumaet o nem ochen khorosho, no mestami silnee, chem poka mozhet ego protsedurno podtverdit.

Prostoe pravilo:

Esli gate umnyy, no neyasno, kak ego prokhodit na praktike i kakim artefaktom on dokazyvaetsya, QA-layer eshche ne zavershen.

## Chto uzhe sdelano pravilno

- `QA_Gates_v1` uzhe pokryvaet ves pipeline ot intake do maintenance;
- v release i publishing docs uzhe chestno fiksiruyutsya `planned`, `partial`, `no` i `not approved`;
- first visual build uzhe pytaetsya govorit cherez `definition of done`, a ne tolko cherez opisanie rabot;
- proekt v tselom sklonen chestno oboznachat neproverennye zony vmesto togo, chtoby maskirovat ikh pod "almost ready";
- release contour uzhe osoznaet rights, preflight, fonts, print-ready i digital-ready kak otdelnye proveryaemye statusy.

## Reestr QA-riskov i pravil

| ID | Zona | Chto vazhno s tochki zreniya QA | Tekushchiy signal | Risk seychas | Chto delat poka |
|---|---|---|---|---|---|
| QA-01 | Smart gates, weak entry | Gates silny, no ne vsegda ponyatno, kogda stage voobshche mozhno otkryvat | `QA_Gates_v1` podroben, no entry criteria redko sformulirovany otdelno | `high` | Dlya klyuchevykh stages vyvesti minimalnyy fizicheskiy nabor artefaktov |
| QA-02 | Skeleton review risk | Release docs uzhe est, no bolshaya chast actual outputs eshche `planned` | Release note chesten, no contour poka skeletnyy | `high` | Ne putat nalichie release-ramki s nalichiem release-obyekta |
| QA-03 | DoD without method | Definition of done uzhe sformulirovan, no ne vsegda imeet metod proverki | First visual build silen po smyslu, no ne do kontsa operationalized | `medium / high` | Dopolnyat DoD sposobom proverki, a ne tolko formulirovkoy |
| QA-04 | Evidence ambiguity | Ne u kazhdogo kriteriya ponyaten dokazatelnyy artefakt | V stage 09-12 mnogo silnykh trebovaniy, no ne vsegda yasen proof-object | `medium / high` | Dlya kritichnykh kriteriev fiksirovat evidence type |
| QA-05 | Premature review | Review mozhet nachatsya ranshe, chem est chto review-it | First build i release kontur eshche working / planned | `medium / high` | Otdelyat working review ot formal stage review |
| QA-06 | Publishing hard-fail blur | Publishing docs sami govoryat `no`, `partial`, `net`, no hard fail logic eshche ne vydelena otdelno | Handoff pack chesten, no fail boundary ne svernut v prostoe pravilo | `medium` | Dlya publishing contour sdelat yavnye no-go usloviya |
| QA-07 | Transferability test gap | Systema khochet, chtoby kurs peredavalsya drugomu lektoru, no metod proverki etogo ne opisan | Gates pravilno sprashivayut ob etom | `medium` | Otdelno opredelit transferability check kak scenario |
| QA-08 | Language-quality gate blur | Est trebovaniya k proofread, terminology i encoding, no ne vsegda yasno, kto i chem eto zakryvaet | QA-gates umny, no role mapping eshche slabovat | `medium` | Svyazat yazykovye QA-kriterii s konkretnymi artefaktami i review pass |
| QA-09 | Planned deliverable inflation | Mnogie file slots uzhe opisany, khotya samih file outputs poka net | Release matrix obshirna uzhe seychas | `medium` | Ne schitat planned matrix dokazatelstvom completeness |
| QA-10 | Quality thinking ahead of process | Kul'tura kachestva uzhe vyrosla, protsedura eshche dogonyaet | Proekt refleksiven, no ne vsegda protsedurno zhestok | `medium` | Perevesti samye kritichnye idei kachestva v prostye proveryaemye rutiny |

## Gde etot sloy deystvitelno mozhet byt usilen

### 1. Entry criteria by stage

Sistema nuzhdaetsya ne tolko v stage gates, no i v prostom otvete:

- chto dolzhno uzhe sushchestvovat;
- v kakom vide;
- chtoby etot stage review imel smysl.

Pochemu eto vazhno:

- bez etogo review mozhet zapuskatsya kak ritual, a ne kak proverka.

### 2. Evidence mapping

Kriteriyam nuzhna ne tolko formulirovka, no i dokazatelnyy obekt:

- kakim failom;
- kakim checklistom;
- kakim prosmotrom;
- kakim statusom eto podtverzhdaetsya.

Pravilo:

- esli PASS nelzya obyektivizirovat, kriteriy eshche ne do kontsa operatsionalen.

### 3. Working review vs formal review

Proektu polezno yavno razvesti:

- rabochiy review drafta;
- stage review;
- release review;
- publishing review.

Pochemu eto vazhno:

- togda sistema ne budet slishkom rano govorit o prokhozhdenii togo, chto eshche tolko sobiraetsya.

## Gde etot sloy skoree vsego navredit, esli ego ne kontrolirovat

QA-layer skoree vsego navredit:

- esli nachnet blokirovat production pri kazhdom nepustom planned-slot;
- esli budet trebuvat release-grade dokazatelstv dlya working-draft urovenya;
- esli podmenit zdravyi smysl byurokratiey;
- esli stanet eshche odnim dokumentom pro "kachestvo voobshche", a ne pro proveryaemost.

Pochemu:

- togda proekt nachnet bolshe otchityvatsya o kachestve, chem realno ego uluchshat.

## Minimalnye prakticheskie pravila poka sloy ne aktivirovan

- ne schitat nalichie gate avtomaticheski ravnym nalichiyu protsedury prokhozhdeniya;
- ne schitat planned deliverables dokazatelstvom completeness;
- dlya kritichnykh stages fiksirovat minimalnyy evidence bundle;
- ne zapuskat publishing review, poka publishing contour sam sebe stavit `no` po bazovym statusam;
- proveriat, est li u definition of done metod proverki, a ne tolko formulirovka.

## Kogda etot sloy stoit aktivirovat pozhe

Etot sloy imeet smysl perevodit iz `inactive` v bolee aktivnyy rezhim, kogda:

- poyavitsya realnyy first build deck i release-file set;
- nuzhno budet provodit ne tolko razrabotku, no i formalnye stage reviews;
- publishing contour podoydet blizhe k realnoy peredache;
- sistemu nuzhno budet gotovit k bolee zhestkomu acceptance cycle.

## Prakticheskiy vyvod seychas

Na segodnya `Pipeline` uzhe silen kak kultura QA-myshleniya.

No `Montazhnik_lesov` kak protsedurno proveryaemyy kurs eshche v perekhodnom sostoyanii:

- gates uzhe umnye;
- release contour uzhe chestnyy;
- working definitions uzhe poyavilis;
- no entry criteria, evidence rules i formalnaya operatsionalizatsiya proverki eshche ne do kontsa zafiksirovany.

Poetomu etot sloy poka nuzhen ne dlya upravleniya, a dlya nablyudeniya:

chtoby kogda sistema sozreet do bolee zhestkogo QA-review, nuzhnye signaly uzhe byli zafiksirovany i ne prikhodilos vosstanavlivat ikh zadnim chislom.
