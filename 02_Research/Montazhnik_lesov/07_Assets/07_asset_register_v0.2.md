# Asset Register

## Status

- Versiya: `v0.2`
- Nazvanie kursa: `Montazhnik lesov`
- Kod kursa: `ML`
- Data sborki registra: `2026-05-13`
- Owner: vy
- Rol etoy iteratsii: rasshirit coverage s `01-19` do `01-43` i perevesti asset-layer v bolee production-prigodnuyu logiku

## Chto izmenilos v `v0.2`

- coverage rasshiren na slaydy `20-43`;
- registr priblizhen k shablonu `Asset_Register_Template_v1.md`;
- assety razdeleny na dve gruppy:
  - `mozhno sobrat vnutri prezentatsii / vektorom / skhemoy uzhe seychas`;
  - `nuzhny vneshnie foto ili staged-primery`;
- snizhen zavisimost moduli `05-07` ot sluchaynoy foto-bazy;
- sokhranena tekushchaya struktura `Pipeline`: bez perestroiki script, QA ili release-kontura.

## Production reshenie dlya etoy versii

Glavnaya logika sborki:

1. Moduli `03`, `05`, `06`, `07` delat preimushchestvenno `scheme-first`, a ne `photo-first`.
2. Realnye foto ostavit tam, gde oni dayut unikalnuyu pedagogicheskuyu polzu:
   - `SIZ`
   - `ploshchadka`
   - `godno / ne godno`
   - `bezopasno / opasno`
3. Vse kritichnye opornye vizualy, zavisyashchie ot logiki, a ne ot "krasivogo kadra", stroit kak sobstvennye upravlyaemye skhemy.

Eto ne lomaet kurs, a naoborot delaet ego bolee proizvodimym.

## Reestr assets

