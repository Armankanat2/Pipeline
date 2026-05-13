# Gateway Manifest

## Obshchaya informatsiya

- Nazvanie kursa: `Montazhnik lesov`
- Kod kursa: `ML`
- Versiya: `v0.1`
- Owner: vy
- Uroven sborki: `Future-ready`
- Svyazannyy `gateway spec`: `12_gateway_spec_v0.1.md`
- Svyazannyy `gateway event map`: `12_gateway_event_map_v0.1.md`
- Status manifesta: `working / starter draft`

## Rol manifesta

- Zachem etot manifest sobiraetsya: zafiksirovat, kakie content-bloki `Montazhnik lesov` uzhe mozhno podklyuchit k budushchemu `gateway`
- Kakuyu online-zadachu on podderzhivaet: perenos worker-kontura v `LMS / web-course` bez povtornogo proektirovaniya yadra
- Dlya kakogo release-kontura on nuzhen: `08_Online_Handoff`
- Kakoe minimalnoe primenenie vozmozhno uzhe seychas: starter route dlya modulya `01-07` s narration, module summaries i bazovymi micro-check hooks

## Sostav gateway-ready sborki

| Build ID | Variant | Track | Depth | Status | Chto pokryvaet |
|---|---|---|---|---|---|
| ML-GW-BLD-01 | `srednyaya` | `worker` | `standard` | `starter draft` | moduli `01-07`, slaydy `01-43`, narration contour, module summaries, bazovye micro-check hooks |
| ML-GW-BLD-02 | `korotkaya` | `worker` | `core` | `partial candidate` | moduli `01-04` kak compact route + final safety recap po `05-07` |
| ML-GW-BLD-03 | `dlinnaya` | `worker` | `extended` | `planned only` | rasshirennaya worker-sborka posle dosborki moduley `08-11`, finalnogo recap/quiz contour i asset contour |
| ML-GW-BLD-04 | `srednyaya` | `ITR` | `standard` | `planned only` | budushchaya adaptatsiya na baze `01_itr_requirements_v0.1` bez gotovogo online-content pack |

## Reestr content-blokov

Kazhdyy blok zavazan na uzhe sushchestvuyushchie artefakty `online handoff`.

| Block ID | Modul ID | Block type | Naznachenie | Istochnik | Stable ID est | Primechanie |
|---|---|---|---|---|---|---|
| ML-M01-INTRO | `01` | `on-screen` | vvesti v kurs i zadat granitsy roley | `06_slide_script_v0.1` + `12_online_adaptation_map_v0.1` | `yes` | slaydy `01-03`, podkhodit dlya startovogo lesson intro |
| ML-M02-ACCESS-PPE | `02` | `interaction` | perenesti logiku `dopusk -> SIZ -> start` v self-check blok | `12_online_adaptation_map_v0.1` + `12_module_summary_pack_v0.1` | `yes` | nuzhen micro-check posle SIZ |
| ML-M03-SYSTEM-LOGIC | `03` | `voiceover` | obyasnit, pochemu lesa derzhatsya kak sistema | `12_narration_pack_v0.1` + `12_module_summary_pack_v0.1` | `yes` | trebuet silnoy vizualnoy opory, no logic block uzhe opisan |
| ML-M04-SITE-CHECK | `04` | `interaction` | sdelat scenario-filtr `gotovo / ne gotovo` pered montazhom | `12_online_adaptation_map_v0.1` | `yes` | khoroshiy kandidat dlya branching micro-case |
| ML-M05-07-ASSEMBLY-OPS | `05-07` | `on-screen` | perenesti poryadok sborki, nabor vysoty i proverku pered ekspluatatsiey | `06_slide_script_v0.1` + `12_online_adaptation_map_v0.1` | `partial` | logic est, no nuzhna bolee detalnaya asset dosborka |
| ML-NAR-01-07 | `01-07` | `voiceover` | dat poblochnuyu ozvuchku dlya worker-route | `12_narration_pack_v0.1` | `partial` | slaydy `20-43` eshche ne zakryty finalnym voiceover text |
| ML-SUM-01-07 | `01-07` | `reference` | dat modulnye summary cards dlya self-paced interfeisa | `12_module_summary_pack_v0.1` | `yes` | podkhodit dlya lesson cards ili recap panels |
| ML-REF-BASE | `02-07` | `reference` | podklyuchit glossary, photo guide, normativnye ssylki i future video | `12_online_adaptation_map_v0.1` + `12_online_handoff_pack_v0.1` | `partial` | direct-link contour poka ne polon |

