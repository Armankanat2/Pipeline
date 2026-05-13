# Presentation Design Notes v0.1

## Status

- Status: `inactive / working layer`
- Data sborki: `2026-05-14`
- Owner: `vy`
- Rezhim primeneniya: `neblokiruyushchiy`

## Naznachenie

Etot dokument nuzhen, chtoby smotret na `Pipeline` i konkretno na kurs `Montazhnik_lesov` glazami dizaynera prezentatsiy.

Na tekushchem etape on:

- ne dobavlyaet novykh obyazatelnykh QA-gates;
- ne ostanavlivaet sborku `script`, `asset layer`, `deck`, `A3/A5` ili `release`;
- ne podmenyaet `Design_Notes`, `Art_Direction_Notes`, `Infographic_Production_Notes` i `Motion_Production_Notes`;
- ne schitaetsya finalnym slide-system lock ili finalnym presentation review.

Ego zadacha seychas:

- otsenit kurs kak `presentation experience`, a ne tolko kak content system;
- zafiksirovat riski po ritmu, ekrannoy chitaemosti i tempu deck;
- otdelit khoroshiy reusable shell ot khorosho provedennoy prezentatsii;
- podgotovit osnovu dlya bolee tochnogo presentation-layer pozhe, esli on ponadobitsya.

## Pravilo ispolzovaniya poka dokument ne aktivirovan

- eti notes smotryat na kurs kak na posledovatelnost slaydov vo vremeni;
- vse punkty iz dokumenta seychas schitayutsya `production guidance`, a ne `release stop`;
- esli kakoy-to punkt ne zakryt, sborka mozhet prodolzhatsya, esli worker readability i design system sokhranyayutsya;
- aktivatsiya etogo sloya kak obyazatelnogo pravila dolzhna byt otdelnym resheniem.

## Chto etot sloy delaet i chego ne delaet

Etot sloy:

- otsenivaet `presentation rhythm`;
- smotrit na ekrannuyu chitaemost i plotnost slaydov;
- proveriaet, est li u deck logika tempa i smeny nagruzki;
- otslezhivaet, ne stanovitsya li kurs slishkom ravnomernym i monoformnym;
- podsvetivaet, gde nuzhen ne novyy maket, a luchshiy povedencheskiy stsenariy slayda.

Etot sloy ne dolzhen:

- dublirivat obshchiy design system spec;
- dublirivat art-direction layer;
- podmenyat infographic grammar ili motion notes;
- uvodit kurs v show-design vmesto uchebnoy prezentatsii.

## Glavnaya pozitsiya dlya etogo proekta

`Montazhnik_lesov` dolzhen byt ne tolko pravilno sobrannym deck, no i ponimatsya v normalnom tempe pokaza.

Esli kurs dolzhen stat pervym referensnym produktom dlya vsego `Pipeline`, to emu nuzhno ne tolko:

- byt sistemnym;
- byt chitaemym;
- byt povtoryaemym v proizvodstve;

no i byt udobnym dlya realnogo vedeniya i bystrogo schityvaniya na ekrane.

Glavnaya opasnost seychas ne v khaose, a v obratnom:

kurs mozhet stat slishkom rovnym po tempu, slishkom skhemnym i slishkom odnotonnym kak prezentatsiya.

Prostoe pravilo:

Esli deck pravilno sobran, no auditoriya ne chuvstvuet ritm, progress i kontrast nagruzki, presentation-layer eshche ne zavershen.

## Chto uzhe sdelano pravilno

- proekt uzhe ne pytaetsya prevratit kazhdyy slayd v otdelnyy dizayn-eksperiment;
- reusable-shell logika uzhe vvedena i discipliniruet sborku;
- script uzhe chasto preduprezhdaet protiv steny teksta, melkikh podpisey i tekhnicheskogo peregruza;
- compare, scenario i checklist uzhe razdeleny na raznye tipy slaydov;
- first build uzhe sobiraetsya paketami, a ne sluchaynym poryadkom.

## Reestr presentation-design riskov i pravil

