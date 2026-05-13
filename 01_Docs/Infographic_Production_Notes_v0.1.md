# Infographic Production Notes v0.1

## Status

- Status: `inactive / working layer`
- Data sborki: `2026-05-13`
- Owner: `vy`
- Rezhim primeneniya: `neblokiruyushchiy`

## Naznachenie

Etot dokument nuzhen, chtoby smotret na `Pipeline` i konkretno na kurs `Montazhnik_lesov` glazami infografika.

Na tekushchem etape on:

- ne dobavlyaet novykh obyazatelnykh QA-gates;
- ne ostanavlivaet sborku `script`, `asset layer` ili `deck`;
- ne trebuyet perestroiki struktury `Pipeline`;
- ne schitaetsya finalnym art-direction guide.

Ego zadacha seychas:

- zafiksirovat, kakoy visual language kurs dolzhen uderzhat;
- otdelit poleznuyu infographic-distsiplinu ot dekorativnogo dizayna;
- ne poteryat kriticheskie visual-riski po mere sborki;
- podgotovit osnovu dlya bolee zhestkogo infographic-layer pozhe, esli on ponadobitsya.

## Pravilo ispolzovaniya poka dokument ne aktivirovan

- eti notes smotryat na proekt kak na explaining system, a ne kak na prosto krasivyy deck;
- vse punkty iz dokumenta seychas schitayutsya `production guidance`, a ne `release stop`;
- esli kakoy-to punkt ne zakryt, sborka mozhet prodolzhatsya, esli my chestno pomnim o riske;
- aktivatsiya etogo sloya kak obyazatelnogo pravila dolzhna byt otdelnym resheniem.

## Chto uzhe silno

- kurs pravilno sdvinut iz `photo-first` v `scheme-first`;
- visual production uzhe razbit na batches i povtoryaemye makety;
- `worker readability` priznana vazhnee dekorativnosti;
- `A-31`, `A-37`, `A-38`, `A-41`, `A-43` uzhe ponyaty kak opornye visual nodes;
- est logika perenosa chasti materiala v `A3/A5`, a ne tolko v deck.

## Glavnaya infographic-pozitsiya dlya etogo kursa

Kurs `Montazhnik_lesov` dolzhen sobiratsya ne kak prezentatsiya-sbornik i ne kak poster-set.

Ego nuzhno sobirat kak sistemu iz trekh tipov vizualnogo obyasneniya:

1. `principle scheme`
2. `compare logic`
3. `worker board / control board`

Esli eti tri tipa derzhatsya odnim yazykom, kurs budet schityvatsya kak professionalnyy i ponyatnyy.

Esli oni razvalyatsya na raznye stili, kurs budet vygladet kak nabor nesvyazannykh slaydov.

## Reestr infographic-riskov i pravil

| ID | Zona | Chto vazhno dlya infografiki | Tekushchiy signal | Risk seychas | Chto delat poka |
|---|---|---|---|---|---|
| IN-01 | Visual grammar | U kursa dolzhen byt odin infographic-yazyk dlya lines, arrows, markers, labels i warning-semantics | V dokumentakh eto uzhe zadeklarirovano, no eshche ne zafiksirovano chislenno | `high` | Do sborki slaydov zafiksirovat minimalnyy diagram-system: line-weight, radius, marker logic, label logic |
| IN-02 | Compare system | Vse `pravilno / nepravilno`, `mozhno / nelzya`, `dopustit / ne dopustit` dolzhny schityvatsya odnim i tem zhe sposobom | Compare-shell priznan nuzhnym, no poka ne sobran kak yedinaya sistema | `high` | Ne delat kazhdoe sravnenie zanovo; snachala sobrat odin compare-shell |
| IN-03 | Information density | Slaydy dolzhny obyasnyat odnu logiku za raz, a ne vmeshchat vsyu temu | V mnogikh mestakh est pravilnyy fokus na readability, no net zhestkogo limita po plotnosti | `high` | Derzhat 1 glavnuyu ideyu na slayd i ogranichivat chislo aktivnykh signalov |
| IN-04 | Teaching hierarchy | Samye vazhnye slaydy dolzhny imet yavnuyu ierarhiyu smyslov, a ne ravnomernyy shum | `A-31`, `A-41`, `A-43` uzhe pomecheny kak osobennye | `high` | Stroit eti slaydy ot glavnogo smysla k detaili, a ne naoborot |
| IN-05 | Worker-board language | `A-37` i `A-38` dolzhny byt ne "plakatami", a rabochimi doskami resheniy | V planakh eto ponimanie uzhe est | `medium / high` | Derzhat binarnyy status, minimum dekorativnykh tsvetov i maksimalno yavnye gruppy |
| IN-06 | Spatial risk scene | `A-41` nuzhno pokazat kak prichinno-prostranstvennuyu opasnost, a ne kak krasivuyu scenu | Slayd uzhe otmechen kak special risk scene | `high` | Stroit odin put chteniya: istochnik -> trayektoriya -> zona porazheniya -> deystvie rabotnika |
| IN-07 | Print portability | Chast vizualov dolzhna bezboleznenno ukhodit v `A3/A5` | Eto uzhe priznano v build-spec | `medium` | Ubirat zavisimost ot melkikh podpisey i tonkikh dekorativnykh elementov |
| IN-08 | Photo dependence | Foto ne dolzhno byt usloviem ponyatnosti tam, gde mozhno obyasnit skhemoy | Asset register uzhe perenes fokus na own-built schemes | `medium` | Schitat foto usileniem, a ne nositelem osnovnogo smysla |
| IN-09 | Icon discipline | Ikonki dolzhny byt iz odnogo controlled family i ne sporit s osnovnoy skhemoy | Eto ponimanie uzhe est, no family ne zafiksirovan | `medium` | Vybrat odin neutral icon-family i ne smeshivat ego s proizvolnymi pikto |
| IN-10 | Text cleanliness | Label system dolzhen byt chistym i ne lomatsya iz-za kodirovki, sluchaynogo translita ili gryaznykh copypaste | V rabochikh dokumentakh uzhe est otdelnye artefakty kodirovki | `medium` | Pered perenosom tekstov v deck chistit labels i support-text do odnorodnogo vida |

## Kriticheskie infographic-uzly dlya `Montazhnik_lesov`

### 1. `A-31`

Eto ne prosto "eshche odna skhema".

Eto slayd, po kotoromu budet ponyatno:

- mozhet li kurs obyasnyat konstruktsionnuyu logiku;
- mozhet li skhema byt ponyatnoy bez ustnogo rasskaza;
- umeyut li diagrammy kursa derzhat ierarhiyu.

Pravilo:

- ne prevrashchat ego v chertezh;
- ne popytatsya obyasnit vse elementy lesov srazu;
- vydelit neskolko glavnykh uzlov i rabotat ot nikh.

### 2. `A-37` i `A-38`

Eto naibolee poleznyy material dlya rabochego kontura.

Pravilo:

- binarnost vazhnee "krasivogo statusa";
- gruppirovka vazhnee dekorativnoy setki;
- signal `dopustit / ne dopustit` dolzhen schityvatsya s pervogo vzglyada.

### 3. `A-41`

Eto samaya slozhnaya infographic-zadacha v bloke.

Pravilo:

- ne sobirat "kino-kadr";
- ne pytatsya pokazyvat vse riski odnovremenno;
- delat odnu ponyatnuyu prichinnuyu scenu.

### 4. `A-43`

Eto finalnyy algorithm slide.

On dolzhen ne povtoryat kurs, a szhat ego do yadra.

Pravilo:

- final dolzhen byt korotkim i silnym;
- ne ukhodyt v kholodnuyu administrativnuyu blok-skhemu;
- ostavit tolko te shagi, bez kotorykh algoritm perestaet rabotat.

## Minimalnye infographic-pravila uzhe seychas

Poka etot sloy ne aktivirovan, khvatit pyati pravil:

1. Odin visual message na slayd.
2. Odin compare-shell na ves kurs.
3. Odin line / arrow / marker language dlya vsekh skhem.
4. Worker-board slaydy ne delat "dizaynerskimi".
5. Ni odin vazhnyy slayd ne dolzhen trebovat ustnogo rasshifrovaniya dlya bazovogo ponyatiya.

## Chto poka ne delat

- ne prevrashchat etot dokument v novyy obyazatelnyy review-layer pryamo seychas;
- ne peresobirat pod nego vse uzhe sdelannye artefakty;
- ne putat infographic-distsiplinu s "sdelat strozhe i skuchnee";
- ne dobavlyat novye abstraktnye kontsepty vmesto sborki konkretnykh reusable-shells.

## Kogda etot sloy stoit aktivirovat silnee

Imeet smysl perevesti ego iz `working layer` v bolee zhestkiy contour, esli proizoydet hotya by odno:

- nachnetsya realnaya sborka `first visual build`;
- poyavitsya pervyy sobstvennyy draft deck;
- nachnetsya perevod v `A3/A5`;
- nachnutsya raznoglasiya po compare-language ili warning-semantics;
- kurs nachnet vizualno "raspadatsya" na otdelnye stili.

## Kandidaty na sleduyushchiy infographic-sloy pozhe

Kogda vernyomsya k teme glubzhe, polezno budet sobrat:

- `Diagram_System_Spec_v1`
- `Compare_Shell_Rules_v1`
- `Worker_Board_Language_v1`
- `Slide_Hierarchy_Check_v1`
- `Infographic_QA_Addendum_v1`

## Tekushchee reshenie

- Notes sobrany: `yes`
- Oni blokiruyut tekushchuyu sborku: `no`
- Oni mogut ispolzovatsya kak production-orientir uzhe seychas: `yes`
- Nuzhen li bolee zhestkiy infographic-layer pozhe: `yes`
