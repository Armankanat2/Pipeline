# Technical Writing Notes v0.1

## Status

- Status: `inactive / working layer`
- Data sborki: `2026-05-13`
- Owner: `vy`
- Rezhim primeneniya: `neblokiruyushchiy`

## Naznachenie

Etot dokument nuzhen, chtoby smotret na `Pipeline` i konkretno na kurs `Montazhnik_lesov` glazami technical writer.

Na tekushchem etape on:

- ne dobavlyaet novykh obyazatelnykh QA-gates;
- ne ostanavlivaet sborku `script`, `asset layer`, `deck`, `release` ili `maintenance`;
- ne podmenyaet `blueprint`, `workflow`, `QA gates` i release-dokumenty;
- ne schitaetsya finalnoy documentation policy.

Ego zadacha seychas:

- zafiksirovat, gde u sistemy uzhe silnaya documentation-arkhitektura;
- otdelit khoroshiy rabochiy draft ot zrelogo ekspluatatsionnogo dokumenta;
- ne dopustit, chtoby status dokumenta zvuchal silnee, chem ego realnaya gotovnost;
- podgotovit osnovu dlya bolee zhestkogo technical writing layer pozhe, esli on ponadobitsya.

## Pravilo ispolzovaniya poka dokument ne aktivirovan

- eti notes smotryat na dokumenty kak na ekspluatatsionnyy kontur, a ne tolko kak na rabochie zapisi;
- vse punkty iz dokumenta seychas schitayutsya `production guidance`, a ne `release stop`;
- esli kakoy-to punkt ne zakryt, sborka mozhet prodolzhatsya, esli systemnaya logika i QA-layer sokhranyayutsya;
- aktivatsiya etogo sloya kak obyazatelnogo pravila dolzhna byt otdelnym resheniem.

## Glavnaya technical writing-pozitsiya dlya etogo proekta

`Pipeline` uzhe myslit kak dokumentatsionnaya sistema, a ne kak nabor faylov.

Ego silnaya baza:

- stage logic
- output discipline
- QA gates
- version rules
- release containers
- optional contours dlya `worker`, `ITR`, `online`, `publishing`

No technical writing zdes vazhen ne tolko na urovne arkhitektury.

On vazhen eshche i na urovne kachestva konkretnogo dokumenta:

- ponyaten li status;
- ne protivorechit li nazvanie soderzhaniyu;
- yavno li razvedeny `required / optional`;
- mozhet li dokument ispolzovat chelovek, kotoryy ne derzhit vse pravila v golove.

Prostoe pravilo:

Esli dokument sistemno umen, no ego nelzya bystro i bez dogadok primenit v rabote, technical writing layer eshche ne zavershen.

## Chto uzhe sdelano pravilno

- est silnyy `Pipeline_Blueprint`;
- est podrobnyy `Operational_Workflow`;
- est stage-based `QA_Gates`;
- est yavnye versioning rules i release logic;
- est ponimanie, chto nuzhny glossary, language style guide, proofreading i publishing handoff;
- est horoshaya razvodka mezhdu `worker`, `ITR`, `online` i `publishing` konturami.

## Reestr technical writing-riskov i pravil

| ID | Zona | Chto vazhno s tochki zreniya technical writing | Tekushchiy signal | Risk seychas | Chto delat poka |
|---|---|---|---|---|---|
| TW-01 | Status honesty | Status dokumenta ne dolzhen zayavlyat bolshe, chem est vnutri | V nekotorykh spec-faylakh est `starter draft / yes`, pri tom chto mnogo `utochnit` | `high` | Delat statusy chestnee i yavno otmechat, chego ne hvataet do realnoy gotovnosti |
| TW-02 | Required vs optional | Chitatelyu dolzhno byt prosto ponyatno, chto obyazatelno dlya `Base`, a chto tolko dlya osobykh contour | V sisteme mnogo optional sloev, no oni razneseny po tekstu | `high` | Silnee razvesti `Base / conditional / optional` v indexakh i stage-rules |
| TW-03 | Spec-to-artifact gap | Reglament mozhet byt silnee, chem realnyy artefakt kursa | `writer core` uzhe ob'yavlen obyazatelnym, no ne vezde dozhit do artefaktov | `high` | Yavno pometchat, gde artefakt eshche ne doros do target-format |
| TW-04 | Missing support docs | Sisteme uzhe nuzhny support-docs, no na course-level oni mogut otsutstvovat | Dlya aktivnogo kursa net `language style guide` i `terminology glossary` | `high` | Ne schitat course-doc set zrelym bez bazovogo language/terminology pair |
| TW-05 | Navigation overload | Silnaya sistema mozhet stat trudnoy dlya bystrogo vhoda | Blueprint i workflow ochen bogaty artefaktami i variantami | `medium / high` | Delat korotkie entry-points i role-based indexes dlya operatora |
| TW-06 | Naming consistency | Nazvaniya dokumentov, stage labels i release-sloty dolzhny chitatsya odinakovo vo vsey sisteme | Sistema v osnovnom disciplined, no sloev ochen mnogo | `medium` | Sledit, chtoby naming ne plaval mezhdu template, course-folder i release |
| TW-07 | Editorial cleanliness | Translit, bitaya kodirovka i smesi alfavitov podryvayut doverie k systeme | Risk uzhe priznan v blueprint i QA | `medium / high` | Derzhat otdelnyy release-cleanliness pass i ne putat markdown-bazu s finalnym maketom |
| TW-08 | Reader model | Dokumenty mestami rasschitany na cheloveka, kotoryy uzhe znaet sistemu | Workflow i blueprint silny dlya avtora, no ne vsegda legki dlya novogo operatora | `medium` | Pisat tak, chtoby novyy operator mog vosstanovit kontekst bez ustnykh raz'yasneniy |
| TW-09 | Spec precision | Tekhnicheskiy spec ne dolzhen ostavlyat kritichnye polya slishkom obshchimi | Print-spec poka slishkom chestnyy, no eshche nedostatochno tochnyy | `medium / high` | Dovodit specs do izmerimykh ili proveryaemykh parametrov, gde eto vazhno |
| TW-10 | Release readiness language | `release-ready`, `production-ready`, `publishing-ready` dolzhny imet raznye smysly | V sisteme mnogo statusov gotovnosti, no oni ne vezde yavno razvedeny | `medium` | Sformulirovat status-taxonomy i ispolzovat ee posledovatelno |

