# Terminology Glossary Multilang

## Obshchaya informatsiya

- Nazvanie kursa: `Montazhnik lesov`
- Kod kursa: `ML`
- Versiya: `v0.1`
- Owner: vy
- Bazovyy yazyk: `ru`
- Pervaya volna yazykov: `uz / tg / hi`
- Vtoraya volna yazykov: `en / kk / ky`
- Svyazannyy `master transcript`: `06_master_transcript_v0.1.md`
- Svyazannyy `language style guide`: poka net otdelnogo course-level fayla

## Rol glossary

- Zachem etot glossary sobiraetsya: zafiksirovat kriticheskie safety-terminy i frazy do starta language packs
- Dlya kakogo delivery-scenariya on nuzhen: `audio-first`, `subtitles`, `gateway`, `QR + direct link`
- Kakie yazyki schitayutsya obyazatelnymi v etoy iteratsii: tolko `ru`; `uz / tg / hi` gotovyatsya kak `language add-on`
- Kto utverzhdaet kriticheskie terminy: owner kursa + budushchiy language review / SME review

## Klassifikatsiya terminov

- `safety-core` - nelzya iskazhat ili uproshchat bez pravila
- `process` - terminy po poryadku rabot i checkpointam
- `equipment` - SIZ, elementy i chasti sistemy
- `supporting` - terminy, kotorye mozhno perevodit svobodnee

## Glossary Registry

| Term ID | RU term | Class | Gde ispolzuetsya | Glossary-lock | Asset-bound risk | Primechanie |
|---|---|---|---|---|---|---|
| ML-T01 | `dopusk k rabotam` | `safety-core` | `script / transcript / micro-check` | `yes` | `no` | bazovyy filtr do starta rabot |
| ML-T02 | `SIZ` | `equipment` | `script / transcript / reference` | `yes` | `partial` | chast termina zhivet v podpisyakh assetov |
| ML-T03 | `ostanovit raboty` | `safety-core` | `script / transcript / warning` | `yes` | `no` | kriticheskaya stop-logika |
| ML-T04 | `ustoychivost` | `safety-core` | `script / transcript / glossary` | `yes` | `partial` | svyazana so skhemami i vizualami |
| ML-T05 | `proverka pered ekspluatatsiey` | `process` | `script / transcript / micro-check` | `yes` | `no` | otdelnyy etap posle sborki |
| ML-T06 | `opasnaya zona` | `process` | `script / transcript / warning` | `yes` | `partial` | mozhet vstrechat'sya na skhemakh i foto |
| ML-T07 | `kreplenie` | `equipment` | `script / transcript / glossary` | `yes` | `partial` | vazhno dlya modulya `06` |
| ML-T08 | `nagruzka` | `supporting` | `script / transcript / reference` | `yes` | `no` | ne dolzhna otryvat'sya ot konteksta dopuska |

## Master Definition Block

