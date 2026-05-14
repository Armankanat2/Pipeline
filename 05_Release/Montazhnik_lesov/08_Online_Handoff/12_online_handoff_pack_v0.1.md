# Online Handoff Pack

## Obshchaya informatsiya

- Nazvanie kursa: `Montazhnik lesov`
- Kod kursa: `ML`
- Versiya: `v0.1`
- Owner: vy
- Tselevoi tip online-produkta: `LMS / web-course`
- Status: `release-staging draft / not approved`

## Sostav paketa

- Est li `online adaptation map`: da, `v0.1`
- Est li `module summary pack`: da, `v0.1`
- Est li `narration pack`: da, `v0.1`
- Est li bank resursov / direct links: chastichno, poka kak contour
- Est li quiz hooks ili mapping k testu: chastichno, cherez `10_test_pack_v0.2.md` i post-QA contour
- Est li ogranicheniya po assetam: da, poka net polnoy photo/video bazy

## Source of truth dlya etogo drafta

- Etot dokument ne podmenyaet task board, `09_QA` i control-doki kursa.
- Tekushchee sostoyanie kursa nado proverat po `02_Research/Montazhnik_lesov/01_Brief/03_task_board_v1.0.md`.
- Esli etot draft rassinkhronilsya s `02_Research`, prioritet u stage-artefaktov i QA.

## Chto mozhno perenosit bez pererabotki

- Moduli: `01-09` kak course-core, no bez release-confidence po system-specific detalizatsii
- Slaydy / mikrobloki: `01-43` + post-QA assessment anchors `A-44 - A-48` kak sleduyushchiy kontur sborki
- Voiceover: starter contour dlya `01-09`
- Testovye blokhi: `10_test_pack_v0.2.md` kak osnova dlya quiz-mapping i targeted QA
- Reference-materialy: source base i planned direct links

## Chto vse eshche trebuet online-production

- Interaktivy: nuzhny otdelnye micro-checks i LMS-logic
- LMS-razmetka: poka net
- Finalnaya navigatsiya: poka net
- Triggers i analytics: poka net
- Adaptatsiya pod platformu: poka net
- Finalnaya confidence-proverka: nuzhen targeted QA po test-validity i zakrytie evidence-gap

## Reshenie po gotovnosti

- Online handoff pack gotov dlya peredachi: `starter draft`
- Chto nado dosobrat:
  - real build `A-44 - A-48`;
  - targeted QA po test-validity;
  - finalnye assets i resource map;
  - polnyy direct-link contour;
  - platform-specific adaptation.
