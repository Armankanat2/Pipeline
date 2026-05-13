# Design Notes v0.1

## Status

- Status: `inactive / working layer`
- Data sborki: `2026-05-14`
- Owner: `vy`
- Rezhim primeneniya: `neblokiruyushchiy`

## Naznachenie

Etot dokument nuzhen, chtoby smotret na `Pipeline` i konkretno na kurs `Montazhnik_lesov` glazami dizaynera v shirokom smysle, a ne tolko cherez odin uzkiy production-sloy.

Na tekushchem etape on:

- ne dobavlyaet novykh obyazatelnykh QA-gates;
- ne ostanavlivaet sborku `script`, `asset layer`, `deck`, `A3/A5` ili `release`;
- ne podmenyaet `Infographic_Production_Notes`, `Motion_Production_Notes`, `Photo_Production_Notes`, `3D_Production_Notes` i drugie uzkie sloi;
- ne schitaetsya finalnym art-direction guide ili okonchatelnym design system.

Ego zadacha seychas:

- zafiksirovat, naskolko kurs uzhe sobiraetsya kak tselnyy visual product;
- otdelit proizvodstvennuyu sistemnost ot realnoy dizaynerskoy zrelosti;
- podsvetit riski po shell, identity, print-portability i klientskomu vyboru;
- podgotovit osnovu dlya bolee tochnogo design-layer pozhe, esli on ponadobitsya.

## Pravilo ispolzovaniya poka dokument ne aktivirovan

- eti notes smotryat na kurs kak na visual system, a ne kak na nabor otdelnykh kartinok;
- vse punkty iz dokumenta seychas schitayutsya `production guidance`, a ne `release stop`;
- esli kakoy-to punkt ne zakryt, sborka mozhet prodolzhatsya, esli worker readability i systemnaya logika sokhranyayutsya;
- aktivatsiya etogo sloya kak obyazatelnogo pravila dolzhna byt otdelnym resheniem.

## Chto etot sloy delaet i chego ne delaet

Etot sloy:

- otsenivaet `visual identity layer`;
- smotrit na sootvetstvie mezhdu design concepts i realnym production-state;
- otslezhivaet zrelost `design system spec`;
- podsvetivaet print-readiness kak chast dizaynerskoy sistemy;
- proveriaet, ne slishkom li generic-shell sterilizuet pervyy etalonnyy kurs;
- otsenivaet, sobiraetsya li kurs kak odin visual product, a ne kak prosto discipliniruyemyy layout-set.

Etot sloy ne dolzhen:

- dublirivat infographic grammar;
- dublirivat motion logic;
- dublirivat photo/3D decisions;
- podmenyat technical writing, editorial ili expert-review.

## Glavnaya design-pozitsiya dlya etogo proekta

`Pipeline` uzhe silen kak sistema sborki dizayna.

No eto eshche ne to zhe samoe, chto zrelyy dizaynerskiy yazyk.

Seichas proekt ochen khorosh v sleduyushchem:

- on ogranichivaet haos;
- stroit shell;
- derzhit povtoryaemost;
- pomnit pro `A3/A5`;
- gotov k white-label contour.

No ego glavnaya dizaynerskaya opasnost v tom, chto on mozhet stat:

- udobnym;
- povtoryaemym;
- akkuratnym;

no pri etom slishkom bezopasnym i vizualno nedostatochno identifitsiruemym kak silnyy referensnyy kurs.

Prostoe pravilo:

Esli kurs vygladit kak khorosho organizovannyy generic-shell, no ne ostavlyaet sobstvennogo visual identity impression, design-layer eshche ne zavershen.

## Chto uzhe sdelano pravilno

- kurs ne razvalen na sluchaynye stili;
- est fallback generic-shell `D-06 Corporate Neutral`;
- design system uzhe myslitsya kak baza dlya `PPTX / PDF / A3 / A5`;
- first visual build uzhe razbit na controlled batches i `4` bazovykh maketa;
- shell-semantic, warning language i QR-zony uzhe osmysleny kak chast sistemy.

## Reestr design-riskov i pravil

