# 3D Production Notes v0.1

## Status

- Status: `inactive / working layer`
- Data sborki: `2026-05-13`
- Owner: `vy`
- Rezhim primeneniya: `neblokiruyushchiy`

## Naznachenie

Etot dokument nuzhen, chtoby smotret na `Pipeline` i konkretno na kurs `Montazhnik_lesov` glazami `3D`-khudozhnika.

Na tekushchem etape on:

- ne dobavlyaet novykh obyazatelnykh QA-gates;
- ne ostanavlivaet sborku `script`, `asset layer` ili `deck`;
- ne trebuyet perevoda kursa v `3D`-production;
- ne schitaetsya trebovaniem delat rendery ili modeli pryamo seychas.

Ego zadacha seychas:

- zafiksirovat, gde `3D` deystvitelno mozhet dat metodicheskuyu polzu;
- otdelit prostranstvennoe obyasnenie ot dekorativnogo obema;
- ne dopustit sluchaynogo meshaniya render-logiki v `scheme-first` kurs;
- podgotovit osnovu dlya bolee tochnogo `3D`-layer pozhe, esli on voobsche ponadobitsya.

## Pravilo ispolzovaniya poka dokument ne aktivirovan

- eti notes smotryat na `3D` kak na instrument obyasneniya prostranstva, a ne kak na ukrashenie;
- vse punkty iz dokumenta seychas schitayutsya `production guidance`, a ne `release stop`;
- esli kakoy-to punkt ne zakryt, sborka mozhet prodolzhatsya, esli kurs ostayetsya chitaemym v `scheme-first` logike;
- aktivatsiya etogo sloya kak obyazatelnogo pravila dolzhna byt otdelnym resheniem.

## Glavnaya 3D-pozitsiya dlya etogo kursa

Kurs `Montazhnik_lesov` ne dolzhen prevrashchatsya v `3D`-kurs.

Ego bazovaya logika pravilnaya:

- `scheme-first`
- `compare-second`
- `photo-layer optional later`

`3D` dlya takogo kursa dopustim tolko tam, gde bez prostranstvennoy podskazki rezko padaet ponyatnost.

Prostoe pravilo:

`3D` nuzhen ne tam, gde khochetsya krasivo pokazat konstruktsiyu, a tam, gde nuzhno obyasnit prostranstvennuyu prichinu opasnosti ili svyaz mezhdu ploskostyami, trayektoriyami i uzlami.

## Chto uzhe sdelano pravilno

- kurs uzhe uvoden ot `photo-heavy` i ne zavisit ot realizma;
- glavnye teaching visuals opredeleny kak skhemy, a ne kak render-stseny;
- `A-41` uzhe chestno ponyat kak otdelnaya spatial-risk task;
- `A-31` ne obeshchaet realizm, a derzhitsya kak construction-scheme;
- shell `D-06 Corporate Neutral` poka ne tolkaet kurs v sluchaynyy display-vid.

## Reestr 3D-riskov i pravil

| ID | Zona | Chto vazhno s tochki zreniya 3D | Tekushchiy signal | Risk seychas | Chto delat poka |
|---|---|---|---|---|---|
| TD-01 | Spatial necessity | `3D` nuzhen tolko tam, gde est realnaya prostranstvennaya neodnoznachnost | Kurs uzhe idet v `scheme-first` i eto khorosho | `medium` | Ne dobavlyat obem tuda, gde ploskaya skhema uzhe ponyatna |
| TD-02 | Decorative volume | Est risk sdelat obem radi "wau", a ne radi metodiki | V proekte poka net zhestkogo pravila protiv etogo | `high` | Schitat lyuboy obem vinovnym, poka on ne dokazal ponyatnost |
| TD-03 | A-31 overload | Slayd `A-31` ochen prosit 3D, no mozhet prevratitsya v trudnochitaemyy chertezh ili render | `A-31` uzhe priznan odnim iz glavnykh teaching visuals | `high` | Derzhat ego kak diagrammatic-construction visual, a ne kak realistichnuyu model |
| TD-04 | A-41 scene complexity | `A-41` deystvitelno mozhet potrebovat prostranstvennoy stseny, no legko lomayet readability | `A-41` uzhe pomechen kak `hazard scene / hybrid scene` | `high` | Stroit odin put chteniya: istochnik riska -> trayektoriya -> zona porazheniya -> rabotnik |
| TD-05 | Realism mismatch | Vnezapnoye poyavlenie detalnogo `3D` v ploskom shell budet vygladet kak chuzhoy sloy | Fallback shell poka `D-06 Corporate Neutral` | `medium / high` | Esli kogda-to budet `3D`, on dolzhen byt ogranichen po tonalnosti, depth i detalizatsii |
| TD-06 | Perspective inconsistency | Raznye ugly, raznyy horizon i raznyy tip obema razvalyat yedinyy visual language | V proekte poka net pravil na perspektivu | `medium` | Ne smeshivat isometric, perspective i quasi-3D bez otdelnogo resheniya |
| TD-07 | Print portability | Obemnaya grafika plokho zhivyot v `A3/A5`, osobenno s melkimi podpisyami | Chast vizualov uzhe dolzhna ukhodit v `A3/A5` | `medium` | Predpochtat controlled diagram depth vmesto render-rich podachi |
| TD-08 | Production cost | `3D` rezko podnimaet stoimost i vremya sborki bez garantii metodicheskoy otdachi | Kurs seychas stroitsya kak controlled draft system | `medium` | Schitat `3D` dorogim isklyucheniem, a ne normoy |
| TD-09 | Asset lock-in | Esli stseny delat kak flatten-render, ikh trudno bystro pravit v production | Mnogie assety seychas specialno planiruyutsya editable | `medium` | Predpochtat editable diagram build vmesto tyazhelogo final-render asset |
| TD-10 | Worker readability | Silnyy realism mozhet sdelat risk "kino-kadrom", a ne instruktsiey | V proekte worker readability uzhe vazhnee dekorativnosti | `high` | Dazhe prostranstvennaya stsena dolzhna ostavatsya instruktsiey, a ne kartinkoy |

