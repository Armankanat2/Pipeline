# Language Pack UZ

## Obshchaya informatsiya

- Nazvanie kursa: `Montazhnik lesov`
- Kod kursa: `ML`
- Versiya: `v0.1`
- Yazyk paketa: `uz`, latin draft
- Owner: vy
- Status: `starter draft / needs native review`
- Bazovyy etalon: `ru`
- Svyazannyy `master transcript`: `02_Research/Montazhnik_lesov/06_Script/06_master_transcript_v0.1.md`
- Svyazannyy `multilang glossary`: `02_Research/Montazhnik_lesov/01_Brief/01_terminology_glossary_multilang_v0.1.md`
- Svyazannyy `narration pack`: `12_narration_pack_v0.1.md`

## Rol language pack

- Zachem sobiraetsya paket: podgotovit pervyy `language add-on` poverkh bazovogo `ru` release
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

| Segment ID | UZ on-screen summary | UZ voiceover draft | UZ micro-check draft | Reference note UZ | Status |
|---|---|---|---|---|---|
| ML-M01-S01 | kurs xavfsiz qarorlar va rol chegaralari haqida | Bu kurs iskelelarda xavfsiz qaror qabul qilish haqida. Qaysi vaziyatda montajchi mustaqil ishlashi mumkin, qaysi vaziyatda esa ishni to'xtatib mas'ul shaxsga xabar berishi kerak - shu mantiq beriladi. | `Xavfsizlik qayerdan boshlanadi: tez boshlashdanmi yoki to'g'ri qarordanmi?` | role va javobgarlik glossary | `draft` |
| ML-M02-S01 | ishlar dopusk va tekshiruvdan boshlanadi | Iskelelarda ish asbobdan emas, dopusk, SIZ va ish sharoitini tekshirishdan boshlanadi. Agar bular bo'lmasa, xato montajdan oldin yuz beradi. | `Brigada tayyor bo'lsa ham, sharoit tekshirilmagan bo'lsa ishni boshlash mumkinmi?` | dopusk va start shartlari bo'yicha izoh | `draft` |
| ML-M02-S02 | SIZ ishga yaroqli bo'lishi kerak | SIZ shunchaki berilgan bo'lishi yetarli emas. U ishga yaroqli bo'lishi kerak, ishchi esa xavfsiz ishlashi uchun to'g'ri jihozlangan bo'lishi kerak. | `Qaysi biri muhimroq: SIZ qog'ozda borligi yoki amalda yaroqli ekani?` | SIZ bo'yicha havolalar va xatolar | `draft` |
| ML-M03-S01 | iskela butun sistema sifatida turadi | Iskela bitta element hisobiga turmaydi. Ustoychivost faqat sistema sifatida paydo bo'ladi: tayanchlar, bog'lanishlar, krepleniya va geometriya birga ishlashi kerak. | `Agar bitta element normal ko'rinsa, butun konstruksiya ishonchli deb hisoblash mumkinmi?` | elementlar glossary va skhema | `draft` |
| ML-M04-S01 | xatoni montaj boshlanishidan oldin to'xtatish kerak | Montajdan oldin maydoncha va elementlar filtrdan o'tishi kerak. Opasnaya zona, yaroqsiz asos yoki shikastlangan elementlar ishni birinchi yarusgacha yetkazmasdan to'xtatishi kerak. | `Filtrlardan bittasi o'tmagan bo'lsa, yig'ishni boshlash mumkinmi?` | photo guide va `tayyor / tayyor emas` scenario | `draft` |
| ML-M05-S01 | baza keyingi hamma ishni belgilaydi | Baza va birinchi yarus keyingi yig'ish nazorat ostida bo'ladimi-yo'qmi, shuni belgilaydi. Boshlang'ich xatolar keyin yo'qolmaydi, balki butun konstruksiya bilan birga kattalashadi. | `Qaysi biri xavfliroq: startni tezlatishmi yoki bazani tekshirishmi?` | pasport sistemy later | `partial` |
| ML-M06-S01 | balandlik faqat nazorat bilan oshiriladi | Balandlikni oshirishda elementlarni shunchaki qo'shish yetarli emas. Skhema qattiqligi, krepleniya, nastil va xavfsiz kirish birga nazorat qilinishi kerak. | `Qattiqlik va krepleniya tasdiqlanmagan bo'lsa, yuqoriga davom etish mumkinmi?` | video va kreplenie note later | `partial` |
| ML-M07-S01 | yig'ish tayyor degani emas | Yig'ilgandan keyin ekspluatatsiyaga tayyorlik albatta tekshiriladi. Nagruzka, yurish marshrutlari va taqiqlar ish boshlanishidan oldin aniq bo'lishi kerak. | `Ekspluatatsiyaga ruxsat berishdan oldin nima tekshirilishi kerak?` | ekspluatatsiya checklist later | `partial` |