| ID | Tip | Opisanie | Istochnik | Prava / legalnost | Redaktiruemost | Kachestvo / razreshenie | Status | Gde ispolzuetsya | Primechanie |
|---|---|---|---|---|---|---|---|---|---|
| A-01 | photo | Hero-vizual po rabote na lesakh s korrektnoy organizatsiey rabot | nado nayti ili zaprosit | to clarify | flatten | unknown | missing | slayd `01` | silnyy startovyy kadr bez yavnykh narusheniy TB |
| A-02 | scheme | Lineynaya schema `ot dopuska k demontazhu` | sobrat vnutri prezentatsii | own after build | editable | print-safe | draft | slayd `02` | ne trebuet vneshnego istochnika |
| A-03 | scheme | Tablitsa `Mozhno samostoyatelno / Nuzhna eskalatsiya` | sobrat vnutri prezentatsii | own after build | editable | print-safe | draft | slayd `03` | content-first asset |
| A-04 | scheme | Schema `Dopusk -> SIZ -> Ploshchadka -> Montazh` | sobrat vnutri prezentatsii | own after build | editable | print-safe | draft | slayd `04` | bazovaya lineynaya logika modulia `02` |
| A-05 | icon set | Nabor ikonok dlya cheklista dopuska | bezopasnyy unified icon set | to clarify | editable | print-safe | draft | slayd `05` | nuzhny 5 prostykh ikonok v odnom stile |
| A-06 | scheme / photo | Komplekt SIZ s podpisiami | predpochtitelno sobrat svoyu skhemu; foto tolko kak fallback | own after build / to clarify | editable | print-safe | draft | slayd `06` | v `v0.2` pereveden v controlled scheme-first asset |
| A-07 | photo pair | `pravilno / nepravilno` po ekipirovke rabotnika | nado nayti ili staged-primer | to clarify | flatten | unknown | missing | slayd `07` | vizual bez pravovykh riskov i s ochevidnymi oshibkami |
| A-08 | card / scene | Keys po dopusku k rabote s 4-5 usloviyami | sobrat vnutri prezentatsii | own after build | editable | print-safe | draft | slayd `08` | scenario-card, ne trebuet storonnego foto |
| A-09 | scheme | Obshchaya schema lesov s gruppami elementov | sobstvennaya redaktsionnaya skhema po proverennym istochnikam | own after build | editable | print-safe | draft | slayd `09` | v `v0.2` luchshe pererisovat, a ne zhdat gotovuyu kartinku |
| A-10 | scheme | Podpisannaya schema elementov lesov | sobstvennaya skhema po proverennym istochnikam / pasportu | own after build | editable | print-safe | draft | slayd `10` | odin iz glavnykh opornykh visualov kursa |
| A-11 | diagram | Diagramma `osnovanie + geometriya + kreplenie` | sobrat vnutri prezentatsii | own after build | editable | print-safe | draft | slayd `11` | triadnaya opornaya formula |
| A-12 | comparison scheme | Vizual `ustoychivo / opasno` po skheme konstruktsii | sobrat na osnove A-09 i A-10 | own after build | editable | print-safe | draft | slayd `12` | ne zhit na foto, a derzhat v upravlyaemoy skheme |
| A-13 | scheme | Schema bez podpisey dlya mini-zadaniya po elementam | proizvodnyy asset iz A-10 | own after build | editable | print-safe | draft | slayd `13` | uchit raspoznavaniyu, a ne dekoru |
| A-14 | photo | Foto ploshchadki s risk-zonami | nayti realnyy primer ili bezopasnoe uchebnoe foto | to clarify | flatten | unknown | missing | slayd `14` | odin iz vazhnykh real-world assetov |
| A-15 | icon set | Ikonki dlya cheklista ploshchadki | bezopasnyy unified icon set | to clarify | editable | print-safe | draft | slayd `15` | dolzhny sovpadat po stilyu s A-05 |
| A-16 | photo pair | Para `gotovo / ne gotovo` po ploshchadke | nado nayti ili staged-primer | to clarify | flatten | unknown | missing | slayd `16` | odin iz samykh poleznykh visualov modulia `04` |
| A-17 | photo set | Nabor elementov `godno / ne godno` | nado nayti foto realnykh elementov lesov | to clarify | flatten | unknown | missing | slayd `17` | kriticheski nuzhen dlya priemki elementov |
| A-18 | card / photo set | Mini-keys po povrezhdennym i spornym elementam | sobrat iz A-17 + tekstovye kartochki | own after build / to clarify | partial | unknown | missing | slayd `18` | zavisit ot nalichiya A-17 |
| A-19 | scheme | Finalnaya schema `Ploshchadka + Elementi = Start montazha` | sobrat vnutri prezentatsii | own after build | editable | print-safe | draft | slayd `19` | final modulia `04` |
| A-20 | scheme | Schema `Ploshchadka -> Opory -> Pervyy yarus -> Kontrol geometrii` | sobrat vnutri prezentatsii | own after build | editable | print-safe | draft | slayd `20` | vhod v modul `05` |
| A-21 | scheme | Opory i nizhniy kontur s markerami kontrolya | sobrat vnutri prezentatsii | own after build | editable | print-safe | draft | slayd `21` | foundation-first visual, luchshe skhema chem foto |
| A-22 | sequence | Poshagovaya lenta `opory -> stoiki -> gorizontalnye elementi -> pervye svyazi` | sobrat vnutri prezentatsii | own after build | editable | print-safe | draft | slayd `22` | kontentnaya posledovatelnost bez vneshnikh zavisimostey |
| A-23 | diagram | Tri markera `vertikalnost / geometriya / svyazi` | sobrat vnutri prezentatsii | own after build | editable | print-safe | draft | slayd `23` | mozhno brat v worker-materialy |
| A-24 | comparison scheme | `mozhno / nelzya` po starte bazy | sobrat kak skhemnoe sravnenie | own after build | editable | print-safe | draft | slayd `24` | ne trebuet realnogo foto, esli skhema chestnaya i simmetrichnaya |
| A-25 | scenario card | Keys `Mozhno li prodolzhat start?` | sobrat vnutri prezentatsii | own after build | editable | print-safe | draft | slayd `25` | tipovaya scenario-card |
| A-26 | scheme | Schema `nabor yarusa -> kontrol -> kreplenie -> dalneyshee narashchivanie` | sobrat vnutri prezentatsii | own after build | editable | print-safe | draft | slayd `26` | opornyy visual modulia `06` |
| A-27 | sequence | Poshagovaya schema nabora sleduyushchego yarusa | sobrat vnutri prezentatsii | own after build | editable | print-safe | draft | slayd `27` | mozhno delat kak vertikalnuyu lesenku |
| A-28 | comparison | Nastil `polnyy / nepolnyy` | predpochtitelno sobrat kak schematic compare; foto optionalno | own after build / to clarify | editable / flatten | print-safe / unknown | draft | slayd `28` | dlya pervoy iteratsii dostatochno upravlyaemogo sravneniya |
| A-29 | scheme | Rabochiy yarus s markerami zashchity | sobrat vnutri prezentatsii | own after build | editable | print-safe | draft | slayd `29` | vydelit ograzhdenie i bortovye elementi |
| A-30 | comparison | `bezopasnyy dostup / opasnaya improvizatsiya` | sobrat kak skhema ili staged-primery | own after build / to clarify | editable / flatten | print-safe / unknown | draft | slayd `30` | na starte mozhno sobrat bez foto-zavisimosti |
| A-31 | scheme | Skhema lesov s tochek krepleniya i diagonaley | sobrat vnutri prezentatsii po proverennym istochnikam | own after build | editable | print-safe | draft | slayd `31` | odin iz samykh vazhnykh teaching visuals kursa |
| A-32 | comparison scheme | Raspredelenie nagruzki `dopustimo / opasno` | sobrat vnutri prezentatsii | own after build | editable | print-safe | draft | slayd `32` | luchshe shemno, chtoby ne zaviset ot sluchaynogo foto |
| A-33 | comparison scheme | `ustoychivo / opasno` pri nabore yarusov | sobrat vnutri prezentatsii | own after build | editable | print-safe | draft | slayd `33` | red flags dolzhny byt markirovany, a ne spryatany |
| A-34 | scenario card | `Prodolzhit / ostanovit / eskalirovat` | sobrat vnutri prezentatsii | own after build | editable | print-safe | draft | slayd `34` | production-stabilnyy format |
| A-35 | scheme | `Yarus -> Zashchita -> Kreplenie -> Kontrol` | sobrat vnutri prezentatsii | own after build | editable | print-safe | draft | slayd `35` | summary modulia `06` |
| A-36 | scheme | `Sborka -> Proverka -> Dopusk k ekspluatatsii` | sobrat vnutri prezentatsii | own after build | editable | print-safe | draft | slayd `36` | vazhnyy metodicheskiy razdelitel |
| A-37 | checklist board | `Uzly / Nastily / Ograzhdeniya / Dostup / Obshchee sostoyanie` | sobrat vnutri prezentatsii | own after build | editable | print-safe | draft | slayd `37` | srazu podkhodit dlya worker-materiala |
| A-38 | status board | `dopustit / ne dopustit` | sobrat vnutri prezentatsii | own after build | editable | print-safe | draft | slayd `38` | ne nuzhdaetsya v realnom foto |
| A-39 | comparison | Yaruz `dopustimo / opasno` po nagruzke | sobrat kak skhemnoe sravnenie | own after build | editable | print-safe | draft | slayd `39` | ne ukhodyt v tochnye chisla bez pasporta sistemy |
| A-40 | comparison | `bezopasno / opasno` po peremeshcheniyu | sobrat kak route-compare | own after build | editable | print-safe | draft | slayd `40` | trayektoriya i marshrut vazhnee foto |
| A-41 | hazard scene | Zona padeniya predmetov i istochnik riska naverkhu | sobrat kak hybrid: skhema + optional photo later | own after build / to clarify | editable / partial | print-safe / unknown | draft | slayd `41` | na pervoy iteratsii mozhno sobrat bez fotografii |
| A-42 | decision cards | `dopustit / ne dopustit / eskalirovat` | sobrat vnutri prezentatsii | own after build | editable | print-safe | draft | slayd `42` | glubokiy keys bez vizualnogo peregruza |
| A-43 | algorithm scheme | `Proverka -> Dopusk -> Rezhim raboty -> Stop pri riskakh` | sobrat vnutri prezentatsii | own after build | editable | print-safe | draft | slayd `43` | summary modulia `07`, podkhodit dlya short-versii |

