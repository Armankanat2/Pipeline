# Terminology Glossary

## 1. Obshchaya informatsiya

- Nazvanie kursa: `Montazhnik lesov`
- Kod kursa: `ML`
- Data sborki: `2026-05-14`
- Owner: vy

## 2. Glossary

| ID | Termin | Predpochtitelnaia forma | Dopustimye varianty | Nedopustimye varianty | Poyasnenie | Gde kritichen |
|---|---|---|---|---|---|---|
| G-01 | dopusk k rabotam | `dopusk k rabotam` | `dopusk`, `dopuskat k rabote` v yavnom kontekste | `prosto razreshili`, `start bez usloviy` | eto ne odno ustnoe razreshenie, a nabor obyazatelnykh usloviy pered nachalom rabot | brief / script / test / release |
| G-02 | SIZ | `SIZ` | `sredstva individualnoy zashchity (SIZ)` pri pervom upominanii | `zashchita` bez konkretiki | stabilnoe sokrashchenie dlya worker-kursa | script / test / worker materials / release |
| G-03 | ostanovit raboty | `ostanovit raboty` | `stop-rabota`, `ostanovit rabotu` v pryamom imperative | `bud ostorozhen`, `prosto prover eshche raz` | kriticheskaya stop-formula, ne dolzhna smyagchat'sya | script / test / notes / worker materials |
| G-04 | eskalatsiya | `eskalatsiya` | `peredat vopros otvetstvennomu`, `podnyat vopros masteru` | `sam razberis`, `utochni po khodu` | primenyaetsya tam, gde worker ne dolzhen prinimat reshenie odin | brief / script / test / notes |
| G-05 | ustoychivost | `ustoychivost` | `ustoychivost skhemy`, `ustoychivost konstruktsii` | `prochnost` kak polnyy sinonim | sistemnaya logika konstruktsii, a ne prosto "silnyy element" | architecture / script / assets / test |
| G-06 | kreplenie | `kreplenie` | `tochki krepleniya`, `skhema krepleniy` | `zakrepit kak nibud` | nuzhno derzhat v konstruktivnom smysle, a ne v bytovom | script / assets / test |
| G-07 | proverka pered ekspluatatsiey | `proverka pered ekspluatatsiey` | `predekspluatatsionnaya proverka` | `chast sborki` | eto otdelnyy etap mezhdu sborkoy i rabotoy | architecture / script / worker materials |
| G-08 | opasnaya zona | `opasnaya zona` | `zona riska`, `zona padeniya predmetov` v yavnom kontekste | `prosto opasno` bez prostranstvennogo smysla | termin dolzhen ostavatsya prostranstvennym i operatsionnym | script / assets / worker materials |
| G-09 | nagruzka | `nagruzka` | `dopustimaya nagruzka`, `rabochaya nagruzka` | `mnogo materialov` bez smysla nagruzki | ne otryvat ot ekspluatatsii, balansa i ogranicheniy | script / test / worker materials |
| G-10 | demontazh | `demontazh` | `bezopasnyy demontazh` | `obratnaya sborka bez pravil` | v kurse eto otdelnyy process so svoey logikoy | architecture / script / test |
| G-11 | worker track | `worker` track | `worker-only contour` | `rabochiy i ITR odno i to zhe` | sistemnyy termin pipeline, ne vypuskaetsya avtomaticheski klientu kak est | brief / workflow / notes |
| G-12 | writer core | `writer core` | `obyazatelnyy kontentnyy sloy kartochki` | `prosto chernovik slayda` | sistemnyy termin pipeline dlya scriptwriting | workflow / QA / notes |

## 3. Sokrashcheniya

| Sokrashchenie | Polnaya forma | Nuzhno li rasshifrovyvat pri pervom upominanii | Primechanie |
|---|---|---|---|
| SIZ | sredstva individualnoy zashchity | yes | vnutri worker-kursa eto bazovoe sokrashchenie |
| ITR | inzhenerno-tekhnicheskiy rabotnik | yes | tolko esli `ITR` contour realno prisutstvuet |
| TB | tekhnika bezopasnosti | zhelatelno yes | v release-layere luchshe predpochtit polnuyu formu pri pervom upominanii |

## 4. Spornye mesta

- Kakie terminy chasto putayut:
  - `dopusk` i `razreshenie`;
  - `sborka` i `ekspluatatsiya`;
  - `ustoychivost` i `prochnost`;
  - `ostanovit raboty` i `eskalatsiya`.
- Kakie normativnye formulyrovki nelzya uproshchat:
  - vse, chto delaet vid, budto worker mozhet oboytis bez proverki, dopuska ili stop-resheniya;
  - vse, chto prevrashchaet system-specific veshchi v universalnuyu normu bez istochnika.
- Kakie slova luchshe ne ispolzovat:
  - `avos`;
  - `kak nibud`;
  - `po bystromu`;
  - `esli v printsipe derzhitsya`.

## 5. Reshenie po gotovnosti

- Glossary gotov k rabote: `yes`
- Chto nuzhno dosobrat:
  - dopolnit terminy posle polnogo razvorota moduley `08-09`;
  - pri poyavlenii `ITR` contour dobavit organizatsionnye i upravlencheskie terminy;
  - sinkhronizirovat s budushchimi language packs bez podmeny etogo bazovogo glossary.