## Glossary-linked Terms

| Term ID | RU master | UZ draft equivalent | Usage note | Review status |
|---|---|---|---|---|
| ML-T01 | `dopusk k rabotam` | `dopusk / ishga ruxsat va tayyorgarlik filtri` | luchshe ne svodit tolko k odnomu slovu `ruxsat` | `draft` |
| ML-T02 | `SIZ` | `SIZ / shaxsiy himoya vositalari` | abbreviatura trebuet audio review | `draft` |
| ML-T03 | `ostanovit raboty` | `ishni to'xtatish` | dolzhno zashchit kak stop-komanda | `draft` |
| ML-T04 | `ustoychivost` | `ustoychivost / barqarorlik` | proverit, kakuyu formu auditoriya ponimaet luchshe | `draft` |
| ML-T05 | `proverka pered ekspluatatsiey` | `ekspluatatsiyadan oldingi tekshiruv` | ne smeshivat so sborkoy | `draft` |
| ML-T06 | `opasnaya zona` | `xavfli zona` | derzhat prostranstvennyy smysl | `draft` |
| ML-T07 | `kreplenie` | `kreplenie / mahkamlash nuqtasi` | nuzhen practical review | `draft` |
| ML-T08 | `nagruzka` | `nagruzka / yuklama` | ne otryvat ot dopuska k ekspluatatsii | `draft` |

## Warning and Check Phrases

| Phrase ID | RU phrase | UZ draft | Primechanie |
|---|---|---|---|
| ML-PH-01 | `Raboty ne nachinayutsya` | `Ishlar boshlanmaydi` | zhestkaya stop-formula |
| ML-PH-02 | `Ostanovi raboty` | `Ishni to'xtat` | korotko, odnoznachno |
| ML-PH-03 | `Gotovo / ne gotovo` | `Tayyor / tayyor emas` | dlya micro-check i scenario |
| ML-PH-04 | `Sobrat ne ravno dopustit` | `Yig'ish tayyor degani emas` | vazhnaya metodicheskaya formula |

## Pronunciation and Audio Notes

| Term / phrase | Chto proverit | TTS risk | Nuzhen li manual audio review |
|---|---|---|---|
| `SIZ` | kak TTS chitaet abbreviaturu i ne lomaet li temp | `high` | `yes` |
| `ustoychivost` | ne slishkom li russko-zavisimaya forma | `medium` | `yes` |
| `ishni to'xtat` | zvuchit li kak chetkaya stop-komanda | `medium` | `yes` |
| `kreplenie / mahkamlash nuqtasi` | kakuyu formu luchshe ponimaet auditoriya | `medium` | `yes` |

## Asset-bound Note

| Segment / term | Gde est risk | Mozhno li kompensirovat audio/subtitles | Nuzhna li asset-refactor pozhe |
|---|---|---|---|
| `ML-M02-S02 / SIZ` | podpisannye elementi SIZ na vizuale | `yes` | `yes` |
| `ML-M03-S01 / ustoychivost` | skhema elementov i svyazey | `yes, chastichno` | `yes` |
| `ML-M06-S01 / kreplenie` | technical labels na skhemakh | `yes, chastichno` | `later maybe` |

## Conflict Check

1. safety-smysl ne dolzhen terat'sya radi prostogo uzbekskogo perevoda;
2. glossary-lock terminy ne dolzhny zamenyat'sya bez review;
3. asset-bound tekst ne schitaetsya perevedennym, esli est tolko audio;
4. `uz` language pack ne dolzhen prevrashchat'sya v otdelnyy kurs s novoy logikoy;
5. bazovyy `ru` release ostayotsya etalonom i ne dolzhen zamedlyat'sya iz-za etogo paketa.

## Reshenie po gotovnosti

- UZ language pack gotov: `starter draft`
- Chto uzhe mozhno otdavat v subtitles: `ML-M01-S01` - `ML-M04-S01`
- Chto uzhe mozhno otdavat v audio production: `ML-M01-S01` - `ML-M04-S01`, no tolko posle native review
- Gde poka est vysokiy risk: glossary-lock terminy, `SIZ`, `ustoychivost`, `kreplenie`, `asset-bound` labels
- Chto nado dosobrat do rabochego `uz` release: native review, TTS test, polnyy voiceover po `05-07`, finalnyy glossary approval
