# Art Direction Notes v0.1

## Status

- Status: `inactive / working layer`
- Data sborki: `2026-05-14`
- Owner: `vy`
- Rezhim primeneniya: `neblokiruyushchiy`

## Naznachenie

Etot dokument nuzhen, chtoby smotret na `Pipeline` i konkretno na kurs `Montazhnik_lesov` glazami art-director.

Na tekushchem etape on:

- ne dobavlyaet novykh obyazatelnykh QA-gates;
- ne ostanavlivaet sborku `script`, `asset layer`, `deck`, `A3/A5` ili `release`;
- ne podmenyaet `Design_Notes`, `Infographic_Production_Notes`, `Motion_Production_Notes`, `Photo_Production_Notes` i `3D_Production_Notes`;
- ne schitaetsya finalnym art-direction lock ili finalnym visual concept approval.

Ego zadacha seychas:

- zafiksirovat, est li u kursa sobstvennyy khudozhestvennyy vektor;
- otdelit prosto sobiraemuyu vizualnuyu sistemu ot kursa s realnym obrazom i kharakterom;
- podsvetit, gde generic-shell polezen, a gde on nachinaet ubivat lichnost produkta;
- podgotovit osnovu dlya bolee tochnogo art-direction layer pozhe, esli on ponadobitsya.

## Pravilo ispolzovaniya poka dokument ne aktivirovan

- eti notes smotryat na kurs kak na visual statement, a ne tolko kak na discipline layouta;
- vse punkty iz dokumenta seychas schitayutsya `production guidance`, a ne `release stop`;
- esli kakoy-to punkt ne zakryt, sborka mozhet prodolzhatsya, esli worker readability i design system sokhranyayutsya;
- aktivatsiya etogo sloya kak obyazatelnogo pravila dolzhna byt otdelnym resheniem.

## Chto etot sloy delaet i chego ne delaet

Etot sloy:

- otsenivaet `conceptual visual direction`;
- smotrit na nalichie kharaktera i lichnosti u kursa;
- otslezhivaet, ne raspadaetsya li shell-system na vizualno sterilny product;
- podsvetivaet, gde nuzhen ne eshche odin layout, a silnee khudozhestvennoe reshenie;
- proveriaet, est li u kursa svoi vizualnyy ton, ritm i obraz.

Etot sloy ne dolzhen:

- dublirivat infographic grammar;
- dublirivat motion timing;
- dublirivat design system spec;
- podmenyat expert, OT, editorial ili technical writing sloi.

## Glavnaya art-direction pozitsiya dlya etogo proekta

`Montazhnik_lesov` ne dolzhen ostatsya prosto "akkuratnym korporativnym kursom po TB".

Esli on dolzhen stat pervym referensnym produktom dlya vsego `Pipeline`, to emu nuzhno ne tolko:

- byt chitaemym;
- byt sistemnym;
- byt print-portable;

no i imet uznavaemyy khudozhestvennyy ton.

Glavnaya opasnost seychas ne v khaose, a v obratnom:

kurs mozhet stat slishkom pravilnym, slishkom neutralnym i slishkom bezopasnym vizualno.

Prostoe pravilo:

Esli kurs vygladit kak nadyozhno sobrannyy shell, no ne ostavlyaet obraznogo sleda, art-direction layer eshche ne zavershen.

## Chto uzhe sdelano pravilno

- proekt uzhe ne pytaetsya byt "krasivym radi krasivosti";
- generic-shell vybran ostorozhno i pod white-label zadachu;
- visual system uzhe dumaet pro `A3/A5`, warning language i worker readability;
- first build uzhe ogranichen controlled naborom slaydov vmesto razduvaniya vsego decka;
- v kontsept-pake u kazhdogo napravleniya uzhe est ponyatnyy kharakter na urovne nazvaniya i tonality.

## Reestr art-direction riskov i pravil

