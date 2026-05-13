# Multilingual Delivery Concept v0.1

## 1. Naznachenie

Etot dokument fiksiruet, kak `Pipeline` mozhet podderzhat mnogoiazychnuyu vydachu kursa dlya auditorii, gde instruktor i ustnyy perevod ne obespechivayut dostatochnuyu tochnost i polnotu peredachi safety-smysla.

Ego zadacha:

- ne delat otdelnuyu polnotsennuyu prezentatsiyu na kazhdom yazyke;
- sokhranit odin `content core` i dobavit poverkh nego `language layer`;
- podgotovit kurs k ozvuchke, subtitram i language-switch bez polomki `stage-model 00-13`;
- snizit risk, chto zhivoy perevod budet sokrashchat smysl, propuskat ogranicheniya ili iskazhat terminologiyu.

## 2. Bazovaya pozitsiya

My iskhodim iz togo, chto:

- safety-kurs ne dolzhen zaviset tolko ot instruktora ili perevodchika;
- bazovyy russkoyazychnyy release yavlyaetsya obyazatelnym etalonom i sobiraetsya vsegda;
- mnogoiazychnaya podderzhka dolzhna stroitsya kak optional nadstroika, a ne kak parallelniy production-pipeline;
- inostrannye yazyki podklyuchayutsya tolko po zaprosu zakazchika ili pri yavno zafiksirovannoy potrebe auditorii;
- perevod nuzhen ne dlya "krasivogo lokalizovannogo produkta", a dlya nadezhnoy peredachi uchebnogo smysla;
- odin kurs mozhet mat rich worker-auditoriyu s raznymi yazykami i odnim i tem zhe safety-yadrom.

## 3. Chto imenno my stroim

My ne stroim nabor "prezentatsiya na russkom, prezentatsiya na uzbekskom, prezentatsiya na tadzhikskom" kak otdelnye kursy.

My stroim `multilingual delivery layer`, sostoyashchiy iz `4` sloev:

1. `Content Core`
2. `Master Transcript`
3. `Language Packs`
4. `Audio / Subtitle Delivery`

## 4. Sloi sistemy

### 4.1 Content Core

Eto stabilnoe uchebnoe yadro:

- outcomes;
- architecture;
- script-logic;
- test/checkpoint logic;
- worker / ITR differentiation;
- variant logic `korotkaya / srednyaya / dlinnaya`.

Etot sloy ne dolzhen razmnozhat'sya po yazykam.

### 4.2 Master Transcript

Eto etalonnyy tekstovyy sloy, iz kotorogo mozhno delat ozvuchku, subtitry i kontroliruemyi perevod.

Dlya kazhdogo stabilnogo content-segmenta dolzhny byt:

- `segment ID`;
- `on-screen summary`;
- `voiceover master text`;
- `micro-check wording`;
- `reference note`;
- kriticheskie terminy, kotorye nelzya uproshchat bez pravila.

Glavnyy printsip:

- perevodim ne slayd kak kartinku;
- perevodim stabilnye segmenty po ID.

### 4.3 Language Packs

Kazhdyy yazyk podklyuchaetsya kak otdelnyy paket poverkh `master transcript`.

Primer:

- `ru`
- `uz`
- `tg`
- `en` ili drugoy mostovoy yazyk, esli eto praktichnee dlya smeshannoy inostrannoy auditorii
- `sr`, esli est realnyy zapros

Vnutri `language pack` dolzhny byt:

- translated voiceover;
- translated subtitle layer;
- translated micro-check text;
- terminology mapping;
- zametki o riskakh perevoda.

Pravilo podklyucheniya:

- `ru` schitaetsya obyazatelnym bazovym release-sloem;
- drugie yazyki ne sobirayutsya "po umolchaniyu";
- kazhdyy dopolnitelnyy yazyk vklyuchaetsya po klientskomu zaprosu, po modely `language add-on`.

### 4.4 Audio / Subtitle Delivery

Eto sloy, cherez kotoryy polzovatel fakticheski poluchaet mnogoiazychnyy kurs:

- ozvuchka na vybrannom yazyke;
- subtitry na vybrannom yazyke;
- reference-access cherez `QR`, direct link ili gateway;
- pri neobkhodimosti perekluchenie mezhdu yazykami v online-srede.

## 5. Chto my poka ne delaem

Na etom etape my soznatelno ne perestraivaem:

- tekst vnutri kartinok;
- tekst vnutri skhem, vstroennykh v raster-assety;
- vse vizualy pod mnogoiazychnyy layout.

Pravilo etoy versii:

- tekst v kartinkakh poka schitaetsya `asset-bound`;
- mnogoiazychnyy sloy zakryvaet ozvuchku, subtitry, reference i transcript;
- pererabotka samikh kartinok mozhet stat otdelnym etapom posle pilotnogo proverki.

## 6. Pochemu eto luchshe, chem otdelnye prezentatsii po yazykam

- ne vzryvaet chislo release-versiy;
- ne razmnozhaet oshibki v safety-yadre;
- pozvolyaet obnavlyat smysl odin raz, a language packs podtyagivat otdelno;
- legko lozhitsya v `online handoff` i `gateway`;
- daet vozmozhnost rabotat i on-line, i cherez `QR + audio access` dlya ochnykh grupp.

## 7. Osnovnye riski

### 7.1 Terminology drift

