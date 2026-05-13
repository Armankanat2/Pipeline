# Layout Notes v0.1

## Status

- Status: `inactive / working layer`
- Data sborki: `2026-05-14`
- Owner: `vy`
- Rezhim primeneniya: `neblokiruyushchiy`

## Naznachenie

Etot dokument nuzhen, chtoby smotret na `Pipeline` i konkretno na kurs `Montazhnik_lesov` glazami dizaynera prezentatsiy s fokusom na verstku.

Na tekushchem etape on:

- ne dobavlyaet novykh obyazatelnykh QA-gates;
- ne ostanavlivaet sborku `script`, `asset layer`, `deck`, `A3/A5` ili `release`;
- ne podmenyaet `Presentation_Design_Notes`, `Design_Notes` i `Art_Direction_Notes`;
- ne schitaetsya finalnym layout-system lock ili finalnym prepress-layout approval.

Ego zadacha seychas:

- otsenit kachestvo setki, tipograficheskoy ierarhii i plotnosti slaydov;
- zafiksirovat riski po vyravnivaniyu, melkosti, peregruzu i split-layout logike;
- podsvetit, gde reusable shell eshche ne raven ustoychivoy verstke;
- podgotovit osnovu dlya bolee tochnogo layout-layer pozhe, esli on ponadobitsya.

## Pravilo ispolzovaniya poka dokument ne aktivirovan

- eti notes smotryat na kurs kak na sistemu polozheniya blokov, ritma otstupov i chitaemosti na strane;
- vse punkty iz dokumenta seychas schitayutsya `production guidance`, a ne `release stop`;
- esli kakoy-to punkt ne zakryt, sborka mozhet prodolzhatsya, esli worker readability i bazovaya shell-logika sokhranyayutsya;
- aktivatsiya etogo sloya kak obyazatelnogo pravila dolzhna byt otdelnym resheniem.

## Chto etot sloy delaet i chego ne delaet

Etot sloy:

- otsenivaet `grid discipline`;
- smotrit na tipograficheskuyu ierarhiyu i realnuyu krupnost elementov;
- proveriaet split-layout, sequence, checklist i compare s tochki zreniya verstki;
- otslezhivaet, ne stanovitsya li slayd slishkom plotnym ili melkim;
- podsvetivaet, gde problemi skryty ne v vizuale kak takovom, a v raspolozhenii i kompozitsionnom davlenii.

Etot sloy ne dolzhen:

- dublirivat obshchiy design system;
- dublirivat art-direction layer;
- podmenyat presentation rhythm review;
- uvodit kurs v pechatnuyu logiku v ushcherb ekrannoy, esli eto ne obosnovano.

## Glavnaya pozitsiya dlya etogo proekta

Khoroshiy shell i khoroshaya verstka - eto ne odno i to zhe.

Esli kurs dolzhen stat pervym referensnym produktom dlya vsego `Pipeline`, to emu nuzhno ne tolko:

- imet stabilnuyu setku;
- imet odinakovye shells;
- imet tipy slaydov;

no i derzhat realnuyu chitaemost, polya, vozdukh, simmetriyu i predskazuemuyu plotnost na kazhdom slayde.

Glavnaya opasnost seychas ne v tom, chto verstka khaotichna, a v obratnom:

ona mozhet byt slishkom rano "zakryta" kak sistema, ne proyav realnykh problem na slozhnykh slaydakh.

Prostoe pravilo:

Esli setka i shell deklarirovany, no eshche ne vyderzhali proverku na melkie podpisi, compare, checklist i perekhod v `A3/A5`, layout-layer eshche ne zavershen.

## Chto uzhe sdelano pravilno

- proekt uzhe priznayot nuzhdu v odnoi bazovoi setke, safe area i edinoi logike vyravnivaniya;
- first build nachinaet ne so slaydov, a s master-shell;
- script mnogo raz preduprezhdaet protiv melkikh podpisey, steny teksta i melkikh shagov;
- compare i checklist uzhe vydeleny v otdelnye tipy slaydov vmesto smeshivaniya v odnoi forme;
- print-layer uzhe osoznaet, chto `A3/A5` nuzhdayutsya v sobstvennykh proverkakh.

## Reestr verstochnih riskov i pravil