| ID | Zona | Chto vazhno s tochki zreniya dizayna | Tekushchiy signal | Risk seychas | Chto delat poka |
|---|---|---|---|---|---|
| DN-01 | Concept inflation | `10` kontseptov bez realnykh preview mogut sozdat illyuziyu vybora bez nastoyashchego dizayn-resheniya | Design pack uzhe gotovitsya k pokazu, no mini-preview eshche ne sobrany | `high` | Ne schitat concept-pack realnym klientskim instrumentom, poka net odinakovo sobrannykh preview |
| DN-02 | System-before-identity drift | Sistema uzhe est, no sobstvennaya visual identity mozhet eshche ne sluchitsya | Shell silnee, chem charakter | `medium / high` | Otdelno proveriat, est li u kursa sobstvennyy visual fingerprint |
| DN-03 | Generic shell over-safety | `D-06 Corporate Neutral` udoben, no mozhet okazat'sya slishkom bezopasnym dlya etalonnogo kursa | On uzhe fallback i osnova first build | `medium / high` | Ispolzovat ego kak bazu, no ne putat s okonchatelnym vizualnym potentsialom kursa |
| DN-04 | Underdefined design system | Spec pokryvaet printsipy, no ne vse kritichnye chisla i fiziku maketa | Net finalnykh typographic values, line-weights i setochnykh parametrov | `high` | Perevodit spec iz verbalnogo v poluizmerimyy vid posle first build |
| DN-05 | Print ambiguity | `A3/A5` uzhe zadeklarirovany, no pechatnaya fizika eshche ne zafiksirovana zhestko | Bleed, color model, orientation i min sizes eshche ne zashity | `high` | Ne schitat print-contour zrelym do testovogo print-pass |
| DN-06 | Layout rigidity | Ogranichenie do `4` bazovykh maketov mozhet dat sistemnost, no neobjazatelno dat bogatuyu dizaynerskuyu ritmiku | First build stroitsya ochen disciplinirovanno | `medium` | Sledit, chtoby povtoryaemost ne ubila modulnyy ritm i vizualnuyu energiyu |
| DN-07 | White-label dilution | Podgotovka pod mnogikh klientov mozhet razmyt sobstvennyy kharakter kursa | Multi-client contour silen uzhe na stadii brief | `medium / high` | Otdelyat universalnost ot bezlikosti |
| DN-08 | Client-facing honesty | Dokumenty o dizayne mogut zayavlyat bolshe gotovnosti, chem realnyy design-state | `starter draft / yes` v design i print sloyakh povtoryaetsya | `medium / high` | Derzhat chestnyy ton: direction, a ne gotovyy client-ready design kit |
| DN-09 | Cleanliness trust | Sluchaynye artefakty kodirovki i gryaznyy support-text podrivayut dizaynerskoe doverie | V rabochikh docs uzhe byli takie signaly | `medium` | Chistit ne tolko finalnye slaydy, no i dizaynerskie specs |
| DN-10 | Product cohesion | Kurs dolzhen chitatsya kak odin visual product mezhdu deck, test, `A3`, `A5` i final slides | Svyazki uzhe zadelany, no eshche ne dokazany na realnom build | `medium / high` | Proveryat design ne po odnomu slaydu, a po tsepochke nositeley |

## Gde design-layer deystvitelno mozhet byt usilen

### 1. Chyotkoe razdelenie mezhdu concept pack i production system

Seichas u proekta est dve silnykh, no raznykh zadachi:

- pokazat klientu vizualnyy vybor;
- sobrat vnutrenne ustoychivuyu dizayn-sistemu.

Pochemu eto vazhno:

- esli ikh smeshat, to klientu budet pokazana ne sistema, a obeshchanie;
- a vnutri production budet kazatsya, chto identity uzhe vybrana, khotya ona eshche ne dokazala sebya v build.

### 2. Perevod spec iz printsipov v poluizmerimye pravila

Design system uzhe khorosho formuliruet printsipy.

Sleduyushchiy shag nuzhen ne v tom, chtoby rasshiryat ego eshche odnim theory-layer, a v tom, chtoby:

- zafiksirovat realnye title/body/label values;
- zafiksirovat minimalnye line-weights;
- zafiksirovat minimalnye polya i predel plotnosti;
- privyazat eto k first build, a ne k abstraktnomu budushchemu.

### 3. Proverka pervogo kursa ne tolko na chitaemost, no i na lichnost

Pervyy referensnyy kurs dolzhen byt ne tolko ponyatnym, no i zapominayushchimsya kak visual object.

Pravilo:

- worker readability pervichna;
- no fallback-neutrality ne dolzhna stat postoyannym zamenitelem kharaktera.

## Gde design-layer skoree vsego navredit, esli ego ne kontrollirovat

Design-layer skoree vsego navredit:

- esli nachnet gonitsya za "silnym vidom" v uscherb worker readability;
- esli popytaetsya srazu zafiksirovat finalnyy identity lock bez first build;
- esli budet dublirivat infographic i motion layers;
- esli prevratit white-label gotovnost v opravdanie dlya bezlikogo dizayna.

Pochemu:

- togda vmesto silnogo kursa poluchitsya libo kholodnyy shell, libo krasivaya, no slabaya dlya obucheniya veshch.

## Minimalnye prakticheskie pravila poka sloy ne aktivirovan

- ne schitat design concept realnym klientskim instrumentom bez odinakovo sobrannykh preview;
- ne schitat design system polnostyu zreloy, poka ona ne proshla first build i print-check;
- proveryat shell ne tolko na povtoryaemost, no i na nalichie kharaktera;
- smotret na deck, test, `A3` i `A5` kak na odin visual product, a ne na chetyre otdelnye zadachi.

## Kogda etot sloy stoit aktivirovat pozhe

Etot sloy imeet smysl perevodit iz `inactive` v bolee aktivnyy rezhim, kogda:

- budut sobrany realnye preview po design concepts;
- poyavitsya first visual build ne na bumage, a v realnom PowerPoint/Figma layer;
- budet proyden testovyy `A3/A5` print-pass;
- vozniknet nuzhda otsenivat ne tolko layout discipline, no i vizualnuyu sostoyatelnost kursa kak client-facing product.

## Prakticheskiy vyvod seychas

Na segodnya `Pipeline` uzhe silen kak dizayn-proizvodstvennaya sistema.

No `Montazhnik_lesov` kak dizaynerskiy produkt eshche v perekhodnom sostoyanii:

- shell uzhe est;
- design contour uzhe myslitsya sistemno;
- first build uzhe pravilno ogranichen;
- no identity-layer, client-preview honesty i print-physic layer eshche ne do kontsa sobrany.

Poetomu etot sloy poka nuzhen ne dlya upravleniya, a dlya nablyudeniya:

chtoby kogda kurs sozreet do bolee zhestkogo design-review, nuzhnye signaly uzhe byli zafiksirovany i ne prikhodilos vosstanavlivat ikh zadnim chislom.
