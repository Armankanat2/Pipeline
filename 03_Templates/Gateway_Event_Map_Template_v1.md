# Gateway Event Map Template v1

## Naznachenie

Shablon nuzhen dlya opisaniya sobytiy, kotorye budushchiy `gateway` dolzhen snimat vo vremya raboty polzovatelya s kursom, i dlya pravila, kak eti sobytiya vozvrashchayutsya v `Stage 13 - Maintenance`.

Ego zadacha:

- otdelit tekhnicheskiye eventy ot metodicheskikh signalov;
- ne sobirat telemetry radi telemetry;
- ponimat, kakie sobytiya prosto nablyudayutsya, a kakie mogut zapustit obnovlenie kursa;
- zafiksirovat most mezhdu online-ispolzovaniem i `Feedback Learning Loop`.

## Pravilo ispolzovaniya

- etot shablon ne opisivaet konkretnuyu analytics-platformu;
- etot shablon ne zamenyaet `gateway spec`, a dopolnyaet ego;
- sobytiya dolzhny byt svyazany s ustoychivymi ID moduley, blokov ili marshrutov;
- sobytie samo po sebe ne ravno pravke kursa: ono snachala prevrashchaetsya v signal i prokhodit conflict check.

## 1. Obshchaya informatsiya

- Nazvanie kursa:
- Kod kursa:
- Versiya:
- Owner:
- Svyazannyy `gateway spec`:
- Uroven sborki: `Base / Future-ready`
- Dlya kakogo gateway-kontura sobiraetsya karta: `LMS / web-course / portal / mixed`

## 2. Tsel event-layer

- Zachem my sobiraem sobytiya:
- Kakie metodicheskie voprosy khotim proverit:
- Kakie mesta kursa schitaem riskovymi:
- Kakie signaly khotim vernut v `Stage 13`:

## 3. Klassifikatsiya sobytiy

Gateway sobytiya nuzhno delit minimum na `3` urovnya:

- `technical event` - fakt deystviya v sisteme;
- `learning signal` - povedencheskiy priznak zatrudneniya, provala ili neponimaniya;
- `update candidate` - pattern, kotoryy mozhet stat osnovaniem dlya `patch / minor / major`.

## 4. Reestr sobytiy

| Event ID | Event type | Gde voznikaet | Chto znachit | Chto delat s etim signalom | Uroven reaktsii |
|---|---|---|---|---|---|
| EV-01 | `technical / learning / update-candidate` | modul / block / route |  | `ignore / monitor / review / escalate` | `local / module / course / pipeline` |

## 5. Bazovye sobytiya gateway

Rekomenduemyy minimalnyy nabor:

| Event ID | Sobytie | Klass | Zachem nuzhno |
|---|---|---|---|
| EV-START | start route/module | `technical` | ponyat, chto marshrut realno zapuskaetsya |
| EV-EXIT | stop / exit | `learning signal` | ponyat, gde polzovateli brosayut kurs |
| EV-REPEAT | repeat block | `learning signal` | ponyat, gde blok okazalsya slozhnym |
| EV-FAIL-CHECK | fail micro-check | `learning signal` | ponyat, gde est problemnyy uzel |
| EV-REF-OPEN | open reference | `learning signal` | ponyat, gde ne khvataet osnovnogo obyasneniya |
| EV-COMPLETE | complete route | `technical` | ponyat, chto marshrut proyden do finala |
| EV-STALL | long dwell / stall | `learning signal` | ponyat, gde polzovatel zastyvaet |

## 6. Mapping sobytiy k kontentu

| Event ID | Modul ID | Block ID | Variant | Track | Chto eto mozhet znachit dlya kursa |
|---|---|---|---|---|---|
| EV-01 |  |  | `korotkaya / srednyaya / dlinnaya / all` | `worker / ITR / all` |  |

## 7. Porozhi i patterny

Eto mesto nuzhno, chtoby ne reagirovat na odinochnye sobytiya kak na sistemnuyu problemu.

- Kakoy obem odinochnykh sobytiy schitaetsya shumom:
- Kogda sobytie schitaetsya `repeated`:
- Kogda sobytie schitaetsya `systemic`:
- Kogda pattern mozhet pereyti v `update candidate`:
- Kogda sobytie dolzhno byt tolko v monitoringe:

## 8. Variant / Track Sensitivity

- Kakie sobytiya mogut byt normoy dlya `korotkaya`, no problemoy dlya `dlinnaya`:
- Kakie sobytiya mogut byt normoy dlya `worker`, no problemoy dlya `ITR`:
- Kak otlichat problemu yadra ot problemy adaptatsii:
- Kogda nuzhno obnavlyat tolko variant ili tolko track:

## 9. Conflict Check dlya eventov

Event ne dolzhen avtomaticheski stanovit'sya pravkoy.

Nuzhno proverit:

1. eto odinochnoe sobytie ili pattern;
2. eto problema marshruta, kontenta ili adaptatsii;
3. eto problema `variant`, `track` ili `content core`;
4. mozhno li ispravit lokalno bez lomki yadra;
5. ne protivorechit li predlagaemaya pravka versii i standartam vsego `Pipeline`.

## 10. Conversion v maintenance-signal

| Event pattern | Chto eto znachit | Tip signala | Kandidat na reshenie |
|---|---|---|---|
| repeated exits | marshrut ili blok teryaet polzovatelya | `content improvement` | `monitor / minor` |
| repeated fail on one micro-check | problemnyy blok ili plohoe obyasnenie | `content improvement` | `minor` |
| repeated reference opens | ne khvataet bazy v on-screen / voiceover | `content improvement` | `patch / minor` |
| systemic stall | slishkom slozhnyy marshrut ili neudachnaya upakovka | `course / gateway issue` | `minor / major / escalate` |

## 11. Kuda vozvrashchaetsya signal

- Chto idet v `update log`:
- Chto idet v `pilot report` sleduyushchego tsikla:
- Chto idet v klientskiy feedback / support kontur:
- Chto ostayetsya tolko v monitoringe:
- Kto prinimaet reshenie po eskalatsii:

## 12. Ogranicheniya

- Event ne yavlyaetsya dostatochnym dokazatelstvom bez konteksta;
- analytics ne dolzhna podmenyat metodicheskoe reshenie;
- nizkiy completion ne vsegda oznachaet plokhoy kontent;
- vysokiy reference-open ne vsegda oznachaet oshibku, inogda eto pravilnyy pattern ispolzovaniya;
- sobytiya ne dolzhny razrushat skorost production-tsikla.

## 13. Reshenie po gotovnosti

- Gateway event map gotova: `yes / no`
- Kakie sobytiya obyazatelny uje seychas:
- Kakie sobytiya mozhno ostavit na budushchiy etap:
- Kakie signaly uzhe mozhno peredavat v `Stage 13`:
- Chto nado dosobrat do rabochego event-layer:
