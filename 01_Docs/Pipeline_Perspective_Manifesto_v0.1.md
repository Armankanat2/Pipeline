# Pipeline Perspective Manifesto v0.1

## 1. Naznachenie

Etot dokument fiksiruet, kak `Pipeline` dolzhen rabotat s nepolnoy opredelennostyu budushchego, ne lomaia uzhe sobrannuyu konstruktsiyu.

Ego zadacha:

- dobavit v sistemu sloy perspektivy;
- ne menyat `stage-model 00-13`;
- ne pereimenovyvat uzhe sushchestvuyushchie artefakty;
- ne lomat pravilo `NN_artifact_name_vX.Y.md`;
- ne prevrashchat pipeline v gromozdkiy foresight-proekt vmesto production-sistemy.

## 2. Bazovaya pozitsiya

My iskhodim iz togo, chto:

- budushchee nelzya tochno predskazat;
- mozhno podgotovit'sya k diapazonu veroyatnykh izmeneniy;
- kurs dolzhen byt ne tolko korrektnym segodnya, no i obnovlyaemym zavtra;
- samaya ustoychivaya strategiya dlya obucheniya - ne gadat odin "pravilnyy" stsenariy, a delat sistemu, kotoraya bystro pereuchivaetsya;
- dlya rabochikh i ITR kursov nuzhno proektirovat ne tolko znanie, no i adaptivnoe deystvie v usloviyakh izmeneniy.

## 3. Chto schitaetsya perspektivoy

V kontekste `Pipeline` perspektiva - eto ne futurologiya radi futurologii, a upravlyaemoe nablyudenie za faktorami, kotorye mogut pomenyat kurs v blizhayshem rabochem tsikle:

- izmeneniya normativov, pravil i trebovaniy bezopasnosti;
- izmeneniya v tipovykh rabochikh protsessakh;
- novye instrumenty, materialy i tekhnologii;
- smeshchenie trebovaniy k roli `worker` ili `ITR`;
- rost trebovaniy k samostoyatelnomu, blended i `self-paced` formatu;
- vliyanie `AI` na sposob vypolneniya raboty i na sposob obucheniya.

## 4. Chto my ne delaem

Etot manifest ne predpolagaet:

- novyy stage vmesto `00-13`;
- otdelnyy paralelnyy pipeline poverkh osnovnogo;
- obyazatelnyy foresight-paket dlya kazhdogo kursa;
- zamenu normativnogo ili ekspertnogo istochnika "trendovym mneniem";
- perepisyvanie gotovykh kursov tolko potomu, chto poyavilas novaya ideya.

## 5. Printsipy future-ready layer

Sloy perspektivy v `Pipeline` stroitsya po sleduyushchim printsipam:

- `overlay, not rewrite` - my dobavlyaem nadstroyku, a ne peresobiraem sistemu zanovo;
- `stable core / volatile edge` - otdelyaem to, chto redko menyaetsya, ot togo, chto mozhet ustaret bystro;
- `signals before assumptions` - fiksiruem signaly i istochniki, a ne fantazii;
- `scenario readiness over exact prediction` - gotovim kurs k neskolkim pravdopodobnym variantam, a ne k odnomu ugadannomu budushchemu;
- `behavior over declaration` - proveryaem, mozhet li slushatel prinyat reshenie i deystvovat, a ne prosto povtorit tekst;
- `reviewable change` - lyuboe perspektivnoe reshenie dolzhno byt obnovlyaemo cherez obychnyy release i maintenance-kontur.

## 6. Pravilo vnedreniya bez polomki

Bezopasnaya logika vnedreniya takaya:

- bazovyy `Pipeline` schitaetsya validnym i bez future-ready layer;
- sloy perspektivy podklyuchaetsya tolko tam, gde on deystvitelno daet polzu;
- minimalnye tochki integratsii: `Stage 02`, `Stage 05`, `Stage 10`, `Stage 13`;
- vse novye elementy ili zhivut vnutri uzhe sushchestvuyushchikh artefaktov kak sektsii, ili dobavlyayutsya kak dopolnitelnye `NN_...` artefakty bez pereimenovaniya starykh;
- esli kurs ne nuzhdaetsya v etom sloe, on ne dolzhen tyanut lishniy operatsionnyy ves.

## 7. Vstroika po stage

### Stage 02 - Source Audit

Zdes sloy perspektivy nuzhen dlya togo, chtoby ne tolko sobrat istochniki, no i ponimat, chto iz nikh mozhet izmenit'sya bystree vsego.

V etape dopustimo:

- dobavit v `02_source_register.md` sektsiyu pro `future signals`;
- pomechat istochniki po stepeni volatilnosti: `stable / watch / likely to change`;
- otdelno fiksirovat signaly, kotorye mogut zapustit obnovlenie kursa v blizhayshie `6-24` mesyatsev.

