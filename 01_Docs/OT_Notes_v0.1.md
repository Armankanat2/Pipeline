# OT Notes v0.1

## Status

- Status: `inactive / working layer`
- Data sborki: `2026-05-14`
- Owner: `vy`
- Rezhim primeneniya: `neblokiruyushchiy`

## Naznachenie

Etot dokument nuzhen, chtoby smotret na `Pipeline` i konkretno na kurs `Montazhnik_lesov` glazami spetsialista po okhrane truda.

Na tekushchem etape on:

- ne dobavlyaet novykh obyazatelnykh QA-gates;
- ne ostanavlivaet sborku `script`, `asset layer`, `deck`, `test` ili `release`;
- ne podmenyaet `Legal_Risk_Register`, `Methodology_Notes`, `Expert_Assessment_Notes` i drugie uzkie notes-sloi;
- ne schitaetsya finalnym normativnym zaklyucheniem ili polnoy ekspertizoy po OT.

Ego zadacha seychas:

- zafiksirovat safety-riski i granitsy kursa kak produkta po OT;
- proverit, ne nachinaet li kurs neyvno podmenyat normativ, pasport sistemy ili reshenie otvetstvennogo litsa;
- usilit stop-logiku, dopusk i eskalatsiyu kak nesushchie safety-osy;
- podgotovit osnovu dlya bolee zhestkogo OT-review layer pozhe, esli on ponadobitsya.

## Pravilo ispolzovaniya poka dokument ne aktivirovan

- eti notes smotryat na kurs kak na instrument bezopasnogo povedeniya, a ne kak na formalnyy dopusk sam po sebe;
- vse punkty iz dokumenta seychas schitayutsya `production guidance`, a ne `release stop`;
- esli kakoy-to punkt ne zakryt, sborka mozhet prodolzhatsya, esli worker-core i QA-layer sokhranyayutsya;
- aktivatsiya etogo sloya kak obyazatelnogo pravila dolzhna byt otdelnym resheniem.

## Chto etot sloy delaet i chego ne delaet

Etot sloy:

- otsenivaet granitsy kursa otnositelno pravil OT;
- smotrit na dopusk, stop-logiku, eskalatsiyu i proverku pered ekspluatatsiey;
- podsvetivaet, gde worker-course mozhet sozdavat lozhnoe chuvstvo dostatochnosti;
- proveriaet, ne podmenyayut li obrazovatelnye formulirovki konkretnoe reshenie otvetstvennogo ili pasport sistemy.

Etot sloy ne dolzhen:

- dublirivat legal-risk reestr;
- zamenyat formalnuyu normativnuyu proverku yurista ili eksperta po konkretnoi sisteme lesov;
- dublirivat metodologiyu kak takovuyu;
- vvodit novye stage-rules ili menyat `Definition_of_Done`.

## Glavnaya OT-pozitsiya dlya etogo proekta

Kurs po `Montazhnik_lesov` mozhet byt ochen poleznym instrumentom obucheniya, no on ne dolzhen sozdavat vpechatlenie, chto:

- sam po sebe zamenyaet pravila po okhrane truda;
- zamenyaet pasport konkretnoy sistemy lesov;
- zamenyaet PPR, tekhnologiyu ili lokalnye instruktsii;
- zamenyaet reshenie otvetstvennogo litsa o dopuske ili prodolzhenii rabot.

Prostoe pravilo:

Esli kurs uchit pravilnym deystviyam, no nedostatochno zhazhko razvodit granitsu mezhdu `obuchit` i `razreshit rabotu`, OT-layer eshche ne zavershen.

## Chto uzhe sdelano pravilno

- v script uzhe est ogranichitel na pervom slayde, chto kurs ne zamenyaet pasport sistemy i lokalnye reglamenty;
- worker behavior map silno derzhit stop-logiku i eskalatsiyu;
- outcomes i script orientirovany na risk, deystvie i zapret, a ne na abstraktnuyu teoriyu;
- kurs uzhe vidit proverku pered ekspluatatsiey kak otdelnyy safety-blok;
- proekt uzhe priznaet, chto ekspertnaya validatsiya i proverennye istochniki eshche ne zakryty.

## Reestr OT-riskov i pravil

