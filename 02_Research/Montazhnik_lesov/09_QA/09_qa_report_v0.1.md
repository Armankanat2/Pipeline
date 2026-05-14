# QA Report

## Obshchaya informatsiya

- Nazvanie kursa: `Montazhnik lesov`
- Kod kursa: `ML`
- Versiya: `v0.1`
- Data proverki: `2026-05-14`
- Reviewer: `Codex internal QA`
- Etap proverki: `formal internal QA po vhodu iz 09_qa_readiness_sync_v0.1.md`

## Itog gate

- Itogovyy ball: `71 / 100`
- Status: `formal QA proyden s vazhnymi zamechaniyami`
- Reshenie: `revise`

## Otsenka po kriteriyam

| Kriteriy | Ball 0-20 | Kommentariy |
|---|---:|---|
| Polnota | 15 | Course-core po moduliam `01-09` sobran, no visual- i evidence-layer ne dozakryty |
| Ponyatnost | 16 | Logika kursa i testa posledovatelna, generic-safe ramka derzhitsya uverenno |
| Sootvetstvie trebovaniyam | 13 | Outcome-map est, no chast prakticheskikh / visual outcomes poka proveryaetsya slishkom tekstovo |
| Otsutstvie peregruza | 15 | Tekstovaya logika disciplinirana, no bez realnogo visual-layer trudnee otsenit finalnyy worker-load |
| Gotovnost k sleduyushchemu etapu | 12 | Kurs gotov k dorabotke po zamechaniyam, no ne gotov k pilotu ili release bez sleduyushchego fixa |

## Naydannye zamechaniya

| ID | Prioritet | Tip | Opisanie | Blok / slayd | Reshenie |
|---|---|---|---|---|---|
| 01 | important | metodika | `LO-03`, `LO-05`, `LO-07`, `LO-11` i chastichno `LO-12` deklariruyut visual / practical proverku, no tekushchiy test ostayetsya preimushchestvenno tekstovym. Eto oslablyaet validnost proverki po sravneniyu s samimi outcomes. | outcomes + test contour | Dobavit minimum odin visual ili visual-simulated check dlya kritichnykh outcome-zon i proverit pokrytie po variantam testa |
| 02 | important | dizayn / asset logic | Asset register chestno priznayet `partial` status i bolshoe kolichestvo `draft / missing`, poetomu formalnyy QA poka ne mozhet polnostyu proverit chitaemost, print-safety i worker-ponyatnost moduley `03-09`. | asset layer `A-09` - `A-43`, osobenno compare-visuals | Sobrat controlled draft visual-layer dlya opornykh slaydov i vernutsya k targeted QA po visual clarity |
| 03 | important | tekhnika / source confidence | `LO-08` i `LO-12` vse eshche zavisyat ot pasporta sistemy i ekspertnoy validatsii. Generic-safe formulirovki polezny dlya karkasa, no ikh nelzya schitat dostatochnymi dlya final confidence ili release-grade obucheniya. | moduli `03`, `08`, `09` | Uderzhivat generic-safe granitsu, ne utochnyat system-specific logiku bez dokazatelstv, zaplanirovat expert / passport backfill |

## Kratkiy vyvod

- Chto rabotaet khorosho:
  - course-core sobran i uzhe ne rassypaetsya mezhdu script, outcomes i testom;
  - `QA readiness sync` deystvitelno snizil khaos pered formalnym review;
  - generic-safe ramka derzhit kurs ot lozhnykh "tochnostey".
- Gde osnovnoy risk:
  - razryv mezhdu zayavlennoy prakticheskoy / visual proverkoy i tekushchey tekstovoy realizatsiey;
  - nedosobrannyy visual-layer;
  - nedostatochnaya source-confidence dlya release-level resheniy.
- Chto nuzhno ispravit pervym:
  - sdelat assessment i visual-layer bolee chestno sootvetstvuyushchimi `LO-03`, `LO-05`, `LO-07`, `LO-11`, `LO-12`.

## Checklist review

- Logika kursa proverena: `yes`
- Terminologiya proverena: `partial / generic-safe`
- TB proverena: `yes na urovne karkasa`
- Peregruz proveren: `partial`
- Vizualnaya chitaemost proverena: `no, visual-layer eshche ne sobran`
- Sootvetstvie outcomes provereno: `partial`
- Gotovnost k sleduyushchemu etapu proverena: `yes, no tolko dlya revise-cycle`

## Plan dorabotki

1. Sdelat post-QA fix po test / outcome validnosti, osobenno po `LO-03`, `LO-05`, `LO-07`, `LO-11`, `LO-12`.
2. Sobrat minimum viable controlled visual-layer dlya opornykh compare- i recognition-zon.
3. Zafiksirovat, kakie temy ostayutsya generic-safe do polucheniya pasporta sistemy i ekspertnoy validatsii.