| Term ID | RU term | Master definition RU | Chto nelzya poteryat | Forbidden simplification | Source basis |
|---|---|---|---|---|---|
| ML-T01 | `dopusk k rabotam` | Formalno i fakticheski podtverzhdennyy dopusk k nachalu rabot pri nalichii obucheniya, instruktagov, SIZ i proverennykh usloviy | eto ne odno slovo "razreshili", a komplekt usloviy | ne svodit tolko k "razreshenie" ili "start" | `course brief / master transcript / SME logic` |
| ML-T02 | `SIZ` | Sredstva individualnoy zashchity, kotorye dolzhny byt ne prosto vydany, a prigodny k rabote | rol zashchity i fakticheskaya prigodnost | ne perevodit kak abstraktnuyu "zashchitu" bez ukazaniya SIZ | `course brief / master transcript` |
| ML-T03 | `ostanovit raboty` | Ostanovit dalneyshee vypolnenie rabot pri neproydennom fil'tre, spornoy situatsii ili yavnom safety-riske | eto komanda prekratit deystvie, a ne byt ostorozhnym | ne zamenyat myagkimi formulirovkami | `master transcript / worker logic` |
| ML-T04 | `ustoychivost` | Sostoyanie konstruktsii, pri kotorom ona derzhitsya kak sistema za schet opor, svyazey, krepleniy i geometrii | sistemnost, a ne prochnost odnoi detali | ne svodit k "silnyy element" | `architecture / transcript / adaptation map` |
| ML-T05 | `proverka pered ekspluatatsiey` | Otdelnyy safety-etap posle sborki, pered dopuskom konstruktsii k rabote | eto ne chast montazha, a otdelnyy chek | ne smeshivat so sborkoy v odin process | `architecture / transcript` |
| ML-T06 | `opasnaya zona` | Uchastok, v kotorom raboty ili peremeshchenie trebuyut ogranicheniy, kontrolya ili zapreta | risk-zona dolzhna identifitsirovat'sya do starta montazha | ne zamenyat obshchim "nebezopasno" bez prostanstvennogo smysla | `transcript / adaptation map` |
| ML-T07 | `kreplenie` | Element ili deystvie, obespechivayushchee uderzhanie i zhestkost skhemy pri nabore vysoty | svyaz s ustoychivostyu i kontroliruemym rostom | ne svodit k obshchemu "zakrepit" bez konstruktsionnogo smysla | `transcript / architecture` |
| ML-T08 | `nagruzka` | Dopustimaya rabochaya nagruzka i svyazannye ogranicheniya pri ekspluatatsii lesov | svyaz s dopuskom k ekspluatatsii | ne otryvat ot marshrutov i proverki gotovnosti | `transcript / worker logic` |

## Language Equivalents Matrix

Eto starter draft. Ekvivalenty ne schitayutsya utverzhdennymi bez language review.

| Term ID | RU master | UZ equivalent | TG equivalent | HI equivalent | EN bridge | Review status |
|---|---|---|---|---|---|---|
| ML-T01 | `dopusk k rabotam` | to be reviewed | to be reviewed | to be reviewed | work authorization / work clearance | `draft` |
| ML-T02 | `SIZ` | to be reviewed | to be reviewed | to be reviewed | personal protective equipment | `draft` |
| ML-T03 | `ostanovit raboty` | to be reviewed | to be reviewed | to be reviewed | stop work | `draft` |
| ML-T04 | `ustoychivost` | to be reviewed | to be reviewed | to be reviewed | structural stability | `draft` |
| ML-T05 | `proverka pered ekspluatatsiey` | to be reviewed | to be reviewed | to be reviewed | pre-use inspection | `draft` |
| ML-T06 | `opasnaya zona` | to be reviewed | to be reviewed | to be reviewed | hazard zone | `draft` |
| ML-T07 | `kreplenie` | to be reviewed | to be reviewed | to be reviewed | anchoring / fastening | `draft` |
| ML-T08 | `nagruzka` | to be reviewed | to be reviewed | to be reviewed | load / permitted load | `draft` |

## Usage Notes by Language

| Term ID | Yazyk | Usage note | Chto nelzya delat | Nuzhna li pronunciation note | Reviewer |
|---|---|---|---|---|---|
| ML-T01 | `uz / tg / hi` | derzhat svyaz s usloviyami starta rabot | ne prevraschat v abstraktnoe "razresheno" | `no` | later |
| ML-T02 | `uz / tg / hi` | derzhat PPE-smysl i prigodnost | ne sokrashchat do obshchey "zashchity" | `yes` | later |
| ML-T03 | `uz / tg / hi` | peredavat kak stop-komandu | ne smyagchat do "bud ostorozhen" | `no` | later |
| ML-T04 | `uz / tg / hi` | derzhat systems meaning | ne perevodit kak "krepost" odnoi chast'i | `no` | later |
| ML-T05 | `uz / tg / hi` | derzhat kak otdelnyy etap | ne slivat so sborkoy | `no` | later |

## Micro-check and Warning Phrases

