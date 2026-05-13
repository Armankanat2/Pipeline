# Gateway Event Map

## Obshchaya informatsiya

- Nazvanie kursa: `Montazhnik lesov`
- Kod kursa: `ML`
- Versiya: `v0.1`
- Owner: vy
- Svyazannyy `gateway spec`: `12_gateway_spec_v0.1.md`
- Uroven sborki: `Future-ready`
- Dlya kakogo gateway-kontura sobiraetsya karta: `LMS / web-course`

## Tsel event-layer

- Zachem my sobiraem sobytiya: ponyat, gde worker-route `01-07` tormozit, gde ne khvataet obyasneniya i gde nuzhna adaptatsiya
- Kakie metodicheskie voprosy khotim proverit: ponimayut li slushateli logiku `dopusk -> proverka -> stop-reshenie`, rabotaet li checkpoint logika, ne teryaetsya li polzovatel na `05-07`
- Kakie mesta kursa schitaem riskovymi: `Modul 02`, `Modul 04`, `Modul 05-07`
- Kakie signaly khotim vernut v `Stage 13`: repeated exit, repeated fail-check, repeat block, systemic stall, repeated reference open

## Klassifikatsiya sobytiy

Gateway sobytiya nuzhno delit minimum na `3` urovnya:

- `technical event` - fakt starta, vykhoda, completion ili perekhoda
- `learning signal` - povedencheskiy priznak zatrudneniya ili neponimaniya
- `update candidate` - pattern, kotoryy povtoryaetsya i mozhet stat osnovaniem dlya `patch / minor / major`

## Reestr sobytiy

| Event ID | Event type | Gde voznikaet | Chto znachit | Chto delat s etim signalom | Uroven reaktsii |
|---|---|---|---|---|---|
| ML-EV-START | `technical` | route / module | polzovatel realno zashol v marshrut | `monitor` | `local` |
| ML-EV-EXIT | `learning` | route / module | marshrut brosayut do finala | `review` | `module / course` |
| ML-EV-REPEAT | `learning` | block | blok peresmatrivayut povtorno | `monitor / review` | `local / module` |
| ML-EV-FAIL-CHECK | `learning` | checkpoint | micro-check ne proyden | `review` | `module` |
| ML-EV-REF-OPEN | `learning` | reference block | bazovogo obyasneniya ne khvatilo | `monitor / review` | `local / module` |
| ML-EV-STALL | `update-candidate` | block / route | polzovatel zastyvaet na uzle | `review / escalate` | `module / course` |
| ML-EV-COMPLETE | `technical` | route | marshrut proyden do finala | `monitor` | `course` |

## Bazovye sobytiya gateway

| Event ID | Sobytie | Klass | Zachem nuzhno |
|---|---|---|---|
| ML-EV-START | start route/module | `technical` | ponyat, chto route zapustilsya i kakie moduli fakticheski prokhodyat |
| ML-EV-EXIT | stop / exit | `learning signal` | ponyat, gde polzovateli brosayut worker-route |
| ML-EV-REPEAT | repeat block | `learning signal` | ponyat, gde blok okazalsya neyasnym ili slishkom plotnym |
| ML-EV-FAIL-CHECK | fail micro-check | `learning signal` | ponyat, gde checkpoint ne srabatyvaet kak safety-node |
| ML-EV-REF-OPEN | open reference | `learning signal` | ponyat, gde on-screen ne khvataet sam po sebe |
| ML-EV-COMPLETE | complete route | `technical` | ponyat, chto worker-route dochodit do finala |
| ML-EV-STALL | long dwell / stall | `learning signal` | ponyat, gde polzovatel zastyvaet bez yavnogo vykhoda |

## Mapping sobytiy k kontentu

| Event ID | Modul ID | Block ID | Variant | Track | Chto eto mozhet znachit dlya kursa |
|---|---|---|---|---|---|
| ML-EV-START | `01-07` | `ML-GW-01 route entry` | `srednyaya` | `worker` | route korrektno startuet |
| ML-EV-FAIL-CHECK | `02` | `ML-M02-ACCESS-PPE` | `all worker variants` | `worker` | ne ponyata startovaya logika dopuska i SIZ |
| ML-EV-REPEAT | `03` | `ML-M03-SYSTEM-LOGIC` | `srednyaya / dlinnaya` | `worker` | ne khvataet visual support ili voiceover |
| ML-EV-FAIL-CHECK | `04` | `ML-M04-SITE-CHECK` | `all worker variants` | `worker` | scenario `gotovo / ne gotovo` rabotaet neochevidno |
| ML-EV-STALL | `05-07` | `ML-M05-07-ASSEMBLY-OPS` | `srednyaya / dlinnaya` | `worker` | lesson series slishkom dlinnyy ili checkpointy nedostatochno vyrazheny |
| ML-EV-REF-OPEN | `05-07` | `ML-REF-BASE` | `all` | `worker / ITR` | nuzhny dopolnitelnye visuals, glossary ili direct links |
| ML-EV-EXIT | `05-07` | `ML-GW-01 route` | `srednyaya` | `worker` | marshrut teryaet polzovatelya do recap |
| ML-EV-COMPLETE | `07` | `ML-GW-01 final recap` | `srednyaya` | `worker` | current contour dochodit do finala |

## Porozhi i patterny

