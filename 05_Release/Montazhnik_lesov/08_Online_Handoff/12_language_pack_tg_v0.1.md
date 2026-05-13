# Language Pack TG

## Obshchaya informatsiya

- Nazvanie kursa: `Montazhnik lesov`
- Kod kursa: `ML`
- Versiya: `v0.1`
- Yazyk paketa: `tg`, latin draft
- Owner: vy
- Status: `starter draft / needs native review`
- Bazovyy etalon: `ru`
- Svyazannyy `master transcript`: `02_Research/Montazhnik_lesov/06_Script/06_master_transcript_v0.1.md`
- Svyazannyy `multilang glossary`: `02_Research/Montazhnik_lesov/01_Brief/01_terminology_glossary_multilang_v0.1.md`
- Svyazannyy `narration pack`: `12_narration_pack_v0.1.md`

## Rol language pack

- Zachem sobiraetsya paket: podgotovit vtoroy `language add-on` poverkh bazovogo `ru` release
- Dlya kakogo delivery-scenariya on nuzhen: `audio-first`, `subtitles`, `gateway language switch`, `QR + direct link`
- Dlya kakogo track on sobiraetsya: `worker`
- Obyazatelen li etot yazyk v bazovom pakete: `no`, tolko po zaprosu zakazchika

## Coverage

- Chto uzhe mozhno pokryt polnostyu: `ML-M01-S01` - `ML-M04-S01`
- Chto pokryto chastichno: `ML-M05-S01` - `ML-M07-S01`
- Chto poka ne pokryto: moduli `08-09`, finalnyy test contour, asset-localization
- Gde est `asset-bound` risk: `SIZ`, skhema elementov, chast visual labels po `05-07`

## Language Rules

- `ru` ostayotsya `source of truth`
- glossary-lock terminy nelzya menyat bez review
- `dopusk`, `SIZ`, `ustoychivost` i drugie safety-core terminy dolzhny proverat'sya otdelno
- tekst v kartinkakh ne perevoditsya v etoy iteratsii

## Segment Blocks

| Segment ID | TG on-screen summary | TG voiceover draft | TG micro-check draft | Reference note TG | Status |
|---|---|---|---|---|---|
| ML-M01-S01 | kurs dar borai qarorhoi bexatar va hadi naqqshost | In kurs dar borai qabuli qarorhoi bexatar hangomi kor dar lesoho ast. On mantiq medihad, ki dar kadom holat montazhchi xud kor karda metavonad va dar kadom holat boyad korro man karda ba shaxsi masul xabar dihad. | `Bexatari az kujo sar meshavad: az surati kor yo az qarori durust?` | glossary doir ba naqqsh va javobgari | `draft` |
| ML-M02-S01 | korho az dopusk va sanjish cap meshavand | Kor dar lesoho az asbob ne, balki az dopusk, SIZ va sanjishi sharoit sar meshavad. Agar inho naboshad, xato pesh az montazh paydo meshavad. | `Agar brigada tayyor boshad, ammo sharoit sanjida nashuda boshad, korro sar kardan mumkin ast?` | izoh doir ba dopusk va sharthoi oghoz | `draft` |
| ML-M02-S02 | SIZ boyad baroi kor muvofiq boshad | SIZ faqat doshta shudanash kofi nest. On boyad baroi kor muvofiq boshad va korgar boyad bo tavri durust jihoz yobaad, to kor bo risk sar nashavad. | `Kudomash muhimtar ast: budani SIZ dar hujjat yo muvofiqati voqei on baroi kor?` | havolaho doir ba SIZ va xatohoi mamul | `draft` |
| ML-M03-S01 | leso hamchu sistema meistojad | Leso ba yagon elementi alohida ustuvor nameshavad. Ustoychivost faqat hamchu sistema paydo meshavad: takya, payvastagiho, krepleniya va geometriya boyad yakjo kor kunand. | `Agar yak element odii namoyon boshad, mumkin ast tamomi konstruktsiya boetimod hisob shavad?` | glossary elementho va skhema | `draft` |
| ML-M04-S01 | xatogiro pesh az montazh boyad man kard | Pesh az yigish maydoncha va elementho boyad az filter guzaran. Zonai xatarnok, asosi nomuvofiq yo elementi osebdida boyad korro pesh az aghozi yarusi avval man kunad. | `Agar yake az filterho naguzarad, mumkin ast yigishro sar kard?` | photo guide va scenario `tayyor / tayyor nest` | `draft` |
| ML-M05-S01 | baza hama korhoi badiro muayyan mekunad | Baza va yarusi avval muayyan mekunand, ki yigishi badi nazoratshuda meshavad yo ne. Xatohoi ibtidoi bad az on gum nameshavand, balki bo tamomi konstruktsiya kalon meshavand. | `Kudomash xatarnoktar ast: tez kardani start yo sanjishi baza va geometriya?` | pasport sistemy later | `partial` |
| ML-M06-S01 | balandi faqat bo nazorat afzuda meshavad | Hangomi ziyod kardani balandi faqat ilova kardani elementho kofi nest. Saxthii skhema, krepleniya, nastil va dastresii bexatar boyad yakjo nazorat shavand. | `Agar saxthii skhema va krepleniya tasdiq nashuda boshad, mumkin ast ba bolo davom dod?` | video va kreplenie note later | `partial` |
| ML-M07-S01 | yigish hanuz ruxsati istifoda nest | Badi yigish tayyorii ba ekspluatatsiya hatman sanjida meshavad. Nagruzka, marshruthoi harakat va manho boyad pesh az ogozi kor ravshan boshand. | `Pesh az ruxsat dodan ba ekspluatatsiya chi chizho boyad sanjida shavand?` | checklist ekspluatatsiya later | `partial` |

