# Copy Production Notes v0.1

## Status

- Status: `inactive / working layer`
- Data sborki: `2026-05-13`
- Owner: `vy`
- Rezhim primeneniya: `neblokiruyushchiy`

## Naznachenie

Etot dokument nuzhen, chtoby smotret na `Pipeline` i konkretno na kurs `Montazhnik_lesov` glazami copywriter.

Na tekushchem etape on:

- ne dobavlyaet novykh obyazatelnykh QA-gates;
- ne ostanavlivaet sborku `script`, `asset layer`, `deck` ili `release`;
- ne podmenyaet language style guide, glossary i proofreading-layer;
- ne schitaetsya finalnoy redaktorskoy politikoy.

Ego zadacha seychas:

- zafiksirovat, kak perevesti khoroshuyu metodicheskuyu mysl v silnyy instructional copy;
- otdelit pravilnyy smysl ot gotovoy vypushchennoy formulirovki;
- ne dopustit tekstovogo peregruza i tonovogo raznoboya;
- podgotovit osnovu dlya bolee tochnogo copy-layer pozhe, esli on ponadobitsya.

## Pravilo ispolzovaniya poka dokument ne aktivirovan

- eti notes smotryat na tekst kak na rabochiy instrument obucheniya, a ne kak na formalnuyu prozu;
- vse punkty iz dokumenta seychas schitayutsya `production guidance`, a ne `release stop`;
- esli kakoy-to punkt ne zakryt, sborka mozhet prodolzhatsya, esli logika kursa i QA-layer uderzhany;
- aktivatsiya etogo sloya kak obyazatelnogo pravila dolzhna byt otdelnym resheniem.

## Glavnaya copy-pozitsiya dlya etogo kursa

Kurs `Montazhnik_lesov` uzhe silen po smyslu.

Zadacha copy-layer ne "pridumat krasivye frazy", a sdelat tak, chtoby:

- kazhdyy slayd bil v odnu mysl;
- vazhnye formulirovki zapominalis;
- tekst zvuchal kak professionalnyy instruktazh, a ne kak vnutrenniy tehnicheskiy draft;
- worker-track ostavalsya na yazyke deystviy, zapretov i resheniy.

Prostoe pravilo:

Esli tekst pravilnyy, no ne schityvaetsya s pervogo prokhoda, znachit copy-layer eshche ne zavershen.

## Chto uzhe sdelano pravilno

- v script uzhe est `odna glavnaya mysl` pochti na kazhdom slayde;
- tekst na slayde i speaker notes uzhe razdeleny;
- worker-track uzhe orientirovan na deystviya i zaprety, a ne na abstraktnuyu teoriyu;
- v blueprint uzhe est `editorial consistency before release`;
- QA uzhe znaet pro odnu mysl, terminologiyu, peregruz i proofreading.

## Reestr copy-riskov i pravil

| ID | Zona | Chto vazhno s tochki zreniya copy | Tekushchiy signal | Risk seychas | Chto delat poka |
|---|---|---|---|---|---|
| CP-01 | Formula fatigue | Slishkom mnogo tezisov stroitsya po odnomu patternu `X ne raven Y`, `bez A = B`, `ne znachit` | V script uzhe mnogo silnykh, no odnotipnykh konstruktsiy | `medium / high` | Chast silnykh formul ostavit, no ne stroit ves kurs na odnom ritme |
| CP-02 | Draft tone | Tekst inogda zvuchit kak metodicheskiy karkas, a ne kak vypushchennyy learning copy | Struktura silnaya, no voice eshche ne vezde dozhat | `high` | Delat otdelnyy copy-pass posle smyslovoy sborki |
| CP-03 | Overloaded lines | Mysl verna, no fraza mozhet byt dlinnoi, tyazheloy ili ritmicheski slaboy | Mnogie slayd-lines uzhe khoroshi, no ne vse odinakovo udarnye | `medium / high` | Chistit frazy na dlinnu, ritm i ekrannuyu schityvaemost |
| CP-04 | Terminology drift | Termin, sokrashchenie ili ton mogut plavat mezhdu script, testom i release | Blueprint uzhe znaet pro glossary i style guide | `medium` | Derzhat glossary i copy-pass svyazannymi, a ne raznesennymi |
| CP-05 | Worker vs system voice | Tekst mozhet byt slishkom "vnutrenne sistemnym" vmesto yazyka rabochego kursa | Proekt markdown-first i system-heavy po prirode | `high` | Proveryat, ponimat li rabochiy slayd bez znaniya vnutrenney kukhni pipeline |
| CP-06 | Screen unsuitability | Horoshaya mysl mozhet byt plokhoy ekrannoy stroykoy | Design spec uzhe boritsya s tekstovym peregruzom | `medium` | Ne putat speaker note s ekranom; ekran dolzhen ostavatsya rezkim i korotkim |
| CP-07 | Weak punchline control | Ne vse finalnye i modulnye takeaways odinakovo zapominayutsya | Final lines mestami silnye, mestami prosto korrektnye | `medium` | Vydelit klyuchevye takeaways i dozhat ih kak opornye formulirovki |
| CP-08 | Contrast loss | Safe / danger, allow / block, start / stop mogut textually zvuchat ne dostatochno kontrastno | Vizualnaya logika uzhe stroitsya cherez compare-shell | `medium` | Dovodit pary ne tolko graficheski, no i verbalno |
| CP-09 | Release cleanliness | Bitaya kodirovka, translit, smesi alfavitov i gryaznye frazy mogut podportit dazhe silnyy kurs | Blueprint i QA uzhe znayut ob etom | `medium / high` | Derzhat obyazatelnyy final copy + proofread pass pered release |
| CP-10 | Notes-to-slide bleed | To, chto nado govorit, mozhet prosochitsya na ekran i peregruzit slayd | Speaker notes uzhe bogatye i poleznye | `medium` | Ne vypuskat na ekran to, chto dolzhno zhyt v ustnoy podache |