## Mapping k istochnikam `Pipeline`

| Gateway element | Otkuda beretsya | Kak proverit aktualnost | Gde obnavlyaetsya |
|---|---|---|---|
| Intro / route headers | `06_slide_script_v0.1` | sravnit slaydy `01-03` s release-versiey deck | `Stage 06 / 12` |
| Lesson on-screen blocks | `06_slide_script_v0.1` + `12_online_adaptation_map_v0.1` | proverit, chto mapping modulya ne protivorechit release architecture | `Stage 06 / 12` |
| Voiceover blocks | `12_narration_pack_v0.1` | proverit sync s on-screen summary i modulnymi tseliami | `Stage 12` |
| Module recap cards | `12_module_summary_pack_v0.1` | proverit, chto obyazatelnoe yadro sokhraneno dlya self-paced | `Stage 12` |
| Micro-check hooks | `12_online_adaptation_map_v0.1` + `10_test_pack_v0.1` | proverit, chto checkpoint ne razryvaet worker-logic | `Stage 10 / 12` |
| Reference layer | `12_online_handoff_pack_v0.1` | proverit, chto ssylki i resursy dostupny i aktualny | `Stage 12 / 13` |

## Variant / Track Coverage

| Block ID | Dlya kakikh variantov | Dlya kakikh trackov | Dlya kakoy glubiny | Universalnyy ili adaptivnyy |
|---|---|---|---|---|
| ML-M01-INTRO | `all` | `all` | `core / standard / extended` | `universal` |
| ML-M02-ACCESS-PPE | `all` | `worker` teper / `ITR` pozhe | `core / standard` | `adaptive` |
| ML-M03-SYSTEM-LOGIC | `srednyaya / dlinnaya` | `worker` teper / `ITR` pozhe | `standard / extended` | `adaptive` |
| ML-M04-SITE-CHECK | `all` | `worker` teper / `ITR` pozhe | `core / standard / extended` | `adaptive` |
| ML-M05-07-ASSEMBLY-OPS | `srednyaya / dlinnaya` | `worker` | `standard / extended` | `adaptive` |
| ML-NAR-01-07 | `srednyaya / dlinnaya` | `worker` | `standard / extended` | `adaptive` |
| ML-SUM-01-07 | `all` | `all` | `core / standard / extended` | `universal` |
| ML-REF-BASE | `all` | `all` | `all` | `universal` |

## Layer Assignment

| Block ID | Layer | Kak otdaetsya | Nuzhen li route-control | Nuzhen li event-hook |
|---|---|---|---|---|
| ML-M01-INTRO | `on-screen` | `lesson intro / card` | `yes` | `yes` |
| ML-M02-ACCESS-PPE | `interaction` | `micro-check / checklist step` | `yes` | `yes` |
| ML-M03-SYSTEM-LOGIC | `voiceover` | `audio / transcript` | `no` | `yes` |
| ML-M04-SITE-CHECK | `interaction` | `scenario choice / branching check` | `yes` | `yes` |
| ML-M05-07-ASSEMBLY-OPS | `on-screen` | `lesson series` | `yes` | `yes` |
| ML-NAR-01-07 | `voiceover` | `audio / transcript fragments` | `no` | `yes` |
| ML-SUM-01-07 | `reference` | `summary panel / recap card` | `no` | `optional` |
| ML-REF-BASE | `reference` | `link / popup / attachment` | `no` | `yes` |

## Stable IDs i version compatibility

- Kak ustroeny ID moduley: `ML-M01 ... ML-M11` po strukture `course architecture`
- Kak ustroeny ID blokov: `ML-M<module>-<block-name>` dlya gateway-sloya
- Kak svyazat ID manifesta s `gateway spec`: route entry dolzhen ssylat'sya na `Build ID` i `Block ID` iz etogo manifesta
- Kak svyazat ID manifesta s `gateway event map`: eventy dolzhny zapisivat `Build ID + Modul ID + Block ID`
- Kak obnaruzhit, chto blok izmenilsya mezhdu versiyami: sravnit `slide script`, `adaptation map`, `narration pack` i `module summary pack`
- Kak ne poteryat privyazki pri `patch / minor / major`: ne menyat `Block ID`, poka ne menyayetsya funktsiya bloka; pri funktsionalnoy peresborke vypuskat novyy `Block ID`

## Reusable vs platform-specific

| Element | Reusable v lyubom gateway | Zavisim ot platformy | Primechanie |
|---|---|---|---|
| Block IDs | `yes` | `no` | dolzhny ostavat'sya v `Pipeline` |
| Route labels | `yes` | `partial` | platforma mozhet ikh pereimenovat vizualno, no ne logicheski |
| Progress UI | `no` | `yes` | eto uzhe zona `platform adapter` |
| Quiz rendering | `partial` | `yes` | logika checkpointa nasha, UI otrisovki platformennyy |
| Reference delivery | `yes` | `partial` | ssylka nasha, format otobrazheniya mozhet byt platformennym |

## Gaps i nedostayushchie elementy

- Kakikh blokov poka ne khvataet dlya `gateway-ready` sborki: moduli `08-11`, vklyuchaya finalnyy recap po `10` i test routing po `11`
- Gde net ustoychivykh ID: u chasty direct-link i asset contour
- Gde content est, no ne razdelen po sloyam: v module `05-07`, gde slishkom mnogo logiki zhivet v presentational sequence
- Gde est risk, chto odin blok slishkom zavisit ot prezentatsionnoy logiki: `ML-M05-07-ASSEMBLY-OPS`
- Gde nuzhna dopolnitelnaya rabota pered realnym online-podklyucheniem: visual asset base, final narration text po slaydam `20-43`, quiz checkpoint mapping

## Conflict Check

1. worker-kontur uzhe podgotovlen luchshe, chem `ITR`, poetomu nelzya iskusstvenno pometchat `ITR` kak release-ready bez novykh artefaktov
2. `korotkaya` versiya ne dolzhna prevrashchat'sya v slishkom obrezannyy variant bez logiki `dopusk -> proverka -> stop-resheniya`
3. route-level adaptatsiya dolzhna reshat variantnost, a ne perepisyvat `content core`
4. nelzya podmenyat micro-checks finalnym testom; eto raznye funktsii v gateway
5. lyubaya lokalnaya online-optimizatsiya ne dolzhna lomat standartizatsiyu vsego `Pipeline`

## Svyaz s maintenance

- Kakie elementi manifesta dolzhny otslezhivatsya v `Stage 13`: povtornye provaly po `ML-M02-ACCESS-PPE`, `ML-M04-SITE-CHECK` i blokam `ML-M05-07-ASSEMBLY-OPS`
- Kakie izmeneniya v blokakh schitat `patch / minor / major`: tekstovye utochneniya = `patch`, peresborka micro-check = `minor`, izmenenie route logic ili block decomposition = `major`
- Kakie izmeneniya mozhno vnosit bez lomki route logic: voiceover clarification, summary wording, reference updates
- Kogda nuzhno obnovlyat srazu `spec + manifest + event map`: kogda menyaetsya `Build ID`, marshrut ili logika checkpointov

## Reshenie po gotovnosti

- Gateway manifest gotov: `yes, kak primer-zapolnenie`
- Kakaya chast manifesta uzhe rabotosposobna: worker-route dlya modulya `01-07` s bazovym content mapping
- Chto nuzhno dosobrat do polnogo `gateway contract`: finalnyy `gateway spec`, finalnyy `gateway event map`, moduli `08-11`, stabilnyy direct-link contour
- Kakie bloki uzhe mozhno peredat platforme: `ML-M01-INTRO`, `ML-M02-ACCESS-PPE`, `ML-M04-SITE-CHECK`, `ML-SUM-01-07`
- Chto eshche dolzhno ostat'sya vnutri `Pipeline`: pravila variantnosti, worker/ITR adaptatsiya, version rule i maintenance-resheniya