- Kakoy obem odinochnykh sobytiy schitaetsya shumom: odinochnye `exit`, `repeat` ili `reference open` bez povtoreniya na odnom i tom zhe uzle
- Kogda sobytie schitaetsya `repeated`: kogda odin i tot zhe event povtoryaetsya na odnom uzle v `2-3` zapuskakh ili u neskolkikh polzovateley
- Kogda sobytie schitaetsya `systemic`: kogda pattern derzhitsya na odnom uzle ili route v neskolkikh tsiklakh i ne zavisit ot odnogo klienta
- Kogda pattern mozhet pereyti v `update candidate`: kogda repeated signal zadevaet checkpoint, route completion ili safety-core obyasnenie
- Kogda sobytie dolzhno byt tolko v monitoringe: kogda eto `start`, `complete` ili razovyy `reference open`

## Variant / Track Sensitivity

- Kakie sobytiya mogut byt normoy dlya `korotkaya`, no problemoy dlya `dlinnaya`: chastye `repeat` i `reference open` mogut byt normalny dlya compact route, no dlya `dlinnaya` signaliziruyut o peregruze ili neudachnom flow
- Kakie sobytiya mogut byt normoy dlya `worker`, no problemoy dlya `ITR`: dlya budushchego `ITR` chastye `reference open` po organizatsionnym uzlam budut signalom nedostayushchego role-layer
- Kak otlichat problemu yadra ot problemy adaptatsii: esli signal est vo vsekh variantakh, veroyatnee problema yadra; esli tolko v odnom route, veroyatnee problema adaptatsii
- Kogda nuzhno obnavlyat tolko variant ili tolko track: kogda signal lokalizovan v `korotkaya` ili v budushchem `ITR`, ne zatagivaya worker-core

## Conflict Check dlya eventov

1. odinochnoe sobytie ne ravno pravke kursa;
2. repeated pattern vazhnee odnogo vpechatleniya ili sluchaynogo vykhoda;
3. problema checkpointa ili route-flow ne dolzhna avtomaticheski schitatsya problemoy vsego `content core`;
4. snachala proveryaem, mozhno li ispravit adaptatsiyu, checkpoint ili reference-layer;
5. lyubaya pravka dolzhna proyti `version rule` i ne lomat standartizatsiyu vsego `Pipeline`.

## Conversion v maintenance-signal

| Event pattern | Chto eto znachit | Tip signala | Kandidat na reshenie |
|---|---|---|---|
| repeated exits na `ML-GW-01` posle `Modul 05` | marshrut teryaet polzovatelya na sborke i ekspluatatsii | `content improvement / gateway issue` | `minor` |
| repeated fail-check na `ML-M02-ACCESS-PPE` | ne khvataet yasnosti po dopusku i SIZ | `content improvement` | `patch / minor` |
| repeated fail-check na `ML-M04-SITE-CHECK` | scenario-filtr slabee, chem ozhidalos | `content improvement` | `minor` |
| repeated reference opens na `ML-M03-SYSTEM-LOGIC` | ne khvataet vizualnogo ili glossary support | `content improvement` | `patch` |
| systemic stall na `ML-M05-07-ASSEMBLY-OPS` | lesson series slishkom dlinnyy ili checkpointy nuzhno peresobrat | `course / gateway issue` | `minor / major / escalate` |

## Kuda vozvrashchaetsya signal

- Chto idet v `update log`: repeated `exit`, `fail-check`, `stall`, repeated `reference open` na odnikh i tekh zhe uzlakh
- Chto idet v `pilot report` sleduyushchego tsikla: patterny, kotorye nado proverit v ochnom ili blended delivery
- Chto idet v klientskiy feedback / support kontur: signaly, esli oni podtverzhdayut klientskiy zapros ili obosnovyvayut service update
- Chto ostayetsya tolko v monitoringe: `start`, `complete`, razovye `repeat` i razovye `reference open`; repeated `reference open` peredayutsya v signal review
- Kto prinimaet reshenie po eskalatsii: owner kursa i metodicheskiy contour po pravilam `Feedback Learning Loop`

## Ogranicheniya

- Event ne yavlyaetsya dostatochnym dokazatelstvom bez konteksta;
- analytics ne dolzhna podmenyat metodicheskoe reshenie;
- nizkiy completion ne vsegda oznachaet plokhoy kontent;
- vysokiy reference-open ne vsegda oznachaet oshibku, inogda eto pravilnyy pattern ispolzovaniya;
- sobytiya ne dolzhny razrushat skorost production-tsikla.

## Reshenie po gotovnosti

- Gateway event map gotova: `yes, kak primer-zapolnenie`
- Kakie sobytiya obyazatelny uzhe seychas: `ML-EV-START`, `ML-EV-EXIT`, `ML-EV-FAIL-CHECK`, `ML-EV-REPEAT`, `ML-EV-COMPLETE`
- Kakie sobytiya mozhno ostavit na budushchiy etap: `ML-EV-STALL` s tochnym porogom i rasshirennye route-level eventy dlya `ITR`
- Kakie signaly uzhe mozhno peredavat v `Stage 13`: repeated `exit`, `fail-check`, `repeat block`, `reference open`
- Chto nado dosobrat do rabochego event-layer: platform-specific telemetry format, finalnye porogi dlya `stall`, finalnyy route dlya modulya `08-11`