| ID | Zona | Chto vazhno s tochki zreniya OT | Tekushchiy signal | Risk seychas | Chto delat poka |
|---|---|---|---|---|---|
| OT-01 | Granitsa kursa | Kurs ne dolzhen vosprinimatsya kak zamenitel normativnogo i organizatsionnogo contour | Ogranichitel est, no poka ne vyveden v sistemnoe pravilo release-layer | `high` | Povtoryat granitsu ne tolko na startovom slayde, no i v release language |
| OT-02 | Dopusk vs znanie | Ponimanie pravila ne ravno dopusku k rabote | Kurs silno uchit dopusku, no risk smesheniya ostayetsya | `high` | Yasno razvesti `slushatel znaet` i `rabotu razreshili` |
| OT-03 | Stop / eskalatsiya | Ostanovka rabot i eskalatsiya dolzhny byt nesushchey osyu worker-course | `LO-13` poka formalno `supporting` | `high` | Schitat stop/eskalatsiyu bazovym safety-outcome |
| OT-04 | Responsible person boundary | Worker-course ne dolzhen razmyvat roli mastera, otvetstvennogo, eksperta i dopuskayushchego | V brief i script eta granitsa est, no eshche ne zhelezobetonno proshita skvozno | `medium / high` | Vvesti yavnye formuly tipa `rabochiy raspoznaet i ostanavlivaet, a ne utverzhdaet` |
| OT-05 | Type-of-system dependency | Bez utochneniya tipa lesov chast safety-resheniy budet slishkom obobshchena | Architecture sama eto priznayot | `high` | Ne schitat moduli `03`, `06`, `07`, `09` polnostyu zakrytymi do privyazki k sisteme |
| OT-06 | Pre-use verification | Proverka pered ekspluatatsiey ne dolzhna skatyvatsya v obshchuyu "poleznuyu temu" | Modul `07` uzhe tyazhelyy i riskuyet smeshat proverku i ekspluatatsiyu | `medium / high` | Derzhat binarnyy safety-check contour: `dopustit / ne dopustit` |
| OT-07 | False completeness | Silnyy deck mozhet sozdavat vpechatlenie, chto safety-contour uzhe dostatochen dlya realnogo vnedreniya | Production-layer stroitsya bystree expert validation | `high` | Ne pereotsenivat prakticheskuyu gotovnost kursa do expert pass |
| OT-08 | Worker overconfidence | Slushatel mozhet pereiti ot pravilnogo raspoznavaniya k opasnoy samostoyatelnosti | V course-core mnogo logiki resheniya i uzlov | `medium / high` | Usilit signal `ne improviziruy tam, gde nuzhna eskalatsiya` |
| OT-09 | Training vs compliance | Khoroshiy uchebnyy kurs ne raven zakrytomu compliance-process | V brief attestatsiya poka `utochnyaetsya` | `medium / high` | Derzhat formalnuyu ostorozhnost v release i klientskom pozitsionirovanii |
| OT-10 | Field applicability | Klyuchevye safety-outcomes dolzhny perenositsya v pole, a ne tolko v test | Worker map silna, no zavisit ot assets i unfinished modules | `medium / high` | Prioritet derzhat na realnom raspoznavanii riskov i stop-deystvii |

## Gde OT-layer deystvitelno mozhet byt usilen

### 1. Skvoznoe pravilo granits

Kursu nuzhno ne odno razovoe preduprezhdenie, a skvoznoe safety-pravilo:

- chto worker dolzhen umet raspoznat;
- chto on dolzhen ostanovit;
- chto on dolzhen peredat dalshe;
- chto on ne dolzhen utverzhdat sam.

Pochemu eto vazhno:

- eto osnova protiv opasnoy samostoyatelnoy improvizatsii.

### 2. Povyshenie statusa stop-logiki

`Stop / eskalatsiya` dolzhny byt ne supporting-sloy, a odna iz nesushchikh safety-opor kursa.

Pravilo:

- worker ne dolzhen vyigryvat kurs tolko potomu, chto pravilno nazval element;
- on dolzhen umet ostanovit rabotu tam, gde ne imeet prava ili opory prodolzhat.

### 3. Yavnoe razdelenie mezhdu obucheniem i dopuskom

Kurs dolzhen ostavatsya poleznym dlya OT, no ne vyzyvat lozhnogo signala:

- `proshel slaydy` ne ravno `dopuschen`;
- `ponyal shemu` ne ravno `mozhet utverdit sborku`;
- `vidit risk` ne ravno `sam prinimaet konechnoe reshenie za systemu`.

## Gde OT-layer skoree vsego navredit, esli ego ne kontrollirovat

OT-layer skoree vsego navredit:

- esli popytaetsya prevratit kurs v normativnyy spravochnik vmesto worker-training;
- esli nachnet dublirivat legal-layer;
- esli zablokiruet production-rabotu ran'she, chem proekt sozrel do formalnogo expert-review;
- esli budet trebovat polnoy normativnoy zakrytosti do stabilizatsii course-core.

Pochemu:

- togda vmesto silnogo safety-kursa poluchitsya tyazhelyy i medlenno sobiraemyy dokumentnyy konstrukt.

## Minimalnye prakticheskie pravila poka sloy ne aktivirovan

- ne schitat `LO-13` vspomogatelnoi safety-temoy;
- ne schitat course-core dostatochnym dlya realnogo dopuska bez otdelnykh konturov rabotodatelya;
- ne vypuskat release-language, kotoryy zamenyaet pravila, pasport sistemy ili reshenie otvetstvennogo;
- derzhat `stop / eskalatsiya / ne improviziruy` kak tri skvoznykh safety-signala kursa.

## Kogda etot sloy stoit aktivirovat pozhe

Etot sloy imeet smysl perevodit iz `inactive` v bolee aktivnyy rezhim, kogda:

- poyavitsya vneshniy technical expert po lesam;
- budet utochnen tip sistemy lesov, pod kotoryy sobiraetsya kurs;
- kurs nachnet vykhodit vo vneshniy release ili klientskiy contour;
- vozniknet realnyy zapros na ispolzovanie kursa kak chasti safety-obucheniya v rabochei praktike.

## Prakticheskiy vyvod seychas

Na segodnya `Montazhnik_lesov` uzhe dvizhetsya v pravilnuyu storonu kak worker-course po OT:

- on stroitsya ot riskov;
- silen v stop-logike;
- ne uhodit v teoriyu radi teorii;
- priznayot granitsy sobstvennoy gotovnosti.

No kak polnostyu bezopasnyy OT-kontur on eshche v perekhodnom sostoyanii:

- normativno-ekspertnaya opora eshche ne do kontsa zakryta;
- granitsa mezhdu obucheniem i dopuskom eshche nuzhdaetsya v usilenii;
- nekotorye safety-osi metodicheski uzhe silnee, chem ikh formalnyy status v dokumentakh.

Poetomu etot sloy poka nuzhen ne dlya upravleniya, a dlya nablyudeniya:

chtoby kogda kurs sozreet do bolee zhestkogo OT-review, nuzhnye signaly uzhe byli sobrany i ne prikhodilos vosstanavlivat ikh zadnim chislom.
