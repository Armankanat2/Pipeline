# Montazhnik lesov Requirement Card v0.1

## 1. Meta

- Rabochiy cluster: `HR-01`
- Working title v Pipeline: `Montazhnik_lesov`
- Exact profession title: `to verify from 534`
- Data sborki: `2026-05-14`
- Owner: `vy`
- Status: `starter regulatory card`

## 2. Program contour

- Nuzhen li `DPO` contour: `to review separately for ITR / responsible roles`
- Nuzhen li `professional training` contour: `yes, check against 438 + 534`
- Nuzhen li `OT / special safety` contour: `yes, 2464 + 782n + 883n`
- Nuzhen li otdelnyy contour dlya `ITR / responsible roles`: `yes / to verify exact role map`

## 3. Bazovye akty

| ID | Akt | Rol v karte | Istochnik |
|---|---|---|---|
| EDU-01 | Federalnyy zakon ot 29.12.2012 N 273-FZ `Ob obrazovanii v Rossiyskoy Federatsii` | obshchaya pravovaya ramka | https://publication.pravo.gov.ru/document/0001201212300007 |
| EDU-02 | Prikaz Minobrnauki Rossii ot 24.03.2025 N 266 | contour dlya `DPO`, esli on nuzhen | https://publication.pravo.gov.ru/document/0001202504230011 |
| EDU-03 | Prikaz Minprosveshcheniya Rossii ot 26.08.2020 N 438 | contour dlya professionalnogo obucheniya | https://rg.ru/documents/2020/09/14/minpros-prikaz438-site-dok.html |
| EDU-04 | Prikaz Minprosveshcheniya Rossii ot 14.07.2023 N 534 | exact profession title i svyaz s federalnym perechnem | https://rg.ru/documents/2023/08/16/minpros-prikaz534-site-dok.html |
| SAFE-01 | Postanovlenie Pravitelstva RF ot 24.12.2021 N 2464 | obuchenie po OT i proverka znaniy | https://publication.pravo.gov.ru/Document/View/0001202112290004 |
| SAFE-02 | Prikaz Mintruda Rossii ot 16.11.2020 N 782n | rabota na vysote | https://publication.pravo.gov.ru/Document/View/0001202012160036 |
| SAFE-03 | Prikaz Mintruda Rossii ot 11.12.2020 N 883n | stroitelstvo, rekonstruktsiya i remont | https://publication.pravo.gov.ru/Document/View/0001202012240062 |

## 4. Matritsa trebovaniy

| Aspekt | Est li pryamoe trebovanie v NPA | Istochnik | Izvlechennoye trebovanie | Status |
|---|---|---|---|---|
| Exact profession title | `yes` | `534` | nado izvlech exact title iz federalnogo perechnya | `to verify` |
| Program contour | `yes` | `266`, `438`, `2464` | nado razvesti `DPO`, `professional training` i `OT` contoury, a ne smeshat ikh | `confirmed at framework level` |
| Dopusk k obucheniyu | `partial` | `266`, `438`, `2464` | pravilo est, no po etomu keysu eshche ne vygruzheno v kartochku | `to extract` |
| Gruppirovka slushateley | `yes / partial` | `782n`, `883n` | po keysu est risk raznykh grupp i roley, ikh nado razvesti otdelno | `to extract` |
| Periodichnost | `partial` | `2464`, profession-specific acts | est contour monitoringa, no exact vygruzka po etomu keysu eshche ne sdelana | `to extract` |
| Minimalnyy obem / time | `unknown in current extract` | current base | v etoy kartochke eshche ne izvlechen iz NPA | `to verify` |
| Itogovaya proverka | `yes / partial` | `2464`, educational contour acts | contour proverki est, no exact karta po keysu eshche ne собрана | `to extract` |
| Dokument na vykhode | `partial` | educational contour acts | zavisit ot togo, kakoy contour programmy budet finalno vybran | `to verify` |
| Obyazatelnye tematicheskie bloki | `partial` | `2464`, `782n`, `883n` | uzhe viden safety-core: dopusk, SIZ, stop-logika, proverka pered ekspluatatsiey, rabota na vysote, montazh / demontazh | `partial` |

## 5. Predvaritelnyy pipeline-prefill

- Worker-core temi:
  - dopusk i granitsy otvetstvennosti
  - SIZ
  - podgotovka ploshchadki
  - sborka / nabor vysoty / zhestkost skhemy
  - proverka pered ekspluatatsiey
  - stop-signaly, oshibki, demontazh
- Safety-core temi:
  - rabota na vysote
  - stroitelnyy contour
  - OT training contour
- Chto dolzhno byt otdeleno dlya `ITR / responsible roles`:
  - dopusk k rabotam
  - prinyatie resheniya o prodolzhenii / ostanovke
  - organizatsionnyy kontrol
  - local regulatory contour
- Kakie local docs obyazatelno nuzhny ot zakazchika:
  - pasport konkretnoi sistemy lesov
  - local instructions / PPR / tekhkarty
  - expert validation
- Kakie kvalifikatsionnye istochniki nuzhno podnyat:
  - exact position in `534`
  - relevant professional standard, esli est

## 6. Unknowns

- exact profession title v federalnom perechne;
- exact minimalnyy obem programmy, esli on fiksiruetsya ne na etom urovne;
- exact periodichnost, esli ona zavisit ot contoura i local role;
- exact karta grupp slushateley po `worker / ITR / responsible`.

## 7. Monitoring triggers

- izmeneniya v `534` i ego aktualizatsiyakh;
- izmeneniya v `2464`;
- izmeneniya v `782n` i `883n`;
- poyavlenie / aktualizatsiya professionalnogo standarta po svyazannoy professii.