### Stage 05 - Course Architecture

Zdes sloy perspektivy nuzhen dlya razdeleniya mezhdu ustoychivym yadrom i blokami bystrogo obnavleniya.

V etape dopustimo:

- dobavit v `05_course_architecture.md` razmetku `stable core / volatile edge`;
- pomechat moduli, kotorye mozhno obnovlyat lokalno bez peresborki vsego kursa;
- otdelno vydelyat bloki, chuvstvitelnye k tekhnologiyam, normativam, AI-instrumentam ili formatu delivery.

### Stage 10 - Test Creation

Zdes sloy perspektivy nuzhen dlya proverki ne tolko zapominaniya, no i gotovnosti rabotat v menyayushcheysya srede.

V etape dopustimo:

- usilit `10_test_pack.md` situatsionnymi i reshencheskimi voprosami;
- proverat perenos navyka v usloviya izmeneniya instrumenta, pravila ili obstanovki;
- vvodit voprosy, gde nuzhno ne prosto znat normu, a raspoznat novyy risk ili novuyu granitsu otvetstvennosti.

### Stage 13 - Maintenance

Zdes sloy perspektivy estestvenno lozhitsya v yadro sistemy.

V etape dopustimo:

- vesti `13_update_log.md` ne tolko kak spisok pravok, no i kak zhurnal signalov;
- fiksirovat `update triggers`: chto imenno dolzhno zapustit peresbor ili lokalnuyu pravku;
- razdelit review cadence dlya `stable` i `volatile` blokov;
- zafiksirovat ownera ne tolko za kurs, no i za nablyudenie za kritichnymi izmeneniyami v domeyne.

## 8. Rekomenduemye dopolnitelnye artefakty

Eti artefakty ne obyazatelny dlya kazhdogo kursa, no mogut rasshirit sistemu bez konflikta so stage-model:

- `02_future_signals_register.md`
- `05_stable_vs_volatile_skills_map.md`
- `10_scenario_assessment_pack.md`
- `13_update_trigger_rules.md`

Pravilo prostoe:

- dobavlyaem ikh tolko togda, kogda kurs dolgiy, reguliruemyy, multi-client, online-portable ili ozhidaemo budet zhivym bolee odnogo production-tsikla.

## 9. Gde voznikayut konflikty

Sam sloy perspektivy ne dolzhen vyzyvat neustranimykh konfliktov. Konflikty poyavlyayutsya tolko togda, kogda narushayutsya granitsy ego primeneniya.

Riski voznikayut esli:

- future-ready layer stanovitsya obyazatelnym dlya kazhdogo kursa bez razbora;
- trendovye gipotezy nachinayut sporit s normativnoy bazoy vmesto togo, chtoby dopolnyat ee;
- novye artefakty dubliroyut sushchestvuyushchie vmesto togo, chtoby rasshiryat ikh;
- komanda nachinaet sbirat "kurs budushchego" vmesto tekushchego rabochego kursa;
- maintenance-neopredelennost pronikaet v release i ne daet zakryt finalnyy paket.

## 10. Pravilo prinyatiya resheniy

Esli voznikayet spor, chto vazhnee - tekushchaya korrektnost ili perspektivnaya gotovnost, deystvuet sleduyushchiy prioritet:

1. normativnaya i ekspertnaya korrektnost seychas;
2. rabotosposobnost kursa v tekushchem release;
3. prostota obnovleniya v sleduyushchem tsikle;
4. perspektivnaya gotovnost k veroyatnym izmeneniyam.

Eto nuzhno, chtoby foresight-sloy ne razrushal production-distsiplinu.

## 11. Kriteriy uspeshnogo vnedreniya

Mozhno schitat, chto `Pipeline Perspective v0.1` vnedrenyaetsya pravilno, esli:

- bazovaya stage-logika `00-13` ostalas netronutoy;
- ni odin obyazatelnyy artefakt ne poteryal svoego mesta i nazvaniya;
- kurs mozhno obnovit lokalno, a ne perepisyvat celikom;
- `Stage 13` poluchaet ponyatnye signaly na obnovlenie;
- testy luchshe proverayut adaptivnost i resheniya, a ne tolko vospominanie;
- komanda mozhet govorit o budushchem na yazyke artefaktov, a ne obshchikh rassuzhdeniy.

## 12. Operatsionnaya formula

Korotko:

`Pipeline` gotovit ne tolko kurs, a sistemu bystrogo obnovleniya kursa.

Perspektiva vnutri etoy logiki - eto ne popytka ugadat odnu budushchuyu voynu, a sposob sdelat tak, chtoby sleduyushchee obnovlenie ne nachinalos snova s nulya.
