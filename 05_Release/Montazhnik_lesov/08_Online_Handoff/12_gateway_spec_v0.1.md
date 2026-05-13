# Gateway Spec

## Obshchaya informatsiya

- Nazvanie kursa: `Montazhnik lesov`
- Kod kursa: `ML`
- Versiya: `v0.1`
- Owner: vy
- Uroven sborki: `Future-ready`
- Tselevoi tip gateway: `LMS / web-course`
- Nuzhen li gateway v etom release: `later`

## Rol gateway

- Dlya kogo prednaznachen gateway: dlya budushchego self-paced prokhozhdeniya worker-kontura i dlya sleduyushchey adaptatsii pod `ITR`
- Kakoy format dostupa on dolzhen obespechit: vhod v kurs po pryamoy ssylke, `QR` ili cherez LMS-katalog s marshrutizatsiey po variantu i track
- Kakuyu problemu on reshaet: pozvolyaet podklyuchit `Montazhnik lesov` k online-srede bez povtornogo proektirovaniya vsego kursa
- Chto dolzhen poluchit polzovatel na vykhode: ponyatnyy marshrut po modulyam, micro-checks v klyuchevykh tochkakh, reference-dostup i signal o prokhozhdenii dlya `Stage 13`

## User Entry Logic

- Kak polzovatel popadaet v kurs: po `QR`, direct link ili iz LMS-razdela klienta
- Nuzhna li avtorizatsiya: zhelatelna dlya progress tracking, no dlya pilotnogo `web-course` mozhno dopustit uproshchennyy vhod
- Est li rolevoy vhod: da, minimum `worker / ITR`
- Est li razdelenie po kompaniyam / klientam: da, kak optional branded shell poverkh odnogo i togo zhe content core
- Nuzhen li povtornyy vhod s prodolzheniem prokhozhdeniya: da, dlya `srednyaya` i `dlinnaya` versiy
- Nuzhen li bystryy vhod v otdelnyy modul: da, minimum dlya `Modul 02`, `Modul 04` i recap po `05-07`

## Variant Routing

Gateway dolzhen umet opredelyat, kakuyu sborku polzovatelu otdavat.

- Kak opredelyaetsya `variant`: klient, admin ili LMS-rule mozhut zadat `korotkaya / srednyaya / dlinnaya`
- Kak opredelyaetsya `track`: po roli polzovatelya `worker / ITR`
- Kak opredelyaetsya glubina: `core / standard / extended` privyazyvaetsya k variantu i gotovnosti sborki
- Mozhet li polzovatel sam vybrat variant: da, no tolko esli klient ne zafiksiroval obyazatelnyy route
- Mozhet li admin ili klient nazachat variant: da, eto prioritetnyy sposob dlya korporativnogo dostupa
- Chto schitaetsya default-marshrutom: `ML-GW-BLD-01`, to est `srednyaya / worker / standard`

## Gateway Route Map

| Route ID | Dlya kogo | Variant | Track | Start point | Chto otkryvaetsya | Chto schitaetsya finalom |
|---|---|---|---|---|---|---|
| ML-GW-01 | bazovyy worker-self-paced contour | `srednyaya` | `worker` | intro screen + Modul `01` | moduli `01-07`, module summaries, bazovye micro-checks | completion modulya `07` + final recap |
| ML-GW-02 | compact worker route | `korotkaya` | `worker` | intro screen + compact safety frame | moduli `01-04` + summary po `05-07` | completion compact recap + minimum checkpoints |
| ML-GW-03 | rasshirennyy worker route, poka planned only | `dlinnaya` | `worker` | intro screen + full route selector | moduli `01-09` + budushchiy recap/test contour po `10-11` | final budet zafiksirovan posle dosborki `10-11` |
| ML-GW-04 | budushchaya rolevaya adaptatsiya | `srednyaya` | `ITR` | role-based entry | worker core + organizatsionnye decision points | completion ITR-specific recap i eskalation checks |

## Delivery Mapping

| Content block | Otkuda beretsya | Kak otdaetsya polzovatelyu | Gateway role |
|---|---|---|---|
| On-screen | `06_slide_script_v0.1` + `12_online_adaptation_map_v0.1` | lesson screen / module card | otobrazit |
| Voiceover | `12_narration_pack_v0.1` | audio / transcript fragment | podklyuchit |
| Interaction | `12_online_adaptation_map_v0.1` + future quiz hooks | micro-check / scenario step | zapustit |
| Reference | `12_module_summary_pack_v0.1` + direct links contour | summary panel / popup / attachment | predostavit |

## Navigation Rules

- Mozhet li polzovatel idti tolko lineyno: po umolchaniyu da, no s vozmozhnostyu vernutsya vnutri otkrytykh moduley
- Mozhet li vozvrashchat'sya k moduliam: da, osobenno v `srednyaya` i `dlinnaya`
- Est li branch logic: da, minimum v `Modul 04` i v budushchikh checkpointakh po `05-07`
- Est li obyazatelnye checkpointy: da, posle `Modul 02`, `Modul 04` i v finalnom recap worker-route
- Gde nuzhen finalnyy quiz: v polnoy worker-route posle `Modul 07`, a v budushchem posle `Modul 09`
- Gde nuzhny `micro-checks`: v `Modul 01`, `02`, `04` i po khodu `05-07`

## Stable IDs

- Est li u moduley ustoychivye ID: da, `ML-M01 ... ML-M11`
- Est li u blokov / mikroblokov ustoychivye ID: chastichno, po pravilam `ML-M<module>-<block-name>`
- Kak svyazat ID gateway s ID v `online adaptation map`: route i checkpoint dolzhny ssylat'sya na `Modul ID` i `Block ID` iz manifesta
- Kak obkhoditsya izmenenie versii bez polnoy pereprivyazki: pri `patch / minor` sokhranyat ID; pri funktsionalnoy peresborke vypuskat novyy block-level ID

## Event Layer

Gateway dolzhen vozvrashchat eventy, kotorye mogut stat signalami dlya `Stage 13`.

| Event ID | Sobytie | Zachem nuzhno | Kuda vozvrashchaetsya |
|---|---|---|---|
| ML-EV-START | start route/module | ponyat, chto marshrut realno zapushchen | maintenance / analytics |
| ML-EV-EXIT | stop / exit | ponyat, gde polzovatel brosayet route | maintenance / analytics |
| ML-EV-REPEAT | repeat block | ponyat, gde est zatrudnenie ili neyasnost | maintenance / analytics |
| ML-EV-FAIL-CHECK | fail micro-check | ponyat, gde ne srabatyvaet obyazatelnyy safety-node | maintenance / analytics |
| ML-EV-REF-OPEN | open reference | ponyat, gde on-screen ne khvataet sam po sebe | maintenance / analytics |
| ML-EV-COMPLETE | complete route | ponyat, chto contour proyden do finala | maintenance / analytics |

## Feedback Return Path

- Kak sobytiya iz gateway vozvrashchayutsya v `Stage 13`: cherez signal registry s polemi `source / type / frequency / impact`
- Kto interpretiruet etot signal: owner kursa ili metodicheskiy review contour
- Kak otdelit tekhnicheskiy event ot metodicheskogo signala: odinochnyye eventy monitorim, patterny perevodim v `content improvement` ili `gateway issue`
- Kakie sobytiya dolzhny popolnyat `update log`: povtoryaemye `exit`, `fail micro-check`, `repeat block` i repeated `reference open` na odnikh i tekh zhe uzlakh
- Kakie sobytiya dolzhny tolko monitorit'sya: `start`, `complete`, razovye `reference open`

## Client / Access Layer

- Nuzhno li razdelenie po klientam: da, branded shell i entry rules mogut byt klientskimi
- Nuzhny li branded shell-otlichiya: da, no bez lomki content core
- Nuzhny li raznye marshruty dlya raznykh grupp: da, minimum `worker / ITR` i optional `short / standard / deep`
- Nuzhna li para `QR + direct link` dlya perekhoda iz oflaina v gateway: da, eto bazovyy scenariy
- Nuzhno li otdelnoe pravilo dlya gostevogo i avtorizovannogo dostupa: da, gostevoy dostup mozhno razreshat tolko dlya pilotnogo kontura bez kritichnogo trackinga

## Ogranicheniya i riski

- Chto nelzya perenosit v gateway bez pererabotki: slozhnyye lektorskie podvodki i logiku, kotoraya zhivet tolko v speaker notes
- Gde prezentatsionnaya logika konfliktuet s user flow: v module `05-07`, gde slishkom mnogo posledovatelnoy demonstratsii bez otdelnykh checkpointov
- Gde mozhno sluchayno perenesti platformennuyu logiku v `content core`: pri popitke podognat script pod odin konkretniy LMS
- Gde est risk vzryva variantov: na peresechenii `korotkaya / srednyaya / dlinnaya` i `worker / ITR`
- Gde nuzhna otdelnaya tekhnicheskaya proverka: progress resume, branch logic, direct links, future asset delivery

## Reshenie po gotovnosti

- Gateway spec gotov: `yes, kak primer-zapolnenie`
- Kakoy minimalnyy gateway-kontur uzhe mozhno sobirat: `ML-GW-01` dlya worker-route po modulyam `01-07`
- Chto nado dosobrat do rabochego `gateway contract`: moduli `08-11`, finalnyy quiz mapping, direct-link contour, finalnyy `gateway event map`
- Chto mozhno ostavit na urovne budushchego `platform adapter`: konkretniy UI, progress widgets, LMS-specific rendering i branded shell detalizatsiya
