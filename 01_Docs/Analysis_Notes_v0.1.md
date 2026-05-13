# Analysis Notes v0.1

## Status

- Status: `inactive / working layer`
- Data sborki: `2026-05-14`
- Owner: `vy`
- Rezhim primeneniya: `neblokiruyushchiy`

## Naznachenie

Etot dokument nuzhen, chtoby smotret na `Pipeline` i konkretno na kurs `Montazhnik_lesov` glazami analitika.

Na tekushchem etape on:

- ne dobavlyaet novykh obyazatelnykh QA-gates;
- ne ostanavlivaet sborku `script`, `asset layer`, `deck`, `A3/A5` ili `release`;
- ne podmenyaet `Expert_Assessment_Notes`, `Methodology_Notes`, `Technical_Writing_Notes` i `AI_Operations_Notes`;
- ne schitaetsya finalnym research-governance lock ili finalnym evidence approval.

Ego zadacha seychas:

- otsenit polnotu i glubinu vhodnykh dannykh;
- proverit, ne ubezhali li resheniya dalshe, chem ikh dokazatelnaya baza;
- zafiksirovat gaps po istochnikam, lineynosti prichin i trascirovke resheniy;
- podgotovit osnovu dlya bolee tochnogo analysis-layer pozhe, esli on ponadobitsya.

## Pravilo ispolzovaniya poka dokument ne aktivirovan

- eti notes smotryat na kurs kak na sistemu resheniy, zavisyashchikh ot kachestva dannykh;
- vse punkty iz dokumenta seychas schitayutsya `production guidance`, a ne `release stop`;
- esli kakoy-to punkt ne zakryt, sborka mozhet prodolzhatsya, esli risk osoznan i worker-core ne lomaetsya;
- aktivatsiya etogo sloya kak obyazatelnogo pravila dolzhna byt otdelnym resheniem.

## Chto etot sloy delaet i chego ne delaet

Etot sloy:

- otsenivaet `scope vs evidence`;
- smotrit na polnotu source base;
- proveriaet, est li lineynost `istochnik -> reshenie -> artefakt`;
- otslezhivaet, ne zavyshena li deklariruemaya zrelost po sravneniyu s sobrannymi dannymi;
- podsvetivaet, gde proekt uzhe khorosho myslit, no eshche nedostatochno dokazal.

Etot sloy ne dolzhen:

- dublirivat legal risk layer;
- dublirivat metodicheskuyu kritiku po outcomes i pedagogy;
- podmenyat expert review po TB ili tekhnicheskoy korrektnosti;
- prevrashchat kazhdyi issledovatelskiy gap v blokiruyushchuyu stop-metku.

## Glavnaya analiticheskaya pozitsiya dlya etogo proekta

`Pipeline` ne dolzhen proektirovat zrelyy produktovyy contour bystree, chem on sobiraet dokazatelnuyu bazu.

Esli kurs dolzhen stat pervym referensnym produktom dlya vsego `Pipeline`, to emu nuzhno ne tolko:

- khoroshuyu arhitekturu;
- silnyy script;
- disciplinu po deliverables;

no i dostatochno polnye, prozrachnye i trasciruemye osnovaniya dlya etikh resheniy.

Glavnaya opasnost seychas ne v tom, chto sistema ne vidit gaps, a v obratnom:

ona ikh vidit dovolno chestno, no ne vsegda dostatochno ogranichivaet sebya ikh nalichiem.

Prostoe pravilo:

Esli proekt uzhe prinimaet shirokie product-level resheniya, no ne mozhet pokazat dostatochno polnuyu lineynost `source -> conclusion -> artifact`, analysis-layer eshche ne zavershen.

## Chto uzhe sdelano pravilno

- source register uzhe chestno fiksiruet required, supporting i missing istochniki;
- outcomes uzhe priznayot, gde im nuzhna bolee silnaya vizualnaya ili predmetnaya opora;
- architecture uzhe ukazyvaet zony riska peregruza i otkrytye resheniya;
- brief uzhe soderzhit mnogo operatsionnykh ogranicheniy i ne skryvaet, chego ne khvataet na starte;
- proekt v tselom bolshe sklonen fiksirovat gaps, chem zamlachivat ikh.

## Reestr analiticheskikh riskov i pravil

