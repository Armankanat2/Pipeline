# Feedback Learning Loop v0.1

## 1. Naznachenie

Etot dokument opisyvaet, kak kurs vnutri `Pipeline` mozhet evolyutsionirovat so vremenem na osnove realnoy obratnoy svyazi, ne teryaya upravlyaemost, metodicheskuyu tselostnost i stabilnost versiy.

Zadacha dokumenta:

- prevratit feedback v upravlyaemyy signal;
- ne dopuskat pryamykh khaotichnykh pravok po kursu;
- zafiksirovat prioritet funksionalnosti projekta nad lokalnymi pozhelaniyami;
- svyazat `Stage 11 - Pilot` i `Stage 13 - Maintenance` v edinuyu petlyu obucheniya kursa.

## 2. Bazovaya formula

Kurs ne "pravitsya po mneniyam", a prokhodit tsikl:

`delivery -> feedback -> classification -> conflict check -> decision -> versioned update -> next cycle`

Smysl etoy logiki:

- kurs ne menyayetsya priamo vo vremya provedeniya;
- signal snachala dolzhen byt ponyat;
- konflikt dolzhen byt razreshen po zafiksirovannym prioritetam;
- izmenenie dolzhno popast v sleduyushchuyu upravlyaemuyu versiyu, a ne v sluchaynuyu pravku.

## 3. Gde rabotaet etot kontur

Feedback learning loop lozhitsya na uzhe sushchestvuyushchie etapy:

- `Stage 11 - Pilot` - sbor i pervichnyy razbor signalov;
- `Stage 12 - Release` - zapret na nekontroliruemye izmeneniya v aktivnom release-tsikle;
- `Stage 13 - Maintenance` - prinyatie resheniy, prioritetizatsiya i vershionnye obnovleniya.

Etot dokument:

- ne menyaet `stage-model 00-13`;
- ne trebuet novogo obyazatelnogo etapa;
- ne lomaet pravilo `NN_artifact_name_vX.Y.md`;
- rabotaet kak nadstroyka poverkh uzhe sushchestvuyushchego production-kontura.

## 4. Istochniki feedback

Dlya kursa dopustimy sleduyushchie istochniki signalov:

- `learner feedback`
- `lecturer feedback`
- `client feedback`
- `test results`
- `pilot observation`
- `incident / near-miss signal`
- `regulation change`
- `internal QA signal`

Pravilo:

- ni odin istochnik sam po sebe ne imeet prava menyat kurs bez klassifikatsii i conflict check.

## 5. Obyazatelnaya klassifikatsiya signala

Lyuboy signal pered dalneyshey rabotoy obyazan poluchit `4` metki:

- `source` - otkuda prishyol signal;
- `type` - kakogo roda izmenenie predpolagaetsya;
- `frequency` - eto edinichnyy sluchay ili povtoryaemyy pattern;
- `impact` - na kakom urovne vozdeystvuet signal.

Bez etikh `4` poley signal schitaetsya neklassifitsirovannym i ne mozhet dvigat kurs.

## 6. Razreshennye znacheniya klassifikatsii

### Source

- `learner`
- `lecturer`
- `client`
- `test`
- `pilot`
- `incident`
- `regulation`
- `qa`

### Type

- `bug fix` - oshibka, protivorechie, neyasnost, nekorrektnost, slomannaya svyazka;
- `content improvement` - uluchshenie ponyatnosti, struktury, vizuala, logiki podachi bez izmeneniya granits kursa;
- `scope expansion` - dobavlenie novoy temy, novogo modulia, novogo delivery-sloya ili novogo zaprosa za granitsami tekushchego uchebnogo yadra.

### Frequency

- `single`
- `repeated`
- `systemic`

### Impact

- `local` - otdelnyy slayd, formulirovka, vopros, vizual;
- `module` - tselyy blok ili chast kursa;
- `course` - izmenyaetsya kursovaya logika ili uchebnoe yadro;
- `pipeline` - signal zatragivaet ne odin kurs, a pravilo vsey sistemy.

## 7. Zhestkie prioritety pri konfliktakh

Esli signal stalkivayet dva interesa, deystvuet zafiksirovannaya ierarkhiya:

1. povtoryaemyy pattern vyshe edinichnogo mneniya;
2. tselostnost uchebnogo yadra vyshe zaprosa klienta;
3. pravilnaya metodika vyshe udobstva lektora;
4. stabilnost versii vyshe bystroy pravki;
5. standartizatsiya vsego `Pipeline` vyshe lokalnoy optimizatsii odnogo kursa.

Etot blok ne obsuzhdaetsya pri kazhdom novom signale zanovo. On nuzhen imenno dlya togo, chtoby konflikty reshatsya po sistemnomu pravilu, a ne po nastroeniyu momenta.

## 8. Conflict Check

Posle klassifikatsii signal obyazan proyti conflict check.

### Pravilo 1

Esli signal `single`, a ne `repeated` ili `systemic`, on ne mozhet samostoyatelno zapustit izmenenie uchebnogo yadra.

### Pravilo 2

Esli klientskiy zapros protivorechit bazovoy metodike, outcomes ili logike kursa, on ne prokhodit kak obychnaya pravka i dolzhen byt vynesen v otdelnoe reshenie.

### Pravilo 3

Esli lektoru "udobnee" obyasnyat po-drugomu, no eto oslablyaet metodicheskuyu tochost, signal ne dolzhen lomat kurs bez metodicheskogo podtverzhdeniya.

### Pravilo 4

