# Language Style Guide

## 1. Obshchaya informatsiya

- Nazvanie kursa: `Montazhnik lesov`
- Kod kursa: `ML`
- Client code: `generic`
- Data sborki: `2026-05-14`
- Owner: vy

## 2. Bazovaya yazykovaya politika

- Osnovnoy yazyk release-paketa: russkiy
- Osnovnoy yazyk vnutrenney markdown-bazy: translit s kontrolliruemymi russkimi vstavkami tam, gde eto nuzhno dlya release-logiki
- Dopustim li translit vo vnutrennikh dokumentakh: da, poka kurs zhivet vnutri rabochey markdown-bazy
- Dopustima li smes russkogo i angliyskogo: tolko dlya sistemnykh terminov i nazvaniy artefaktov
- Kakie angliyskie terminy ostavlyaem kak sistemnye: `worker`, `ITR`, `core`, `standard`, `extended`, `source basis`, `asset dependency`, `online handoff`, `publishing handoff`, `release`
- Chto obyazatelno vypuskaetsya po-russki v klientskoy versii:
  - nazvanie kursa;
  - tekst slaydov;
  - testovye voprosy i varianty otvetov;
  - worker-materialy;
  - release-grade notes dlya lektora, esli oni ukhodyat klientu.

## 3. Politika po alfavitam i kodirovke

- Dopustimy li smesi latinitsy i kirillitsy v odnom tokene: net, krome osoznanno zafiksirovannykh release-markerov i ssylok na artefakty
- Kak proveryaem bituyu kodirovku: vizualnyy proofread + proverka klyuchevykh release-grade dokumentov pered QA i release
- Kak vypuskaem bukvennye markery testa:
  - v markdown-baze: `A / B / V / G`
  - v finalnom russkoyazychnom makete: `А / Б / В / Г`
- Kak vypuskaem sokrashcheniya:
  - `SIZ` mozhno ispolzovat kak stabilnoe sokrashchenie;
  - pri pervom upominanii v release-grade materialakh rasshifrovyvat kak `sredstva individualnoy zashchity (SIZ)`.

## 4. Politika po tonu

- Ton dlya rabochikh: prostoy, pryamoy, instruktivnyy, bez nadmennosti i bez peregruza teoriyey
- Ton dlya ITR: bolee organizatsionnyy i upravlencheskiy, no bez kancelarita radi kancelarita
- Chto schitaetsya slishkom slozhnym yazykom: dlinnye abstraktnye konstruktsii, pereizbytok normativnykh oborotov, termin bez prakticheskogo smysla
- Chto schitaetsya slishkom razgovornym yazykom: familiarnost, shutochnye formulyrovki, "na glaz", "kak nibud", "avos"
- Kogda dopustim imperative: v cheklistakh, stop-formulakh, warning-blockakh i worker-materialakh

## 5. Politika po terminam

- Gde lezhit glossary: [01_terminology_glossary_v0.1.md](</e:/нейросети/ПРОЕКТЫ%20ДПО/Pipeline/02_Research/Montazhnik_lesov/01_Brief/01_terminology_glossary_v0.1.md>)
- Svyazannyy multilang-sloy: [01_terminology_glossary_multilang_v0.1.md](</e:/нейросети/ПРОЕКТЫ%20ДПО/Pipeline/02_Research/Montazhnik_lesov/01_Brief/01_terminology_glossary_multilang_v0.1.md>)
- Kakie terminy dolzhny byt stabilny: `dopusk k rabotam`, `SIZ`, `ostanovit raboty`, `eskalatsiya`, `ustoychivost`, `kreplenie`, `proverka pered ekspluatatsiey`, `opasnaya zona`, `nagruzka`, `demontazh`
- Kakie sinonimy nelzya smeshivat:
  - `dopusk` i `razreshenie` bez konteksta;
  - `ustoychivost` i `prochnost` kak budto eto odno i to zhe;
  - `sborka` i `ekspluatatsiya` kak odin etap;
  - `ostanovit raboty` i `byt ostorozhnym`.
- Kakie sokrashcheniya nado rasshifrovyvat pri pervom upominanii: `SIZ`, `ITR`, pri neobkhodimosti normativnye abbr.

## 6. Politika po punktuatsii i formatu

- Kak oformlyaem spiski: korotkie, odnorodnye, bez smyslovoy meshanki v odnom punkte
- Nuzhna li odinakovaya punktuatsiya v bullet-lists: da, v predelakh odnogo dokumenta
- Kak oformlyaem nazvaniya dokumentov i artefaktov: v sistemnom vide s kodom i versiyey pri ssylke na fayl
- Kak oformlyaem normativnye ssylki: s polnym nazvaniem dokumenta pri pervom upominanii
- Kak oformlyaem daty: `YYYY-MM-DD` vnutri bazy, obychnyye russkie daty dopustimy v klientskom release

## 7. Tipovye oshibki, kotorye nado lovit

- bitaya kodirovka
- sluchaynye smesi alfavitov
- plavayushchie terminy
- razryvy mezhdu `worker`-tonom i release-tonom
- sluchaynye ITR-formulyrovki v worker-only kurse
- podmena `draft`-yazyka release-grade formulyrovkami

## 8. Reshenie po gotovnosti

- Style guide gotov k rabote: `yes`
- Chto nuzhno dosobrat:
  - finalnye pravila po release-grade russkoyazychnomu proofread;
  - dopolnitelnye ogovorki, esli kurs pozhe poluchit otdelnyy `ITR` contour.
