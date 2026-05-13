# Language Rollout Plan v0.1

## 1. Naznachenie

Etot dokument fiksiruet prakticheskiy plan podklyucheniya mnogoiazychnogo sloya poverkh bazovogo russkoyazychnogo release.

Ego zadacha:

- ne raspylitsya na vse yazyki srazu;
- sbalansirovat realnyy klientskiy spros i kachestvo delivery;
- vyvesti `language add-on` v upravlyaemyy rollout;
- svyazat mnogoiazychnyy sloy s post-release i abonentskim soprovozhdeniem.

## 2. Bazovoe pravilo

- `ru` yavlyaetsya obyazatelnym etalonnym release-sloem.
- Inostrannye yazyki ne vklyuchayutsya v bazovyy paket po umolchaniyu.
- Kazhdyy dopolnitelnyy yazyk podklyuchaetsya tolko po zaprosu zakazchika kak `language add-on`.
- Bazovyy russkiy release ne dolzhen zaderzhivat'sya iz-za otsutstviya inostrannykh yazykov.

## 3. Tsel rollout-modeli

My ne pytaemsya odnovremenno obespechit vse vozmozhnye yazyki dlya vsekh kursov.

My:

- derzhim odin `content core`;
- sobiraem `master transcript`;
- podklyuchaem yazyki volnami;
- rasshiryaem pokrytie po realnomu klientskomu sprosu.

## 4. Yazykovaya matritsa

### 4.1 Obyazatelnyy etalon

- `ru` - obyazatelnyy bazovyy release, `source of truth`

### 4.2 Pervaya volna

Yazyki pervoy volny:

- `uz`
- `tg`
- `hi`

Prichina:

- eto naibolee praktichnye kandidaty pod tekushchuyu rabochuyu auditoriyu;
- `hi` poluchaet povyshennyy prioritet iz-za rosta chisla indiyskikh rabochikh;
- eti yazyki imeyut naibolshuyu veroyatnost stat ne prosto lokalizatsiey, a realnoy ekspluatatsionnoy neobkhodimostyu.

### 4.3 Vtoraya volna

Yazyki vtoroy volny:

- `en`
- `kk`
- `ky`

Prichina:

- `en` mozhet rabotat kak mostovoy yazyk;
- `kk` i `ky` podklyuchayutsya po fakticheskomu klientskomu zaprosu i geografii proekta.

### 4.4 Tretiya volna

Yazyki tretyey volny:

- `tr`
- `sr`

Prichina:

- ne isklyuchayutsya strategicheski;
- no ne dolzhny otvlekat pervuyu production-volnu bez realnogo zaprosa.

## 5. Prioritety po kachestvu

Ne vse yazyki ravny po risku.

### 5.1 Povyshennyy kontrol

`hi` trebuet dopolnitelnogo kontrolya:

- terminology review;
- proverka safety-formulirovok;
- proverka `warning / prohibition / stop-decision` fraz;
- proverka TTS ili audio clarity.

### 5.2 Standartnyy kontrol pervoy volny

`uz` i `tg` tozhe trebuut review, no mogut idti kak pervye production language packs posle stabilizatsii `master transcript` i glossary.

## 6. Chto vklyuchaet language add-on

Dopolnitelnyy yazyk mozhet vklyuchat:

- `language pack`;
- localized audio layer;
- localized subtitles;
- localized micro-check wording;
- glossary equivalence review;
- pri online-konture language-switch pod etot yazyk.

Ne vklyuchaet avtomaticheski:

- pererabotku vsekh kartinok i skhem;
- polnuyu asset-localization;
- pereproektirovanie vsego kursa.

## 7. Ogranicheniya etoy versii

Na etom etape:

- tekst vnutri kartinok ne lokalizuetsya;
- assety s vstroennym tekstom schitayutsya `asset-bound`;
- bazovaya mnogoiazychnaya dostavka stroitsya cherez `audio + subtitles + transcript + reference layer`.

## 8. Prakticheskaya posledovatelnost vnedreniya

### Etap 1 - Baza

1. sobrat russkiy `master transcript`;
2. sobrat `terminology glossary multilang`;
3. proverit, chto bazovyy `ru` release stabilen.

### Etap 2 - Pervaya production-volna

1. vypustit `uz` language pack;
2. vypustit `tg` language pack;
3. vypustit `hi` language pack s usilennym review;
4. proverit pilot delivery na realnoy auditorii.

### Etap 3 - Scale by demand

1. otsenit signal iz ekspluatatsii;
2. vybrat sleduyushchiy yazyk po zaprosam klientov;
3. podklyuchat `en / kk / ky`, zatem `tr / sr` po fakticheskomu sprosu.

## 9. Pravilo zapuska novogo yazyka

Novyy yazyk mozhno zapuskat, esli:

- est bazovyy `ru` release;
- est `master transcript`;
- glossary po kriticheskim terminam zapolnen;
- klient ili owner yavno zaprosil etot yazyk;
- ponyatno, kakoy obem delaetsya: audio, subtitles, micro-checks, reference.

## 10. Chto schitaetsya neudachnym rolloutom

- kogda pytaemsya delat vse yazyki odnovremenno;
- kogda perevod idem ranshe, chem stabilen russkiy etalon;
- kogda net glossary-lock dlya safety-terminov;
- kogda `language add-on` sluchayno prevrashchaetsya v beskonechnuyu besplatnuyu doprabotku;
- kogda release na `ru` tormozitsya iz-za nerezkogo reshcheniya po inostrannym yazykam.

## 11. Svyaz s kommercheskoy modelyu

Mnogoyaazychnyy sloy mozhno ispolzovat kak servisnyy kontur:

- podklyuchenie novogo yazyka kak `change request / add-on`;
- obnovlenie sushchestvuyushchikh language packs kak paketnoe obnovlenie;
- monitoring i support po multilingual-sloyu kak chast abonentskogo soprovozhdeniya.

## 12. Kriteriy uspeshnogo rollouta

Mozhno schitat, chto rollout rabotaet pravilno, esli:

- `ru` vypuskaetsya kak obyazatelnyy bazovyy etalon;
- `uz / tg / hi` rassmatrivayutsya kak pervaya volna po klientskomu zaprosu;
- ostalnye yazyki ne blokiruyut tekushchiy production;
- glossary, transcript i audio-layer ostayutsya sinkhronnymi;
- multilingual sloy prinosit upravlyaemoe rasshirenie, a ne khaos versiy.

## 13. Operatsionnaya formula

Korotko:

`ru` obyazatelen vsegda. `uz / tg / hi` - pervaya volna `language add-on` po zaprosu klienta. Ostalnye yazyki - pozhe, po realnomu sprosu i cherez servisnyy contour.