## Gde technical writing deystvitelno mozhet byt usilen

### 1. Course-level support docs

Samyy logichnyy usilivayushchiy shag dlya kursa:

- `language style guide`
- `terminology glossary`

Pochemu eto vazhno:

- bez nikh release-cleanliness derzhitsya na pamyati operatora;
- bez nikh translit i finalnyy russkoyazychnyy maket ne imeyut mosta;
- bez nikh terminy mogut plavat mezhdu script, testom, QA i release.

### 2. Status language

Dokument dolzhen ne prosto imet status, a davat ponyatnoe ekspluatatsionnoe obeshchanie.

Pravilo:

- `draft` = rabochiy, no ne normativnyy;
- `working layer` = ne blokiruet, no fiksiruet pravilo nablyudeniya;
- `starter draft / yes` dolzhen ispolzovat'sya ostorozhno;
- `production-ready` ne dolzhen stoyat tam, gde eshche mnogo kriticheskikh `utochnit`.

### 3. Operator entry points

Sisteme uzhe nuzhen ne tolko `master index`, no i korotkie marshruty dlya raznykh roley:

- operator
- metodist
- release-sborshchik
- publishing handoff reader

Poka eto ne obyazatelno, no imenno tak snizhaetsya kognitivnaya nagruzka na vkhode.

## Gde technical writing skoree vsego navredit, esli ego ne kontrollirovat

Technical writing skoree vsego navredit:

- esli nachnet uslozhnyat sistemu radi samoy formalnosti;
- esli kazhdyy probel budet zakryvat'sya novym dokumentom bez reader-value;
- esli statusy budut "optimistichnee", chem realnaya gotovnost;
- esli ekspluatatsionnyy tekst budet pisat'sya yazykom avtora, a ne yazykom pol'zovatelya dokumenta.

Pochemu:

- sistema i tak uzhe bolshaya;
- ey bolshe nuzhna yasnost, chem dopolnitelnyy ob'em;
- luchshiy technical writing zdes ne samyy podrobnyy, a samyy primenimyy.

## Minimalnye technical writing-pravila uzhe seychas

Poka etot sloy ne aktivirovan, khvatit pyati pravil:

1. Status dokumenta dolzhen chestno sootvetstvovat ego sostoyaniyu.
2. `Required` i `optional` nado razvodit tak, chtoby eto bylo vidno bez dogadok.
3. Esli blueprint chto-to obyavlyaet obyazatelnym, kursovoy artefakt dolzhen ili soderzhat eto, ili chestno priznat gap.
4. Glossary i language rules nuzhny ran'she, chem release-grade paket.
5. Vneshniy reader ne dolzhen gadat, kak primenyat dokument.

## Chto poka ne delat

- ne prevraschat kazhduyu mysl v novyy obyazatelnyy template;
- ne rozhdat novye docs, esli dostatochno utochnit status, scope ili navigation v uzhe sushchestvuyushchikh;
- ne putat technical writing s prosto "bol'she teksta";
- ne vypuskat documentation language, kotoraya zvuchit nadezhnee, chem realnyy kontur proekta.

## Kogda etot sloy stoit aktivirovat silnee

Imeet smysl perevesti ego iz `working layer` v bolee zhestkiy contour, esli proizoydet hotya by odno:

- nachnetsya sborka polnogo release-grade paketa;
- v proekte poyavyatsya novye operatory ili chitateli, krome osnovnogo avtora;
- poydet publishing handoff vo vneshniy contour;
- nado budet delat audit dokumentatsionnoy gotovnosti sistema vs kurs.

## Kandidaty na sleduyushchiy technical writing-sloy pozhe

Kogda vernyomsya k teme glubzhe, polezno budet sobrat:

- `Status_Taxonomy_v1`
- `Required_vs_Optional_Map_v1`
- `Course_Documentation_Minimum_v1`
- `Release_Readiness_Language_Guide_v1`
- `Operator_Onboarding_Index_v1`

## Tekushchee reshenie

- Notes sobrany: `yes`
- Oni blokiruyut tekushchuyu sborku: `no`
- Oni mogut ispolzovatsya kak production-orientir uzhe seychas: `yes`
- Nuzhen li bolee zhestkiy technical writing layer pozhe: `yes`