Perevodchik ili TTS-motor mogut uproshtat ili iskazhat safety-smysl.

Reshenie:

- zavesti zhestkiy `multilingual terminology glossary`;
- pometchat terminy, kotorye nelzya svobodno paraphrase-it.

### 7.2 Version drift

Kurs obnovilsya, a audio ili subtitry ostalis ot staroy versii.

Reshenie:

- language packs dolzhny byt privyazany k `segment ID` i versii release;
- `Stage 13` dolzhen otslezhivat rassinkhron mezhdu `content core` i language-layer.

### 7.3 Variant explosion

`yazyk x variant x track` bystro daet slishkom mnogo kombinatsiy.

Reshenie:

- ne sobirat vse kombinatsii srazu;
- snachala delat `default worker route`;
- rasshiryat pokrytie po realnomu zaprosu.

### 7.4 TTS quality

Mashinnaya ozvuchka mozhet ploho proiznosit terminy, imena sistem i sokrashcheniya.

Reshenie:

- khanit etalonnyy voiceover text otdelno;
- testirovat kriticheskie terminy;
- pri neobkhodimosti ispolzovat ru/no-translation pronunciation notes.

### 7.5 Asset lock

Chast smysla mozhet ostavat'sya zashitoy v kartinkakh.

Reshenie:

- poka kompensirovat eto ozvuchkoy, subtitrami i reference-layer;
- pozhe vesti asset refactor tolko tam, gde eto realno nuzhno.

## 8. Predlagaemye optional artefakty

Bez izmeneniya stage-model mozhno dobavit optional release-grade artefakty:

- `06_master_transcript_v0.1.md`
- `12_language_pack_ru_v0.1.md`
- `12_language_pack_uz_v0.1.md`
- `12_language_pack_tg_v0.1.md`
- `12_language_pack_en_v0.1.md`
- `12_audio_manifest_v0.1.md`
- `12_terminology_glossary_multilang_v0.1.md`

Etot spisok ne obyazatelno zapuskat tselikom srazu.

V praktike eto oznachaet:

- dlya bazovogo paketa dostatochno `ru`;
- dlya klientskogo rasshireniya mozhno podklyuchat otdelnye `language packs` po zaprosu;
- mnogoiazychnyy sloy mozhet stat otdelnoy uslugoy v ramkakh paketnogo ili abonentskogo soprovozhdeniya.

## 9. Tochki integratsii po stage

### Stage 01 - Intake

Zdes nuzhno utochnit:

- est li inostrannaya auditoriya;
- nuzhen li audio-first contour;
- nuzhen li mnogoiazychnyy `gateway`;
- ostayetsya li release tolko na `ru` ili klient zaprashivaet language add-on;
- kakie yazyki realno nuzhny v pervoy iteratsii.

### Stage 06 - Scriptwriting

Zdes nuzhno:

- vydelit stabilnye content-segmenty;
- sformirovat `master transcript`;
- otdelit `on-screen` ot `voiceover`;
- zafiksirovat kriticheskie terminy.

### Stage 12 - Release

Zdes optionalno sobirayutsya:

- `language packs`;
- `audio manifest`;
- `terminology glossary`;
- pri online-konture language-switch pravila dlya `gateway`.

### Stage 13 - Maintenance

Zdes nuzhno:

- otslezhivat rassinkhron mezhdu release i language packs;
- klassifitsirovat oshibki perevoda kak otdelnyy signal;
- ne dopuskat tikhikh pravok v audio ili subtitry mimo version rule.

## 10. Prakticheskiy poryadok vnedreniya

Samyy bezopasnyy put:

1. ne trezvo peredelivat vse vizualy;
2. snachala sobrat `master transcript`;
3. sdelat `1` pilotnyy language pack;
4. proverit ego na odnom kurse;
5. tolko potom masshtabirovat na drugie yazyki i varianty.

## 11. Pravilo prinyatiya resheniy

Esli voznikayet spor mezhdu skorostyu perevoda i tochnostyu safety-smysla, prioritet takoy:

1. tselostnost `content core`;
2. tochnost terminologii;
3. sinkhron mezhdu release i language-layer;
4. udobstvo delivery;
5. glubina lokalizatsii assetov.

Otdelno:

- bazovyy `ru` release ne dolzhen zaderzhivat'sya iz-za otsutstviya inostrannykh yazykov;
- language add-on zapuskaetsya tolko posle fiksatsii russkogo etalona.

## 12. Kriteriy uspeshnogo vnedreniya

Mozhno schitat, chto `Multilingual Delivery Concept v0.1` vnedryaetsya pravilno, esli:

- `stage-model 00-13` ne izmenen;
- kurs ne razmnozhilsya v nabor polnostyu otdelnykh prezentatsiy;
- est odin `content core` i otdelnyy `language layer`;
- russkiy etalon mozhno vypuskat nezavisimo ot mnogoiazychnogo rasshireniya;
- audio i subtitry mogut obnovlyat'sya cherez stable IDs;
- text inside images poka ne obsluzhivaetsya kak jazykovoy sloy i eto yavno zafiksirovano;
- `gateway` mozhet v budushchem podklyuchit language-switch bez peresborki yadra.

## 13. Operatsionnaya formula

Korotko:

`Pipeline` dolzhen gotovit ne mnogo prezentatsiy na raznykh yazykakh, a odin kurs s `master transcript`, `language packs` i `audio/subtitle delivery layer`.