| ID | Zona | Chto vazhno s tochki zreniya art-director | Tekushchiy signal | Risk seychas | Chto delat poka |
|---|---|---|---|---|---|
| AD-01 | Neutrality trap | Generic-shell mozhet sdelat kurs sobiraemym, no vizualno neostayushchimsya v pamyati | `D-06 Corporate Neutral` uzhe fallback i osnova first build | `high` | Ispolzovat ego kak bazu, no ne schitat finalnym obrazom kursa |
| AD-02 | Concept without embodiment | Kontsepty uzhe opisany slovami, no eshche ne dokazany realnymi preview | `10` concepts est, no net sobranogo visual comparison pack | `high` | Ne schitat verbalnyy concept-pack dostatochnym dlya art-direction vybora |
| AD-03 | Identity flattening | White-label gotovnost mozhet razmyt unikalnost pervogo kursa | Multi-client contour silen s samogo briefa | `medium / high` | Otdelyat universal shell ot sobstvennogo tonal core |
| AD-04 | Over-systemization | Slishkom silny fokus na shells, grids i repeatability mozhet ubivat dramaturgiyu | First build pravilno disciplinovan, no ochen shell-first | `medium / high` | Iskat ne tolko povtoryaemost, no i modulnyy vizualnyy rytm |
| AD-05 | Character vacuum | U kursa mozhet ne poyavitsya odna bolshaya vizualnaya ideya | Poka est skoree khorosho sobiraemaya sistema, chem bolshoy obraz | `high` | Sformulirovat odnuyu vedushchuyu metaphor ili tonal axis dlya kursa |
| AD-06 | Tone mismatch | TB-kurs mozhet libo stat slishkom sukhim, libo slishkom display | V concept-pake uzhe est ekstremy ot `Field Manual` do `Dark Control` | `medium` | Derzhat ton mezhdu disciplinoy i professionalnoy energiyey |
| AD-07 | Weak flagship effect | Pervyy kurs mozhet ne stat vizualnym etalonom dlya lineyki | Proekt uzhe stroitsya kak systema dlya dalneyshikh professiy | `medium / high` | Smotret na `Montazhnik_lesov` ne tolko kak na kurs, no i kak na model budushchego vizualnogo standarta |
| AD-08 | Posterization risk | Svyazka `deck + A3 + A5` mozhet uvodit v plakatnost vmesto prezentatsionnoy logiki | `D-10 Training Poster` i print contour uzhe silno prityagivayut | `medium` | Ne dat print-mysleniyu podmenit ekrannuyu dramaturgiyu |
| AD-09 | Visual climax absence | U kursa mozhno ne poluchitsya ni odnogo "silnogo uzla", kotoryy sbiraet ego obraz | First build stroitsya ochen proizvodstvenno, no ne art-directionally climactic | `medium / high` | Yavno vydelit 2-3 art-direction anchor slides |
| AD-10 | Trust aesthetics | Gryaz v tekstakh, preview i support-docs byot po vospriyatiyu dizayna kak sistemy | V rabochikh docs uzhe byvali artefakty kodirovki | `medium` | Derzhat chistotu support-layer kak chast visual authority |

## Gde art-direction layer deystvitelno mozhet byt usilen

### 1. Vedushchaya tonal axis

Kursu nuzhen ne prosto concept code, a odno vedushchee tonalnoe reshenie.

Naprimer:

- `discipline under load`
- `constructed safety`
- `field control system`

Ne kak slogan dlya klienta, a kak vnutrenniy art-direction kompas.

Pochemu eto vazhno:

- bez etogo vse pravilnye makety mogut ostat'sya pravilnymi, no ne sobrat'sya v odin obraz.

### 2. Art-direction anchors

U kursa dolzhny byt 2-3 slayda, na kotorykh sobiraetsya ego visual identity.

Ne obyazatelno samye informatsionnye, a samye opornye po kharakteru.

Dlya etogo kursa takimi kandidatami mogut stat:

- cover;
- odin principle scheme;
- odin worker-board;
- final takeaway.

Pravilo:

- esli eti uzly silny, ves kurs derzhitsya vyshe;
- esli oni ne silny, vse ostalnoe ostaetsya khorosho sobrannym, no ne vyrazitelnym.

### 3. Zashchita ot sterilnosti

Pervyy referensnyy kurs ne dolzhen skatitsya v "korporativno pravilno i vse".

Pravilo:

- neutralnost mozhno ispolzovat kak karkas;
- no kharakter nado dobavit cherez ritm, scale, contrast, focal hierarchy i tone of image, a ne cherez dekor.

## Gde art-direction layer skoree vsego navredit, esli ego ne kontrolirovat

Art-direction layer skoree vsego navredit:

- esli nachnet trebovat "silnogo vida" v ushcherb worker readability;
- esli popytaetsya zakryt identity do first build;
- esli budet dublirivat design-layer vmesto usileniya ego vektora;
- esli prevratit kazhdyy kurs v art-object vmesto sistemy professionalnykh produktov.

Pochemu:

- togda proekt poteryaet glavnuyu silu: proizvodimost i uchenie, a ne tolko effekt.

## Minimalnye prakticheskie pravila poka sloy ne aktivirovan

- ne schitat fallback-shell okonchatelnym visual answer;
- ne delat art-direction vyvodov po verbalnomu concept-pack bez realnykh preview;
- iskat v first build ne tolko chitaemost, no i image memory;
- derzhat 2-3 visual anchor points, a ne rasschityvat, chto "vse samo soberyotsya iz shella".

## Kogda etot sloy stoit aktivirovat pozhe

Etot sloy imeet smysl perevodit iz `inactive` v bolee aktivnyy rezhim, kogda:

- budut sobrany realnye preview minimum po 3-4 concept directions;
- poyavitsya first visual build v realnom editore, a ne tolko v spec-docs;
- vozniknet nuzhda vybrat mezhdu "udobnym generic-shell" i "silnym referensnym produktom";
- budet nuzhno stroit ne prosto design system, a vizualnyy standard dlya sleduyushchikh professiy.

## Prakticheskiy vyvod seychas

Na segodnya `Pipeline` uzhe silen kak vizualno discipliniruemaya production-sistema.

No `Montazhnik_lesov` kak art-directed product eshche v perekhodnom sostoyanii:

- sistema shells uzhe est;
- dizayn-logika uzhe soberannaya;
- first build pravilno ogranichen;
- no khudozhestvennyy vektor, lichnost i flagship-effect eshche ne do kontsa slozhilis.

Poetomu etot sloy poka nuzhen ne dlya upravleniya, a dlya nablyudeniya:

chtoby kogda kurs sozreet do bolee zhestkogo art-direction review, nuzhnye signaly uzhe byli zafiksirovany i ne prikhodilos vosstanavlivat ikh zadnim chislom.