## Rekomenduemye statusy

- `approved` - mozhno ispolzovat v release
- `draft` - material est ili ego mozhno kontrolliruemo sobrat v etoy iteratsii
- `replace` - material ne podkhodit, nuzhna zamena
- `missing` - material nuzhen, no ego poka net

## Pokrytie kursa

- Instrumenty: pokrytie vse eshche slaboe po realnym foto elementov, no schema-layer ukreplen
- Materialy: bazovye skhemy dlya moduley `03`, `05`, `06`, `07` teper mozhno sobirat bez ozhidaniya vneshney foto-bazy
- Etapy raboty: marshrut `dopusk -> ploshchadka -> montazh -> nabor vysoty -> proverka -> ekspluatatsiya` teper zakryt assetno po slaydam `01-43`
- Tipovye oshibki: nuzhny realnye compare-visuals po `SIZ`, `ploshchadke`, `elementam`, no chast sravneniy uzhe mozhno sobrat shemno
- TB: opornye safety-vizualy dlya `worker`-podachi uzhe mogut byt sbiraemy vnutri kursa
- Prakticheskie situatsii: scenario-card layer sobran stabilno i ne zavisit ot sluchaynykh kartinok

## Brand assets

- Logotipy: poka net
- Tsvetovaya palitra: poka net
- Klientskie titulnye / finalnye slaydy: poka net
- Kontaktniy blok: poka net
- Design-system tokens / pravila: budut zafiksirovany posle vybora finalnogo kontsepta
- Status gotovnosti brand-shell: `generic only`

