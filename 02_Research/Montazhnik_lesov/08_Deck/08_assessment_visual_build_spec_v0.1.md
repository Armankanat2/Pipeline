# Assessment Visual Build Spec v0.1

## Status

- Kurs: `Montazhnik lesov`
- Kod: `ML`
- Data sborki: `2026-05-14`
- Owner: vy
- Coverage etoy iteratsii: `A-44` - `A-48`
- Status: `active working draft`

## Naznachenie

Etot dokument nuzhen, chtoby pereyti ot:

- `10_test_pack_v0.2.md`
- `07_asset_register_v0.3.md`
- `09_qa_report_v0.1.md`

k realnoy sborke assessment-oriented visual blocks.

On otvechaet na vopros:

- kak imenno sobirat `A-44` - `A-48`;
- v kakoy logike ikh sobirat;
- chto v etoy iteratsii schitat dostatochnym rezultatom;
- po kakim kriteriyam ponimat, chto targeted QA uzhe mozhno nachinat.

## Chto schitaetsya etim buildom

Assessment visual build - eto ne finalnyy slide deck i ne finalnyy branded shell.

Ego zadacha:

- dat testu `v0.2` realnye controllable visuals, a ne tolko nazvaniya anchorov;
- usilit validnost proverki po `LO-03`, `LO-05`, `LO-07`, `LO-11`, `LO-12`;
- proverit, mozhno li zakryt etot QA-gap bez ukhoda v system-specific "tochnosti";
- poluchit minimalnyy, no proveryaemyy visual bridge mezhdu testom i asset-layerom.

## Granitsy etoy iteratsii

V etu sborku vkhodyat:

- `A-44`
- `A-45`
- `A-46`
- `A-47`
- `A-48`

Ne vkhodyat poka:

- finalnyy branded polish;
- photo-real replacement;
- client-specific adaptation;
- multilingual redraw;
- system passport backfill;
- povtornyy formalnyy QA.

## Svyaz s test-validity

| Asset ID | Test anchor | Outcome coverage | Zachem nuzhen |
|---|---|---|---|
| `A-44` | `TV-01` | `LO-03` | perevesti raspoznavanie elementov iz abstraktnogo teksta v controllable recognition-board |
| `A-45` | `TV-02` | `LO-05` | dat intake-check po `godno / ne godno`, ne zavisyashchiy ot sluchaynogo foto |
| `A-46` | `TV-03` | `LO-07`, `LO-09` | proverit worker-ponyatnost `dopustimo / nedopustimo` po yarusu i dostupu |
| `A-47` | `TV-04` | `LO-11`, `LO-13` | materializovat red flags i stop-signaly dlya hazard recognition |
| `A-48` | `TV-05` | `LO-12` | dat sequence-logic dlya demontazha bez system-specific detalei |

## Poryadok sborki

### Etap 1. Sobrat recognition / compare foundation

Snachala sobirat:

1. `A-44`
2. `A-45`
3. `A-46`

Pochemu:

- oni zakryvayut samyy pryamoy gap formalnogo QA;
- oni luchshe vsego sobirayutsya kak scheme-first / compare-first blocks;
- imenno oni pokazyvayut, rabotaet li post-QA strategiya voobshche.

### Etap 2. Sobrat hazard / sequence layer

Potom sobirat:

4. `A-47`
5. `A-48`

Pochemu:

- zdes metodicheskaya tochnost vazhnee dekorativnoy grafiki;
- ikh nado strogo proverit na generic-safe discipline;
- oni zavisyat ot uzhe sobranogo recognition / compare vocabulary.

## Visual vocabulary etoy sborki

Vo vsem pakete nuzhno derzhat odin i tot zhe slovar:

- `recognition target`
- `good / no-go`
- `allowed / blocked`
- `hazard sign`
- `step / sequence`
- `stop / escalate`

Esli etot slovar ne odinakovyy, build schitat neuspevnym.

## Asset-by-asset production notes

### `A-44` Recognition board

- Tip: `recognition scheme`
- Test anchor: `TV-01`
- Opora: `A-10`, `A-13`
- Tsel: pokazat gruppy elementov ne po nazvaniyam radi nazvaniy, a po roli v sisteme

Chto dolzhno byt na ekrane:

- minimum `3` gruppy:
  - rabochaya ploshchadka
  - zhestkost / svyazi
  - kreplenie / fiksatsiya
- yavnaya vizualnaya differentsiatsiya mezhdu gruppami
- minimum teksta

Chego ne delat:

- ne prevrashchat slayd v glossary sheet;
- ne risovat desyatki melkikh podpisey;
- ne zavodit system-specific detali bez istochnika.

### `A-45` Intake compare-card

- Tip: `compare-card`
- Test anchor: `TV-02`
- Opora: `A-17`, `A-18`
- Tsel: dat odin proveryaemyy `godno / ne godno` contour

Chto dolzhno byt na ekrane:

- levyy / pravyy compare
- minimum `1-2` markerov defekta
- signal `ne v sborku` schityvaetsya bez dlinnykh podpisey

Chego ne delat:

- ne delat "pochti godno";
- ne uhodit v foto-zavisimost;
- ne privyazyvat k odnomu brendu ili modeli.

### `A-46` Working tier compare-board

- Tip: `compare-board`
- Test anchor: `TV-03`
- Opora: `A-28`, `A-30`, `A-33`
- Tsel: bystro schityvat `dopustimo / nedopustimo`

Chto dolzhno byt na ekrane:

- polnyy / nepolnyy nastil
- bezopasnyy / opasnyy dostup
- odin blocked-signal bez pereizbytka

Chego ne delat:

- ne uhodit v normativnye chisla bez pasporta;
- ne meshat nagruzku, dostup i kreplenie v odin khaos;
- ne podmenyat vizual tekstovym spiskom.

### `A-47` Hazard board

- Tip: `hazard board`
- Test anchor: `TV-04`
- Opora: novyy controlled draft visual
- Tsel: prochityvat red flag i signal dlya stopa

Chto dolzhno byt na ekrane:

- odna problemnaya situatsiya
- minimum `2-3` hazard signs
- yavnoe reshenie `stop / ustranit / potom prodolzhit`

Chego ne delat:

- ne delat dekorativnyy "danger slide";
- ne razmyvat red flag v mnogoslovii;
- ne stroit scenu na photorealism treboyushchem novykh prav.

### `A-48` Demolition sequence board

- Tip: `sequence board`
- Test anchor: `TV-05`
- Opora: novyy controlled draft visual
- Tsel: pokazat sequence logic dlya bezopasnogo demontazha

Chto dolzhno byt na ekrane:

- minimum `4` shaga
- yavnoe no-go otklonenie
- logika `kontrol zony + posledovatelnost + bez sbrosa vniz`

Chego ne delat:

- ne delat eto "obratnoy sborkoy" bez otdelnoy safety-ramki;
- ne dobavlyat pasportnye uzly bez dokazatelstv;
- ne obeshchat universalnost tam, gde est system-specific risk.

## Definition of done dlya etogo build

Assessment visual build mozhno schitat dostatochno sobrannym, esli:

1. u vsekh `5` assets est ponyatnaya controllable kompozitsiya;
2. kazhdyy asset mozhno ssylat na odin ili neskolko test-voprosov iz `10_test_pack_v0.2.md`;
3. visual-signal chitaetsya bez obyazatelnogo ustnogo kommentariya avtora;
4. ni odin asset ne trebuet obyazatelnogo realnogo foto dlya ponyatnosti;
5. generic-safe granitsa ne narushena;
6. targeted QA mozhno nachinat bez "zaglushek vmesto vizualov".

## Chto ne pytatsya zakryt v etoy iteratsii

- finalnyy client shell;
- finalnuyu pechatnuyu adaptatsiyu;
- photo-real final layer;
- multilingual packaging;
- expert validation po system passport;
- release-ready confidence.

## Sleduyushchiy shag posle etogo build

Posle sborki `A-44` - `A-48` logichno delat:

1. `09_targeted_test_validity_review_v0.1.md`
2. zatem proverit, nuzhen li eshche odin revise-cycle
3. potom reshat, mozhno li dvigat `pilot-ready contour`

## Reshenie po gotovnosti

- Spec sobran: `yes`
- Mozhno li po nemu nachinat realnuyu sborku: `yes`
- Lomaet li on strukturu `Pipeline`: `no`