| ID | Zona | Chto vazhno s tochki zreniya verstki | Tekushchiy signal | Risk seychas | Chto delat poka |
|---|---|---|---|---|---|
| LY-01 | Numeric gap | Pravila setki i tipografiki eshche ne prevrashcheny v chisla | Design system opisivaet printsipy bez zhestkikh znacheniy | `high` | Kak mozhno ran'she fiksirovat realnye layout-values na build |
| LY-02 | Shell before stress | Shell sobran ran'she, chem provereny samye tyazhelye slaydy | First build pravilno idet ot shell, no eto riskuyet skryt problemnye formy | `medium / high` | Proveryat shell na slozhnykh slaydakh, a ne tolko na prostykh |
| LY-03 | Label microtype risk | Skhemy i uzly tyanut mnogo podpisey | Script mnogo raz preduprezhdaet "ne melchit" | `high` | Ogranichivat kolichestvo podpisey i zhestko proveriat krupnost |
| LY-04 | Sequence compression | Poshagovye slaydy legko sdavit do melkogo ritma | V first build uzhe est risk "malo vozdukha mezhdu shagami" | `medium / high` | Fiksirovat minimalnyy inter-step spacing i blokovuyu krupnost |
| LY-05 | Compare symmetry drift | Levaya i pravaya storony mogut razyekhatsya po vesu i soderzhaniyu | Script trebuet odinakovoiy kompozitsii, no eto eshche ne zafiksirovano kak layout-rule | `high` | Delat compare po zhestkoy parnoy setke |
| LY-06 | Checklist poster drift | Checklist slaydy mogut stat ili slishkom slaydovymi, ili slishkom plakatnymi | `37` i `38` dolzhny rabotat i na ekrane, i v `A3/A5` | `medium` | Ne putat ekranuyu i pechatnuyu plotnost bez testov |
| LY-07 | Split-layout overuse | Dvukolonochnaia logika mozhhet stat defaultom tam, gde nuzhna odna os' | Comparison slaydy rastut kak family | `medium` | Derzhat split-layout tolko tam, gde on metodicheski opravdan |
| LY-08 | Footer and QR pressure | Footer-shell i QR-slot mogut s"edat poleznuyu ploshchad | Shell uzhe rezerviruet eti zony sistemno | `medium` | Proverit, ne otnimayut li oni slishkom mnogo mesta na tyazhelykh slaydakh |
| LY-09 | Cross-format fragility | To, chto khorosho na ekrane, mozhet raspast'sya v pechati | Print spec eshche ne zakryl bleed, min sizes i QR na testakh | `medium / high` | Ne schitat ekrannuyu verstku avtomaticheski gotovoy dlya `A3/A5` |
| LY-10 | Density invisibility | Slaydy mogut byt formalno chistymi, no vse ravno vizualno tiazhelymi | Sistema mnogo dumaet o tipakh slaydov, menshe - o predelnoy plotnosti | `medium / high` | Vvesti ponyatie "predel verstochnoi nagruzki" dlya tipov slaydov |

## Gde etot sloy deystvitelno mozhet byt usilen

### 1. Real values instead of principles

Setke i tipografike nuzhny ne tolko printsipy, no i rabochie znacheniya:

- otstupy;
- line spacing;
- minimum dlya labels;
- granitsa po chislu blokov;
- granitsa po chislu podpisey.

Pochemu eto vazhno:

- bez etogo verstka derzhitsya na khoroshem vkuse, a ne na sisteme.

### 2. Layout stress test

Sisteme nuzhen test ne na prostykh, a na problemnykh slaydakh:

- compare;
- sequence;
- anchoring scheme;
- checklist;
- final algorithm.

Pravilo:

- esli shell vyderzhivaet tolko prostye slaydy, eto eshche ne shell-system, a akuratnaya zagotovka.

### 3. Cross-format layout discipline

Perekhod v `A3/A5` dolzhen byt ne nadezhdoy, a proverennym rezhimom:

- chto sokhranyaetsya;
- chto uproshchaetsya;
- chto pererisuetsya;
- chto nelzya perenosit odin-v-odin.

## Gde etot sloy skoree vsego navredit, esli ego ne kontrolirovat

Layout-layer skoree vsego navredit:

- esli nachnet zahtevkat chislovuyu sterilnost v ushcherb zhivoy podache;
- esli popytaetsya prevratit kazhdyy slayd v zhestko normirovannuyu tablitsu;
- esli budet dumat pro pechat ranshe, chem deck stabilen na ekrane;
- esli podmenit worker readability formalnoy "chistotoy".

Pochemu:

- togda proekt poteryaet gibkost i nachnet verstat pravilno, no ne obyazatelno umno.

## Minimalnye prakticheskie pravila poka sloy ne aktivirovan

- ne schitat deklarirovannuyu setku realno proverennoy, poka ona ne proshla slozhnye slaydy;
- ne dopuskat melkie podpisi kak "vremennuyu meloch";
- derzhat compare na zhestkoy simmetrichnoy osnove;
- proveriat, est li vozdukh mezhdu shagami i blokami, a ne tolko "vlezlo li";
- ne schitat perenos v `A3/A5` dokazannym bez testovoy pechati i prosmotra.

## Kogda etot sloy stoit aktivirovat pozhe

Etot sloy imeet smysl perevodit iz `inactive` v bolee aktivnyy rezhim, kogda:

- poyavitsya realnyy draft deck v `PPTX` ili `Figma`;
- budet sobran first visual build i mozhno budet proverit ego na slozhnykh slaydakh;
- nuzhno budet fiksirovat ne tolko visual logic, no i numeric layout-system;
- nachnetsya realnaya print-adaptatsiya `A3/A5`.

## Prakticheskiy vyvod seychas

Na segodnya `Pipeline` uzhe silen kak sistema shellov i tipov slaydov.

No `Montazhnik_lesov` kak ustoychivaya verstka eshche v perekhodnom sostoyanii:

- printsipy uzhe pravilnye;
- script uzhe khorosho chuvstvuet risk melkosti i peregruza;
- shell-logika uzhe sformulirovana;
- no realnye chisla, predely plotnosti i cross-format discipline eshche ne do kontsa zafiksirovany.

Poetomu etot sloy poka nuzhen ne dlya upravleniya, a dlya nablyudeniya:

chtoby kogda kurs sozreet do bolee zhestkogo layout-review, nuzhnye signaly uzhe byli zafiksirovany i ne prikhodilos vosstanavlivat ikh zadnim chislom.
