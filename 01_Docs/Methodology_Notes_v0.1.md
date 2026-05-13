# Methodology Notes v0.1

## Status

- Status: `inactive / working layer`
- Data sborki: `2026-05-14`
- Owner: `vy`
- Rezhim primeneniya: `neblokiruyushchiy`

## Naznachenie

Etot dokument nuzhen, chtoby smotret na `Pipeline` i konkretno na kurs `Montazhnik_lesov` glazami metodologa.

Na tekushchem etape on:

- ne dobavlyaet novykh obyazatelnykh QA-gates;
- ne ostanavlivaet sborku `script`, `asset layer`, `deck`, `test` ili `release`;
- ne podmenyaet `Blueprint`, `Workflow`, `QA_Gates`, `Expert_Assessment_Notes`, `Copy_Production_Notes` i drugie uzkie notes-sloi;
- ne schitaetsya finalnoy metodicheskoy politikoy sistemy.

Ego zadacha seychas:

- zafiksirovat kachestvo uchebnoy logiki kursa;
- proverit, kak `outcomes`, `architecture`, `worker behavior map`, `script` i `test contour` derzhatsya vmeste;
- podsvetit mesta, gde kurs uzhe silen kak instructional system, a gde eshche zavisit ot nedosobrannykh sloev;
- podgotovit osnovu dlya bolee zhestkogo methodology-review layer pozhe, esli on ponadobitsya.

## Pravilo ispolzovaniya poka dokument ne aktivirovan

- eti notes smotryat na kurs kak na sistemu obucheniya, a ne kak na nabor slaydov;
- vse punkty iz dokumenta seychas schitayutsya `production guidance`, a ne `release stop`;
- esli kakoy-to punkt ne zakryt, sborka mozhet prodolzhatsya, esli `worker core` i QA-layer sokhranyayutsya;
- aktivatsiya etogo sloya kak obyazatelnogo pravila dolzhna byt otdelnym resheniem.

## Chto etot sloy delaet i chego ne delaet

Etot sloy:

- otsenivaet `learning logic`;
- smotrit na svyazku `outcomes -> architecture -> script -> test`;
- otslezhivaet `behavior spine`;
- proveriaet, ne otryvaetsya li ocenivanie ot obuchayushchego kontura;
- podsvetivaet `methodical overload`;
- fiksiruet zavisimost metodiki ot nedosobrannogo visual layer.

Etot sloy ne dolzhen:

- povtoryat copy-review;
- zamenyat expert-review ili legal-review;
- razbirat release-pakety kak publishing system;
- vvodit novye stage-rules ili menyat `Definition_of_Done`.

## Glavnaya methodology-pozitsiya dlya etogo proekta

Samaya silnaya storona kursa v tom, chto on uzhe stroitsya ne ot spiska tem, a ot deystviy, resheniy i stop-logiki.

Ego glavnaya metodicheskaya opasnost seychas ne v slaboy strukture, a v tom, chto chast obuchayushchey dokazatelnosti eshche ne zakreplena:

- cherez visual layer;
- cherez polnyy script;
- cherez dostatochno predmetnye situatsii;
- cherez zamknutyy behavior-to-test contour.

Prostoe pravilo:

Esli kurs pravilno obyasnyaet, no poka ne do kontsa dokazal, chto uchenik smozhet raspoznat risk i prinyat reshenie v situatsii, methodology-layer eshche ne zavershen.

## Chto uzhe sdelano pravilno

- outcomes sformulirovany kak nablyudaemye deystviya ili resheniya;
- worker behavior map uzhe sobiraet kurs v `7 critical behaviors`;
- architecture stroitsya ot modulnoy logiki, a ne ot sluchaynogo nabora tem;
- v script uzhe silno derzhitsya printsip `odna glavnaya mysl`;
- kurs khorosho orientirovan na `worker` track i na yazyk deystviy.

## Reestr methodology-riskov i pravil