| ID | Zona | Chto vazhno s tochki zreniya dizayna prezentatsiy | Tekushchiy signal | Risk seychas | Chto delat poka |
|---|---|---|---|---|---|
| PD-01 | Rhythm flattening | Slaydy mogut byt pravilnymi, no odinakovo "tyazhelymi" po vospriyatiyu | Build logic silna, no rhythm layer poka ne opisan otdelno | `high` | Razvesti bystrye, srednie i tyazhelye slaydy po tempu |
| PD-02 | Shell over deck | Reusable makety mogut zamenit soboy prezentatsionnuyu dramaturgiyu | First build silno shell-first | `medium / high` | Smotret ne tolko na consistency, no i na effect of sequence |
| PD-03 | Compare overload | Compare-shell mozhet byt sistemnym, no ne mgnovenno schityvaemym | `VP-04` pokryvaet mnogo slaydov | `high` | Fiksirovat gaze order dlya compare-slaydov |
| PD-04 | Scheme fatigue | Neskolko skhem podryad mogut utomit zritelya dazhe pri khoroshey logike | `VP-02` i `VP-03` silno dominiruyut v bloke `20-43` | `medium / high` | Cheredovat plotnost i tipy kognitivnoy nagruzki |
| PD-05 | Weak hero moments | U kursa mozhet ne okazatsya silnykh "opornykh" slaydov | Build spec silen sistemno, no ne vydelyaet presentation peaks | `medium` | Yavno naznachit 2-3 hero slides v bloke |
| PD-06 | Distance risk | Slide mozhno ponyat na blizkom ekrane, no ne s rabochey distantsii | Minimalnyy razmer dlya ekrana eshche ne proveren na realnoy sborke | `high` | Proverit pravilo `3-5 sekund bez kommentariya` |
| PD-07 | Scenario text creep | Scenario-card mozhet prevratitsya v mini-dokument vmesto slayda | Script pravilno preduprezhdaet protiv steny teksta | `medium` | Derzhat reshenie centralnee opisaniya |
| PD-08 | Checklist poster drift | Checklist / board slaydy mogut stat plakatami, a ne ekranom dlya vedeniya | `37` i `38` dolzhny rabotat i v `A3/A5`, i v deck | `medium` | Ne davat print-zadache polnostyu diktovat ekranuyu formu |
| PD-09 | Monotone pacing | Modul mozhet ne oshchushchatsya kak dvizhenie vpered | Batch build sobiran logichno, no ne opisano kak chuvstvuetsya progress | `medium / high` | Vstavit vidimye "perekhodnye" i "itogovye" uzly |
| PD-10 | Local good, global weak | Otdelnye slaydy mogut byt khoroshimi, no ves blok ne budet zvenet kak prezentatsiya | Script silen lokalnymi zametkami dlya dizayna | `medium` | Otsenivat block-level flow, a ne tolko slide-level quality |

## Gde etot sloy deystvitelno mozhet byt usilen

### 1. Presentation rhythm map

Kursu nuzhno ne prosto slide-by-slide opisanie, a karta ritma:

- bystryy slayd;
- sredniy slayd;
- tyazhelyy slayd;
- slayd-pauza;
- slayd-itog.

Pochemu eto vazhno:

- bez etogo dazhe ochen khoroshie slaydy mogut sobratsya v rovnyy i utoomlyayushchiy tok.

### 2. Gaze order dlya compare

Compare-slady dolzhny byt ne tolko simmetrichnymi, no i rezhisserski yasnymi.

Minimalnaya logika:

- chto vidit chelovek pervym;
- gde na ekrane oshibka;
- gde verdict;
- kak bystro schityvaetsya pravilo.

Pravilo:

- esli compare nuzhno obyasnyat slishkom dolgo, on khorosh kak schema, no slab kak slayd.

### 3. Hero slides i relief points

U deck dolzhny byt 2-3 slayda, kotorye:

- derzhat vnimanie;
- sobirayut modul;
- dayut oshchushchenie progressa.

Eto ne obyazatelno samye dekorativnye slaydy. Chasto eto:

- modul-entry;
- odin silnyy compare;
- final algorithm slide.

## Gde etot sloy skoree vsego navredit, esli ego ne kontrolirovat

Presentation-design layer skoree vsego navredit:

- esli nachnet trebovat "bolshe zhivosti" v ushcherb worker readability;
- esli popytaetsya sdelat kazhdyy slayd "interesnym";
- esli podmenit presentation rhythm dekorativnym kontrastom;
- esli budet otsenivat slaydy kak reklamnyy deck vmesto uchebnogo.

Pochemu:

- togda proekt poteryaet glavnuyu silu: professionalnuyu yasnost i proizvodimost.

## Minimalnye prakticheskie pravila poka sloy ne aktivirovan

- ne schitat consistency dostatochnym kriteriem khoroshey prezentatsii;
- proveriat slaydy na pravilo `ponyatno za 3-5 sekund`;
- cheredovat cognitive load, a ne sobirat skhemy paketami bez relief points;
- dlya compare-slaydov fiksirovat ne tolko layout, no i gaze order;
- v kazhdom module imet khotya by odin slayd, kotoryy rabotaet kak presentation anchor.

## Kogda etot sloy stoit aktivirovat pozhe

Etot sloy imeet smysl perevodit iz `inactive` v bolee aktivnyy rezhim, kogda:

- poyavitsya realnyy draft deck v `PPTX` ili `Figma`, a ne tolko spec-docs;
- budet mozhno proverit blok `20-43` v normalnom rezhime pokaza;
- vozniknet nuzhda ne prosto sobrat slaydy, a sdelat ikh silnymi dlya ochnoi podachi;
- nachnetsya sborka sleduyushchikh professiy, i budet nuzhen povtoryaemyy presentation standard.

## Prakticheskiy vyvod seychas

Na segodnya `Pipeline` uzhe silen kak slide-production system.

No `Montazhnik_lesov` kak prezentatsionnyy deck eshche v perekhodnom sostoyanii:

- tipy slaydov uzhe razvedeny;
- shell-logika uzhe est;
- script uzhe daet mnogo pravilnykh dizayn-podskazok;
- no rhythm, slide behavior i deck-level dramaturgiya eshche ne do kontsa zafiksirovany.

Poetomu etot sloy poka nuzhen ne dlya upravleniya, a dlya nablyudeniya:

chtoby kogda kurs sozreet do bolee zhestkogo review kak prezentatsiya, nuzhnye signaly uzhe byli zafiksirovany i ne prikhodilos vosstanavlivat ikh zadnim chislom.
