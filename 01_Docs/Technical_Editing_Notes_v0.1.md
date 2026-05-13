# Technical Editing Notes v0.1

## Status

- Status: `inactive / working layer`
- Data sborki: `2026-05-14`
- Owner: `vy`
- Rezhim primeneniya: `neblokiruyushchiy`

## Naznachenie

Etot dokument nuzhen, chtoby smotret na `Pipeline` i konkretno na kurs `Montazhnik_lesov` glazami tekhnicheskogo redaktora.

Na tekushchem etape on:

- ne dobavlyaet novykh obyazatelnykh QA-gates;
- ne ostanavlivaet sborku `script`, `asset layer`, `deck`, `A3/A5` ili `release`;
- ne podmenyaet `Technical_Writing_Notes`, `Editorial_Notes` i `QA_Notes`;
- ne schitaetsya finalnym release-edit lock ili finalnym proofread approval.

Ego zadacha seychas:

- otsenit tochnost, soglasovannost i redaktsionnuyu gotovnost dokumentov;
- proverit, ne zvuchat li statusy i zagolovki zrelee, chem ikh realnoe napolnenie;
- podsvetit razryvy mezhdu sistemnymi pravilami dokumentatsii i fakticheskim sostoyaniem course-artefaktov;
- podgotovit osnovu dlya bolee tochnogo technical-editing layer pozhe, esli on ponadobitsya.

## Pravilo ispolzovaniya poka dokument ne aktivirovan

- eti notes smotryat na kurs kak na dokumentatsionnyy paket, a ne tolko kak na uchebnyy produkt;
- vse punkty iz dokumenta seychas schitayutsya `production guidance`, a ne `release stop`;
- esli kakoy-to punkt ne zakryt, sborka mozhet prodolzhatsya, esli status dokumenta chestno otrazhaet ego zrelost;
- aktivatsiya etogo sloya kak obyazatelnogo pravila dolzhna byt otdelnym resheniem.

## Chto etot sloy delaet i chego ne delaet

Etot sloy:

- otsenivaet `document honesty`;
- smotrit na soglasovannost mezhdu pravilami sistemy i realnymi artefaktami;
- proveriaet, zakryty li bazovye redaktsionnye opory: normy yazyka, terminov, statusov i proofread-logiki;
- otslezhivaet, ne nachinaet li sistemnyy dokument vrat o gotovnosti konkretnoi rabochei versii;
- podsvetivaet, gde kurs uzhe khorosho napisan kak framework, no eshche ne do konca vydan kak dokument.

Etot sloy ne dolzhen:

- dublirivat copy-critique na urovne otdelnykh formulirovok;
- dublirivat technical writing critique pro arhitekturu specs;
- podmenyat QA i release-reshenie;
- razbirat metodiku kursa kak takovuyu.

## Glavnaya pozitsiya dlya etogo proekta

Zrelaya dokumentatsionnaya sistema ne dolzhna zvuchat uverennee, chem gotovy ee konkretnye dokumenty.

Esli kurs dolzhen stat pervym referensnym produktom dlya vsego `Pipeline`, to emu nuzhno ne tolko:

- silnye pravila writer core;
- silnye pravila proofread i versioning;
- silnye release i QA kontury;

no i dokumenty, kotorye chestno sootnosyat svoi statusy, zagolovki i claims s realnoi stepenyu gotovnosti.

Glavnaya opasnost seychas ne v tom, chto sistema ne znaet pravil, a v obratnom:

ona ikh znaet khorosho, no ne vse course-level artefakty uzhe uspevayut zhit po etim pravilam.

Prostoe pravilo:

Esli sistemnyi dokument trebuet ot artefakta odnogo urovnya zrelosti, a sam artefakt eshche chestno zhivet kak working draft, technical-editing layer eshche ne zavershen.

## Chto uzhe sdelano pravilno

- `Blueprint` i `Operational_Workflow` uzhe yavno formuliruyut writer core, language policy, proofread i version discipline;
- script chestno priznaet, chto on eshche v perekhodnom formate i ne pretvoryaetsya finalnym writer-complete dokumentom;
- QA uzhe proveryaet terminologiyu, kodirovku i yazykovuyu odnorodnost;
- release- i publishing-dokumenty chasto chestno pomechayut `planned`, `partial`, `no`, `not approved`;
- proekt uzhe kultiviruet dokumentatsionnuyu chestnost kak tsennost.

## Reestr riskov tekhnicheskoy redaktury i pravil

