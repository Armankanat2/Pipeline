# Gateway Spec Template v1

## Naznachenie

Shablon nuzhen dlya opisaniya `gateway`-sloya, cherez kotoryy polzovatel budet poluchat dostup k kursu v budushchem online-konture.

Ego zadacha:

- ne opisat konkretnuyu platformu, a zafiksirovat kontrakt mezhdu `content core` i tochkoy dostupa;
- ponyat, kak polzovatel popadaet v nuzhnuyu versiyu kursa;
- ponyat, kak marshrutiziruyutsya `variant`, `track` i `content depth`;
- zafiksirovat, kakie sobytiya gateway dolzhen vozvrashchat v maintenance-kontur.

## Pravilo ispolzovaniya

- shablon ne zamenyaet `online handoff pack`;
- shablon ne yavlyaetsya opisaniem UI v detaylyakh;
- shablon ne delaet `Pipeline` zavisimym ot odnoi platformy;
- shablon ispolzuetsya tolko dlya kursov, kotorye realno mogut poluchit `gateway` v budushchem.

## 1. Obshchaya informatsiya

- Nazvanie kursa:
- Kod kursa:
- Versiya:
- Owner:
- Uroven sborki: `Base / Future-ready`
- Tselevoi tip gateway: `LMS / web-course / portal / mixed`
- Nuzhen li gateway v etom release: `yes / no / later`

## 2. Rol gateway

- Dlya kogo prednaznachen gateway:
- Kakoy format dostupa on dolzhen obespechit:
- Kakuyu problemu on reshaet:
- Chto dolzhen poluchit polzovatel na vykhode:

## 3. User Entry Logic

- Kak polzovatel popadaet v kurs:
- Nuzhna li avtorizatsiya:
- Est li rolevoy vhod:
- Est li razdelenie po kompaniyam / klientam:
- Nuzhen li povtornyy vhod s prodolzheniem prokhozhdeniya:
- Nuzhen li bystryy vhod v otdelnyy modul:

## 4. Variant Routing

Gateway dolzhen umet opredelyat, kakuyu sborku polzovatelu otdavat.

- Kak opredelyaetsya `variant`: `korotkaya / srednyaya / dlinnaya`
- Kak opredelyaetsya `track`: `worker / ITR / mixed`
- Kak opredelyaetsya glubina: `core / standard / extended`
- Mozhet li polzovatel sam vybrat variant:
- Mozhet li admin ili klient nazachat variant:
- Chto schitaetsya default-marshrutom:

## 5. Gateway Route Map

| Route ID | Dlya kogo | Variant | Track | Start point | Chto otkryvaetsya | Chto schitaetsya finalom |
|---|---|---|---|---|---|---|
| GW-01 |  | `korotkaya / srednyaya / dlinnaya` | `worker / ITR` |  |  |  |

## 6. Delivery Mapping

Opisat, kak gateway obrashchaetsya s raznymi sloyami content.

| Content block | Otkuda beretsya | Kak otdaetsya polzovatelyu | Gateway role |
|---|---|---|---|
| On-screen | `slide script / adaptation map` | screen / lesson / card | otobrazit |
| Voiceover | `narration pack` | audio / transcript / subtitles | podklyuchit |
| Interaction | `online adaptation map / quiz hook` | micro-check / step / quiz | zapustit |
| Reference | `resource / direct link` | link / popup / attachment | predostavit |

## 7. Navigation Rules

- Mozhet li polzovatel idti tolko lineyno:
- Mozhet li vozvrashchat'sya k moduliam:
- Est li branch logic:
- Est li obyazatelnye checkpointy:
- Gde nuzhen finalnyy quiz:
- Gde nuzhny `micro-checks`:

## 8. Stable IDs

- Est li u moduley ustoychivye ID:
- Est li u blokov / mikroblokov ustoychivye ID:
- Kak svyazat ID gateway s ID v `online adaptation map`:
- Kak obkhoditsya izmenenie versii bez polnoy pereprivyazki:

## 9. Event Layer

Gateway dolzhen vozvrashchat eventy, kotorye mogut stat signalami dlya `Stage 13`.

| Event ID | Sobytie | Zachem nuzhno | Kuda vozvrashchaetsya |
|---|---|---|---|
| EV-01 | start module | ponyat, chto marshrut nachalsya | maintenance / analytics |
| EV-02 | stop / exit | ponyat, gde kurs brosayut | maintenance / analytics |
| EV-03 | repeat block | ponyat, gde est zatrudnenie | maintenance / analytics |
| EV-04 | fail micro-check | ponyat, gde est problemnyy blok | maintenance / analytics |
| EV-05 | open reference | ponyat, gde ne khvataet osnovnogo obyasneniya | maintenance / analytics |
| EV-06 | complete route | ponyat, chto marshrut proyden | maintenance / analytics |

## 10. Feedback Return Path

- Kak sobytiya iz gateway vozvrashchayutsya v `Stage 13`:
- Kto interpretiruet etot signal:
- Kak otdelit tekhnicheskiy event ot metodicheskogo signala:
- Kakie sobytiya dolzhny popolnyat `update log`:
- Kakie sobytiya dolzhny tolko monitorit'sya:

## 11. Client / Access Layer

- Nuzhno li razdelenie po klientam:
- Nuzhny li branded shell-otlichiya:
- Nuzhny li raznye marshruty dlya raznykh grupp:
- Nuzhna li para `QR + direct link` dlya perekhoda iz oflaina v gateway:
- Nuzhno li otdelnoe pravilo dlya gostevogo i avtorizovannogo dostupa:

## 12. Ogranicheniya i riski

- Chto nelzya perenosit v gateway bez pererabotki:
- Gde prezentatsionnaya logika konfliktuet s user flow:
- Gde mozhno sluchayno perenesti platformennuyu logiku v `content core`:
- Gde est risk vzryva variantov:
- Gde nuzhna otdelnaya tekhnicheskaya proverka:

## 13. Reshenie po gotovnosti

- Gateway spec gotov: `yes / no`
- Kakoy minimalnyy gateway-kontur uzhe mozhno sobirat:
- Chto nado dosobrat do rabochego `gateway contract`:
- Chto mozhno ostavit na urovne budushchego `platform adapter`:
