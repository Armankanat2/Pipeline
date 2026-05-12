# Worker Behavior Map

## Status

Starter draft for `worker` track.

## Obshchaya informatsiya

- Nazvanie kursa: `Montazhnik lesov`
- Kod kursa: `ML`
- Data sborki: `2026-05-12`
- Owner: vy
- Svazannaya architecture: `05_course_architecture_v0.1.md`

## Reestr critical behaviors

| ID | Critical behavior | Kogda primenyaetsya | Chto delat | Chto nelzya delat | Stop / eskalatsiya | Svazannyy modul | Svazannyy slayd | Svazannyy vopros testa | Svazannyy worker material |
|---|---|---|---|---|---|---|---|---|---|
| WB-01 | Nachinay rabotu tolko posle dopuska i proverki SIZ | pered rabotoy | proverit dopusk, instruktag, SIZ i bazovye usloviya starta | ne nachinat rabotu "s instrumenta" ili "srazu s montazha" | ostanovit start, esli net dopuska ili SIZ ne goden | `01`, `02` | `04`, `05`, `06` | `Q-01`, `Q-02`, `Q-05` | `02/05` |
| WB-02 | Ne nachinay montazh, esli ploshchadka ili elementi ne gotovy | pered rabotoy | proverit osnovanie, podkhody, opasnuyu zonu i priemku elementov | ne nachinat sborku na plokho podgotovlennoy ploshchadke ili s povrezhdennymi elementami | stop pri negotovoy ploshchadke, nekomplekte ili povrezhdenii elementov | `04` | `14`, `15`, `17`, `19` | `Q-03`, `Q-08`, `Q-09`, `Q-10` | `02/05`, `05/05` |
| WB-03 | Ne improviziruy tam, gde nuzhna eskalatsiya | pered rabotoy / vo vremya | pri spornoy ili neyasnoy situatsii peredat vopros masteru ili otvetstvennomu | ne "dorabatyvat po mestu" i ne prinimat odinochnye resheniya po skheme, dopusku ili defektam | stop i eskalatsiya pri lyubom spornom uzle, dopuske ili defekte | `01`, `02`, `08`, `09` | `03`, `08`, `18` | `Q-04`, `Q-20` | `03/05`, `05/05` |
| WB-04 | Derzhi osnovanie, geometriyu i kreplenie pod kontrolem s samogo starta | vo vremya raboty | sbirat bazu i pervyy yarus po skheme, kontroliruya geometriyu i logiku ustoychivosti | ne schitat, chto osnovanie ili geometriyu mozhno "podpravit potom" | stop, esli baza ili nizhniy kontur sobrany s yavnymi narusheniyami | `03`, `05` | `11`, `20`, `21`, `22`, `23` | `Q-06`, `Q-11`, `Q-12`, `Q-13` | `03/05` |
| WB-05 | Ne prodolzhay nabor vysoty bez svyazey, krepleniy i kontrolya pervogo yarusa | vo vremya raboty | pered prodolzheniem proverit pervyy yarus, svyazi, krepleniya i zhestkost skhemy | ne narashchivat konstruktsiyu "vverkh", esli shema eshche ne stabilna | stop pri otsutstvii svyazey, krepleniy ili priznakakh perekosa | `06` | `26`, `27`, `31`, `35` | `Q-14`, `Q-15` | `03/05`, `05/05` |
| WB-06 | Ne rabotay s nepolnogo yarusa i ne peregruzhay konstruktsiyu | vo vremya raboty | proverit polnyy nastil, bezopasnyy dostup i dopustimyy rezhim nagruzki | ne vykhodit na yarus bez nastila ili dostupa, ne skladavat materialy kak popalo | stop pri nepolnom yaruse, opasnom dostupe ili priznakakh peregruzki | `06`, `07` | `28`, `30`, `32`, `39` | `Q-16`, `Q-17` | `03/05`, `05/05` |
| WB-07 | Dopuskay k ekspluatatsii tolko proverennye lesa i ostanavlivay rabotu pri riskakh | posle raboty / vo vremya raboty | proyti cheklist gotovnosti, sledit za nagruzkoy, predmetami i priznakami opasnogo rezhima | ne schitat, chto posle sborki lesa avtomaticheski bezopasny | stop i eskalatsiya pri povrezhdenii, otsutstvii zashchity, peregruzke ili drugom opasnom signale | `07` | `37`, `38`, `41`, `43` | `Q-18`, `Q-19`, `Q-20` | `04/05`, `05/05` |

## Kak chitat etu kartu

- `Critical behavior` eto ne tema slayda, a opornoe pravilo povedeniya rabochego.
- Karta nuzhna, chtoby svyazat architecture, script, test i worker-materials v odnu povtoryaemuyu logiku.
- Kazhdoe pravilo dolzhno povtoryat'sya minimum v trekh sloyakh:
  - v obuchayushchem slayde;
  - v teste ili situatsionnom razbore;
  - v A3 / A5 worker-materiale.

## Svodka po pokrytiyu worker-layer

- `pered rabotoy`: `WB-01`, `WB-02`
- `vo vremya raboty`: `WB-03`, `WB-04`, `WB-05`, `WB-06`
- `posle raboty / dopusk k ekspluatatsii`: `WB-07`
- `chego delat nelzya`: skvozno pokryvaetsya `WB-02` - `WB-07`

## Otkrytye zavisimosti

- dlya usileniya `WB-02`, `WB-05`, `WB-06`, `WB-07` nuzhna asset-baza po slaydam `20-43`;
- posle dopisaniya moduley `08-09` nuzhno proverit, ne nuzhno li utochnit `WB-03` i `WB-07` pod oshibki i demontazh;
- posle sborki A5-handout nuzhno dobavit i ego svyazku v kolonku `Svazannyy worker material`.

## Reshenie po gotovnosti

- Worker behavior map gotova: `starter draft / yes`
- Chto nuzhno proverit:
  - naskolko `7` pravil dostatochno dlya finalnoy worker-versii;
  - gde nuzhny bolee silnye foto i `correct / incorrect / risk` visuals;
  - kak eti pravila utochnitsya posle moduley `08-09`.