## Glossary-linked Terms

| Term ID | RU master | TG draft equivalent | Usage note | Review status |
|---|---|---|---|---|
| ML-T01 | `dopusk k rabotam` | `dopusk / ijosati kor va filtri tayyori` | luchshe ne svodit tolko k odnomu slovu `ijosat` | `draft` |
| ML-T02 | `SIZ` | `SIZ / vositahoi himoyai shakhsi` | abbreviatura trebuet audio review | `draft` |
| ML-T03 | `ostanovit raboty` | `korro man kun` | dolzhno zashchit kak stop-komanda | `draft` |
| ML-T04 | `ustoychivost` | `ustoychivost / poydorii konstruktsiya` | proverit, kakuyu formu auditoriya ponimaet luchshe | `draft` |
| ML-T05 | `proverka pered ekspluatatsiey` | `sanjish pesh az ekspluatatsiya` | ne smeshivat so sborkoy | `draft` |
| ML-T06 | `opasnaya zona` | `zonai xatarnok` | derzhat prostranstvennyy smysl | `draft` |
| ML-T07 | `kreplenie` | `kreplenie / nuqtai mustahkamsazi` | nuzhen practical review | `draft` |
| ML-T08 | `nagruzka` | `nagruzka / borbardori` | ne otryvat ot dopuska k ekspluatatsii | `draft` |

## Warning and Check Phrases

| Phrase ID | RU phrase | TG draft | Primechanie |
|---|---|---|---|
| ML-PH-01 | `Raboty ne nachinayutsya` | `Korho ogoz nameshavand` | zhestkaya stop-formula |
| ML-PH-02 | `Ostanovi raboty` | `Korro man kun` | korotko, odnoznachno |
| ML-PH-03 | `Gotovo / ne gotovo` | `Tayyor / tayyor nest` | dlya micro-check i scenario |
| ML-PH-04 | `Sobrat ne ravno dopustit` | `Yigish barobari ruxsati istifoda nest` | vazhnaya metodicheskaya formula |

## Pronunciation and Audio Notes

| Term / phrase | Chto proverit | TTS risk | Nuzhen li manual audio review |
|---|---|---|---|
| `SIZ` | kak TTS chitaet abbreviaturu i ne lomaet li temp | `high` | `yes` |
| `ustoychivost` | ne slishkom li russko-zavisimaya forma | `medium` | `yes` |
| `korro man kun` | zvuchit li kak chetkaya stop-komanda | `medium` | `yes` |
| `kreplenie / nuqtai mustahkamsazi` | kakuyu formu luchshe ponimaet auditoriya | `medium` | `yes` |

## Asset-bound Note

| Segment / term | Gde est risk | Mozhno li kompensirovat audio/subtitles | Nuzhna li asset-refactor pozhe |
|---|---|---|---|
| `ML-M02-S02 / SIZ` | podpisannye elementi SIZ na vizuale | `yes` | `yes` |
| `ML-M03-S01 / ustoychivost` | skhema elementov i svyazey | `yes, chastichno` | `yes` |
| `ML-M06-S01 / kreplenie` | technical labels na skhemakh | `yes, chastichno` | `later maybe` |

## Conflict Check

1. safety-smysl ne dolzhen terat'sya radi prostogo tadzhikskogo perevoda;
2. glossary-lock terminy ne dolzhny zamenyat'sya bez review;
3. asset-bound tekst ne schitaetsya perevedennym, esli est tolko audio;
4. `tg` language pack ne dolzhen prevrashchat'sya v otdelnyy kurs s novoy logikoy;
5. bazovyy `ru` release ostayotsya etalonom i ne dolzhen zamedlyat'sya iz-za etogo paketa.

## Reshenie po gotovnosti

- TG language pack gotov: `starter draft`
- Chto uzhe mozhno otdavat v subtitles: `ML-M01-S01` - `ML-M04-S01`
- Chto uzhe mozhno otdavat v audio production: `ML-M01-S01` - `ML-M04-S01`, no tolko posle native review
- Gde poka est vysokiy risk: glossary-lock terminy, `SIZ`, `ustoychivost`, `kreplenie`, `asset-bound` labels
- Chto nado dosobrat do rabochego `tg` release: native review, TTS test, polnyy voiceover po `05-07`, finalnyy glossary approval
