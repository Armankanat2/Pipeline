# Motion Production Notes v0.1

## Status

- Status: `inactive / working layer`
- Data sborki: `2026-05-13`
- Owner: `vy`
- Rezhim primeneniya: `neblokiruyushchiy`

## Naznachenie

Etot dokument nuzhen, chtoby smotret na `Pipeline` i konkretno na kurs `Montazhnik_lesov` glazami motion designer.

Na tekushchem etape on:

- ne dobavlyaet novykh obyazatelnykh QA-gates;
- ne ostanavlivaet sborku `script`, `asset layer` ili `deck`;
- ne prevrashchaet kurs v animation-heavy produkt;
- ne schitaetsya trebovaniem dobavlyat motion pryamo seychas.

Ego zadacha seychas:

- zafiksirovat, gde dvizhenie deystvitelno usilivaet ponyatnost;
- otdelit instructional motion ot dekorativnoy animatsii;
- ne dopustit sluchaynogo raznoboya perekhodov i reveal-logiki;
- podgotovit osnovu dlya bolee tochnogo motion-layer pozhe, esli on ponadobitsya.

## Pravilo ispolzovaniya poka dokument ne aktivirovan

- eti notes smotryat na motion kak na instrument ritma, ocherednosti i obyasneniya;
- vse punkty iz dokumenta seychas schitayutsya `production guidance`, a ne `release stop`;
- esli kakoy-to punkt ne zakryt, sborka mozhet prodolzhatsya kak staticheskaya sistema;
- aktivatsiya etogo sloya kak obyazatelnogo pravila dolzhna byt otdelnym resheniem.

## Glavnaya motion-pozitsiya dlya etogo kursa

Kurs `Montazhnik_lesov` ne dolzhen stanovit'sya prezentatsiey s effektami.

Ego bazovaya logika pravilnaya:

- modular shells
- `scheme-first`
- compare as system
- worker readability above display

Motion dlya takogo kursa nuzhen ne dlya "krasivogo zhivogo vida", a dlya trekh veshchey:

- pokazat ocherednost;
- upravlyat vnimaniem;
- razdelit signaly vo vremeni.

Prostoe pravilo:

esli bez dvizheniya slayd uzhe schityvaetsya yasno, motion emu ne obyazatelen.

## Chto uzhe sdelano pravilno

- v proekte uzhe est povtoryaemye makety, a znachit est baza dlya repeatable motion;
- `VP-03` uzhe myslitsya kak sequence strip, to est v nyom est estestvennaya vremennaya logika;
- `VP-04` uzhe gotovitsya kak yedinyy compare-shell, a znachit mozhet poluchit yedinyy reveal-pattern;
- `VP-07` uzhe vydelen kak otdelnaya risk-scene, to est samyy slozhnyy motion-case uzhe osmyslen;
- script uzhe znaet, chto pozhe nuzhny `perekhody`, `on-screen` i `narration` polya.

## Reestr motion-riskov i pravil

| ID | Zona | Chto vazhno s tochki zreniya motion | Tekushchiy signal | Risk seychas | Chto delat poka |
|---|---|---|---|---|---|
| MO-01 | Motion grammar | U kursa dolzhen byt odin yazyk perekhodov i reveal-logiki | V proekte uzhe est shell-system, no net motion-spec | `high` | Ne animirovat po sluchayu; snachala opredelit 3-4 tipa povedeniya |
| MO-02 | Decorative animation | Est risk dobavit dvizhenie radi "zhivosti", a ne radi ponyatnosti | Motion-layer poka ne formalizovan | `high` | Schitat lyubuyu animatsiyu vinovatoy, poka ona ne dokazala smysl |
| MO-03 | Sequence pacing | Poshagovye slaydy mogut stat slishkom bystrymi ili slishkom medlennymi | `VP-03` i sequence-slides uzhe opredeleny | `medium / high` | Derzhat odin temp reveal dlya tipovykh step-slides |
| MO-04 | Compare chaos | Compare-slides legko razvalit na raznye stsenarii pokaza | Compare-layer poka eshche ne finalizovan | `high` | Zadat odin ritual pokaza: baza -> side A -> side B -> red flag / takeaway |
| MO-05 | Attention overload | Odnovremennoe poyavlenie vseh markerov i podpisey ubivaet fokus | V proekte mnogo skhem i sravneniy | `high` | Razvodit signaly po ocheredi vmesto odnovremennogo pokaza |
| MO-06 | Risk scene overload | `A-41` mozhet prevratit'sya v malenkuyu "animatsionnuyu stsenu" vmesto instruktsii | `VP-07` uzhe pomechen kak osobyy slayd | `high` | Dvizhenie na `A-41` delat prichinnym, a ne efektno-nagnetayushchim |
| MO-07 | Worker-material mismatch | Slishkom silnyy motion mozhet sdelat staticheskuyu versiyu slaboy | Chast slaydov idet v `A3/A5` i worker-materials | `medium` | Kazhdyy motion-pattern dolzhen imet ponyatnyy staticheskij ekvivalent |
| MO-08 | Shell mismatch | Raznye makety mogut poluchit raznuyu energiyu i razvalit obshchiy ton | `VP-01`, `VP-03`, `VP-04`, `VP-06`, `VP-07` imeyut raznye funktsii | `medium` | Zafiksirovat, kak dvigaetsya kazhdyy tip maketa, no v odnom semeystve |
| MO-09 | Lecturer support | Motion mozhet meshat lektoru, esli ritm ne sovpadaet s notes i pauzami | Script bogat speaker notes i vedeniem auditorii | `medium` | Stroit motion ne protiv lektora, a kak oporu dlya pauz i fokus-pointov |
| MO-10 | Production scope creep | Animatsiya mozhet razdut production i sbit sboru deck | Kurs poka stroitsya kak controlled draft system | `medium` | Schitat motion tonkim sloem nad gotovoy statikoy, a ne parallel'nym proizvodstvom |

