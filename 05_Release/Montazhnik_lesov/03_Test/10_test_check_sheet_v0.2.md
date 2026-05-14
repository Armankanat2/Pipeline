# Test Check Sheet

## Status

Post-QA revise draft for modules `01-09`.

## Naznachenie

Etot artefakt nuzhen lektoru ili proveryayushchemu dlya bystroy proverki post-QA versii testovogo bloka kursa `Montazhnik lesov`.

## Parametry

- Svazannyy test pack: `10_test_pack_v0.2.md`
- Svazannyy answer key: `10_answer_key_v0.2.md`
- Kolichestvo variantov na vopros: `4`
- Tekushchiy expanded-set: `22` voprosa
- Kritichnye visual anchors: `TV-01`, `TV-02`, `TV-03`, `TV-04`, `TV-05`

## Chto proverit pervym

1. Est li v finalnom makete realnye `visual-simulated` bloki dlya `TV-01` - `TV-05`, a ne tolko tekstovye zaglushki.
2. Sootvetstvuyut li visual blocks svoim outcomes:
   - `TV-01` -> `LO-03`
   - `TV-02` -> `LO-05`
   - `TV-03` -> `LO-07`, `LO-09`
   - `TV-04` -> `LO-11`, `LO-13`
   - `TV-05` -> `LO-12`
3. Ne vykhodyat li visual blocks za generic-safe granitsu.

## Visual anchor review

| Anchor ID | Chto dolzhno byt na ekrane | Kakaya proverka dolzhna poluchitsya | Glavnyy risk esli ne sobrat |
|---|---|---|---|
| TV-01 | controllable scheme grupp elementov | raspoznavanie funktsii elementa | `LO-03` ostanetsya slishkom tekstovym |
| TV-02 | compare-card `godno / ne godno` po intake | otbrakovka problemnogo elementa | `LO-05` budet validirovatsya slishkom slabo |
| TV-03 | compare-card po rabochemu yarusu i dostupu | dopustimo / nedopustimo dlya raboty | `LO-07`, `LO-09` poteryayut worker-ponyatnost |
| TV-04 | hazard-sign scene ili red-flag board | stop / ne stop pri tipovoy oshibke | `LO-11` snova skatit'sya v abstraktsiyu |
| TV-05 | sequence-board po demontazhu | pravilnaya logika razborki | `LO-12` ostanetsya slishkom tekstovym |

## Tablichnyy format dlya bystrogo review

| ID | Tip | Vopros | Pravilnyy otvet | Outcome | Visual anchor | Chto proverit revieweru |
|---|---|---|---|---|---|---|
| Q-01 | single | S chego dolzhny nachinat'sya raboty na lesakh? | A | LO-01 | none | est li bazovyy filtr dopuska |
| Q-02 | single | Kakoy vyvod po SIZ yavlyaetsya pravilnym? | B | LO-02 | none | ne razmyt li safety-sense |
| Q-03 | situational | Chto oznachaet negotovaya ploshchadka? | V | LO-04 | none | uderzhan li blokiruyushchiy smysl |
| Q-04 | situational | Kogda montazhnik ne dolzhen reshat odin? | A | LO-13 | none | est li stop-logika i eskalatsiya |
| Q-05 | single | Chto vhodit v minimum proverki pered montazhom? | B | LO-01 | none | ne sokrashchen li minimum filtr |
| Q-06 | concept | Kak luchshe vsego obyasnit ustoychivost lesov? | V | LO-08 | none | net li lozhnykh system-specific utochneniy |
| Q-07 | visual-simulated | Na skheme `TV-01` kakaya gruppa elementov dolzhna opredelyat rabochuyu ploshchadku? | A | LO-03 | TV-01 | est li raspoznavanie po skheme, a ne tolko po tekstu |
| Q-08 | visual-simulated | Na intake-card `TV-02` kakoy element dolzhen byt srazu vyveden iz sborki? | B | LO-05 | TV-02 | est li `godno / ne godno` contour |
| Q-09 | single | Chto proverit na ploshchadke vokrug zony rabot? | G | LO-04 | none | ne srezana li opasnaya zona |
| Q-10 | situational | Kakie dva filtra nuzhny do starta montazha? | A | LO-04, LO-05 | none | svyazan li start s gotovnostyu ploshchadki i elementov |
| Q-11 | situational | Kakaya logika starta bazy i pervogo yarusa yavlyaetsya pravilnoy? | B | LO-06 | none | sokhranena li bazovaya posledovatelnost |
| Q-12 | concept | Pochemu osnovanie i nizhniy kontur nelzya "podpravit potom"? | B | LO-06, LO-08 | none | ne razmyta li logika nagruzki |
| Q-13 | single | Chto nado proverit do perekhoda k dalneyshemu naboru vysoty? | B | LO-06 | none | est li kontrolnaya tochka |
| Q-14 | situational | Kakoe narushenie pri nabore vysoty naibolee opasno? | B | LO-07, LO-08 | none | est li risk-logic modulia `06` |
| Q-15 | single | Zachem v skheme nuzhny svyazi i krepleniya? | B | LO-08 | none | generic-safe printsip zhestkosti |
| Q-16 | visual-simulated | Na compare-card `TV-03` kakoy rabochiy yarus dolzhen schitatsya nedopustimym? | B | LO-07, LO-09 | TV-03 | est li compare `dopustimo / nedopustimo` |
| Q-17 | single | Kakoe reshenie po razmeshcheniyu materialov na yaruse pravilno? | B | LO-10 | none | est li distsiplina nagruzki |
| Q-18 | situational | Kogda lesa mozhno dopustit k ekspluatatsii? | B | LO-09 | none | ne podmenen li checklist lichnym mneniem |
| Q-19 | single | Chto luchshe vsego snizhaet risk padeniya predmetov s lesov? | B | LO-10 | none | est li kontrol zony i materialov |
| Q-20 | situational | V kakoy situatsii ekspluatatsiyu nuzhno ostanovit i eskalirovat? | B | LO-09, LO-10, LO-13 | none | finalnaya stop-logika |
| Q-21 | visual-simulated | Na hazard-scene `TV-04` kakoy priznak trebuet nemedlennogo stopa? | B | LO-11, LO-13 | TV-04 | est li hazard recognition, a ne abstraktnyy tekst |
| Q-22 | visual-simulated | Na sequence-board `TV-05` kakaya logika demontazha yavlyaetsya pravilnoy? | B | LO-12 | TV-05 | est li sequence logic po demontazhu |

## Reshenie po gotovnosti

- Test contour gotov k povtornomu targeted QA: `yes, posle sborki minimum viable visuals`
- Test contour gotov k pilotu / release: `no`
- Chto nuzhno proverit sleduyushchim:
  - realno li sobrany `TV-01` - `TV-05`;
  - ne razoshlas li voprosnaya logika s finalnym deckom;
  - ne voznikli li lozhnye system-specific utochneniya v visual build.
