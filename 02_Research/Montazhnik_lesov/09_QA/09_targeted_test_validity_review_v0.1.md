# Targeted Test Validity Review

## Status

- Kurs: `Montazhnik lesov`
- Kod: `ML`
- Data podgotovki review: `2026-05-16`
- Owner: vy
- Scope: `A-44` - `A-48` / `TV-01` - `TV-05`
- Vkhodnoy build: `05_Release/Montazhnik_lesov/01_PPTX/02_No_Test/ML_08_assessment_visual_build_v0.1.pptx`
- Status: `ready for targeted QA`

## Naznachenie

Etot review nuzhen, chtoby proverit ne prosto nalichie vizualov, a to, deystvitelno li assessment-build:

- usilivaet validnost proverki po `Q-07`, `Q-08`, `Q-16`, `Q-21`, `Q-22`;
- podderzhivaet `LO-03`, `LO-05`, `LO-07`, `LO-11`, `LO-12`;
- ne vykhodit za generic-safe granitsu;
- mozhet byt ispolzovan kak realnyy most mezhdu testom i visual-layer.

## Chto proverit pervym

1. Vse li `5` anchorov sobrany kak realnye controllable blocks, a ne kak nazvaniya ili pustye zaglushki.
2. Mozhno li po kazhdomu board deystvitelno otvetit na svyazannyy test-vopros bez ustnoy rasshifrovki avtora.
3. Net li lozhnykh system-specific detalei, kotorye vydayut draft za passport-bound ekspertnoe reshenie.

## Review matrix

| Asset | Anchor | Vopros | Outcome | Chto proverit | Status reviewer | Primechanie |
|---|---|---|---|---|---|---|
| `A-44` | `TV-01` | `Q-07` | `LO-03` | Chitaetsya li `rabochaya ploshchadka` kak otdelnaya gruppa, a ne kak obshchiy nabor elementov | `pending` | recognition board dolzhen uvesti ot chisto tekstovogo otveta |
| `A-45` | `TV-02` | `Q-08` | `LO-05` | Schityvaetsya li `ne godno v sborku` bez seroy zony `pochti godno` | `pending` | compare-card dolzhen vesti k mgnovennomu otboru |
| `A-46` | `TV-03` | `Q-16` | `LO-07`, `LO-09` | Vidno li, chto yarus bez polnogo nastila ili bez dostupa nedopustim dlya raboty | `pending` | worker-facing signal dolzhen byt binarnym |
| `A-47` | `TV-04` | `Q-21` | `LO-11`, `LO-13` | Vyzyvaet li board nemedlennuyu logiku `stop / ustranit / vernutsya` | `pending` | ne dopustit dekorativnogo `danger slide` bez funktsii |
| `A-48` | `TV-05` | `Q-22` | `LO-12` | Chitaetsya li sequence logic kak upravlyaemyy poryadok bez sbrosa vniz | `pending` | proverit, ne skatyvaetsya li visual v obshchuyu pamyatku |

## Generic-safe check

- [ ] Net system-specific uzlov bez istochnika
- [ ] Net pasportnykh chisel
- [ ] Net lozhnogo vpechatleniya finalnoy tekhnicheskoy validatsii
- [ ] Visual semantics chestno sootvetstvuet dostupnym istochnikam

## Review outcome

- Itog po targeted QA: `pending`
- Nuzhen li eshche odin revise-cycle: `pending`
- Mozhno li dvigat kurs k `pilot-ready contour`: `pending`

## Sleduyushchee deystvie

Posle zapolneniya etogo review:

1. libo zafiksirovat, chto assessment-validity gap zakryt dostatochno dlya sleduyushchego stage;
2. libo tochechno peresobrat samye slabye anchors, v pervuyu ochered `TV-04` i `TV-05`, esli oni okazhutsya metodicheski samymi neustoychivymi.
