# Asset Register

## Obshchaya informatsiya

- Nazvanie kursa: `Montazhnik lesov`
- Kod kursa: `ML`
- Data sborki registra: `2026-05-12`
- Owner: vy

## Reestr assets

| ID | Tip | Opisanie | Istochnik | Status | Gde ispolzuetsya | Primechanie |
|---|---|---|---|---|---|---|
| A-01 | photo | Hero-vizual po rabote na lesakh s korrektnoy organizatsiey rabot | nado nayti ili zaprosit | missing | slayd `01` | nuzhen silnyy startovyy kadr bez yavnykh narusheniy TB |
| A-02 | scheme | Lineynaya schema `ot dopuska k demontazhu` | mozhno sobrat vnutri prezentatsii | draft | slayd `02` | ne obyazatelno vneshnee izobrazhenie, mozhno sdelat dizaynerskoy skhemoy |
| A-03 | scheme | Tablitsa `Mozhno samostoyatelno / Nuzhna eskalatsiya` | mozhno sobrat vnutri prezentatsii | draft | slayd `03` | eto skoree kontentnaya schema, a ne storonniy asset |
| A-04 | scheme | Schema `Dopusk -> SIZ -> Ploshchadka -> Montazh` | mozhno sobrat vnutri prezentatsii | draft | slayd `04` | bazovaya logicheskaya schema dlya modulia 02 |
| A-05 | icon set | Nabor ikonok dlya cheklista dopuska | mozhno sobrat iz bezopasnogo icon set | draft | slayd `05` | nuzhny 5 prostykh ikonok v odnom stile |
| A-06 | photo / scheme | Komplekt SIZ s podpisiami | nado nayti proverennyy vizual ili sobrat svoyu skhemu | missing | slayd `06` | odin iz prioritetnykh assetov, potomu chto zakryvaet `LO-02` |
| A-07 | photo | Para `pravilno / nepravilno` po ekipirovke rabotnika | nado nayti ili postavit staged-primer | missing | slayd `07` | nuzhny vizualy bez pravovykh riskov i s ochevidnymi oshibkami |
| A-08 | card / scene | Keys po dopusku k rabote s 4-5 usloviyami | mozhno sobrat vnutri prezentatsii | draft | slayd `08` | eto kontentnaya kartochka, ne trebuet storonnego foto |
| A-09 | scheme | Obshchaya schema lesov s gruppami elementov | nado nayti bazovuyu skhemu ili pererisovat | missing | slayd `09` | kriticheski vazhnyy asset dlya modulia 03 |
| A-10 | scheme | Podpisannaya schema elementov lesov | nado nayti ili sobrat po skheme proizvoditelya | missing | slayd `10` | nuzhna dlya obyasneniya funktsiy elementov |
| A-11 | diagram | Diagramma `osnovanie + geometriya + kreplenie` | mozhno sobrat vnutri prezentatsii | draft | slayd `11` | vnutrennyaya infografika, ne trebuet storonnego istochnika |
| A-12 | comparison scheme | Vizual `ustoychivo / opasno` po skheme konstruktsii | nado sobrat po materialam modulia 03 | missing | slayd `12` | mozhet byt sdelan na osnove A-09 i A-10 |
| A-13 | scheme | Schema bez podpisey dlya mini-zadaniya po elementam | mozhno sobrat iz A-10 | missing | slayd `13` | proizvodnyy asset ot podpisannoy skhemy |
| A-14 | photo | Foto ploshchadki s risk-zonami | nado nayti realnyy primer ili bezopasnoe uchebnoe foto | missing | slayd `14` | zhelatelno foto stroitelnoy ploshchadki pered sborkoy |
| A-15 | icon set | Ikonki dlya cheklista ploshchadki | mozhno sobrat iz icon set | draft | slayd `15` | obyazatelna odinakovaya stilistika s A-05 |
| A-16 | photo pair | Para `gotovo / ne gotovo` po ploshchadke | nado nayti ili sobrat iz uchebnykh foto | missing | slayd `16` | odin iz samykh poleznykh assetov dlya modulia 04 |
| A-17 | photo set | Nabor elementov `godno / ne godno` | nado nayti foto realnykh elementov lesov | missing | slayd `17` | kriticheski nuzhen dlya priemki elementov |
| A-18 | card / photo set | Mini-keys po povrezhdennym i spornym elementam | mozhno sobrat iz A-17 | missing | slayd `18` | proizvodnyy asset ot foto elementov |
| A-19 | scheme | Finalnaya schema `Ploshchadka + Elementi = Start montazha` | mozhno sobrat vnutri prezentatsii | draft | slayd `19` | final modulia 04, bez vneshnego asseta |

## Rekomenduemye statusy

- `approved` - mozhno ispolzovat v release
- `draft` - material est ili mozhno bystro sobrat vnutri prezentatsii
- `replace` - material ne podkhodit, nuzhna zamena
- `missing` - material nuzhen, no eshche ne nayden

## Pokrytie kursa

- Instrumenty: chastichno pokryto, no nuzhny foto i skhemy po elementam lesov
- Materialy: nuzhny bazovye skhemy konstruktsii, uzlov i krepleniy
- Etapy raboty: modul 02 i 04 pokryvaetsya skhemami, no modul 03 silno zavisit ot tekhnicheskikh vizualov
- Tipovye oshibki: pokrytie slabo, kriticheski nuzhny `pravilno / nepravilno` primery
- TB: nuzhny vizualy po SIZ, dopusku i organizatsii opasnoy zony
- Prakticheskie situatsii: mozhno delat kartochkami vnutri prezentatsii, no foto-situatsii usilyat kurs

## Problemy po assets

- Chto ne khvataet:
  - foto i skhem po systeme lesov;
  - vizualov po SIZ;
  - foto ploshchadki i risk-zon;
  - foto elementov `godno / ne godno`;
  - primerov pravilnoy i nepravilnoy sborki.
- Chto slabogo kachestva:
  - poka vse vizualnye potrebnosti na storone registra; gotovykh proverennykh assetov eshche net.
- Chto trebuet soglasovaniya:
  - mozhno li ispolzovat foto s realnykh obektov;
  - kakie foto i skhemy proizvoditelya mozhno zakonno vstavlyat v kurs;
  - mozhno li delat sobstvennye pererisovki po pasportu sistemy lesov.

## Prioritet 1

- `A-06` Komplekt SIZ s podpisiami
- `A-09` Obshchaya schema lesov
- `A-10` Podpisannaya schema elementov
- `A-14` Foto ploshchadki s risk-zonami
- `A-16` Para `gotovo / ne gotovo` po ploshchadke
- `A-17` Nabor elementov `godno / ne godno`

## Prioritet 2

- `A-07` Vizual `pravilno / nepravilno` po SIZ
- `A-12` Vizual `ustoychivo / opasno`
- `A-13` Schema dlya mini-zadaniya
- `A-18` Mini-keys po spornym elementam

## Reshenie po gotovnosti

- Asset pack gotov k sborke: `no`
- Chto nado dosobrat pered production:
  - minimum `Prioritet 1`, chtoby mozhno bylo bez slabykh zaglushek sobirat moduli `02-04`;
  - pasport konkretnoy sistemy lesov ili legalnuyu skhemu po etoy sisteme;
  - vizualy, kotorye mozhno bezopasno ispolzovat v release.