| ID | Zona | Chto vazhno s tochki zreniya analitika | Tekushchiy signal | Risk seychas | Chto delat poka |
|---|---|---|---|---|---|
| AN-01 | Scope outruns evidence | Product contour uzhe shirokiy, a evidence base eshche nepolnaya | Brief uzhe tyanet white-label, online, A3/A5, publishing i worker-pack | `high` | Yavno razvodit `core build` i `future extensions` |
| AN-02 | Missing critical inputs | Nekotorye klyuchevye resheniya zavisyat ot dannykh, kotorykh poka net | Net pasporta sistemy, lokalnykh reglamentov, foto/video i expert validation | `high` | Ne delat slishkom predmetnye utverzhdeniya bez dozagruzki |
| AN-03 | Weak lineage | Ne vezde dostatochno zhestko proshita svyaz `istochnik -> reshenie -> artefakt` | Source register silen, no course-level tracing eshche ne vezde yavna | `medium / high` | Uslizhat source-to-content proyazku v kritichnykh blokakh |
| AN-04 | Maturity overstatement | Dokumenty inogda zvuchat gotovee, chem podtverzhdayut dannye | Architecture gotova dlya scriptwriting pri nalichii otkrytykh resheniy | `medium / high` | Derzhat chestnost statusov i uslovnost gotovnosti |
| AN-05 | Outcome dependency lag | Outcomes silny, no chast iz nikh opiraetsya na eshche nedosobrannyy evidence layer | Dlya ryada LO nuzhny foto, skhemy i pasport sistemy | `medium / high` | Fiksirovat, gde outcome uzhe stabilen, a gde eshche uslovno podderzhan |
| AN-06 | Brief inflation | Brief opisivaet ekosistemu bystree, chem pervuyu postavku | Mnogo optional contours i future-state deliverables uzhe v osnovnom brief | `medium` | Dlya pervogo kursa derzhat analiticheskiy prioretet na minimalnom reference build |
| AN-07 | Research depth asymmetry | Normativnaya baza silnee, chem polevaya i predmetnaya | Formalnye istochniki sobrany luchshe, chem specific system evidence | `medium / high` | Razvesti `normative sufficiency` i `practical sufficiency` |
| AN-08 | Assumption bleed | Chast rabochikh predpolozheniy mozhet neyavno stanovitsya bazovymi resheniyami | Proekt uzhe zhivet kak budto generic base dostatochna dlya mnogikh contour | `medium` | Markirovat predpolozheniya kak predpolozheniya do ikh podtverzhdeniya |
| AN-09 | Data-to-deliverable imbalance | Na issledovatelskom osnove uzhe stroitsya mnogo downstream deliverables | Design, publishing, worker, online layers rastut bystree source closure | `medium / high` | Sledit, chtoby downstream ne operezhal core evidence |
| AN-10 | Good thinking, weak gating | Sistema umna v refleksii, no ne vsegda perevodit eto v prinyatnye ogranicheniya | Gaps opisany, no scope vse ravno rastet shiroko | `medium` | Ispolzovat notes-layer kak napominanie o discipline, a ne tolko kak zhurnal nablyudeniy |

## Gde etot sloy deystvitelno mozhet byt usilen

### 1. Evidence boundary

Kursu nuzhno ne tolko znat, chto u nego est gaps, no i yavno derzhat granitsu:

- chto uzhe dokazano dostatochno;
- chto rabotaet kak generic predpolozhenie;
- chto nelzya zhestko fiksirovat bez novykh dannykh.

Pochemu eto vazhno:

- bez etogo kurs riskuet stat khoroshim po forme i logike, no slishkom smelym po stepeni predmetnosti.

### 2. Source-to-artifact tracing

Sisteme nuzhna bolee vidimaya svyaz:

- kakoy istochnik derzhit outcome;
- kakoy istochnik derzhit arkhitekturnoe reshenie;
- kakoy istochnik derzhit slide-level predmetnost.

Pravilo:

- esli kriticheskiy content ne mozhet byt bystro privyazan k istochniku ili podtverzhdennomu predpolozheniyu, ego zrelost zavyshena.

### 3. Core build analytics

Pervaya postavka nuzhdaetsya v bolee zhestkom razdelenii:

- chto nuzhno dlya reference build seychas;
- chto nuzhno dlya silnogo production product pozhe;
- chto voobshche otnositsya k future contour, a ne k tekushchemu dokazatelnomu minimumu.

## Gde etot sloy skoree vsego navredit, esli ego ne kontrolirovat

Analysis-layer skoree vsego navredit:

- esli nachnet prevrashchat kazhduyu nedostachu v blokiruyushchiy krizis;
- esli budet putat issledovatelskuyu chestnost s proizvodstvennoy ostanovkoy;
- esli stanet dublirivat expert, OT i legal layers vmesto svoego uzkogo fokusa;
- esli budet nagruzhat sistemu eshche odnim "dokumentom pro vse plokho".

Pochemu:

- togda proekt poteryaet temp i nachnet bolshe reflektirovat, chem sobirat.

## Minimalnye prakticheskie pravila poka sloy ne aktivirovan

- ne schitat polnyy brief dokazatelstvom polnoty issledovaniya;
- ne schitat chestno opisannye gaps avtomaticheski uderzhannymi riskami;
- derzhat razdelenie mezhdu `generic workable base` i `specific validated detail`;
- ne rasshiryat downstream contours bystree, chem zakryvayutsya kriticheskie source gaps;
- proveriat, est li u vazhnykh resheniy ponyatnyy evidence trail.

## Kogda etot sloy stoit aktivirovat pozhe

Etot sloy imeet smysl perevodit iz `inactive` v bolee aktivnyy rezhim, kogda:

- poyavyatsya realnye lokalnye reglamenty, pasporta i expert inputs;
- nuzhno budet otsenivat ne tolko kurs, no i repeatable research standard dlya sleduyushchikh professiy;
- vozniknet risk, chto downstream production layers sistematicheski operedelyayut issledovatelskuyu bazu;
- sistemu nuzhno budet gotovit k bolee formalnoy peredache ili auditability.

## Prakticheskiy vyvod seychas

Na segodnya `Pipeline` uzhe silen kak refleksivnaya i prozrachnaya sistema sborki.

No `Montazhnik_lesov` kak analiticheski polnostyu zakrytyy kurs eshche v perekhodnom sostoyanii:

- normativnaya baza uzhe khoroshaya;
- logika gaps uzhe chestno zafiksirovana;
- outcomes i architecture uzhe myslat pravilno;
- no scope, product contour i downstream deliverables mestami rastut bystree, chem zakryvaetsya evidence base.

Poetomu etot sloy poka nuzhen ne dlya upravleniya, a dlya nablyudeniya:

chtoby kogda sistema sozreet do bolee zhestkogo analysis-review, nuzhnye signaly uzhe byli zafiksirovany i ne prikhodilos vosstanavlivat ikh zadnim chislom.