| ID | Zona | Chto vazhno s tochki zreniya tekhnicheskogo redaktora | Tekushchiy signal | Risk seychas | Chto delat poka |
|---|---|---|---|---|---|
| TE-01 | Missing language base | Sistema trebuet language style guide i glossary, no course-level opory eshche net | Oba fayla dlya `Montazhnik_lesov` otsutstvuyut | `high` | Ne vydavat kurs kak release-grade bez yazykovoi normy i terminologicheskoy opory |
| TE-02 | Writer core gap | Systema uzhe zhdyot polnyi writer core, a script eshche v perekhodnom formate | Script sam priznaet backfill poley pozhe | `medium / high` | Derzhat status script chestnym i ne zavyshat ego zrelost |
| TE-03 | Status inflation | Chast dokumentov zvuchit gotovee, chem ona est | Print spec `starter draft / yes`, pri etom mnogo `utochnit` | `high` | Razvodit `prepared`, `usable`, `production-ready` bolee akuratno |
| TE-04 | Index drift | Meta-navgatsiya mozhet otstavat ot realnogo sostoyaniya proekta | Master index eshche ukazyvaet na uzhe proydyonnyi sledushchiy artefakt | `medium` | Obnovlyat entry-point docs posle znachimykh sdvigov |
| TE-05 | Transitional language noise | Translit, kirillitsa i vnutrenniy rabochiy format eshche ne vsegda zhestko razvedeny | Sistema imeet pravila, no course-level guide otsutstvuet | `medium / high` | Derzhat yavnuyu politiku: chto v translite, chto v release-russkom |
| TE-06 | Rule-to-artifact lag | Pravila sistemy uzhe silny, no ne vse artefakty do nikh dotyanulis | Workflow zrel, mnogie course docs eshche dogonyayut | `medium` | Otdelyat sistemnuyu normu ot fakticheskogo statusa kursa |
| TE-07 | Documentation role blur | Chast dokumentov smeshivaet rabochiy, release i proofread rezhimy | Brief i spec-doki tyanut i tekushchuyu, i budushchuyu zrelost | `medium` | Yavno markirovat rezhim dokumenta: working, transition, release |
| TE-08 | Claim-density risk | Dokument mozhet davat slishkom mnogo obeshchaniy o budushchem konture | Brief i release skeleton opisivayut shirokuyu ekosistemu | `medium` | Otdelyat obyazatelny tekushchiy contour ot planned-nadstroek |
| TE-09 | Local cleanliness vs system cleanliness | Otdelnye fayly mogut byt chistymi, no sistema v tselom eshche shumnaya | Mnogo sloev, planned files i perekhodnykh statuses | `medium` | Sledit ne tolko za failami, no i za kachestvom paketa kak tselogo |
| TE-10 | Release-language mismatch | Dokument mozhet byt polezen kak rabochiy, no zvuchat kak vypushchennyy | Chast statusov i nazvaniy uje pochti "vypuskayut" dokument | `medium / high` | Vyrovnyat ton dokumenta pod ego realnuyu stepen gotovnosti |

## Gde etot sloy deystvitelno mozhet byt usilen

### 1. Status honesty

Kazhdyy kursovoy dokument dolzhen ne tolko imet status, no i govorit na yazyke etogo statusa.

Pochemu eto vazhno:

- esli working draft zvuchit kak release-grade spec, on nachinaet vvodit v zabluzhdenie dazhe pri chestnom soderzhanii.

### 2. Course-level editing base

Sisteme nuzhny ne tolko globalnye pravila, no i realnye opory vnutri kursa:

- language style guide;
- terminology glossary;
- proofread pass;
- aktualnyy entry-point index.

Pravilo:

- esli globalnaya norma est, a course-level opory net, redaktorskaya sistema formalno est, no prakticheski ne polna.

### 3. Document mode labeling

Polezno yavno razvesti rezhimy:

- working draft;
- transition draft;
- release skeleton;
- release-grade document.

Pochemu eto vazhno:

- togda chitatel znaet, kak otnosit'sya k dokumentu, i ne schityvaet ego bolee zrelym, chem on est.

## Gde etot sloy skoree vsego navredit, esli ego ne kontrolirovat

Technical-editing layer skoree vsego navredit:

- esli nachnet trebovat release-grade redaktury ot working-draft dokumentov slishkom rano;
- esli podmenit dokumentatsionnuyu chestnost kosmeticheskoy "gladkostyu";
- esli stanet dublirivat technical writing i editorial layers vmesto svoego uzkogo fokusa;
- esli budet borotsya za ton i formu tam, gde eshche ne zakryto soderzhanie.

Pochemu:

- togda proekt nachnet polirovat poverkhnost ranshe, chem stabiliziruet osnovanie.

## Minimalnye prakticheskie pravila poka sloy ne aktivirovan

- ne schitat sistemnuyu normu avtomaticheski vnedrennoy v kazhdom course-dokumente;
- ne schitat status `starter draft / yes` ravnym production-grade gotovnosti;
- derzhat metadokumenty v aktualnom sostoyanii, esli oni ispolzuyutsya kak entry point;
- ne vypuskat dokumenty v release-ton bez minimalnogo course-level editing base;
- proveriat ne tolko tekst, no i chestnost ego samoopisaniya.

## Kogda etot sloy stoit aktivirovat pozhe

Etot sloy imeet smysl perevodit iz `inactive` v bolee aktivnyy rezhim, kogda:

- poyavyatsya realnye release-grade dokumenty po kursu;
- budet nuzhno gotovit kurs k peredache drugomu operatoru, lektoru ili klientu;
- systema nachnet zhit ne tolko kak baza razrabotki, no i kak vypuskaemaya dokumentatsionnaya sreda;
- vozniknet zapros na bolee zhestkiy proofread i documentation cleanup pass.

## Prakticheskiy vyvod seychas

Na segodnya `Pipeline` uzhe silen kak dokumentatsionnyy framework.

No `Montazhnik_lesov` kak tekhnicheski ottredaktirovannyy paket eshche v perekhodnom sostoyanii:

- globalnye pravila uzhe khoroshi;
- script uzhe chestno opisyvaet svoyu nezavershennost;
- QA uzhe znaet, chto proveriat;
- no course-level editing base, status honesty i aktualnost entry-point docs eshche ne do kontsa vyrovneny.

Poetomu etot sloy poka nuzhen ne dlya upravleniya, a dlya nablyudeniya:

chtoby kogda kurs sozreet do bolee zhestkogo technical-editing review, nuzhnye signaly uzhe byli zafiksirovany i ne prikhodilos vosstanavlivat ikh zadnim chislom.
