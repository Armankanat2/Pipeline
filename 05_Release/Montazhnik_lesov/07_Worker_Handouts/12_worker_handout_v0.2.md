# Worker Handout Draft

## Obshchaya informatsiya

- Nazvanie materiala: `Karmannaya pamyatka montazhnika lesov`
- Kod kursa: `ML`
- Klient / client code: `generic`
- Svyaz s kursom: `Materials 2` dlya kursa `Montazhnik lesov`
- Tselevaya auditoriya: rabochie
- Versiya: `v0.2`
- Status: expanded handout draft

## Vybrannaya logika etoy iteratsii

- Bazovyy kontur: `Variant 1` kak odnostoronniy ili dvustoronniy A5-handout
- Tsel: dat rabochemu karmannyy minimum, kotoryy mozhno derzhat pri sebe ili poluchit posle instrukta zha
- Ton: maksimalno kompaktno, bez razvernutykh obyasneniy
- Printsip sborki: `1 glavnaya mysl -> 1 korotkiy blok -> 3-7 punktov`
- Brand shell obyazatelen dazhe v superkompaktnoy versii

## Variant 1. Bazovaya instruktsiya

- Format: `A5`
- Nositel: `single sheet` kak predpochtitelnyy variant; `mini-booklet` kak rezerv
- Shtab materiala: maksimalno kompaktniy
- Shrift: ochen melkij, no ostavayushchiysya pechatno chitabelnym
- Obyazatelnye elementy:
  - logotip kompanii
  - nazvanie kompanii
  - nazvanie materiala
  - kratkiy algoritm deystviy
  - blok zapretov

### Bazovaya sborka `v0.2`

- Storona / panel `01`: identifikatsiya i blok `pered rabotoy`
- Storona / panel `02`: blok `chego delat nelzya` i pri neobkhodimosti `komu soobshchit`
- Rekomenduemyy format teksta:
  - zagolovok 1 stroka
  - 3-5 punktov `pered rabotoy`
  - 3-5 punktov `nelzya`
  - 1 mini-blok eskalatsii

### Rabochiy tekst dlya bazovogo handout

#### Storona 01

- Zagolovok: `Montazhnik lesov`
- Podzagolovok: `Karmannaya pamyatka pered nachalom rabot`
- Mikrocopy:
  - `Pered rabotoy prover dopusk, SIZ, ploshchadku i elementy.`
  - `Esli net gotovnosti - net starta montazha.`
- Blok `Prover pered rabotoy`:
  - est li dopusk i instruktag
  - ispravny li kaska, privyaz, obuv
  - gotova li ploshchadka i zona rabot
  - godny li elementy bez defektov

#### Storona 02

- Zagolovok: `Chego delat nelzya`
- Mikrocopy:
  - `Ne nachinay rabotu bez proverki.`
  - `Ne improviziruy tam, gde nuzhna eskalatsiya.`
- Blok `Nelzya`:
  - rabotat bez dopuska i proverki SIZ
  - brat povrezhdennye ili spornye elementy
  - nachinat montazh na negotovoy ploshchadke
  - menyat skhemu samovolno
- Mini-blok `Soobshchi`:
  - masteru
  - rukovoditelyu rabot
  - otvetstvennomu za bezopasnost, esli eto predusmotreno lokalno

## Variant 2. Custom-handout po tablitse tem

| ID | Tema prezentatsii / slaydy | Vkhodnaya mysl | Vkhodit v bazovyy handout | Vkhodit v custom-handout | Format podachi | Chto ne khvataet |
|---|---|---|---|---|---|---|
| H-01 | `04-08` dopusk i SIZ | proverka gotovnosti do starta rabot | yes | yes | `short list` | nuzhny finalnye branded nazvaniya |
| H-02 | `09-11` logika ustoychivosti | ne narushat skhemu i funktsii elementov | no | yes | `mini-card` | nuzhny vizualy elementov |
| H-03 | `15-19` ploshchadka i priemka | net gotovoy ploshchadki = net starta | yes | yes | `foldout` | nuzhny polevye foto |

### Logika custom-sborki

- `H-01` mozhno delat kak front-side minimalnoy pamyatki
- `H-02` podkhodit dlya otdelnoy A5-kartochki `vo vremya raboty`
- `H-03` podkhodit dlya dvustoronnego handout s aktsentom na start montazha
- esli klient khochet uzkuyu temu, custom-handout sobiraetsya iz odnogo bloka bez obyazatelnogo povtora vsey bazovoy logiki

### Potentsialnye custom-varianty

| ID | Naznachenie | Baza iz slaydov | Format |
|---|---|---|---|
| C-01 | `Dopusk i SIZ` | `04-08` | odnostoronniy A5 |
| C-02 | `Ploshchadka i elementi` | `14-19` | dvustoronniy A5 |
| C-03 | `Ne narushay ustoychivost` | `09-12` | A5 mini-card |

## Utochnyayushchie voprosy

| ID | K chemu otnositsya | Vopros | Status | Otvet |
|---|---|---|---|---|
| HQ-01 | `brand` | Est li gotovye logotipy i korotkoe ofitsialnoe nazvanie kompanii dlya A5? | open |  |
| HQ-02 | `content` | Nuzhen li handout na odnom A5-liste ili v vide mini-booklet? | open |  |
| HQ-03 | `visual` | Est li materialy iz prezentatsii, kotorye klient khochet obyazatelno produblirovat v razdatochke? | open |  |

## Dizayn-printsipy dlya A5

- logotip i nazvanie kompanii dolzhny schityvat'sya s pervogo vzglyada;
- ochen melkij shrift dopustim tolko pri vysokom kontraste i plotnoy setke;
- nelzya peregruzhat handout dolgimi obyasneniyami;
- handout dolzhen vmeshchat'sya v ruku, karmannuyu papku ili paket dokumentov rabotnika.

## Paket vydachi

| Artefakt | Obyazatelnost | Status |
|---|---|---|
| Bazovyy A5-handout | required | expanded draft `v0.2` |
| Custom A5-handout | optional | not requested |

## Otkrytye zavisimosti

- nuzhny finalnye branded nazvaniya i logotipy;
- nuzhno reshit, budet li bazovyy handout odnostoronnim ili dvustoronnim;
- dlya custom-variantov nuzhny vizualy elementov i ploshchadki;
- posle dopiski moduley `05+` mozhno dobavit uzkuyu A5-kartochku po montazhu i krepleniyu.