| ID | Zona | Chto vazhno s tochki zreniya metodologa | Tekushchiy signal | Risk seychas | Chto delat poka |
|---|---|---|---|---|---|
| MT-01 | Visual dependency of learning | Chast outcomes mozhno proverit tolko pri silnom foto/skhema layer | Dlya `LO-03`, `LO-05`, `LO-07`, `LO-11` pryamo priznana zavisimost ot vizualov | `high` | Ne schitat eti outcomes polnostyu metodicheski zakrytymi do stabilnogo visual support |
| MT-02 | Underweighted escalation logic | Stop/eskalatsiya ne dolzhna byt "vspomogatelnoi" temoy | `LO-13` formalno `supporting`, no po worker logic on nesushchiy | `high` | Smotret na `LO-13` kak na odin iz bazovykh safety-outcomes |
| MT-03 | Assessment separation | Test ne dolzhen zhyt otdelno ot samogo obucheniya | Finalnyy test-vstavka ochen tyazhelaya i otdelyaemaya | `medium / high` | Chast ocenivaniya vstraivat v khod moduley, a ne tolko v final |
| MT-04 | Architecture optimism | Arkhitektura ne dolzhna schitat'sya gotovoy ran'she, chem zakryty kritichnye metodicheskie razvilki | `scriptwriting yes`, no est otkrytye resheniya po tipu lesov i peregruzu | `medium / high` | Chestnee derzhat status kak uslovno gotovyy karkas, a ne polnostyu stabilnuyu arkhitekturu |
| MT-05 | Behavior spine incompleteness | Critical behaviors dolzhny zamykat'sya cherez slayd, situatsiyu, test i worker-material | Worker map silna, no sama priznaet zavisimost ot `20-43` i moduley `08-09` | `high` | Schitat behavior map silnym starter layer, no eshche ne zakrytym konturom |
| MT-06 | Overload in heavy modules | `Heavy` moduli legko skatyvayutsya v pereizbytok informatsii vmesto odnoi logiki resheniya | Moduli `06`, `07`, `11` uzhe priznany tyazhelymi | `medium / high` | Zashchishchat odnu metodicheskuyu os dlya kazhdogo heavy-modulya |
| MT-07 | Mixed teaching purpose | Modul mozhet nachat odnovremenno obyasnyat, proverat i preduprezhdat obo vsem srazu | Risk uzhe priznan v `07` i `08` | `medium` | Razvodit obyasnenie, raspoznavanie i kontrol resheniy po rolyam slayda |
| MT-08 | Situation poverty | Safety-course ne dolzhen ostavat'sya glavnym obrazom tekstovym | Dlya `LO-08` i `LO-12` nuzhny bolee predmetnye situatsii | `medium / high` | Posle utochneniya tipa lesov usilit predmetnye keysy |
| MT-09 | Worker transfer risk | Kurs dolzhen perenositsya v deystvie, a ne tolko v pravilnyy otvet | Worker map silna, no materialy i assets eshche ne vsyudu podtyanuty | `medium / high` | Derzhat prioritet na transfer v rabochee deystvie, a ne na teoreticheskoe pokrytie |
| MT-10 | Draft-to-method maturity gap | Expanded script eshche ne raven stabilnoy obuchayushchey sisteme | Script pokryvaet tolko moduli `01-07`, `08-09` eshche vperedi | `medium / high` | Ne pereotsenivat metodicheskuyu zavershennost do zamykaniya polnogo worker-path |

## Gde methodology-layer deystvitelno mozhet byt usilen

### 1. Svyazka outcome -> behavior -> proof

Kursu nuzhno ne tolko imet outcomes i behavior map otdelno, no i derzhat yavnoe dokazatelstvo:

- chemu uchim;
- kakoe povedenie hotim;
- kakoy slayd eto formiruet;
- kakaya situatsiya ili vopros eto proveriaet;
- kak worker-material eto povtoryaet.

Pochemu eto vazhno:

- inache sistemnaya sila proekta budet sushchestvovat v dokumentakh, no ne v obuchayushchem opyte.

### 2. Vstroennoe ocenivanie

Dlya worker-kursa osobenno vazhno, chtoby proverka byla ne tolko v kontse, no i po khodu marshruta.

Pravilo:

- finalnyy test nuzhen;
- no mikro-situatsii, compare-decisions i mini-checkpoints dolzhny poyavlyat'sya do finala.

### 3. Zashchita heavy-moduley

Moduli `06`, `07` i finalnyy blok proverki nuzhdayutsya v metodicheskoy discipline bolshe vsego.

Pravilo:

- odin heavy-modul = odna nesushchaya zadacha dlya slushatelya;
- ne meshat v odnom module slishkom mnogo raznykh tipov umstvennoy raboty bez opor.

## Gde methodology-layer skoree vsego navredit, esli ego ne kontrollirovat

Methodology-layer skoree vsego navredit:

- esli popytaetsya perestroit kurs v akademicheskuyu sistemu vmesto worker-course;
- esli nachnet trebovat idealnoy metodicheskoy polnoty do stabilizatsii asset-layer;
- esli budet dublirivat expert-layer ili QA;
- esli iz nablyudatelnogo sloya stanet eshche odnim tormozom sborki.

Pochemu:

- togda vmesto usileniya transfera v deystvie on dobavit theoreticheskuyu tyazhest;
- vmesto pomoshchi production on nachnet zamorazhivat iteratsii.

## Minimalnye prakticheskie pravila poka sloy ne aktivirovan

- ne schitat outcome polnostyu zakrytym, esli on metodicheski zavisit ot nesobrannogo visual layer;
- derzhat `stop / eskalatsiya` v chisle bazovykh, a ne vspomogatelnykh worker-signalov;
- ne vynosit vsyo ocenivanie v finalnyy test;
- ispolzovat heavy-moduli kak predmet metodicheskoy ekonomii, a ne kak mesto dlya "vsego vazhnogo srazu".

## Kogda etot sloy stoit aktivirovat pozhe

Etot sloy imeet smysl perevodit iz `inactive` v bolee aktivnyy rezhim, kogda:

- budut dopisany moduli `08-09`;
- budet stabilizirovan asset-layer po `20-43`;
- poyavitsya pervaya sobrannaya testovaya versiya, po kotoroy mozhno smotret ne tolko dokumenty, no i realnyy learning path;
- vozniknet nuzhda otsenivat ne tolko nalichie artefaktov, no i glubinu uchebnogo transfera.

## Prakticheskiy vyvod seychas

Na segodnya `Montazhnik_lesov` uzhe silen kak worker-oriented instructional karkas.

No kak polnostyu zamknutaya metodicheskaya sistema on eshche v perekhodnom sostoyanii:

- outcomes sobrany khorosho;
- behavior spine vidim i polezen;
- arkhitektura v osnovnom zdravaya;
- no chast metodicheskoy dokazatelnosti eshche derzhitsya na budushchikh assets, situatsiyakh i zamykanii polnogo script path.

Poetomu etot sloy poka nuzhen ne dlya upravleniya, a dlya nablyudeniya:

chtoby kogda kurs sozreet do bolee zhestkogo methodology-review, nuzhnye signaly uzhe byli sobrany i ne prikhodilos vosstanavlivat ikh zadnim chislom.