## Production prioritet

### Prioritet 1: sobirat uzhe seychas vnutri dizayn-sistemy

- `A-02`, `A-03`, `A-04`, `A-08`, `A-09`, `A-10`, `A-11`, `A-12`, `A-13`, `A-19`
- `A-20` - `A-43`, za isklyucheniem foto-zavisimykh sravneniy, kotorye mozhno derzhat kak schematic draft

### Prioritet 2: realnye foto i staged-primery, kotorye silno usilyat kurs

- `A-01`
- `A-07`
- `A-14`
- `A-16`
- `A-17`
- `A-18`

### Prioritet 3: unifitsirovannyy icon-family

- `A-05`
- `A-15`

## Problemy po assets

- Chto ne khvataet:
  - realnoy foto-bazy po `SIZ`, ploshchadke i elementam;
  - staged-primera `pravilno / nepravilno` bez pravovykh riskov;
  - konkretnogo pasporta sistemy dlya bolee predmetnykh tekhnicheskikh visualov.
- Chto slabogo kachestva:
  - poka net gotovykh finalnykh visualov; est tolko ponyatnaya production-logika sborki.
- Chto trebuet soglasovaniya:
  - foto s realnykh obektov;
  - skhemy proizvoditelya;
  - fonty i icon sets dlya finalnogo release.
- Chto nuzhno pererisovat ili sobrat dizaynerski:
  - `A-06`, `A-09`, `A-10`, `A-11`, `A-12`, `A-20` - `A-43`
- Kakie assets ne godyatsya dlya pechati poka ne provereny:
  - lyubye sluchaynye web-foto;
  - slishkom tonkie skhemy bez testovoy pechati;
  - QR-i compare-visuals bez proverki masshtaba.

## Graphic risk note

S tocki zreniya proizvodstva grafiki glavnaya ugroza byla v tom, chto kurs silno zavisel ot nenashel'shikh foto.

V `v0.2` eto oslableno:

- opornye moduli teper mogut derzhat'sya na sobstvennykh shemakh;
- photo-layer pereveden iz statusa `blokiruet vse` v status `silno usilivaet, no ne paralizuet sborku`;
- kurs mozhno prodolzhat sobirat bez polomki struktury `Pipeline`.

## Reshenie po gotovnosti

- Asset pack gotov k sborke: `partial / yes dlya controlled draft production`
- Chto nado dosobrat pered production:
  - sobrat sobstvennyy scheme-layer dlya `A-09`, `A-10`, `A-11`, `A-12`, `A-20` - `A-43`;
  - dozakryt khotya by chast foto-layera: `A-06` ili ego vektornyy analog, `A-14`, `A-16`, `A-17`;
  - opredelit odin bezopasnyy icon-family;
  - sverit print-prigodnost s `A3 / A5` contour.
- Chto mozhno delat dalshe bez polomki struktury:
  - pereyti k sborke controlled draft visual system dlya slaydov `20-43`;
  - zatem vernutsya k `QA` s chestnoy pometkoy, chto photo-layer eshche ne finalen.