## Gde copy deystvitelno mozhet byt usilen

### 1. Modulnye entry-lines

Modulnye entry-slides dolzhny ne prosto oboznachat temu, a vklyuchat pravilo modulia.

Pochemu eto vazhno:

- oni zadayut ton;
- oni poyavlyayutsya kak opornye yakorya kursa;
- po nim zapominaetsya logika moduley.

Pravilo:

- korotko;
- udarno;
- bez vtorogo smyslovogo etazha v odnoi stroke.

### 2. Compare-lines

Compare-slides nuzhdayutsya ne tolko v odinakovoy grafike, no i v odinakovom verbalnom kontraste.

Pravilo:

- para dolzhna schityvat'sya simmetrichno;
- formulyrovki dolzhny byt ravnogo vesa;
- opasnaya storona ne dolzhna obyasnyat'sya bolee tumanno, chem bezopasnaya.

### 3. Final takeaways

Finalnye i modulnye itogi dolzhny byt silnee, chem prosto "pravilnaya fraza".

Pravilo:

- summary ne povtoryaet vse;
- summary szhimaet;
- summary ostavlyaet slushatelya s deystviem ili stop-logikoy.

## Gde copy skoree vsego navredit, esli ego ne kontrollirovat

Copy skoree vsego navredit:

- esli nachnet "uluchshat" safety-ton do reklamnosti;
- esli voice stanet slishkom literaturnym;
- esli tekst nachnet povtoryat grafiku vmesto usileniya;
- esli kazhdaya fraza budet pytatsya byt aforizmom.

Pochemu:

- eto ne promostranitsa i ne manifest;
- eto uchebnyy safety-produkt;
- luchshiy copy zdes - ne samyy krasivyy, a samyy yasnyy i zapominaemyy.

## Minimalnye copy-pravila uzhe seychas

Poka etot sloy ne aktivirovan, khvatit pyati pravil:

1. Odin slayd = odna mysl, i eto dolzhno byt slyshno v stroke.
2. Tekst na ekrane koroche i rezhe, chem speaker note.
3. Silnaya formula khorosha, no ne kazhdaya stroka dolzhna byt formuloy.
4. Worker-copy dolzhen govorit na yazyke deystviy i granits.
5. Finalnyy pass po copy nuzhen dazhe togda, kogda smysl uzhe sobran pravilno.

## Chto poka ne delat

- ne schitat copy-pass "kosmetikoy posle vsego";
- ne vydavat systemnyy translit ili tekhnicheskiy markdown-ritm za finalnyy klientskiy tekst;
- ne putat silnyy copy s agressivnym ili reklamnym tonom;
- ne vypuskat release-grade material bez finalnogo language / proofread / terminology pass.

## Kogda etot sloy stoit aktivirovat silnee

Imeet smysl perevesti ego iz `working layer` v bolee zhestkiy contour, esli proizoydet hotya by odno:

- nachnetsya sborka release-grade russkoyazychnogo deck;
- poyavyatsya pervye conflict-signals mezhdu script, testom i release-po tonu ili terminam;
- kurs poydet v klientskiy review, gde tekst nachnut otsenivat ne tolko metodicheski, no i kak gotovuyu podachu;
- nado budet sobirat otdelnye `worker` i `ITR` voice-varianty.

## Kandidaty na sleduyushchiy copy-sloy pozhe

Kogda vernyomsya k teme glubzhe, polezno budet sobrat:

- `Copy_Tone_Guide_v1`
- `Slide_Line_Rewrite_Rules_v1`
- `Worker_vs_ITR_Voice_Map_v1`
- `Takeaway_Formula_Rules_v1`
- `Proofread_and_Copy_QA_Addendum_v1`

## Tekushchee reshenie

- Notes sobrany: `yes`
- Oni blokiruyut tekushchuyu sborku: `no`
- Oni mogut ispolzovatsya kak production-orientir uzhe seychas: `yes`
- Nuzhen li bolee zhestkiy copy-layer pozhe: `yes`