## Gde motion deystvitelno mozhet byt polezen

### 1. `VP-03` / slaydy `22`, `27`

Eto glavnye kandidaty na controlled step-reveal.

Pochemu:

- u nikh est estestvennyy poryadok;
- tam nuzhno pokazat ne nabor punktov, a protsess;
- ocherednost yavlyaetsya samoy metodikoy.

Pravilo:

- reveal po shag am;
- odin i tot zhe temp;
- ne perekryvat etapy lishnim dvizheniem;
- posle poyavleniya shag dolzhen ostavatsya stabilnym.

### 2. `VP-04` / compare-layer

Eto glavnaya zona dlya unified compare-motion.

Pravilo:

- snachala baza ili neutral frame;
- potom safe / dopustimo;
- potom unsafe / nelzya;
- potom aktsent na osnove oshibki.

Zdes nuzhna ne dinamika, a chestnaya posledovatelnost chteniya.

### 3. `VP-07` / `A-41`

Eto yedinstvennyy special motion-case.

Pravilo:

- ne delat "animatsiyu opasnosti";
- pokazat istochnik;
- pokazat trayektoriyu;
- pokazat zonu porazheniya;
- pokazat pravilnuyu interpretatsiyu.

Esli eto ne rabotaet spokojno i chisto, luchshe ostavit staticheskuyu versiyu.

## Gde motion skoree vsego navredit

Motion skoree vsego ne nuzhen:

- na `A-37`
- na `A-38`
- na final board-slaydakh
- na worker-poster oriented materials
- na cover i final, esli dvizhenie ne usilivaet takeaway

Pochemu:

- zdes vazhnee stabilnost, a ne reveal;
- slishkom mnogo dvizheniya oslabit binarnost resheniy;
- staticheskaya versiya zdes obyazatelno dolzhna rabotat sama po sebe.

## Minimalnye motion-pravila uzhe seychas

Poka etot sloy ne aktivirovan, khvatit pyati pravil:

1. Dvizhenie tolko tam, gde ono razvodit smysl po vremeni.
2. Odin tip slayda = odin tip reveal-povedeniya.
3. Compare ne animirovat khaotichno.
4. Sequence ne prevrashchat v "fly-in spisok".
5. Kazhdyy motion-pattern dolzhen imet silnyy staticheskij ekvivalent.

## Chto poka ne delat

- ne zakladyvat slozhnuyu animatsiyu kak obyazatelnyy contour dlya etogo kursa;
- ne delat display-motion ran'she, chem zafiksirovany shell, compare-system i visual semantics;
- ne smeshivat v odnom release raznyy tip tempov, easing-logik i reveal-ritualov bez pravila;
- ne podmenyat slabyy staticheskij slayd animatsiey.

## Kogda etot sloy stoit aktivirovat silnee

Imeet smysl perevesti ego iz `working layer` v bolee zhestkiy contour, esli proizoydet hotya by odno:

- nachnetsya sborka narrated / on-screen versii;
- v script budut dobavleny polya `perekhody`, `on-screen`, `narration`;
- poyavyatsya pervye motion-prototypes dlya `VP-03`, `VP-04` ili `VP-07`;
- kurs poydet v format, gde tempo pokaza yavlyaetsya chast'yu metodiki, a ne tolko rabotoy lektora.

## Kandidaty na sleduyushchiy motion-sloy pozhe

Kogda vernyomsya k teme glubzhe, polezno budet sobrat:

- `Motion_Grammar_v1`
- `Sequence_Reveal_Rules_v1`
- `Compare_Reveal_Ritual_v1`
- `Risk_Scene_Motion_Guide_A41_v1`
- `Static_to_Motion_Parity_Check_v1`

## Tekushchee reshenie

- Notes sobrany: `yes`
- Oni blokiruyut tekushchuyu sborku: `no`
- Oni mogut ispolzovatsya kak production-orientir uzhe seychas: `yes`
- Nuzhen li bolee zhestkiy motion-layer pozhe: `yes`
