# Pipeline Blueprint v1

## 1. Tsel

Postroit povtoryaemuyu sistemu proizvodstva uchebnykh kursov dlya rabochikh spetsialnostey, gde novyy kurs mozhno sobirat ne s nulya, a iz standartnykh etapov, shablonov i proverok.

## 2. Rezultat proekta

Na vykhode dolzhna poyavitsya operational system, kotoraya sobiraet ne tolko prezentatsii, no i polnyy paket dlya zakazchika, i vklyuchaet:

- pipeline proizvodstva;
- nabor shablonov;
- QA gates;
- definition of done dlya kazhdogo etapa;
- bazu pereispolzuemykh komponentov;
- AI-assisted workflow dlya uskoreniya raboty.

## 3. Printsipy sistemy

- `checklist-driven production` vmesto raboty po pamyati;
- `one stage -> one output`;
- `one output -> one gate`;
- `learning first, slides second`;
- `modular scalability over fixed length`;
- `content-brand separation`;
- `reusability over custom work`;
- `clarity over beauty`;
- `fast review loops`;
- `updateable system`, a ne razovaya prezentatsiya.

## 4. Rekomenduemyy instrumentariy

- Production: `PowerPoint`
- Knowledge Base: `Obsidian`
- Text workflow: `Markdown`
- Versioning: `Git / GitHub`
- Assets: `Google Drive`, `NAS` ili drugoe media-khranilishche
- Task tracking: `Trello`, `Notion` ili prostaya kanban-doska
- AI support: prompty dlya analiza, struktury, testov i QA

## 5. Master Production Stages

| Stage | Nazvanie | Tsel | Klyuchevoy vykhod |
|---|---|---|---|
| 00 | Backlog | Reshit, chto delat seychas | Prioritet kursa |
| 01 | Intake | Ponyat zadachu i ogranicheniya | Brief |
| 02 | Source Audit | Sobrat i otsenit istochniki | Source register |
| 03 | Job Decomposition | Razobrat professiyu na bloki i navyki | Job map |
| 04 | Learning Outcomes | Zafiksirovat izmerimye rezultaty obucheniya | Outcomes map |
| 05 | Course Architecture | Postroit karkas kursa | Course structure |
| 06 | Scriptwriting | Opisat logiku kazhdogo slayda | Slide script |
| 07 | Asset Collection | Podobrat vizualy i istochniki | Asset pack |
| 08 | Visual Production | Sobrat prezentatsiyu | Draft deck |
| 09 | QA Review | Proverit metodiku, dizayn i korrektnost | QA report |
| 10 | Test Creation | Sozdat kontrol znaniy | Test pack i answer key |
| 11 | Pilot | Proverit kurs na auditornom teste | Pilot report |
| 12 | Release | Sformirovat finalnyy paket | Release pack |
| 13 | Maintenance | Obnovlyat kurs po regulyarnomu tsiklu | Update log |

## 6. Stage Flow

```text
Backlog
  -> Intake
  -> Source Audit
  -> Job Decomposition
  -> Learning Outcomes
  -> Course Architecture
  -> Scriptwriting
  -> Asset Collection
  -> Visual Production
  -> QA Review
  -> Test Creation
  -> Pilot
  -> Release
  -> Maintenance
```

## 7. Klyuchevye artefakty

Minimalnyy nabor artefaktov po kursu:

- `01_course_brief.md`
- `01_brand_profile.md` pri multi-client ili branded release
- `02_source_register.md`
- `03_job_map.md`
- `04_learning_outcomes.md`
- `05_course_architecture.md`
- `06_slide_script.md`
- `07_asset_register.md`
- `08_<course-code>_draft_vX.Y.pptx`
- `09_qa_report.md`
- `10_test_pack.md`
- `10_answer_key.md`
- `11_pilot_report.md`
- `12_release_note.md`
- `13_update_log.md`

## 8. Roli

Minimalnaya model dlya komandy:

- `Koordinator` - sroki, status, soglasovanie
- `Metodist` - struktura obucheniya i logika
- `Tekhnicheskiy ekspert` - korrektnost professionnogo soderzhaniya
- `Dizayner` - vizualnaya sborka
- `Prepodavatel` - signal s polya i feedback

Model dlya `solo mode`:

- odin operator vedet vse etapy;
- kachestvo derzhitsya ne na opyte, a na cheklistakh;
- handoff zamenyaetsya kontrolnymi tochkami;
- AI ispolzuetsya kak uskoritel i dopolnitelnyy reviewer.

## 9. QA Logic

Posle kazhdogo etapa stavitsya `QA gate`.

Pyat bazovykh kriteriev:

- polnota;
- ponyatnost;
- sootvetstvie trebovaniyam;
- otsutstvie peregruza;
- gotovnost k sleduyushchemu etapu.

Skoring:

- kazhdyy kriteriy otsenivaetsya ot `0` do `20`;
- maksimalnyy ball: `100`;
- prokhodnoy ball: `80`;
- esli etap < `80`, on vozvrashchaetsya na dorabotku.

## 10. Pravilo Definition of Done

Etap schitaetsya zavershennym tolko togda, kogda:

- est ponyatnyy artefakt;
- artefakt proveren po cheklistu;
- artefakt gotov dlya sleduyushchego etapa;
- prinyato reshenie `pass` ili `revise`.

## 11. Format kursov

Vmesto zhostkogo standarta na `110 slaydov` ispolzuem tri paketa:

- `Short` - `25-40` slaydov;
- `Standard` - `60-90` slaydov;
- `Deep` - `90-120` slaydov.

V klientskom konture eti versii mozhno nazyvat:

- `korotkaya` = `Short`;
- `srednyaya` = `Standard`;
- `dlinnaya` = `Deep`.

Dopolnitelno:

- `1 slayd = 1 mysl`;
- minimum sploshnykh tekstov;
- maksimum vizualnykh opor;
- obyazatelnyy blok po bezopasnosti;
- test dolzhen proverat ponimanie, a ne zapominanie opredeleniy.

Pravilo sborki:

- karkas moduley dolzhen ostavatsya stabilnym;
- pri perekhode mezhdu `Short`, `Standard` i `Deep` menyayetsya ne logika kursa, a glubina prokrytiya;
- kazhdyy modul dolzhen imet sloi `core`, `standard` i pri neobkhodimosti `extended`;
- `core` kontent dolzhen sobirat minimalno zhiznesposobnuyu versiyu kursa;
- `extended` kontent ne dolzhen lomat strukturu pri udalenii.

Pravilo dlya testa:

- test mozhno derzhat kak bank voprosov, a ne kak odin zafiksirovannyy nabor;
- dlya korotkikh i dlinnikh versiy kursa dopustimy raznye obemy testa, esli sokhranyaetsya pokrytie `core` outcomes.
- blok voprosov mozhet byt vstroen v prezentatsiyu, no dolzhen ostavatsya otklyuchaemym bez polomki osnovnogo uchebnogo potoka.

## 12. Release Package

Finalnyy paket dolzhen vklyuchat:

- `PPTX` minimum dlya soglasovannykh versiy kursa;
- `PDF` minimum dlya soglasovannykh versiy kursa;
- versii s blokom voprosov, esli on nuzhen v samoy prezentatsii;
- pri neobkhodimosti versii bez bloka voprosov;
- speaker notes;
- test / bank voprosov;
- otdelnyy klyuch otvetov;
- kratkuyu metodichku dlya prepodavatelya;
- klientskiy brand layer: logo, tsveta, nazvanie zakazchika, pri neobkhodimosti kontaktnyy blok;
- release note s versiyey.

## 13. Pravilo white-label sborki

Esli kurs vypuskaetsya dlya neskolkikh zakazchikov, nuzhno otdelyat:

- `uchebnoe yadro` - logika, struktura, outcomes, testovaya matritsa;
- `brand shell` - logo, tsveta, nazvanie kompanii, kontakty, titulnye i finalnye slaydy.

Menyat mozhno bez peresborki metodiki:

- logotipy;
- tsvetovuyu palitru;
- nazvanie zakazchika;
- nazvanie professii na titulnom slayde, esli uchebnoe soderzhanie kursa ostayetsya tem zhe;
- kontaktnye i spravochnye bloki;
- oblozhku i closing slaydy.

Spetsialnyy sluchay:

- esli menyayetsya tolko professionalnoe nazvanie na pervoy stranitse, a outcomes, struktura i soderzhanie kursa ostayutsya bez izmeneniy, eto schitaetsya `title-only override`, a ne novym kursom.

Ne dolzhno zaviset ot klienta bez osobogo razloga:

- outcomes;
- logika moduley;
- osnovnoy slide script;
- bank voprosov i answer key, esli net klientskikh normativnykh dopolneniy.

## 14. Maintenance Loop

Posle reliza kurs ne zakryvaetsya navsegda.

Nuzhno fiksirovat:

- owner kursa;
- datu poslednego obnovleniya;
- osnovanie obnovleniya;
- planovuyu datu sleduyushchego prosmotra;
- spisok ustarevshikh slaydov ili moduley.

## 15. Plan pervoy iteratsii

Pervaya sborka sistemy:

1. Zafiksirovat `blueprint`.
2. Sobrat `definition of done`.
3. Sobrat `QA gates`.
4. Sozdat bazovye shablony.
5. Proyti pilot na odnom kurse.

## 16. Sleduyushchiy prakticheskiy shag

V ramkakh etogo proekta sleduet sobirat:

- operational workflow;
- task board;
- naming convention;
- folder architecture;
- artefact templates;
- QA rubrics;
- AI prompts.
