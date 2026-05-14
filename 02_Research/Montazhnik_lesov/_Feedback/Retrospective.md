# Retrospective

## Etap

Predpilotnaya retrospective po usileniyu karkasa kursa.

## Chto srabotalo

- bazovyy production-karkas `Pipeline` uzhe sobran;
- kurs vedetsya kak zhivoy pilot-case, a ne kak razovyy deck;
- gotovy stage-artefakty i release-myslenie, kotoroe mozhno rasshiryat bez polnogo restart.
- pervyy control review pomog perevesti kurs iz abstraktnogo "eshche ne gotov" v konkretnuyu tochku `QA readiness`;
- `QA readiness sync` zakryl razryv mezhdu script `01-09` i test contourom, osobenno po `LO-11` i `LO-12`.
- formalnyy QA ne razvalil karkas i dal ponyatnyy spisok ne kosmeticheskikh, a sistemnykh dorabotok.

## Chto zaderzhivaet progress

- evidence / validation gap: net pasporta konkretnoi sistemy lesov, ekspertnoy validatsii i finalnogo photo-layera;
- formalnyy QA uzhe proyden, i teper est zhestkiy spisok zamechaniy dlya revise-cycle;
- risk rannogo ukhoda v "krasotu release" do zakrytiya QA i ogranicheniy po dokazatelstvam.
- razryv mezhdu zayavlennymi visual / practical outcomes i tekstovoy proverkoy okazalsya bolee vazhnym, chem kazalos do formalnogo QA.

## Chto eto znachit dlya sistemy

- nuzhen zhivoy adaptive/control contour;
- nuzhen fokus na uzkikh mestakh;
- nuzhen sistemnyy improvement backlog, a ne tolko lokalnye zametki.
- predgate `QA readiness sync` deystvitelno polezen i ego stoit schitat obyazatelnym dlya zhivykh kursov.
- odin `QA readiness sync` ne zamenyaet proverku `outcome -> assessment validity`, osobenno v kursakh s practical / visual claims.

## Resheniya

- dobavleny `_Control` i `_Feedback`;
- aktivnyy fokus perenesyon s `script closure` na `QA readiness + test contour`, a zatem na `formal QA entry`;
- teper aktivnyy fokus perenesyon v `post-formal QA revise` po test-validity i visual-layer;
- sleduyushchaya retrospective dolzhna proverit, udalos li zakryt zamechaniya `09_qa_report_v0.1.md` bez polomki karkasa.