Esli signal prikhodit vo vremya aktivnogo release-tsikla, on ne mozhet byt vnesen napryamuyu bez `version rule`.

### Pravilo 5

Esli uluchshenie polezno tolko dlya odnogo kursa, no razrushayet standartnoe pravilo vsego `Pipeline`, ono ne dolzhno menyat globalnuyu sistemu bez otdelnogo pipeline-resheniya.

## 9. Predokhraniteli

V etom konture deystvuyut sleduyushchie zaprety:

- ne pravit kurs napryamuyu iz feedback bez klassifikatsii prichiny;
- ne obnovlyat release posredi aktivnogo tsikla bez `version rule`;
- ne smeshivat `bug fix`, `content improvement` i `scope expansion`;
- ne pozvolyat klientskim pozhelaniyam lomat bazovuyu logiku kursa bez otdelnogo resheniya;
- ne menyat pravila vsego `Pipeline` po odnomu lokalnomu signalu bez proverki na povtoryaemost.

## 10. Version Rule

Lyuboe odobrennoe izmenenie dolzhno byt privyazano k versii.

Rekomenduemaya logika:

- `patch` - lokalnyy `bug fix`, ne menyayushchiy uchebnoe yadro;
- `minor` - soderzhatelnoe uluchshenie modulia, bloka, testa ili lektorskogo kontura bez peresborki vsego kursa;
- `major` - izmenenie arhitektury kursa, outcomes, coverage, track-logiki ili release-kontura.

Pravilo:

- dazhe bystraya pravka dolzhna byt vershionnoy pravkoy;
- izmeneniya ne dolzhny "prosochitsya" v release molcha;
- aktivnyy release ne peresobiraetsya tikhimi izmeneniyami bez zafiksirovannogo resheniya.

## 11. Matritsa resheniy

### Bug Fix

- `bug fix + local` - kandidat na `patch`;
- `bug fix + repeated` - obyazatelnaya proverka, net li sistemnoy prichiny;
- `bug fix + systemic` - kandidat ne tolko na kursovuyu pravku, no i na obnovlenie shablona ili pravila `Pipeline`.

### Content Improvement

- `content improvement + single` - ne dostatochno samo po sebe dlya perestroiki yadra;
- `content improvement + repeated` - kandidat na `minor`;
- `content improvement + systemic` - proverit, ne nuzhno li menyat standarty skripta, testa ili release-kontura.

### Scope Expansion

- `scope expansion` nikogda ne dolzhen prokhodit kak tikhaya pravka;
- lyuboe rasshirenie scope trebuet otdelnogo resheniya po obemu, srokam i vliyaniyu na uchebnoe yadro.

## 12. Rol Stage 11 - Pilot

`Stage 11` ne tolko sobiraet feedback, no i dolzhen otdelyat signal ot shumov.

Minimalno v `11_pilot_report.md` nuzhno fiksirovat:

- gde imenno voznikla problema;
- kto ee zafiksiroval;
- odin raz eto sluchilos ili povtoryalos;
- chem eto zakonchilos na praktike: neponimanie, oshibka, propusk, peregruz, proval po testu, riskovoe deystvie;
- kakoy predvaritelnyy tip signala eto mozhet byt.

Pilot ne dolzhen sam po sebe byt mestom pryamoy peresborki kursa. Ego rol - dostavit kachestvennyy vkhod v `Stage 13`.

## 13. Rol Stage 13 - Maintenance

`Stage 13` yavlyaetsya tochkoy, gde kurs "uchitsya" ofitsialno.

Zdes nuzhno:

- sobirat signaly iz `Pilot`, `QA`, `test`, `client`, `lecturer`, `learner`, `regulation`;
- klassifitsirovat ikh po edinym pravilam;
- proveryat konflikty po zafiksirovannoy ierarkii;
- prinimat reshenie: `ignore / monitor / patch / minor / major / escalate to pipeline`;
- zapisivat prichinu, a ne tolko fakt pravki.

## 14. Base i Future-ready uroven

Kontur dolzhen rabotat na dvukh urovnyakh:

- `Base` - minimalnaya upravlyaemaya petlya: feedback, klassifikatsiya, versioned update;
- `Future-ready` - rasshirennaya petlya: signals, triggers, scenario-risk, AI-policy, pattern tracking mezhdu kursami.

Pravilo:

- starye kursy ne dolzhny migririvat v `Future-ready` obyazatelno;
- `Base` dolzhen ostavatsya dostatochnym dlya bystrogo i stabilnogo production-tsikla;
- `Future-ready` vklyuchaetsya tolko tam, gde realno est dlitelnaya zhizn kursa ili vysokaya volatilnost domena.

## 15. Kriteriy rabotosposobnosti

Feedback learning loop rabotaet pravilno, esli:

- kurs ne driftaet ot edinichnykh mneniy;
- uchebnoe yadro ne razmyvaetsya klientskimi pozhelaniyami;
- metodika ne zamenyaetsya lektorskoy privychkoy;
- versiya kursa ostayetsya stabilnoy i prozrachnoy;
- lokalnye uluchsheniya ne razrushayut standarty vsego `Pipeline`;
- kazhdoe suzhdenie o pravke mozhno obyasnit cherez klassifikatsiyu i prioritet.

## 16. Operatsionnaya formula

Korotko:

Kurs uchitsya ne ot kazhdogo kommentariya, a ot proverenykh signalov.

Ne feedback upravlyaet kursom, a sistemnye pravila upravlyayut tem, kak feedback mozhet stat izmeneniem.
