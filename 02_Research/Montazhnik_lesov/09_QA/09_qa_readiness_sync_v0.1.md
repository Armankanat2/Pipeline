# QA Readiness Sync

## Status

- Nazvanie kursa: `Montazhnik lesov`
- Kod kursa: `ML`
- Data sync: `2026-05-14`
- Etap: `pre-formal QA -> formal QA entry`
- Reviewer mode: `control review / readiness sync`

## Scope sync

- Script contour: `06_Script/06_slide_script_v0.2.md`
- Outcomes contour: `04_Outcomes/04_learning_outcomes_v0.1.md`
- Asset contour: `07_Assets/07_asset_register_v0.2.md`
- Test contour:
  - `10_Test/10_test_pack_v0.1.md`
  - `10_Test/10_answer_key_v0.1.md`
  - `05_Release/Montazhnik_lesov/03_Test/10_test_check_sheet_v0.1.md`

## Chto bylo provereno

1. Script deystvitelno razvernut po moduliam `01-09`, a ne tolko po `01-07`.
2. Asset-layer imeet status `partial / yes dlya controlled draft production` i ne blokiruet formalnyy QA, esli sokhranyat generic-safe granitsu.
3. Testovaya svyazka ranee otstavala ot script po `LO-11` i `LO-12`.
4. Test contour rasshiren do `22` voprosov i teper pokryvaet moduli `08-09` cherez `Q-21` i `Q-22`.

## Chto gotovo dlya formalnogo QA

- est ustoychivyy course-core po moduliam `01-09`;
- est sinkhronizirovannyy test contour `test pack -> answer key -> check sheet`;
- est zafiksirovannyy spisok blockerov i ogranicheniy;
- est control contour, kotoryy pozvolyaet otslezhivat resheniya, bottlenecki i fokus.

## Ogranicheniya i chestnye risk-note

- net pasporta konkretnoi sistemy lesov;
- net tekhnicheskoy validatsii eksperta;
- net finalnogo photo-layera po kritichnym compare-visuals;
- `Q-21` i `Q-22` poka tekstovye i mogut trebovat usileniya posle formalnogo QA;
- release-, lecturer- i online-sloi vse eshche schitayutsya starter drafts.

## Gate reshenie

- Gotov li kurs k formalnomu vnutrennemu QA: `yes, s ogranicheniyami`
- Gotov li kurs k finalnomu release: `no`
- Sleduyushchiy zhestkiy vyhod: `09_QA/09_qa_report_v0.1.md`
- Chto proveriat pervym na formalnom QA:
  - logiku generic-safe formulirovok;
  - dostatochnost testovogo contoura po `LO-11` i `LO-12`;
  - sootvetstvie script, outcomes i release-test contoura;
  - gde asset-layer uzhe dostatochen, a gde on vse eshche sozdaet metodicheskiy risk.

## Kratkiy vyvod

`QA readiness sync` schitaetsya proydonnym. Kurs bolshe ne nakhoditsya mezhdu `script closure` i `formal QA`: course-core sobran, test contour doveden do moduley `08-09`, a glavnyy ogranichivayushchiy faktor teper ne v nedosborke karkasa, a v evidence / validation gap.