## Gde 3D mozhet byt deystvitelno polezen

### 1. `A-41`

Eto glavnyy kandidat na `3D`-myshlenie.

Pochemu:

- tam est verkhnyaya zona riska;
- est trayektoriya padeniya;
- est nizhnyaya zona porazheniya;
- est rabotnik v otnoshenii k opasnosti.

Dazhe zdes `3D` ne obyazatelno dolzhen byt renderom.

Dostatochno:

- controlled depth;
- yavnoy ierarkhii planov;
- odnogo chitaemogo ugla;
- minimalnoy materialnosti.

### 2. `A-31`

Eto pogranichnyy kandidat.

Emu mozhet pomoch:

- legkaya prostranstvennaya podskazka;
- otdelenie blizhnikh i dalnikh elementov;
- ponyatnaya rabota diagonaley i tochek krepleniya.

Chego delat ne nado:

- polnyy realistichnyy karkas;
- slozhnyy ugol kamery;
- mnogo materialnykh detaley;
- "tekhnicheski krasivyy" render vmesto obyasnyayushchey skhemy.

## Gde 3D skoree vsego navredit

`3D` skoree vsego ne nuzhen:

- dlya `A-37`
- dlya `A-38`
- dlya `A-43`
- dlya bolshinstva `compare`-slaydov
- dlya lineynykh sequence-slaydov

Pochemu:

- tam vazhnee logika resheniya, a ne prostranstvennaya sreda;
- obem tam dobavit shum, a ne ponyatnost;
- worker-material poteryaet binarnost i bystroe schityvanie.

## Minimalnye 3D-pravila uzhe seychas

Poka etot sloy ne aktivirovan, khvatit pyati pravil:

1. Esli slayd ponyaten v ploskoy skheme, `3D` emu ne nuzhen.
2. `3D` dopustim tolko tam, gde nuzhno obyasnit prostranstvennuyu prichinu ili trayektoriyu.
3. Odin controlled angle luchshe, chem "effektnyy" rakurs.
4. Diagrammatic depth predpochtitelnee, chem realism.
5. Ni odin `3D`-element ne dolzhen razvalivat `A3/A5` i worker readability.

## Chto poka ne delat

- ne zakladyvat `3D` kak obyazatelnyy contour dlya etogo kursa;
- ne nachinat modelit radi samogo modelinga;
- ne delat rendery ran'she, chem zafiksirovan visual shell i compare-language;
- ne smeshivat v odnom release ploskie skhemy, quasi-3D, isometric i realistichnye stseny bez otdelnogo pravila.

## Kogda etot sloy stoit aktivirovat silnee

Imeet smysl perevesti ego iz `working layer` v bolee zhestkiy contour, esli proizoydet hotya by odno:

- vy reshite sdelat prostranstvennuyu stsenu dlya `A-41`;
- `A-31` okazhetsya slishkom trudnym v chisto ploskoy podache;
- poyavyatsya `3D`-preview ili render-based assets;
- nachnetsya podgotovka special worker-poster ili LMS-version s bolshim uporom na prostranstvennoe obyasnenie.

## Kandidaty na sleduyushchiy 3D-sloy pozhe

Kogda vernyomsya k teme glubzhe, polezno budet sobrat:

- `3D_Usage_Rules_v1`
- `Spatial_Scene_Guide_A41_v1`
- `Diagrammatic_Depth_Spec_v1`
- `Perspective_and_Angle_Rules_v1`
- `3D_vs_Scheme_Decision_Check_v1`

## Tekushchee reshenie

- Notes sobrany: `yes`
- Oni blokiruyut tekushchuyu sborku: `no`
- Oni mogut ispolzovatsya kak production-orientir uzhe seychas: `yes`
- Nuzhen li bolee zhestkiy `3D`-layer pozhe: `yes`