| Phrase ID | RU phrase | Tip frazy | Pochemu kritichna | UZ | TG | HI | EN bridge |
|---|---|---|---|---|---|---|---|
| ML-PH-01 | `Raboty ne nachinayutsya` | `prohibition` | stop-fraza do starta montazha | to be reviewed | to be reviewed | to be reviewed | work must not start |
| ML-PH-02 | `Ostanovi raboty` | `stop-decision` | kriticheskaya komandnaya formula | to be reviewed | to be reviewed | to be reviewed | stop work |
| ML-PH-03 | `Gotovo / ne gotovo` | `checklist` | baza dlya micro-checks i scenario-filtra | to be reviewed | to be reviewed | to be reviewed | ready / not ready |
| ML-PH-04 | `Sobrat ne ravno dopustit` | `warning` | otdelyaet sborku ot ekspluatatsii | to be reviewed | to be reviewed | to be reviewed | assembled does not mean approved for use |

## Pronunciation and Audio Notes

| Term ID / Phrase ID | Yazyk | Pronunciation note | TTS risk | Nuzhen li manual audio review |
|---|---|---|---|---|
| ML-T02 | `hi / uz / tg` | proverit, kak TTS chitaet abbreviaturu `SIZ` | `high` | `yes` |
| ML-T04 | `hi / uz / tg` | proverit, kak peredaetsya technical phrase pro `ustoychivost` | `medium` | `yes` |
| ML-PH-02 | `hi / uz / tg` | stop-formula dolzhna zvuchat odnoznachno i korotko | `medium` | `yes` |
| ML-PH-04 | `hi / uz / tg` | fraza dolzhna ostat'sya metodicheski zhaloboy i yasnoy | `medium` | `yes` |

## Asset-bound Note

| Term ID | Gde term zashit v assete | Mozhno li kompensirovat audio/subtitles | Nuzhna li asset-refactor pozhe |
|---|---|---|---|
| ML-T02 | `SIZ labels / visual kit` | `yes` | `yes` |
| ML-T04 | `scheme labels` | `yes, chastichno` | `yes` |
| ML-T06 | `photo guide / scheme` | `yes` | `later maybe` |
| ML-T07 | `scheme / diagram` | `yes, chastichno` | `later maybe` |

## Conflict Check

1. safety-smysl termina ne dolzhen byt poterian radi prostoty perevoda;
2. glossary ne dolzhen delat vid, chto term uzhe utverzhden na `uz / tg / hi`, esli review eshche ne byl sdelan;
3. odin i tot zhe term ne dolzhen poluchat raznye EN-bridge smysly bez pometki;
4. glossary ne dolzhen pytat'sya zakryt asset-bound problemu tam, gde nuzhen budushchiy visual refactor;
5. russkiy etalon ne dolzhen zamedlyat'sya iz-za neutochnennogo target-language ekvivalenta.

## Svyaz s maintenance

- Kakie izmeneniya schitat `patch / minor / major`: wording ekvivalenta = `patch`; novyy glossary-lock term = `minor`; peresmotr klassa termina ili safety-smysla = `major`
- Kogda nuzhno obnovlyat vse language packs: pri izmenenii `ML-T01` - `ML-T05` ili warning phrases `ML-PH-01` - `ML-PH-04`
- Kogda nuzhno povtornoye language review: pri klientskom zaprose novogo yazyka, pri zamene TTS ili pri izmenenii stop/check phrasing
- Kak pometchat obnaruzhennuyu oshibku perevoda v `Stage 13`: kak `multilingual terminology signal`

## Reshenie po gotovnosti

- Multilang glossary gotov: `starter draft`
- Kakie terminy uzhe pod glossary-lock: `ML-T01` - `ML-T08` i `ML-PH-01` - `ML-PH-04`
- Kakie yazyki uzhe pokryty: `ru` kak etalon, `en bridge` kak opora, `uz / tg / hi` poka na urovne draft-review slots
- Gde est vysokiy TTS risk: abbreviatura `SIZ`, technical phrase pro `ustoychivost`, stop-phrases
- Chto nado dosobrat do pervoy delivery-volny: realnye `uz / tg / hi` ekvivalenty, language review, TTS check, svyaz s pervym `language pack`
