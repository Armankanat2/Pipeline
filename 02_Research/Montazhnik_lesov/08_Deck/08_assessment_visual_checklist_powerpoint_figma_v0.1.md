# Assessment Visual Checklist PowerPoint Figma v0.1

## Status

- Kurs: `Montazhnik lesov`
- Kod: `ML`
- Coverage: `A-44`, `A-45`, `A-46`, `A-47`, `A-48`
- Data sborki: `2026-05-14`
- Owner: vy
- Rezhim: `practical build checklist`

## Naznachenie

Etot checklist nuzhen ne dlya razmyshleniya, a dlya realnoy sborki assessment visual package v:

- `PowerPoint`
- `Figma`

On dolzhen pomoch:

- ne ostavit `TV-01` - `TV-05` na urovne nazvaniy;
- bystro sobrat `A-44` - `A-48`;
- ne razyezzhat'sya po visual semantics;
- ne razmyt generic-safe granitsu.

## Chto vkhodit v etot build

- `A-44` recognition board
- `A-45` intake compare-card
- `A-46` working tier compare-board
- `A-47` hazard board
- `A-48` demolition sequence board

## 1. Podgotovka fayla

### Dlya `PowerPoint`

- [ ] Sozdat novyy rabochiy fayl pod assessment build
- [ ] Zadat format slayda `16:9`
- [ ] Sozdat otdelnyy page / section `ML Assessment Visuals`
- [ ] Sozdat vremennoe imya fayla v logike `ML_08_assessment_visual_build_v0.1.pptx`

### Dlya `Figma`

- [ ] Sozdat novyy page `ML Assessment Visuals`
- [ ] Sozdat `5` frames pod `A-44` - `A-48`
- [ ] Vklyuchit layout grid
- [ ] Otdelit sektsii `Shell`, `Assets`, `Scratch`

## 2. Zafiksirovat minimum shell

- [ ] Odin title style
- [ ] Odin label style
- [ ] Odin compare logic
- [ ] Odin hazard-signal style
- [ ] Odin sequence-step style
- [ ] Odin blocked / no-go accent

## 3. Sobrat `A-44`

- [ ] Sdelat `3` yavno razlichimye gruppy elementov
- [ ] Vyvesti rabochuyu ploshchadku kak otdelnuyu rol
- [ ] Ne prevratit board v slovar
- [ ] Schityvaetsya li raspredelenie roley bez dlinnykh podpisey
- [ ] Mozhno li po etomu board otvetit na `Q-07`

## 4. Sobrat `A-45`

- [ ] Sdelat compare `godno / ne godno`
- [ ] Pokazat minimum `1-2` markera defekta
- [ ] `No-go` schityvaetsya bez speaker notes
- [ ] Net li oshchushcheniya "pochti godno"
- [ ] Mozhno li po etomu board otvetit na `Q-08`

## 5. Sobrat `A-46`

- [ ] Sdelat compare `dopustimo / nedopustimo`
- [ ] Pokazat logiku nastila i dostupa
- [ ] Ne mesheshvat vse risk-faktory v odin slayd
- [ ] `Blocked` chitaetsya mgnovenno
- [ ] Mozhno li po etomu board otvetit na `Q-16`

## 6. Sobrat `A-47`

- [ ] Sdelat odnu yavnuyu hazard scene
- [ ] Pokazat minimum `2-3` hazard signs
- [ ] Yavnoe reshenie `stop / ustranit / potom prodolzhit`
- [ ] Net li dekorativnogo danger-style bez metodicheskoy funktsii
- [ ] Mozhno li po etomu board otvetit na `Q-21`

## 7. Sobrat `A-48`

- [ ] Sdelat minimum `4` sequence shaga
- [ ] Pokazat no-go otklonenie
- [ ] Yavno schityvaetsya `bez sbrosa vniz`
- [ ] Ne prevrashchaetsya li slayd v obshchuyu "pamyatku ni o chem"
- [ ] Mozhno li po etomu board otvetit na `Q-22`

## 8. Vnutripaketnaya proverka

- [ ] `A-44` - `A-48` vygladyat kak odin semeystvo
- [ ] Vezde odin i tot zhe signal `blocked / no-go`
- [ ] Vezde odin i tot zhe signal `hazard`
- [ ] Vezde odin i tot zhe ritm podpisey i markerov
- [ ] Net slayda, kotoryy trebuet obyazatelnogo realnogo foto dlya ponyatnosti

## 9. Proverka na generic-safe discipline

- [ ] Net system-specific uzlov bez istochnika
- [ ] Net pasportnykh chisel
- [ ] Net zayavleniy, trebuyushchikh expert validation zdes i seychas
- [ ] Risk-logika ostayetsya chestnoy i ne "umneye", chem istochniki

## 10. Proverka na test-validity

- [ ] `A-44` deystvitelno podderzhivaet `Q-07`
- [ ] `A-45` deystvitelno podderzhivaet `Q-08`
- [ ] `A-46` deystvitelno podderzhivaet `Q-16`
- [ ] `A-47` deystvitelno podderzhivaet `Q-21`
- [ ] `A-48` deystvitelno podderzhivaet `Q-22`

## 11. Export-check

### Dlya `PowerPoint`

- [ ] Prosmotret v rezhime pokaza
- [ ] Sdelat testovy export v `PDF`
- [ ] Sravnit, ne propali li blocked-signals i labels

### Dlya `Figma`

- [ ] Proverit frames v presentation scale
- [ ] Sdelat export `PNG` ili `PDF`
- [ ] Proverit, ne slomalas li chitaemost markerov

## 12. Definition of done

Assessment visual batch mozhno schitat sobrannym, esli:

- [ ] Est `5` realnykh controllable visual blocks
- [ ] Vse `5` mozhno svyazat s testovymi voprosami
- [ ] Visual logic schityvaetsya bez avtorskoy rasshifrovki
- [ ] Generic-safe granitsa sokhranena
- [ ] Paket gotov k `09_targeted_test_validity_review_v0.1.md`

## 13. Chto delat srazu posle batch

- [ ] Zafiksirovat, kakie assets okazalis samymi slabymi
- [ ] Otmetit, gde nuzhen eshche odin revise-cycle
- [ ] Pereyti k targeted QA po test-validity
