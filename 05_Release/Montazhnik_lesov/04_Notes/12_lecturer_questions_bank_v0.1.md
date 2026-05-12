# Lecturer Questions Bank

## Obshchaya informatsiya

- Nazvanie kursa: `Montazhnik lesov`
- Kod kursa: `ML`
- Versiya: `v0.1`
- Dlya kakogo release / klienta: `generic`
- Owner: vy

## Pravilo ispolzovaniya

- bank dopolnyaet `instructor guide`, a ne zamenyaet ego;
- esli vopros trebuet pasport konkretnoy sistemy lesov, lokalnyy reglament ili tekhnicheskogo eksperta, lektor ne dolzhen improvizirovat kak budto otvet universalnyy;
- worker-voprosy nuzhny dlya yazyka deystviy, ITR-voprosy dlya yazyka organizatsii i kontrolya.

## Bank voprosov

| ID | Auditoriya | Modul / tema | Vopros | Korotkiy otvet | Rasshirennyy otvet | Chto nelzya govorit slishkom zhostko | Kogda nuzhna ogovorka ili eskalatsiya |
|---|---|---|---|---|---|---|---|
| LQ-01 | Worker | Dopusk | `Mozhno li nachat rabotu, esli vse na meste, no est somneniya po usloviyam?` | net | raboty na lesakh nachinayutsya ne po faktu pribytiya brigady, a po faktu dopuska i proverki | nelzya govorit `nu smotrite po obstanovke` | esli sprashivayut pro konkretnyy lokalnyy poryadok dopuska |
| LQ-02 | Worker | SIZ | `Esli SIZ vydany, znachit li eto, chto mozhno nachinat?` | net | vydacha bez prigodnosti, pravilnogo primeneniya i sootvetstviya usloviyam ne delaet rabotu dopustimoy | nelzya svodit vse k `galochke po vydache` | esli nuzhen perechen SIZ po konkretnomu zakazchiku |
| LQ-03 | Worker | Elementy | `Mozhno li vzyat element, esli on nemnogo povrezhden, no vizualno derzhitsya?` | net | povrezhdennyy ili spornyy element ne dolzhen popadat v sborku bez resheniya po reglamentu | nelzya govorit `esli akuratno, to mozhno` | esli nuzhna otsenka po konkretnomu tipu elementa ili sisteme |
| LQ-04 | Worker | Start montazha | `Mozhno li ukrepit svyazi i geometriyu chutochku pozhe, kogda uskorimsya?` | net | bezopasnost nachala sborki ne otkladyvayetsya na potom, potomu chto oshibka uje vstroena v osnovanie skhemy | nelzya normalizovat `snachala soberem, potom proverim` | esli nachinayut sprashivat pro dopustimye otstupleniya ot skhemy sistemy |
| LQ-05 | Worker | Nabor vysoty | `Esli yarus ne zakryt polnostyu, mozhno li bystro prodolzhit montazh?` | ne dolzhno byt avtomaticheskogo `da` | nedostroennyy yarus ne schitaetsya bezopasnoy rabochey pozitsiey; nuzhna otsenka sostoyaniya i stop-logika | nelzya obeshchat, chto `esli nemnogo ostalos, mozhno` | esli situatsiya zavisit ot konkretnoy skhemy, krepleniy ili lokalnykh pravil |
| LQ-06 | Worker | Ekspluatatsiya | `Raz lesa uje sobrany, mozhno li srazu rabotat?` | net | mezhdu sborkoy i rabotoy est obyazatelnyy etap proverki i dopuska k ekspluatatsii | nelzya skazyvat `sobrali - znachit gotovo` | esli nuzhen konkretnyy poryadok priemki na obekte |
| LQ-07 | Worker | Nagruzka | `Skolko materiala mozhno klast na yarus?` | bez pasporta sistemy universalnogo chisla net | lektor obyazan obyasnit printsip kontrolya nagruzki, no ne vydumyvat tsifry bez tekhnicheskoy osnovy | nelzya davat `na glaz` konkretnye dopuski | vsegda, esli net pasporta ili raschetnykh dannykh |
| LQ-08 | Mixed | Eskalatsiya | `Kto dolzhen ostanovit rabotu, esli est somneniya?` | ne tolko odin chelovek, no ostanovka dolzhna byt sdelana | kurs zakreplyaet, chto pri yavnom riske reshenie ne dolzhno otkladyvatsya do `udobnogo momenta` | nelzya perekladivat vsyo tolko na `nachalstvo` ili tolko na `rabochego` | esli nado utochnit formalnyy poryadok po rolyam na konkretnom obekte |
| LQ-09 | ITR | Roli | `Kto otvechaet za dopusk k rabotam i proverku usloviy starta?` | eto dolzhno byt razvedeno po rolyam i protseduram | ITR-versiya kursa dolzhna usilit logiku roley, dokumentov i kontrolya, a ne ostavit otvet na urovne brigady | nelzya govorit `eto vsegda reshaet odin chelovek` | esli sprashivayut pro konkretnuyu organizatsionnuyu model zakazchika |
| LQ-10 | ITR | Dokumenty | `Kakie dokumenty nuzhno proverit do nachala rabot?` | zavisit ot kontura rabot, no proverka dokumentov obyazatelna | lektor dolzhen govorit o klasse dokumentov i osnovanii dlya dopuska, a ne vytaskivat sluchaynye spiski bez konteksta | nelzya davat vid, chto est odin universalnyy spisok na vse obekty | esli nuzhna privyazka k lokalnoy sisteme razresheniy |
| LQ-11 | ITR | Kontrol | `Kogda ITR dolzhen blokirovat raboty, esli brigada uzhe gotova?` | kogda usloviya bezopasnosti ne vypolneny | organizatsionnaya oshibka chasto v tom, chto gotovnost brigady podmenyaet gotovnost usloviy | nelzya opravdyvat prodolzhenie raboty `srokami` | esli nuzhny formalnye osnovaniya dlya zapreta po vnutrennim reglamentam |
| LQ-12 | Mixed | Konflikt roley | `Chto delat, esli rabochie schitayut, chto mozhno rabotat, a ITR somnevaetsya?` | reshenie dolzhno idti cherez stop-logiku i proverku, a ne cherez spor `kto uverennee` | kurs dolzhen uvesti ot lichnogo mneniya k kriteriyam: dopusk, sostoyanie, kreplenie, zashchita, marshrut, nagruzka | nelzya svodit konflikt k `kto starshiy, tot i prav` bez kriteriev | esli spor zavisit ot pasporta sistemy ili lokalnogo reglamenta |

## Otkrytye probely

- poka net razvernutogo banka po moduliam `08-09`, kogda oni budut dopisany;
- po voprosam krepleniy, dopustimykh rezhimov nagruzki i konkretnykh elementov nuzhen pasport sistemy lesov;
- dlya polnotsennoy ITR-versii nuzhna matritsa roley i otvetstvennosti.

## Reshenie po gotovnosti

- Bank gotov dlya ispolzovaniya lektorom: `yes`, kak starter draft
- Chto nado dosobrat:
  - dobavit voprosy po moduliam `08-09`;
  - utochnit case-based voprosy posle polucheniya pasporta konkretnoy sistemy;
  - rasshirit ITR-vetku posle sborki organizatsionnogo kontura.
