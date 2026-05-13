# Terminology Glossary Multilang Template v1

## Naznachenie

Shablon nuzhen dlya fiksatsii kriticheskikh terminov, zapretnykh uproshcheniy i soglasovannykh ekvivalentov dlya mnogoiazychnogo delivery-sloya.

Ego zadacha:

- sokhranit russkiy etalon kak `source of truth`;
- ne dopustit, chtoby safety-smysl "plaval" mezhdu perevodami;
- dat oporu dlya `master transcript`, `language packs`, audio i subtitles;
- zafiksirovat, chto mozhno perevodit svobodno, a chto nuzhno derzhat pod glossary-lock.

## Pravilo ispolzovaniya

- etot shablon ne zamenyaet bazovyy `01_terminology_glossary`, a rasshiryaet ego dlya mnogoiazychnogo delivery;
- russkiy termin i ego opredelenie schitayutsya etalonom;
- ekvivalenty na drugikh yazykakh dolzhny prokhodit review po safety-smyslu, a ne tolko po obshchemu yazyku;
- tekst vnutri kartinok i raster-assetov na etom etape ne perevodyatsya cherez etot glossary, a pomechayutsya kak `asset-bound`.

## 1. Obshchaya informatsiya

- Nazvanie kursa:
- Kod kursa:
- Versiya:
- Owner:
- Bazovyy yazyk: `ru`
- Pervaya volna yazykov: `uz / tg / hi`
- Vtoraya volna yazykov:
- Svyazannyy `master transcript`:
- Svyazannyy `language style guide`:

## 2. Rol glossary

- Zachem etot glossary sobiraetsya:
- Dlya kakogo delivery-scenariya on nuzhen:
- Kakie yazyki schitayutsya obyazatelnymi v etoy iteratsii:
- Kto utverzhdaet kriticheskie terminy:

## 3. Klassifikatsiya terminov

Rekomenduetsya delit terminy minimum na `4` klassa:

- `safety-core` - nelzya iskazhat ili uproshchat bez pravila;
- `process` - terminy po poryadku rabot, proverkam i checkpointam;
- `equipment` - elementy, SIZ, chasti sistemy;
- `supporting` - terminy, kotorye mozhno perevodit svobodnee.

## 4. Glossary Registry

| Term ID | RU term | Class | Gde ispolzuetsya | Glossary-lock | Asset-bound risk | Primechanie |
|---|---|---|---|---|---|---|
| TERM-01 |  | `safety-core / process / equipment / supporting` | `script / transcript / micro-check / reference` | `yes / no` | `yes / no` |  |

## 5. Master Definition Block

| Term ID | RU term | Master definition RU | Chto nelzya poteryat | Forbidden simplification | Source basis |
|---|---|---|---|---|---|
| TERM-01 |  |  |  |  | `normative / source register / SME / internal rule` |

## 6. Language Equivalents Matrix

Eto rabochaya matritsa dlya pervoy volny yazykov i mostovogo angliyskogo varianta.

| Term ID | RU master | UZ equivalent | TG equivalent | HI equivalent | EN bridge | Review status |
|---|---|---|---|---|---|---|
| TERM-01 |  |  |  |  |  | `draft / reviewed / approved` |

## 7. Usage Notes by Language

| Term ID | Yazyk | Usage note | Chto nelzya delat | Nuzhna li pronunciation note | Reviewer |
|---|---|---|---|---|---|
| TERM-01 | `uz / tg / hi / en / other` |  |  | `yes / no` |  |

## 8. Micro-check and Warning Phrases

Zdes nuzhno zafiksirovat korotkie konstruktsii, kotorye chasto povtoryayutsya v checkpointakh i zapretakh.

| Phrase ID | RU phrase | Tip frazy | Pochemu kritichna | UZ | TG | HI | EN bridge |
|---|---|---|---|---|---|---|---|
| PH-01 |  | `warning / prohibition / stop-decision / checklist` |  |  |  |  |  |

## 9. Pronunciation and Audio Notes

Eto blok dlya TTS i ozvuchki, gde obychnyy perevod mozhet byt nedostatochen.

| Term ID / Phrase ID | Yazyk | Pronunciation note | TTS risk | Nuzhen li manual audio review |
|---|---|---|---|---|
| TERM-01 | `hi / uz / tg / en / other` |  | `low / medium / high` | `yes / no` |

## 10. Asset-bound Note

| Term ID | Gde term zashit v assete | Mozhno li kompensirovat audio/subtitles | Nuzhna li asset-refactor pozhe |
|---|---|---|---|
| TERM-01 | `image / scheme / raster label / none` | `yes / no` | `yes / no` |

## 11. Conflict Check

`Multilang glossary` ne dolzhen prevratit'sya v razmytuyu tablicu sinonimov.

Nuzhno proverit:

1. ne poteryan li safety-smysl v target-language ekvivalente;
2. ne podmenyaet li "ponyatnyy" perevod yuridicheski ili metodicheski vazhnuyu formulirovku;
3. ne zhivet li termin v trekh raznykh formakh bez prichiny;
4. ne protivorechat li glossary-terminy `master transcript` i release-versii kursa;
5. ne pytaemsya li my reshit glossary-cherez-kartinku vmesto transcript/audio-layer.

## 12. Svyaz s maintenance

- Kakie izmeneniya schitat `patch / minor / major`:
- Kogda nuzhno obnovlyat vse language packs:
- Kogda nuzhno povtornoye language review:
- Kak pometchat obnaruzhennuyu oshibku perevoda v `Stage 13`:

## 13. Reshenie po gotovnosti

- Multilang glossary gotov: `yes / no`
- Kakie terminy uzhe pod glossary-lock:
- Kakie yazyki uzhe pokryty:
- Gde est vysokiy TTS risk:
- Chto nado dosobrat do pervoy delivery-volny:
