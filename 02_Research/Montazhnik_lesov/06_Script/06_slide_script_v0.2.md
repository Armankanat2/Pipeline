# Slide Script

## Status

Expanded draft for modules `01-09`.

Etot draft sobran po rannemu formatu kartochki. Dlya sleduyushchikh iteratsiy nuzhno postepenno dobavit polya `source basis`, `asset dependency`, `perekhody`, a takzhe enrichment-layer (`on-screen`, `narration`, `knowledge check hook` i drugie polya) posle stabilizatsii writer core.

V tekushchem contoure dlya kursa po lesam zafiksirovan obyazatelnyy `pre-montage insert` pered poshagovoy sborkoy:

- instrumenty montazhnika;
- `2` slayda po komplektuyushchim klinovykh lesov;
- `2` slayda po komplektuyushchim khomutovykh lesov.

## Pokrytie etoy iteratsii

V etoy versii razvernuty moduli:

- `01` Vvedenie v kurs i granitsy otvetstvennosti
- `02` Dopusk, SIZ i bazovye pravila TB
- `03` Ustroystvo lesov: elementi i logika ustoychivosti
- `04` Podgotovka ploshchadki i priemka elementov
- `05` Start montazha: baza i pervyy yarus
- `06` Nabor vysoty, kreplenie i zhestkost skhemy
- `07` Proverka pered ekspluatatsiey i pravila raboty na lesakh
- `08` Tipovye oshibki i avariynye predposylki
- `09` Bezopasnyy demontazh

Sleduyushchaya iteratsiya:

- QA readiness sync po course-core `01-09`
- rasshirenie test contoura i svyazki `test pack -> answer key -> test check sheet` na outcomes `LO-11` i `LO-12`
- backfill novykh writer-first poley po moduliam `01-07`, ne lomaia uzhe sobrannuyu logiku

## Generic-safe content rule

- Etot script dolzhen ostavat'sya v `generic-safe` granitse, poka net pasporta konkretnoy sistemy lesov, lokalnykh reglamentov i ekspertnoy validatsii
- Mozhno zhestko fiksirovat:
  - logiku dopuska, SIZ, stop-signalov i eskalatsii;
  - bazovye printsipy podgotovki ploshchadki, priemki elementov, proverki i bezopasnoy posledovatelnosti rabot;
  - obshchuyu logiku ustoychivosti, krepleniy, nagruzki i zapreta na opasnuyu improvizatsiyu.
- Nelzya bez dopolnitelnykh istochnikov fiksirovat kak obyazatelnuyu normu:
  - tochnyy poryadok sborki imenno dlya konkretnoi sistemy;
  - konkretnye skhemy krepleniya i shag krepleniy;
  - tochnye dopustimye nagruzki i lokalnye poryadki dopuska, esli oni zavisyat ot rabotodatelya ili pasporta sistemy.
- Esli v slayde voznikayet risk system-specific utverzhdeniya, prioritet u printsipa, a ne u lozhnoi konkretnosti.

## Kartochki slaydov

### Slayd 01

- Nomer slayda: `01`
- Modul: `01. Vvedenie v kurs i granitsy otvetstvennosti`
- Tip slayda: `title`
- Sloy kontenta: `core`
- Dlya kakogo profilya obyazatelen: `Short / Standard / Deep`
- Tsel slayda: otkryt kurs i zadat professionalnyy kontekst
- Odna glavnaya mysl: kurs pro bezopasnuyu i sistemnuyu rabotu s lesami, a ne pro "kak-nibud sobrat konstruktsiyu"
- Chto dolzhen ponyat slushatel: tema kursa svyazana s vysokim riskom i trebuyet distsiplinirovannykh resheniy
- Vizual: siluet rabot na lesakh ili foto obekta s bezopasnoy organizatsiey rabot
- Tekst na slayde: `Montazhnik stroitelnykh lesov: bezopasnaya sborka, proverka i ekspluatatsiya`
- Speaker notes: srazu oboznachte, chto kurs ne zamenyaet pasport konkretnoy sistemy lesov i lokalnye reglamenty, no dayot bazovuyu oporu dlya pravilnykh resheniy; pri title-only override zdes menyaetsya tolko professionalnoe nazvanie na oblozhke, a ne sam kurs
- Svyazannyy learning outcome: `LO-01`
- Svyazannyy vopros testa: `Q-01`
- Primechanie dlya dizayna: krupnyy zagolovok, minimum teksta, odin silnyy vizual; zagolovok dolzhen byt legko zamenyaemym dlya branded ili title-only versii

### Slayd 02

- Nomer slayda: `02`
- Modul: `01. Vvedenie v kurs i granitsy otvetstvennosti`
- Tip slayda: `goal`
- Sloy kontenta: `core`
- Dlya kakogo profilya obyazatelen: `Short / Standard / Deep`
- Tsel slayda: pokazat, chemu imenno uchit kurs
- Odna glavnaya mysl: tsel kursa ne vyuchit terminy, a nauchitsya prinimat bezopasnye resheniya
- Chto dolzhen ponyat slushatel: klyuchevye bloki kursa svyazany s dopuskom, sborkoy, proverkoy, ekspluatatsiey i demontazhom
- Vizual: skhema `ot dopuska k demontazhu`
- Tekst na slayde: `Posle kursa vy smozhete raspoznat risk, proverit gotovnost i ne dopustit tipovye oshibki`
- Speaker notes: korotko projdite po marshrutu kursa i svyazhite ego s realnymi riskami na obekte
- Svyazannyy learning outcome: `LO-13`
- Svyazannyy vopros testa: `Q-02`
- Primechanie dlya dizayna: timeline ili lineynaya skhema

### Slayd 03

- Nomer slayda: `03`
- Modul: `01. Vvedenie v kurs i granitsy otvetstvennosti`
- Tip slayda: `role definition`
- Sloy kontenta: `standard`
- Dlya kakogo profilya obyazatelen: `Standard / Deep`
- Tsel slayda: obyasnit, kto takoy montazhnik lesov i v chem ego rabochaya rol
- Odna glavnaya mysl: montazhnik lesov - eto rabochiy, kotoryy sobiraet, razbiraet, proverayet i vedet raboty na lesakh v granitsakh svoego dopuska i instruktsiy
- Chto dolzhen ponyat slushatel: rol montazhnika - ne pro "sdelat lyuboy tsenoy", a pro bezopasnuyu sborku, proverku, ekspluatatsiyu i ostanovku rabot pri riske
- Vizual: tablitsa `Chto delaet montazhnik / Chto on ne dolzhen reshat odin`
- Tekst na slayde: `Montazhnik lesov rabotaet po dopusku, pravilam i bez opasnoy improvizatsii`
- Speaker notes: korotko svyazhite professiyu s sborkoy, razborkoy, proverkoy, ekspluatatsiey i granitsami polnomochiy; ostavte most k sleduyushchemu slaydu pro dopusk k rabote
- Svyazannyy learning outcome: `LO-13`
- Svyazannyy vopros testa: `Q-03`
- Primechanie dlya dizayna: dve kontrastnye kolonki

### Slayd 04

- Nomer slayda: `04`
- Modul: `02. Dopusk, SIZ i bazovye pravila TB`
- Tip slayda: `principle`
- Sloy kontenta: `core`
- Dlya kakogo profilya obyazatelen: `Short / Standard / Deep`
- Tsel slayda: zadat bazovoe pravilo modulia po dopusku
- Odna glavnaya mysl: k rabote montazhnikom lesov dopuskayetsya tolko rabotnik, proshyedshiy obyazatelnuyu podgotovku i proverki, vklyuchaya raboty na vysote
- Chto dolzhen ponyat slushatel: raboty na lesakh nachinayutsya ne s instrumenta, a s dopuska, medosmotra, obucheniya, instruktagha i proverki usloviy
- Vizual: schema `Medosmotr -> Obuchenie po vysote -> Instruktag -> Dopuskaetsya k rabote`
- Tekst na slayde: `Rabota na lesakh - eto rabota na vysote, k ney dopuskayut tolko posle podgotovki`
- Speaker notes: svyazhite slayd s `782n`; podcherknite, chto rabota na vysote otnositsya k opasnym vidam rabot, poetomu dopusk bez proydennogo obucheniya i obyazatelnykh proverok nedopustim
- Svyazannyy learning outcome: `LO-01`
- Svyazannyy vopros testa: `Q-04`
- Primechanie dlya dizayna: lineynaya schema s 4 shagami

### Slayd 05

- Nomer slayda: `05`
- Modul: `02. Dopusk, SIZ i bazovye pravila TB`
- Tip slayda: `checklist`
- Sloy kontenta: `core`
- Dlya kakogo profilya obyazatelen: `Short / Standard / Deep`
- Tsel slayda: dat minimum usloviy pered nachalom rabot
- Odna glavnaya mysl: pered nachalom montazha est obyazatelnyy minimum proverok
- Chto dolzhen ponyat slushatel: raboty ne nachinayutsya, esli ne podtverzhdeny medosmotr, obuchenie po rabote na vysote, instruktag, SIZ i usloviya raboty
- Vizual: cheklist iz 5 punktov
- Tekst na slayde: `Pered startom prover: medosmotr, obuchenie po vysote, instruktag, SIZ, gotovnost mesta rabot`
- Speaker notes: ne razduvayte cheklist; eto dolzhen byt zapominaemyy minimum dopuska imenno dlya montazhnika lesov
- Svyazannyy learning outcome: `LO-01`
- Svyazannyy vopros testa: `Q-05`
- Primechanie dlya dizayna: ikonki dlya kazhdogo punkta

### Slayd 06

- Nomer slayda: `06`
- Modul: `02. Dopusk, SIZ i bazovye pravila TB`
- Tip slayda: `equipment`
- Sloy kontenta: `core`
- Dlya kakogo profilya obyazatelen: `Short / Standard / Deep`
- Tsel slayda: zakrepit bazovyy nabor obshcheproizvodstvennykh SIZ pered perekhodom k vysotnym riskam
- Odna glavnaya mysl: obshcheproizvodstvennye SIZ - eto bazovoe uslovie bezopasnogo dopuska, a ne formalnost
- Chto dolzhen ponyat slushatel: bez ispravnykh obshcheproizvodstvennykh SIZ rabota nedopustima eshche do otdelnogo razgovora o rabote na vysote
- Vizual: komplekt obshcheproizvodstvennykh SIZ s podpisyami
- Tekst na slayde: `Obshcheproizvodstvennye SIZ dolzhny byt ispravny i gotovy do starta rabot`
- Speaker notes: podcherknite, chto seychas my govorim imenno pro bazovyy obshcheproizvodstvennyy kontur; SIZ dlya raboty na vysote budut usilivat etot bazovyy minimum, a ne zamenyat ego
- Svyazannyy learning outcome: `LO-02`
- Svyazannyy vopros testa: `Q-06`
- Primechanie dlya dizayna: foto-komplekt ili vektornaya schema

### Slayd 07

- Nomer slayda: `07`
- Modul: `02. Dopusk, SIZ i bazovye pravila TB`
- Tip slayda: `comparison`
- Sloy kontenta: `standard`
- Dlya kakogo profilya obyazatelen: `Standard / Deep`
- Tsel slayda: nauchit raspoznavat oshibki po SIZ
- Odna glavnaya mysl: chasto opasnost vidna eshche do nachala rabot, esli smotret na ekipirovku
- Chto dolzhen ponyat slushatel: rabotnik mozhet byt formalno osnashchen, no fakticheski ne gotov k rabote
- Vizual: `pravilno / nepravilno` po ekipirovke
- Tekst na slayde: `Vydannyy SIZ i ispolzuemyy pravilno SIZ - eto ne odno i to zhe`
- Speaker notes: poprosite auditoriyu samostoyatelno nayti minimum 3 oshibki
- Svyazannyy learning outcome: `LO-02`
- Svyazannyy vopros testa: `Q-07`
- Primechanie dlya dizayna: dvoinaya fotografiya ili illustratsiya

### Slayd 08

- Nomer slayda: `08`
- Modul: `02. Dopusk, SIZ i bazovye pravila TB`
- Tip slayda: `scenario`
- Sloy kontenta: `extended`
- Dlya kakogo profilya obyazatelen: `Deep`
- Tsel slayda: razobrat situatsiyu po dopusku k rabote
- Odna glavnaya mysl: dazhe pri nalichii brigady i materialov raboty mogut byt ostanovleny
- Chto dolzhen ponyat slushatel: usloviya dopuska proverayutsya kompleksno
- Vizual: kartochka-keis `Brigada gotova?`
- Tekst na slayde: `Keys: mozhno li nachat raboty pryamo seychas?`
- Speaker notes: dayte 4-5 usloviy, sredi kotorykh 2 kriticheskikh blokera
- Svyazannyy learning outcome: `LO-01`
- Svyazannyy vopros testa: `Q-08`
- Primechanie dlya dizayna: kartochka situatsii, bez peregruza tekstom

### Slayd 09

- Nomer slayda: `09`
- Modul: `03. Ustroystvo lesov: elementi i logika ustoychivosti`
- Tip slayda: `concept`
- Sloy kontenta: `core`
- Dlya kakogo profilya obyazatelen: `Short / Standard / Deep`
- Tsel slayda: obyasnit, chto lesa eto sistema, a ne nabor razroznennykh detaley
- Odna glavnaya mysl: ustoychivost lesov voznikayet iz pravilnoy raboty vsekh elementov vmeste
- Chto dolzhen ponyat slushatel: nelzya otsenivat bezopasnost po odnomu uzlu v otryve ot vsey skhemy
- Vizual: obshchaya schema lesov s vydelennymi gruppami elementov
- Tekst na slayde: `Lesa derzhatsya na sisteme, a ne na odnom "silnom" elemente`
- Speaker notes: svyazhite slayd s tem, pochemu propusk svyazey ili krepleniy razrushaet logiku vsey konstruktsii
- Svyazannyy learning outcome: `LO-03`
- Svyazannyy vopros testa: `Q-09`
- Primechanie dlya dizayna: skhema s tsvetovym kodirovaniem grupp elementov

### Slayd 10

- Nomer slayda: `10`
- Modul: `03. Ustroystvo lesov: elementi i logika ustoychivosti`
- Tip slayda: `scheme`
- Sloy kontenta: `core`
- Dlya kakogo profilya obyazatelen: `Short / Standard / Deep`
- Tsel slayda: dat bazovye gruppy elementov i ikh funktsii
- Odna glavnaya mysl: u kazhdoy gruppy elementov est svoya rol v geometrii, zhestkosti i bezopasnosti
- Chto dolzhen ponyat slushatel: stoiki, gorizontalnye elementi, svyazi, nastily i ograzhdeniya nelzya putat po funktsii
- Vizual: podpisannaya schema elementov
- Tekst na slayde: `Stoiki nesut, svyazi derzhat geometriyu, nastily dayut rabochuyu ploshchadku`
- Speaker notes: izbegayte pereizbytka terminov; fokus na funktsii, a ne na entsiklopedicheskom spiske
- Svyazannyy learning outcome: `LO-03`
- Svyazannyy vopros testa: `Q-10`
- Primechanie dlya dizayna: minimalno 5 podpisey, ne melchit

### Slayd 11

- Nomer slayda: `11`
- Modul: `03. Ustroystvo lesov: elementi i logika ustoychivosti`
- Tip slayda: `logic`
- Sloy kontenta: `core`
- Dlya kakogo profilya obyazatelen: `Short / Standard / Deep`
- Tsel slayda: obyasnit logiku ustoychivosti prostym yazykom
- Odna glavnaya mysl: esli narushena geometriya, kreplenie ili opora, risk proyavitsya ne lokalno, a po vsey skheme
- Chto dolzhen ponyat slushatel: ustoychivost nelzya "dobrat pozhe", esli osnova postroena s oshibkoy
- Vizual: tri faktora ustoychivosti `osnovanie / svyazi / kreplenie`
- Tekst na slayde: `Ustoychivost = osnova + geometriya + kreplenie`
- Speaker notes: eto opornyy slayd dlya dalneyshego montazha
- Svyazannyy learning outcome: `LO-08`
- Svyazannyy vopros testa: `Q-11`
- Primechanie dlya dizayna: formula ili triadnaya diagramma

### Slayd 12

- Nomer slayda: `12`
- Modul: `03. Ustroystvo lesov: elementi i logika ustoychivosti`
- Tip slayda: `comparison`
- Sloy kontenta: `standard`
- Dlya kakogo profilya obyazatelen: `Standard / Deep`
- Tsel slayda: pokazat, kak vyglyadit konstruktsiya s narushennoy logikoy
- Odna glavnaya mysl: opasnost chasto vidna po otsutstviyu elementa ili nesbalansirovannoy skheme
- Chto dolzhen ponyat slushatel: ne nado zhdat obvala, chtoby ponyat, chto konstruktsiya sobrana opasno
- Vizual: `ustoychivo / opasno` po skheme
- Tekst na slayde: `Otsutstvie elementa mozhet razrushit ne uzel, a vsyu skhemu`
- Speaker notes: svyazhite slayd s budushchim modulem pro kreplenie
- Svyazannyy learning outcome: `LO-08`
- Svyazannyy vopros testa: `Q-12`
- Primechanie dlya dizayna: kontrastnye tsveta, no bez krichashchey grafiki

### Slayd 13

- Nomer slayda: `13`
- Modul: `03. Ustroystvo lesov: elementi i logika ustoychivosti`
- Tip slayda: `practice`
- Sloy kontenta: `extended`
- Dlya kakogo profilya obyazatelen: `Deep`
- Tsel slayda: zakrepit raspoznavanie elementov cherez mini-zadanie
- Odna glavnaya mysl: slushatel dolzhen ne tolko slushat, no i uznavat elementy na skheme ili foto
- Chto dolzhen ponyat slushatel: raspoznavanie elementa svyazano s ponimaniem ego funktsii
- Vizual: schema bez podpisey s nomerami
- Tekst na slayde: `Nazovite element i ego funktsiyu`
- Speaker notes: mozhno ispolzovat kak interaktivnuyu ostanovku v ochnom formate
- Svyazannyy learning outcome: `LO-03`
- Svyazannyy vopros testa: `Q-13`
- Primechanie dlya dizayna: nomera elementov dolzhny byt chitaemy

### Production insert 13A

- Nomer slayda: `13A`
- Modul: `03. Ustroystvo lesov: elementi i logika ustoychivosti`
- Tip slayda: `equipment`
- Sloy kontenta: `core`
- Dlya kakogo profilya obyazatelen: `Short / Standard / Deep`
- Tsel slayda: dat montazhniku minimalnyy nabor instrumentov do perekhoda k sborke
- Odna glavnaya mysl: montazh nachinaetsya ne tolko s elementov lesov, no i s gotovnosti bazovogo instrumenta
- Chto dolzhen ponyat slushatel: dlya etogo contoura bazovyy minimum instrumentov - molotok, klyuch `19/22` i uroven
- Vizual: tri instrumenta krupno s podpisyami
- Tekst na slayde: `Bazovyy instrument montazhnika: molotok, klyuch 19/22, uroven`
- Speaker notes: ne razduvayte etot slayd do polnogo spiska instrumentov; zdes nuzhno zafiksirovat rabochiy minimum, kotoryy auditoriya dolzhna uznavat do monta zhnoy posledovatelnosti
- Svyazannyy learning outcome: `LO-03`
- Svyazannyy vopros testa: `Q-13A`
- Primechanie dlya dizayna: odna lineyka iz trekh predmetov, bez peregruza fonovymi detalami

### Production insert 13B

- Nomer slayda: `13B`
- Modul: `03. Ustroystvo lesov: elementi i logika ustoychivosti`
- Tip slayda: `scheme`
- Sloy kontenta: `core`
- Dlya kakogo profilya obyazatelen: `Short / Standard / Deep`
- Tsel slayda: pokazat osnovnye komplektuyushchie klinovykh lesov do starta sborki
- Odna glavnaya mysl: bez raspoznavaniya bazy i nesushchikh elementov poshagovyy montazh budet vosprinimatsya kak nabor sluchaynykh deystviy
- Chto dolzhen ponyat slushatel: montazh klinovykh lesov opiraetsya na opornye i nesushchie elementi, kotorye nado uznavat do nachala sborki
- Vizual: gruppovoy list osnovnykh elementov s podpisyami
- Tekst na slayde: `Komplektuyushchie klinovykh lesov: opornye i nesushchie elementi`
- Speaker notes: v etom slayde nuzhno zafiksirovat minimum: podpyatniki ili bashmaki, domkraty, startovye elementy, stoyki, gorizontalnye svyazi (`rigel`), usilennyy rigel (`gorizontalnye svyazi`), diagonalnye raskosy i fermy
- Svyazannyy learning outcome: `LO-03`
- Svyazannyy vopros testa: `Q-13B`
- Primechanie dlya dizayna: luchshe pokazyvat elementi gruppami, chtoby ne poluchit "entciklopedicheskiy list"

### Production insert 13C

- Nomer slayda: `13C`
- Modul: `03. Ustroystvo lesov: elementi i logika ustoychivosti`
- Tip slayda: `scheme`
- Sloy kontenta: `core`
- Dlya kakogo profilya obyazatelen: `Short / Standard / Deep`
- Tsel slayda: pokazat rabochie, zashchitnye i spetsialnye komplektuyushchie klinovykh lesov
- Odna glavnaya mysl: rabochaya gotovnost lesov formiruetsya ne tolko stoikami i svyazyami, no i nastilami, dostupom, zashchitoy i krepleniyami
- Chto dolzhen ponyat slushatel: nastily, lestnichnye elementi, ograzhdeniya, otbortovochnaya doska i ankernye elementi eto ne dopolnenie, a chast gotovoy skhemy
- Vizual: vtoraya gruppa komplektuyushchikh s podpisyami
- Tekst na slayde: `Komplektuyushchie klinovykh lesov: rabochie i zashchitnye elementi`
- Speaker notes: etot slayd dolzhen soedinit pozdneyshie montazhnye etapy s konkretnymi elementami; delat aktsent na nastilakh, lestnichnykh elementakh, ograzhdeniyakh, otbortovochnoy doske i ankernykh elementakh
- Svyazannyy learning outcome: `LO-03`
- Svyazannyy vopros testa: `Q-13C`
- Primechanie dlya dizayna: mozhno delit elementy po funktsionalnym gruppam `rabota / dostup / zashchita / kreplenie`

### Production insert 13D

- Nomer slayda: `13D`
- Modul: `03. Ustroystvo lesov: elementi i logika ustoychivosti`
- Tip slayda: `scheme`
- Sloy kontenta: `core`
- Dlya kakogo profilya obyazatelen: `Short / Standard / Deep`
- Tsel slayda: dat bazovyy nabor komplektuyushchikh khomutovykh lesov do perekhoda k differentsialnym uzlam
- Odna glavnaya mysl: u khomutovykh lesov est sobstvennyy bazovyy nabor elementov, kotoryy nuzhno raspoznavat do razgovora ob otlichiyakh
- Chto dolzhen ponyat slushatel: osnova khomutovogo contoura - eto truby, khomuty, soedinitelnye i opornye elementi
- Vizual: osnovnye komplektuyushchie khomutovykh lesov s podpisyami
- Tekst na slayde: `Komplektuyushchie khomutovykh lesov: osnovnye elementi`
- Speaker notes: zdes nuzhno pokazyvat truby, povorotnyy i nepovorotnyy khomuty, shchift soedinitelnyy i bashmak; ograzhdeniya otdelno ne vynosim, potomu chto oni sobirayutsya iz teh zhe trub
- Svyazannyy learning outcome: `LO-03`
- Svyazannyy vopros testa: `Q-13D`
- Primechanie dlya dizayna: minimum teksta, maximum chitaemosti formy elementov

### Production insert 13E

- Nomer slayda: `13E`
- Modul: `03. Ustroystvo lesov: elementi i logika ustoychivosti`
- Tip slayda: `scheme`
- Sloy kontenta: `core`
- Dlya kakogo profilya obyazatelen: `Short / Standard / Deep`
- Tsel slayda: pokazat zazhimy i spetsialnye komplektuyushchie khomutovykh lesov
- Odna glavnaya mysl: chast raznitsy khomutovogo contoura sidit v spetsialnykh krepezhnykh elementakh, a ne tolko v obshchem vide trub
- Chto dolzhen ponyat slushatel: zazhimy byvayut dvukh vidov, a dlya krepleniya k balke ispolzuetsya otdelnyy spetsialnyy element
- Vizual: dva foto zazhimov + khomut dlya krepleniya k balke
- Tekst na slayde: `Komplektuyushchie khomutovykh lesov: zazhimy i spetsialnye elementi`
- Speaker notes: obyazatelno razvesti `zazhim vid 1`, `zazhim vid 2` i `khomut dlya krepleniya k balke`; etot slayd nuzhen kak most k dalneyshemu slaydu pro kreplenie lesov k balke
- Svyazannyy learning outcome: `LO-03`
- Svyazannyy vopros testa: `Q-13E`
- Primechanie dlya dizayna: luchshe zakladyvat `2` foto dlya zazhimov i otdelnyy slot pod beam-clamp

### Slayd 14

- Nomer slayda: `14`
- Modul: `04. Podgotovka ploshchadki i priemka elementov`
- Tip slayda: `principle`
- Sloy kontenta: `core`
- Dlya kakogo profilya obyazatelen: `Short / Standard / Deep`
- Tsel slayda: svyazat bezopasnost sborki s sostoyaniem mesta rabot
- Odna glavnaya mysl: ploshchadka mozhet sdelat opasnoy dazhe pravilnuyu skhemu sborki
- Chto dolzhen ponyat slushatel: podgotovka mesta eto chast montazha, a ne "rabota do raboty"
- Vizual: foto ploshchadki s vydelennymi risk-zonami
- Tekst na slayde: `Ploshchadka gotovit konstruktsiyu ne menshe, chem montazhnik`
- Speaker notes: podvedite k proverke osnovaniya, podkhodov i opasnoy zony
- Svyazannyy learning outcome: `LO-04`
- Svyazannyy vopros testa: `Q-14`
- Primechanie dlya dizayna: vydeleniya strelkami ili markery riskov

### Slayd 15

- Nomer slayda: `15`
- Modul: `04. Podgotovka ploshchadki i priemka elementov`
- Tip slayda: `checklist`
- Sloy kontenta: `core`
- Dlya kakogo profilya obyazatelen: `Short / Standard / Deep`
- Tsel slayda: dat minimum proverki ploshchadki
- Odna glavnaya mysl: est nabor usloviy, bez kotorykh sborku nachinat nelzya
- Chto dolzhen ponyat slushatel: proverka osnovaniya i opasnoy zony obyazatelna
- Vizual: cheklist `Osnovanie / Podkhody / Ograzhdenie / Pomekhi / Risk padeniya predmetov`
- Tekst na slayde: `Pered sborkoy proveryaetsya ne tolko mesto pod lesami, no i zona vokrug`
- Speaker notes: ne ukhodyte v detali konkretnogo obekta; ostavaytes na universalnom minimume
- Svyazannyy learning outcome: `LO-04`
- Svyazannyy vopros testa: `Q-15`
- Primechanie dlya dizayna: 5 ikonok + korotkie podpisi

### Slayd 16

- Nomer slayda: `16`
- Modul: `04. Podgotovka ploshchadki i priemka elementov`
- Tip slayda: `comparison`
- Sloy kontenta: `standard`
- Dlya kakogo profilya obyazatelen: `Standard / Deep`
- Tsel slayda: pokazat primer `gotovo / ne gotovo`
- Odna glavnaya mysl: ploshchadka otsenivaetsya glazami montazhnika eshche do nachala sborki
- Chto dolzhen ponyat slushatel: neustoychivoe osnovanie i neograzhdennaya zona - eto ne melochi, a blokery
- Vizual: dvoinoy primer ploshchadki
- Tekst na slayde: `Ploho podgotovlennaya ploshchadka lomaet bezopasnost do pervogo yarusa`
- Speaker notes: poprosite auditoriyu nazvat minimum 3 otlichiya
- Svyazannyy learning outcome: `LO-04`
- Svyazannyy vopros testa: `Q-16`
- Primechanie dlya dizayna: dlya levoi i pravoi storony odinakovaia kompozitsiya

### Slayd 17

- Nomer slayda: `17`
- Modul: `04. Podgotovka ploshchadki i priemka elementov`
- Tip slayda: `inspection`
- Sloy kontenta: `core`
- Dlya kakogo profilya obyazatelen: `Short / Standard / Deep`
- Tsel slayda: perevesti priemku elementov v prakticheskoe deystvie
- Odna glavnaya mysl: v sborku dolzhny idti tolko ispravnye i sootvetstvuyushchie elementy
- Chto dolzhen ponyat slushatel: povrezhdennye ili nekomplektnye elementy ne "dozhivut do obekta", a dolzhny byt otbrakovany srazu
- Vizual: nabor elementov s markerami `godno / ne godno`
- Tekst na slayde: `Priemka elementov - eto filtr bezopasnosti pered sborkoy`
- Speaker notes: svyazhite slayd s riskom razrusheniya uzla i poteri ustoychivosti
- Svyazannyy learning outcome: `LO-05`
- Svyazannyy vopros testa: `Q-17`
- Primechanie dlya dizayna: luchshe foto realnykh elementov, chem ikonki

### Slayd 18

- Nomer slayda: `18`
- Modul: `04. Podgotovka ploshchadki i priemka elementov`
- Tip slayda: `scenario`
- Sloy kontenta: `standard`
- Dlya kakogo profilya obyazatelen: `Standard / Deep`
- Tsel slayda: zakrepit reshienie po nekomplektu i povrezhdeniyam
- Odna glavnaya mysl: "pochti godnyy" element mozhet stat prichinoy kriticheskoy oshibki
- Chto dolzhen ponyat slushatel: priemka elementov eto ne mehanicheskaya, a otsenochnaya rabota
- Vizual: mini-keis s 3-4 elementami i opisaniem sostoyaniya
- Tekst na slayde: `Keys: chto mozhno dopustit, a chto nuzhno ubrat iz sborki?`
- Speaker notes: odin iz elementov dolzhen byt "spornym", chtoby vyvesti auditoriyu na obsuzhdenie kriteriev
- Svyazannyy learning outcome: `LO-05`
- Svyazannyy vopros testa: `Q-18`
- Primechanie dlya dizayna: format kartochek s prostymi pometkami

### Slayd 19

- Nomer slayda: `19`
- Modul: `04. Podgotovka ploshchadki i priemka elementov`
- Tip slayda: `summary`
- Sloy kontenta: `core`
- Dlya kakogo profilya obyazatelen: `Short / Standard / Deep`
- Tsel slayda: sobrat dva filtra pered nachalom sborki
- Odna glavnaya mysl: do montazha dolzhny proyti dva kontrolnykh filtra - ploshchadka i elementi
- Chto dolzhen ponyat slushatel: esli odin iz filtrov ne proyden, montazh ne dolzhen nachinatsya
- Vizual: schema `Ploshchadka + Elementi = Start montazha`
- Tekst na slayde: `Net gotovoy ploshchadki ili net godnykh elementov - net starta montazha`
- Speaker notes: eto most k sleduyushchemu modulyu pro bazu i pervyy yarus
- Svyazannyy learning outcome: `LO-04`, `LO-05`
- Svyazannyy vopros testa: `Q-19`
- Primechanie dlya dizayna: kompaktnyy final modulia bez peregruza tekstom

### Slayd 20

- Nomer slayda: `20`
- Modul: `05. Start montazha: baza i pervyy yarus`
- Tip slayda: `principle`
- Sloy kontenta: `core`
- Dlya kakogo profilya obyazatelen: `Short / Standard / Deep`
- Tsel slayda: perevesti slushatelya iz fazy proverki v fazu realnogo starta sborki
- Odna glavnaya mysl: bezopasnyy montazh nachinaetsya s pravilnoy bazy, a ne s bystrogo nabora vysoty
- Chto dolzhen ponyat slushatel: oshibka v samom nachale ne ostanetsya lokalnoy i potyanet za soboy vsyu skhemu
- Vizual: schema `Ploshchadka -> Opory -> Pervyy yarus -> Kontrol geometrii`
- Tekst na slayde: `Kachestvo bazy opredelyaet bezopasnost vsego dalshego montazha`
- Speaker notes: svyazhite etot slayd s dvumya filtrami iz modulia `04` i podvedite k tomu, chto posle prokhozhdeniya filtrov rabota tolko nachinaetsya
- Svyazannyy learning outcome: `LO-06`
- Svyazannyy vopros testa: `Q-20`
- Primechanie dlya dizayna: lineynaya schema bez peregruza, chtoby perekhod v novyy modul byl ocheviden

### Slayd 21

- Nomer slayda: `21`
- Modul: `05. Start montazha: baza i pervyy yarus`
- Tip slayda: `foundation`
- Sloy kontenta: `core`
- Dlya kakogo profilya obyazatelen: `Short / Standard / Deep`
- Tsel slayda: pokazat rol opornykh elementov i nizhney tochki starta
- Odna glavnaya mysl: opory i nizhniy kontur dolzhny byt sobrany tak, chtoby konstruktsiya srazu poluchala predskazuemuyu geometriyu
- Chto dolzhen ponyat slushatel: nelzya "vypravit potom" to, chto iznachalno postavleno s perekosom ili bez kontrolya opory
- Vizual: schema opornykh elementov i pervykh stoek s markerami kontrolya
- Tekst na slayde: `Baza lesov dolzhna byt ne prosto ustanovlena, a vyverena`
- Speaker notes: ne ukhodyte v zavisimost ot konkretnoy sistemy, fokus na printsipe: opora, vyverka, kontrol nizhnego kontura
- Svyazannyy learning outcome: `LO-06`
- Svyazannyy vopros testa: `Q-21`
- Primechanie dlya dizayna: luchshe prostaya skhema, chem detalnaya tekhnicheskaya illyustratsiya bez kommentariya

### Slayd 22

- Nomer slayda: `22`
- Modul: `05. Start montazha: baza i pervyy yarus`
- Tip slayda: `sequence`
- Sloy kontenta: `core`
- Dlya kakogo profilya obyazatelen: `Short / Standard / Deep`
- Tsel slayda: dat bazovuyu posledovatelnost starta sborki
- Odna glavnaya mysl: poryadok sborki vazhen ne menshe samikh elementov
- Chto dolzhen ponyat slushatel: pervyy yarus nelzya sobirat "kak udobno"; u nego est bezopasnaya logika
- Vizual: poshagovaya lenta `opory -> stoiki -> gorizontalnye elementi -> pervye svyazi`
- Tekst na slayde: `Pervyy yarus sobiraetsya po poryadku, a ne po improvizatsii`
- Speaker notes: podcherknite, chto poryadok nuzhen dlya togo, chtoby konstruktsiya ne teryala geometriyu v protsesse sborki
- Svyazannyy learning outcome: `LO-06`
- Svyazannyy vopros testa: `Q-22`
- Primechanie dlya dizayna: 4-5 shagov, bez melkikh podpunktov

### Slayd 23

- Nomer slayda: `23`
- Modul: `05. Start montazha: baza i pervyy yarus`
- Tip slayda: `control`
- Sloy kontenta: `core`
- Dlya kakogo profilya obyazatelen: `Short / Standard / Deep`
- Tsel slayda: sdelat kontrol geometrii i pervykh svyazey obyazatelnym deystviem
- Odna glavnaya mysl: bez pervykh svyazey i kontrolya geometrii baza ostayetsya uyazvimoy
- Chto dolzhen ponyat slushatel: dazhe esli konstruktsiya "stoit", eto eshche ne oznachaet, chto ona sobrana bezopasno
- Vizual: tri markera `vertikalnost / geometriya / svyazi`
- Tekst na slayde: `Nizhniy kontur nuzhno ne prosto postavit, a srazu zakrepit v logiku ustoychivosti`
- Speaker notes: eto most mezhdu modulami `05` i `06`, potomu chto bez etogo nabor vysoty stanovitsya opasnym
- Svyazannyy learning outcome: `LO-08`
- Svyazannyy vopros testa: `Q-23`
- Primechanie dlya dizayna: triadnaya kompozitsiya ili blok iz trekh ikonok

### Slayd 24

- Nomer slayda: `24`
- Modul: `05. Start montazha: baza i pervyy yarus`
- Tip slayda: `comparison`
- Sloy kontenta: `standard`
- Dlya kakogo profilya obyazatelen: `Standard / Deep`
- Tsel slayda: pokazat, kak vyglyadit pravilnyy i opasnyy start sborki
- Odna glavnaya mysl: opasnyy start vidno po perekosu, propusku svyazey i nezakrytomu nizhne mu konturu
- Chto dolzhen ponyat slushatel: oshibka nachala ne maskiruetsya skorostyu raboty
- Vizual: `mozhno / nelzya` po starte bazy
- Tekst na slayde: `Bystryy start bez kontrolya = slabaya baza dlya vsey konstruktsii`
- Speaker notes: dayte auditorii 10-15 sekund na samostoyatelnyy razbor otlichiy
- Svyazannyy learning outcome: `LO-06`, `LO-08`
- Svyazannyy vopros testa: `Q-24`
- Primechanie dlya dizayna: odinakovaia kompozitsiya sleva i sprava dlya chestnogo sravneniya

### Slayd 25

- Nomer slayda: `25`
- Modul: `05. Start montazha: baza i pervyy yarus`
- Tip slayda: `scenario`
- Sloy kontenta: `extended`
- Dlya kakogo profilya obyazatelen: `Deep`
- Tsel slayda: zakrepit reshenie po startu sborki cherez mini-keys
- Odna glavnaya mysl: dazhe pri gotovoy ploshchadke start montazha mozhet byt zablokirovan, esli logika sborki narushena
- Chto dolzhen ponyat slushatel: kontrol nachala raboty vklyuchaet i usloviya, i posledovatelnost deystviy
- Vizual: keys `Mozhno li prodolzhat start?`
- Tekst na slayde: `Situatsiya: baza postavlena, no geometriya i svyazi vyzyvayut voprosy`
- Speaker notes: odin iz priznakov dolzhen byt neochevidnym, chtoby vyvesti auditoriyu na obyasnenie, a ne na ugadyvanie
- Svyazannyy learning outcome: `LO-06`, `LO-13`
- Svyazannyy vopros testa: `Q-25`
- Primechanie dlya dizayna: kartochka situatsii s 3-4 usloviyami

### Slayd 26

- Nomer slayda: `26`
- Modul: `06. Nabor vysoty, kreplenie i zhestkost skhemy`
- Tip slayda: `principle`
- Sloy kontenta: `core`
- Dlya kakogo profilya obyazatelen: `Short / Standard / Deep`
- Tsel slayda: zadat glavnoe pravilo narashchivaniya konstruktsii
- Odna glavnaya mysl: nabor vysoty dopustim tolko pri sokhranenii zhestkosti i upravlyaemosti skhemy na kazhdom etape
- Chto dolzhen ponyat slushatel: nelzya rassmatrivat nabor yarusov kak prostoe dostavlenie detaley naverkh
- Vizual: schema `nabor yarusa -> kontrol -> kreplenie -> dalneyshee narashchivanie`
- Tekst na slayde: `Vysota dobavlyaetsya tolko vmeste s kontrolom ustoychivosti`
- Speaker notes: eto odin iz samykh vazhnykh moduley; zadayte ton cherez printsip, a ne cherez nagromozhdenie uzlov
- Svyazannyy learning outcome: `LO-07`, `LO-08`
- Svyazannyy vopros testa: `Q-26`
- Primechanie dlya dizayna: vertikalnaya logika ili lestnitsa etapov

### Slayd 27

- Nomer slayda: `27`
- Modul: `06. Nabor vysoty, kreplenie i zhestkost skhemy`
- Tip slayda: `sequence`
- Sloy kontenta: `core`
- Dlya kakogo profilya obyazatelen: `Short / Standard / Deep`
- Tsel slayda: dat bezopasnuyu logiku nabora sleduyushchego yarusa
- Odna glavnaya mysl: kazhdyy sleduyushchiy yarus dolzhen poyavlyat'sya v upravlyaemoy posledovatelnosti, a ne "kuskom"
- Chto dolzhen ponyat slushatel: nabor vysoty trebuet poryadka: karkas, svyazi, rabochaya ploshchadka, zashchita
- Vizual: poshagovaya schema dlya nabora yarusa
- Tekst na slayde: `Nedostroennyy yarus ne yavlyaetsya bezopasnoy rabochey pozitsiey`
- Speaker notes: podcherknite, chto "vremenno ne khvataet odnogo elementa" ne dolzhno byt normalizovano
- Svyazannyy learning outcome: `LO-07`
- Svyazannyy vopros testa: `Q-27`
- Primechanie dlya dizayna: poshagovaya lesenka s krupnymi blokami

### Slayd 28

- Nomer slayda: `28`
- Modul: `06. Nabor vysoty, kreplenie i zhestkost skhemy`
- Tip slayda: `platform`
- Sloy kontenta: `core`
- Dlya kakogo profilya obyazatelen: `Short / Standard / Deep`
- Tsel slayda: zakrepit rol nastilov i rabochey ploshchadki
- Odna glavnaya mysl: rabochiy yarus dolzhen byt ne prosto dosyagaem, a bezopasno podgotovlen dlya nagruzki i peremeshcheniya
- Chto dolzhen ponyat slushatel: nepolnyy nastil ili sluchaynaya opora pod nogami = pryamoy risk padeniya
- Vizual: nastil `polnyy / nepolnyy`
- Tekst na slayde: `Rabochaya ploshchadka dolzhna byt gotova do togo, kak na ney nachnetsya rabota`
- Speaker notes: ne obobschaite do "nastil est"; fokus na prigodnosti rabochego yarusa
- Svyazannyy learning outcome: `LO-07`
- Svyazannyy vopros testa: `Q-28`
- Primechanie dlya dizayna: luchshe vizualnoe sravnenie, chem tekstovoe obyasnenie

### Slayd 29

- Nomer slayda: `29`
- Modul: `06. Nabor vysoty, kreplenie i zhestkost skhemy`
- Tip slayda: `protection`
- Sloy kontenta: `core`
- Dlya kakogo profilya obyazatelen: `Short / Standard / Deep`
- Tsel slayda: vydelit ograzhdeniya i zashchitu kak chast sborki, a ne dodatok
- Odna glavnaya mysl: bez ograzhdeniya i bortovoy zashchity yarus ne dolzhen schitat'sya gotovym
- Chto dolzhen ponyat slushatel: zashchita ot padeniya lyudey i predmetov vklyuchaetsya v konstruktivnuyu gotovnost
- Vizual: rabochiy yarus s markerami zashchity
- Tekst na slayde: `Ograzhdenie i bortovye elementi - eto ne dekor, a uslovie ekspluatatsii`
- Speaker notes: svyazhite etot slayd s modul'em `07`, gde proverka gotovnosti budet delat'sya po cheklistu
- Svyazannyy learning outcome: `LO-07`, `LO-10`
- Svyazannyy vopros testa: `Q-29`
- Primechanie dlya dizayna: vydelit ograzhdenie i bortovye elementy odnim tsvetovym konturom

### Slayd 30

- Nomer slayda: `30`
- Modul: `06. Nabor vysoty, kreplenie i zhestkost skhemy`
- Tip slayda: `access`
- Sloy kontenta: `standard`
- Dlya kakogo profilya obyazatelen: `Standard / Deep`
- Tsel slayda: pokazat, chto dostup i peremeshchenie po yarusam dolzhny byt organizovany
- Odna glavnaya mysl: bezopasnyy dostup k yarusu tak zhe vazhen, kak i ego sborka
- Chto dolzhen ponyat slushatel: nelzya schitat normalnym "dobratsya kak poluchitsya"
- Vizual: `bezopasnyy dostup / opasnaya improvizatsiya`
- Tekst na slayde: `Esli k yarusu net bezopasnogo dostupa, znachit yarus ne gotov k rabote`
- Speaker notes: ne uidite v chasto sistemo-zavisimye detali; derzhite fokus na printsipe organizovannogo peremeshcheniya
- Svyazannyy learning outcome: `LO-07`, `LO-10`
- Svyazannyy vopros testa: `Q-30`
- Primechanie dlya dizayna: dva kontrastnykh stsenariya s minimalnym tekstom

### Slayd 31

- Nomer slayda: `31`
- Modul: `06. Nabor vysoty, kreplenie i zhestkost skhemy`
- Tip slayda: `anchoring`
- Sloy kontenta: `core`
- Dlya kakogo profilya obyazatelen: `Short / Standard / Deep`
- Tsel slayda: zakrepit rol krepleniy i svyazey pri narashchivanii skhemy
- Odna glavnaya mysl: kreplenie i svyazi ne "dopolnyayut" konstruktsiyu, a uderzhivayut ee v rabochem sostoyanii
- Chto dolzhen ponyat slushatel: propusk krepleniya ili otstuplenie ot skhemy opasny dlya vsego kontura
- Vizual: skhema lesov s vydeleniem tochek krepleniya i diagonaley
- Tekst na slayde: `Kreplenie i svyazi derzhat ne odin uzel, a vsyu logiku skhemy`
- Speaker notes: eto centralnyy slayd dlya LO-08; govorite prostym yazykom, bez perekhoda v izlishnyuyu tekhniku
- Svyazannyy learning outcome: `LO-08`
- Svyazannyy vopros testa: `Q-31`
- Primechanie dlya dizayna: luchshe odna ponyatnaya skhema, chem mnogo melkih fragmentov

### Slayd 32

- Nomer slayda: `32`
- Modul: `06. Nabor vysoty, kreplenie i zhestkost skhemy`
- Tip slayda: `load`
- Sloy kontenta: `standard`
- Dlya kakogo profilya obyazatelen: `Standard / Deep`
- Tsel slayda: svyazat nabor vysoty s riskom peregruzki i perekosa
- Odna glavnaya mysl: dazhe sobranaya skhema mozhet stat opasnoy, esli nagruzhaetsya ili vedetsya s narusheniem logiki
- Chto dolzhen ponyat slushatel: peregruzka i nesbalansirovannoe razmeshchenie materialov tozhe razrushayut bezopasnost
- Vizual: primer raspredeleniya nagruzki `dopustimo / opasno`
- Tekst na slayde: `Skhema mozhet byt sobrana, no vse ravno rabotat opasno`
- Speaker notes: eto most k ekspluatatsii; ne delayte slayd pro tochnye chisla, delajte pro printsip opasnogo rezhima
- Svyazannyy learning outcome: `LO-08`, `LO-10`
- Svyazannyy vopros testa: `Q-32`
- Primechanie dlya dizayna: vizualno vydelit perekos i lokalnuyu peregruzku

### Slayd 33

- Nomer slayda: `33`
- Modul: `06. Nabor vysoty, kreplenie i zhestkost skhemy`
- Tip slayda: `comparison`
- Sloy kontenta: `standard`
- Dlya kakogo profilya obyazatelen: `Standard / Deep`
- Tsel slayda: nauchit zamechat narusheniya pri nabore vysoty
- Odna glavnaya mysl: nedostroennaya ili narushennaya skhema vidna ran'she, chem proiskhodit intsident
- Chto dolzhen ponyat slushatel: nuzhno zamechat red flags po khodu raboty, a ne post factum
- Vizual: `ustoychivo / opasno` pri nabore yarusov
- Tekst na slayde: `Opasnuyu skhemu nado ostanovit do togo, kak ona stanet avariey`
- Speaker notes: poprosite nayti 3 priznaka opasnosti bez podskazki
- Svyazannyy learning outcome: `LO-07`, `LO-08`
- Svyazannyy vopros testa: `Q-33`
- Primechanie dlya dizayna: markerami pokazat imenno narusheniya, a ne prosto "krasnyy / zelenyy"

### Slayd 34

- Nomer slayda: `34`
- Modul: `06. Nabor vysoty, kreplenie i zhestkost skhemy`
- Tip slayda: `scenario`
- Sloy kontenta: `extended`
- Dlya kakogo profilya obyazatelen: `Deep`
- Tsel slayda: zakrepit reshenie pri spornom sostoyanii yarusa
- Odna glavnaya mysl: esli po khodu nabora vysoty voznikayet spornaya situatsiya, raboty ne dolzhny "doekhat na avose"
- Chto dolzhen ponyat slushatel: v realnoy rabote opasnoe reshenie chasto maskiruetsya argumentom "my skoro zakonchim"
- Vizual: keys `Prodolzhit / ostanovit / eskalirovat`
- Tekst na slayde: `Situatsiya: yarus ne do kontsa zakryt, no brigada khochet prodolzhit`
- Speaker notes: vyvedite auditoriyu na LO-13 cherez kontekst modulia `06`
- Svyazannyy learning outcome: `LO-07`, `LO-08`, `LO-13`
- Svyazannyy vopros testa: `Q-34`
- Primechanie dlya dizayna: kartochka situatsii s ochen korotkimi usloviyami

### Slayd 35

- Nomer slayda: `35`
- Modul: `06. Nabor vysoty, kreplenie i zhestkost skhemy`
- Tip slayda: `summary`
- Sloy kontenta: `core`
- Dlya kakogo profilya obyazatelen: `Short / Standard / Deep`
- Tsel slayda: sobrat printsipy modulia pered perekhodom k proverke i ekspluatatsii
- Odna glavnaya mysl: nabor vysoty zakonchen tolko tam, gde skhema ostalas zhestkoy, zashchishchennoy i upravlyaemoy
- Chto dolzhen ponyat slushatel: gotovnost yarusa eto rezultat ne odnogo elementa, a sistemy proverok
- Vizual: schema `Yarus -> Zashchita -> Kreplenie -> Kontrol`
- Tekst na slayde: `Rastet ne tolko vysota, no i trebovanie k kontrolyu`
- Speaker notes: etot slayd podgotavlivaet logiku modulia `07`: ne vse, chto sobrano, mozhno dopustit k rabote
- Svyazannyy learning outcome: `LO-07`, `LO-08`
- Svyazannyy vopros testa: `Q-35`
- Primechanie dlya dizayna: kompaktnaya schema bez peregruza terminami

### Slayd 36

- Nomer slayda: `36`
- Modul: `07. Proverka pered ekspluatatsiey i pravila raboty na lesakh`
- Tip slayda: `principle`
- Sloy kontenta: `core`
- Dlya kakogo profilya obyazatelen: `Short / Standard / Deep`
- Tsel slayda: otdelit fakt sborki ot dopuska k ekspluatatsii
- Odna glavnaya mysl: sobrannye lesa eshche ne ravny lesam, gotovym k bezopasnoy rabote
- Chto dolzhen ponyat slushatel: mezhdu montazhom i ekspluatatsiey est obyazatelnyy etap proverki
- Vizual: schema `Sborka -> Proverka -> Dopusk k ekspluatatsii`
- Tekst na slayde: `Sobral = ne znachit dopustil k rabote`
- Speaker notes: eto vazhnyy metodicheskiy razdelitel; bez nego slushatel budet smeshivat montazh i ekspluatatsiyu
- Svyazannyy learning outcome: `LO-09`
- Svyazannyy vopros testa: `Q-36`
- Primechanie dlya dizayna: tri posledovatelnykh bloka s ochevidnoy logikoy

### Slayd 37

- Nomer slayda: `37`
- Modul: `07. Proverka pered ekspluatatsiey i pravila raboty na lesakh`
- Tip slayda: `checklist`
- Sloy kontenta: `core`
- Dlya kakogo profilya obyazatelen: `Short / Standard / Deep`
- Tsel slayda: dat bazovyy cheklist gotovnosti k ekspluatatsii
- Odna glavnaya mysl: dopusk k rabote osushchestvlyaetsya po cheklistu, a ne po vpechatleniyu
- Chto dolzhen ponyat slushatel: nuzhno proverit uzly, nastily, ograzhdeniya, dostup, obshchee sostoyanie i ogranicheniya
- Vizual: cheklist `Uzly / Nastily / Ograzhdeniya / Dostup / Obshchee sostoyanie`
- Tekst na slayde: `Pered ekspluatatsiey lesa dolzhny byt provereny po minimumu`
- Speaker notes: eto opornyy slayd dlya LO-09; ne razduvayte cheklist v mnogostranichnyy reglament
- Svyazannyy learning outcome: `LO-09`
- Svyazannyy vopros testa: `Q-37`
- Primechanie dlya dizayna: 5 krupnykh punktov, podkhodit dlya budushchego worker-materiala

### Slayd 38

- Nomer slayda: `38`
- Modul: `07. Proverka pered ekspluatatsiey i pravila raboty na lesakh`
- Tip slayda: `ban`
- Sloy kontenta: `core`
- Dlya kakogo profilya obyazatelen: `Short / Standard / Deep`
- Tsel slayda: zafiksirovat osnovaniya dlya zapreta ekspluatatsii
- Odna glavnaya mysl: est priznaki, pri kotorykh lesa nelzya dopuskat k rabote dazhe pri davlenii po srokam
- Chto dolzhen ponyat slushatel: esli zashchita, dostup, nastil ili uzly vyzyvayut voprosy, rabotu nado blokirovat
- Vizual: blok `dopustit / ne dopustit`
- Tekst na slayde: `Esli est osnovanie dlya zapreta, rabota ne dolzhna nachinatsya`
- Speaker notes: svyazhite slayd s LO-13: zapret i eskalatsiya chasto idut vmeste
- Svyazannyy learning outcome: `LO-09`, `LO-13`
- Svyazannyy vopros testa: `Q-38`
- Primechanie dlya dizayna: cheredovanie zelenogo i krasnogo statusa, no bez peregruza

### Slayd 39

- Nomer slayda: `39`
- Modul: `07. Proverka pered ekspluatatsiey i pravila raboty na lesakh`
- Tip slayda: `load`
- Sloy kontenta: `core`
- Dlya kakogo profilya obyazatelen: `Short / Standard / Deep`
- Tsel slayda: obyasnit printsip dopustimoy ekspluatatsii po nagruzke
- Odna glavnaya mysl: dazhe gotovye lesa stanovyatsya opasnymi, esli ikh ekspluatiruyut v opasnom rezhime
- Chto dolzhen ponyat slushatel: peregruzka, nesbalansirovannaya ukladka i nakoplenie materialov - eto ne bytovye melochi
- Vizual: primer yarusa `dopustimo / opasno`
- Tekst na slayde: `Ekspluatatsiya lomaetsya tam, gde perestayut kontrolirovat nagruzku`
- Speaker notes: ne ukhodite v tochnye chisla bez pasporta sistemy; derzhite fokus na povedencheskom printsipe
- Svyazannyy learning outcome: `LO-10`
- Svyazannyy vopros testa: `Q-39`
- Primechanie dlya dizayna: pokazat raspredelenie materialov na yaruse

### Slayd 40

- Nomer slayda: `40`
- Modul: `07. Proverka pered ekspluatatsiey i pravila raboty na lesakh`
- Tip slayda: `movement`
- Sloy kontenta: `standard`
- Dlya kakogo profilya obyazatelen: `Standard / Deep`
- Tsel slayda: zakrepit pravila peremeshcheniya po lesam
- Odna glavnaya mysl: bezopasnaya ekspluatatsiya vklyuchaet ne tolko gde stoyat lesa, no i kak po nim dvigayutsya lyudi i materialy
- Chto dolzhen ponyat slushatel: opasnyy rezhim ekspluatatsii chasto nachinaetsya s neudobnogo, no bystrogo peremeshcheniya
- Vizual: `bezopasno / opasno` po peremeshcheniyu
- Tekst na slayde: `Bystryy put ne raven bezopasnomu puti`
- Speaker notes: sdelayte aktsent na discipline dvizheniya i nedopustimosti improvizatsii po marshrutu
- Svyazannyy learning outcome: `LO-10`
- Svyazannyy vopros testa: `Q-40`
- Primechanie dlya dizayna: sravnenie s minimalnym tekstom i ponyatnoy traektoriyey

### Slayd 41

- Nomer slayda: `41`
- Modul: `07. Proverka pered ekspluatatsiey i pravila raboty na lesakh`
- Tip slayda: `objects`
- Sloy kontenta: `standard`
- Dlya kakogo profilya obyazatelen: `Standard / Deep`
- Tsel slayda: svyazat ekspluatatsiyu s riskom padeniya predmetov
- Odna glavnaya mysl: opasnost na lesakh idet ne tolko dlya rabotayushchego naverkhu, no i dlya lyudey vnizu
- Chto dolzhen ponyat slushatel: poriadok raboty s instrumentom i materialami - eto chast bezopasnogo rezhima ekspluatatsii
- Vizual: zona padeniya predmetov i nepravilnoe razmeshchenie instrumenta
- Tekst na slayde: `To, chto lezhit naverkhu bez kontrolya, mozhet upast vniz`
- Speaker notes: vernite slushatelya k opasnoy zone iz modulia `04`, chtoby zamknut logiku kursa
- Svyazannyy learning outcome: `LO-10`
- Svyazannyy vopros testa: `Q-41`
- Primechanie dlya dizayna: izdeli te zonu vnizu i istochnik riska naverkhu

### Slayd 42

- Nomer slayda: `42`
- Modul: `07. Proverka pered ekspluatatsiey i pravila raboty na lesakh`
- Tip slayda: `scenario`
- Sloy kontenta: `extended`
- Dlya kakogo profilya obyazatelen: `Deep`
- Tsel slayda: dat keys na reshienie `dopustit / ostanovit / ogranichit`
- Odna glavnaya mysl: ekspluatatsiya eto ne vsyo ili nichego; v realnoy situatsii nado otsenit osnovaniya dlya resheniya
- Chto dolzhen ponyat slushatel: esli est priznak opasnogo rezhima, ego nado zamechat i ostanavlivat do intsidenta
- Vizual: cards `dopustit / ne dopustit / eskalirovat`
- Tekst na slayde: `Keys: mozhno li seychas rabotat na etikh lesakh?`
- Speaker notes: odna kriticheskaya i 1-2 pogranichnykh usloviya pomogut vyvesti auditoriyu na argumentatsiyu
- Svyazannyy learning outcome: `LO-09`, `LO-10`, `LO-13`
- Svyazannyy vopros testa: `Q-42`
- Primechanie dlya dizayna: kartochki resheniy bez lishnikh opisaniy

### Slayd 43

- Nomer slayda: `43`
- Modul: `07. Proverka pered ekspluatatsiey i pravila raboty na lesakh`
- Tip slayda: `summary`
- Sloy kontenta: `core`
- Dlya kakogo profilya obyazatelen: `Short / Standard / Deep`
- Tsel slayda: sobrat proverku i ekspluatatsiyu v odin opornyy algoritm
- Odna glavnaya mysl: bezopasnaya ekspluatatsiya voznikayet iz proverki, distsipliny nagruzki, marshrutov i zashchity ot padeniya predmetov
- Chto dolzhen ponyat slushatel: posle sborki u lesov nachinaetsya ne svobodnyy rezhim, a upravlyaemaya ekspluatatsiya
- Vizual: algoritm `Proverka -> Dopusk -> Rezhim raboty -> Stop pri riskakh`
- Tekst na slayde: `Ekspluatatsiya bez proverki i distsipliny bystro stanovitsya opasnoy`
- Speaker notes: etot slayd dolzhen podgotovit modul `08` pro tipovye oshibki i avariynye predposylki
- Svyazannyy learning outcome: `LO-09`, `LO-10`
- Svyazannyy vopros testa: `Q-43`
- Primechanie dlya dizayna: odna kompaktnaya skhema, podkhodyashchaya i dlya short-versii

### Slayd 44

- Nomer slayda: `44`
- Modul: `08. Tipovye oshibki i avariynye predposylki`
- Tip slayda: `principle`
- Sloy kontenta: `core`
- Dlya kakogo profilya obyazatelen: `Short / Standard / Deep`
- Tsel slayda: perevesti modul `08` iz "strashnykh istoriy" v rabotu s rannimi signalami opasnosti
- Odna glavnaya mysl: intsident redko nachinaetsya bez predvaritelnykh priznakov, esli brigada umeyet ikh zamechat
- Chto dolzhen ponyat slushatel: tipovye oshibki nuzhno ostanavlivat na stadii risk-signala, a ne posle avarii
- Vizual: schema `signal -> stop -> ustranenie -> prodolzhenie`
- Tekst na slayde: `Opasnuyu situatsiyu nado lovit do intsidenta, a ne posle nego`
- Speaker notes: svyazhite modul s predydushchim algoritmom `proverka -> dopusk -> rezhim raboty -> stop pri riskakh`; vazhno ne dramatizirovat, a pokazat upravlyaemuyu logiku reagirovaniya
- Svyazannyy learning outcome: `LO-11`, `LO-13`
- Svyazannyy vopros testa: `Q-44`
- Primechanie dlya dizayna: odna kompaktnaya lineynaya logika, bez dekorativnogo "alarm" stilya

### Slayd 45

- Nomer slayda: `45`
- Modul: `08. Tipovye oshibki i avariynye predposylki`
- Tip slayda: `comparison`
- Sloy kontenta: `core`
- Dlya kakogo profilya obyazatelen: `Short / Standard / Deep`
- Tsel slayda: pokazat tipovye oshibki pri montazhe kak raspoznavaemye patterny
- Odna glavnaya mysl: opasnyy montazh obychno vidno po narusheniyu logiki, a ne po odnomu "plokhomu" dvizheniyu
- Chto dolzhen ponyat slushatel: perekos, propusk svyazey, nepolnyy nizhniy kontur ili prodolzhenie sborki pri spornom sostoyanii - eto ne "rabochaya meloch", a signal k stopu
- Vizual: sravnenie `mozhno / nelzya` po startu ili prodolzheniyu montazha
- Tekst na slayde: `Esli narushena logika sborki, rabotu nado ostanovit, a ne "dotyagivat"`
- Speaker notes: berite primer ne iz odnoi modeli lesov, a iz universalnykh risk-patternov; ne ukhodyte v pasportnye uzly
- Svyazannyy learning outcome: `LO-07`, `LO-08`, `LO-11`
- Svyazannyy vopros testa: `Q-45`
- Primechanie dlya dizayna: dva odinakovo postroennykh kontura s markerami narusheniy, bez peregruza podpisyami

### Slayd 46

- Nomer slayda: `46`
- Modul: `08. Tipovye oshibki i avariynye predposylki`
- Tip slayda: `comparison`
- Sloy kontenta: `standard`
- Dlya kakogo profilya obyazatelen: `Standard / Deep`
- Tsel slayda: perevesti oshibki ekspluatatsii v worker-ponyatnyy visual contrast
- Odna glavnaya mysl: dazhe proverennye lesa bystro stanovitsya opasnymi, esli narushaetsya rezhim nagruzki, marshrutov i zashchity
- Chto dolzhen ponyat slushatel: opasnyy rezhim ekspluatatsii vidno po povedeniyu na yaruse, a ne tolko po tekhnicheskomu sostoyaniyu konstruktsii
- Vizual: `dopustimo / opasno` po ekspluatatsii yarusa
- Tekst na slayde: `Opasnost pri ekspluatatsii chasto nachinaetsya s "udobnogo" narusheniya`
- Speaker notes: svyazhite slayd s nagruzkoy, marshrutami i padeniem predmetov iz modulya `07`; eto most k hazard-recognition, a ne povtor samogo modulia
- Svyazannyy learning outcome: `LO-10`, `LO-11`
- Svyazannyy vopros testa: `Q-46`
- Primechanie dlya dizayna: odin yarus v dvukh sostoyaniyakh, chtoby signal chitalsya bez dlinnykh poyasneniy

### Slayd 47

- Nomer slayda: `47`
- Modul: `08. Tipovye oshibki i avariynye predposylki`
- Tip slayda: `hazard signs`
- Sloy kontenta: `core`
- Dlya kakogo profilya obyazatelen: `Short / Standard / Deep`
- Tsel slayda: dat opornyy hazard-board dlya raspoznavaniya stop-signalov
- Odna glavnaya mysl: red flags dolzhny schityvat'sya do proisshestviya i vyzyvat nemedlennuyu ostanovku ili ustranenie
- Chto dolzhen ponyat slushatel: esli v skheme, zashchite, dostupe ili rezhime raboty est yavnyy risk-signal, ego nelzya normalizovat argumentom "eshche nemnogo"
- Vizual: odna problemnaya situatsiya s markerami `stop-sign`
- Tekst na slayde: `Red flag na lesakh ne obsuzhdayut kak normu - ego ostanavlivayut`
- Speaker notes: etot slayd dolzhen stat oporoy dlya `TV-04` i Q-21; signal `stop / ustranit / potom prodolzhit` dolzhen byt prochitan bez ustnogo rasshifrovaniya
- Svyazannyy learning outcome: `LO-11`, `LO-13`
- Svyazannyy vopros testa: `Q-21`
- Primechanie dlya dizayna: sobirat kak controllable hazard board, a ne kak fotokolazh s dramatizatsiey

### Slayd 48

- Nomer slayda: `48`
- Modul: `08. Tipovye oshibki i avariynye predposylki`
- Tip slayda: `scenario`
- Sloy kontenta: `standard`
- Dlya kakogo profilya obyazatelen: `Standard / Deep`
- Tsel slayda: zakrepit reshenie `prodolzhit / ostanovit / eskalirovat` pri spornom risk-signale
- Odna glavnaya mysl: risk-situatsiya trebuet ne smelosti, a pravilnogo resheniya po granitsam polnomochiy
- Chto dolzhen ponyat slushatel: dazhe esli brigada "uzhe skoro zakonchit", spornyy hazard ne dolzhen prokhodit bez ostanovki i otsenki
- Vizual: keys-kartochka s 3-4 usloviyami i variantami resheniya
- Tekst na slayde: `Keys: chto delat, esli risk-signal uzhe est, a rabotu khotyat prodolzhit?`
- Speaker notes: odno uslovie dolzhno byt yavnym blockerom, eshche 1-2 pogranichnymi; vyvodite slushatelya na LO-13, a ne tolko na "ugaday pravilnyy otvet"
- Svyazannyy learning outcome: `LO-11`, `LO-13`
- Svyazannyy vopros testa: `Q-48`
- Primechanie dlya dizayna: kompaktnaya scenario-card bez peregruza; tsentr slayda = reshenie

### Slayd 49

- Nomer slayda: `49`
- Modul: `08. Tipovye oshibki i avariynye predposylki`
- Tip slayda: `summary`
- Sloy kontenta: `core`
- Dlya kakogo profilya obyazatelen: `Short / Standard / Deep`
- Tsel slayda: sobrat red flags modulia `08` v odin opornyy spisok
- Odna glavnaya mysl: tipovye oshibki luchshe zapominayutsya ne po istoriyam, a po korotkim markeram dlya raspoznavaniya
- Chto dolzhen ponyat slushatel: esli vidny narushenie logiki sborki, opasnyy rezhim ekspluatatsii ili yavnyy hazard sign, nuzhen stop i proverka
- Vizual: board `zametil -> ostanovil -> soobshchil -> vernulsya posle ustraneniya`
- Tekst na slayde: `Red flags nuzhny ne dlya straha, a dlya upravlyaemogo stopa`
- Speaker notes: eto most k modulyu `09`; podcherknite, chto ta zhe distsiplina nuzhna i pri demontazhe
- Svyazannyy learning outcome: `LO-11`, `LO-13`
- Svyazannyy vopros testa: `Q-49`
- Primechanie dlya dizayna: 4 krupnykh markera, podkhodyashchikh dlya re-use v worker-sheet

### Slayd 50

- Nomer slayda: `50`
- Modul: `09. Bezopasnyy demontazh`
- Tip slayda: `principle`
- Sloy kontenta: `core`
- Dlya kakogo profilya obyazatelen: `Short / Standard / Deep`
- Tsel slayda: otdelit demontazh ot lozhnogo predstavleniya, chto eto prosto "obratnaya sborka"
- Odna glavnaya mysl: demontazh trebuyet svoei bezopasnoy logiki, kontrolya zony i upravlyaemoy posledovatelnosti
- Chto dolzhen ponyat slushatel: na etape razborki risk ne ischezaet, a chasto vozrastaet iz-za poteri zhestkosti i improvizatsii
- Vizual: schema `ostanovka raboty -> podgotovka zony -> upravlyaemyy demontazh`
- Tekst na slayde: `Demontazh - eto otdelnaya opasnaia operatsiya, a ne "sobrat v obratnom poryadke"`
- Speaker notes: ne ukhodyte v system-specific poryadok dlya odnoi modeli; fokus na principakh upravlyaemosti i zapreta sbrosa vniz
- Svyazannyy learning outcome: `LO-12`
- Svyazannyy vopros testa: `Q-50`
- Primechanie dlya dizayna: tri bloka s silnym razdeleniem `stop / podgotovka / deystvie`

### Slayd 51

- Nomer slayda: `51`
- Modul: `09. Bezopasnyy demontazh`
- Tip slayda: `sequence`
- Sloy kontenta: `core`
- Dlya kakogo profilya obyazatelen: `Short / Standard / Deep`
- Tsel slayda: dat bazovuyu generic-safe sequence-logiku demontazha
- Odna glavnaya mysl: elementy snimayutsya ne po sluchaynoy udobnosti, a po upravlyaemoy posledovatelnosti s sokhraneniem kontrolya
- Chto dolzhen ponyat slushatel: narushenie poryadka ili popytka uskoryat demontazh za schet riskov = pryamaya opasnost
- Vizual: step-strip minimum iz `4` shagov
- Tekst na slayde: `Demontazh idet po posledovatelnosti, a ne po printsipu "chto blizhe, to i snimaem"`
- Speaker notes: etot slayd dolzhen stat oporoy dlya `TV-05` i Q-22; izbegayte lozhnoi konkretnosti po pasportnym uzlam
- Svyazannyy learning outcome: `LO-12`
- Svyazannyy vopros testa: `Q-22`
- Primechanie dlya dizayna: vizual dolzhen chitatsya kak algorithm board, a ne kak prostoy spisok

### Slayd 52

- Nomer slayda: `52`
- Modul: `09. Bezopasnyy demontazh`
- Tip slayda: `zone control`
- Sloy kontenta: `core`
- Dlya kakogo profilya obyazatelen: `Short / Standard / Deep`
- Tsel slayda: svyazat demontazh s kontrolem opasnoy zony i marshrutov
- Odna glavnaya mysl: bez kontrolya zony, podachi i snyatiya elementov demontazh bystro perekhodit v opasnyy rezhim
- Chto dolzhen ponyat slushatel: nuzhno derzhat pod kontrolem niz, podkhody i put elementa posle snyatiya; sbros vniz nedopustim
- Vizual: zona rabot s markerami `opasnaya zona / marshrut / mesto priyoma`
- Tekst na slayde: `Snyatie elementa bez kontrolya zony = risk dlya vsekh vokrug`
- Speaker notes: zdes vazhno zamknut kurs s modul'em `04` pro opasnuyu zonu i modul'em `07` pro padeniye predmetov
- Svyazannyy learning outcome: `LO-12`, `LO-13`
- Svyazannyy vopros testa: `Q-52`
- Primechanie dlya dizayna: odna prostranstvennaya skhema s yavno vydelennym `no-go` putem

### Slayd 53

- Nomer slayda: `53`
- Modul: `09. Bezopasnyy demontazh`
- Tip slayda: `comparison`
- Sloy kontenta: `standard`
- Dlya kakogo profilya obyazatelen: `Standard / Deep`
- Tsel slayda: pokazat kontrast mezhdu upravlyaemym i opasnym demontazhom
- Odna glavnaya mysl: opasnyy demontazh vidno po narushenii posledovatelnosti, potere kontrolya zony i popytke uskorit rabotu
- Chto dolzhen ponyat slushatel: "bystree" pri demontazhe ochen chasto oznachaet "opasnee"
- Vizual: `pravilno / opasno` po stsenariyu demontazha
- Tekst na slayde: `Demontazh bez poryadka i kontrolya zony bystro stanovitsya opasnym`
- Speaker notes: ne delayte sravnenie zavisyashchim ot odnoi modeli lesov; derzhite fokus na povedencheskom i protsessnom kontraste
- Svyazannyy learning outcome: `LO-12`
- Svyazannyy vopros testa: `Q-53`
- Primechanie dlya dizayna: markerami vydelyat imenno narusheniya poryadka i kontrolya, a ne dekorativnyy "krasnyy/zelonyy"

### Slayd 54

- Nomer slayda: `54`
- Modul: `09. Bezopasnyy demontazh`
- Tip slayda: `scenario`
- Sloy kontenta: `standard`
- Dlya kakogo profilya obyazatelen: `Standard / Deep`
- Tsel slayda: razobrat spornoe deystvie pri demontazhe cherez reshenie `stop / prodolzhit / eskalirovat`
- Odna glavnaya mysl: pri demontazhe opasno "dodelat na avose", esli posledovatelnost ili zona uzhe vybyli iz-pod kontrolya
- Chto dolzhen ponyat slushatel: esli net bezopasnogo puti snyatiya, priema ili peredachi elementa, rabotu nado ostanovit i peresobrat plan deystviy
- Vizual: scenario-card s odnim kriticheskim i 1-2 pogranichnymi usloviyami
- Tekst na slayde: `Keys: mozhno li prodolzhit demontazh v etoy situatsii?`
- Speaker notes: vyvedite slushatelya na argumentatsiyu po granitsam polnomochiy i kontrolyu zony, a ne tolko na "otvet B"
- Svyazannyy learning outcome: `LO-12`, `LO-13`
- Svyazannyy vopros testa: `Q-54`
- Primechanie dlya dizayna: minimum teksta, tsentr slayda = reshenie i osnovanie dlya nego

### Slayd 55

- Nomer slayda: `55`
- Modul: `09. Bezopasnyy demontazh`
- Tip slayda: `summary`
- Sloy kontenta: `core`
- Dlya kakogo profilya obyazatelen: `Short / Standard / Deep`
- Tsel slayda: zavershit kurs opornymi printsipami bezopasnogo demontazha
- Odna glavnaya mysl: bezopasnyy demontazh derzhitsya na discipline poryadka, kontrolya zony i otkaza ot improvizatsii
- Chto dolzhen ponyat slushatel: final kursa - eto ne "znaet termin", a umeet ostanovit opasnoe deystvie i deystvovat po upravlyaemoy logike
- Vizual: algoritm `podgotovka -> posledovatelnost -> kontrol zony -> stop pri riskakh`
- Tekst na slayde: `Bezopasnyy demontazh - eto poryadok, kontrol i stop pri riskakh`
- Speaker notes: etot slayd dolzhen byt mostom k finalnomu testu; sdelayte ego dostatochno kompaktnym, chtoby posle nego logichno pereyti k proverke znaniy
- Svyazannyy learning outcome: `LO-12`, `LO-13`
- Svyazannyy vopros testa: `Q-55`
- Primechanie dlya dizayna: odna silnaya summary-skhema, podkhodyashchaya i dlya short-track

## Placement note po modulyam `08-09`

- Finalnyy testovyy blok etim razvorotom ne perenositsya i po-prezhnemu ostayetsya v kontse prezentatsii posle obuchayushchego contoura.

## Primechanie po variativnosti

- `Short`: ostavlyaem slaydy `01`, `02`, `04`, `05`, `06`, `09`, `10`, `11`, `14`, `15`, `17`, `19`, `20`, `21`, `22`, `23`, `26`, `27`, `28`, `29`, `31`, `35`, `36`, `37`, `38`, `39`, `43`
- `Standard`: dobavlyaem slaydy `03`, `07`, `12`, `16`, `18`, `24`, `30`, `32`, `33`, `40`, `41`
- `Deep`: dobavlyaem slaydy `08`, `13`, `25`, `34`, `42` i dalneyshe razvorachivaem keysy i vizualnye razbory v sleduyushchikh modulyakh

## Sleduyushchiy fokus

V sleduyushchey iteratsii nuzhno:

- sobrat `A-44` - `A-48` kak realnye controllable visuals dlya `TV-01` - `TV-05`;
- proverit targeted QA po assessment-validity i worker-ponyatnosti;
- pri nuzhde usilit svyazku `slides 47 / 51` s testovym contourom, ne vykhodya za generic-safe granitsu.
- dlya klinovykh lesov derzhat otdelnyy image-driven contour `06_klinovye_lesa_montage_sequence_pack_v0.1.md`, gde `1 etap = 1 slayd`, a kazhdyy slayd kommentiruet trebovaniya i vozmozhnye oshibki po client-provided posledovatelnosti montazha.
- v contour po klinovym lesam otdelno derzhat obyazatelnyy slayd po ankerovaniyu, chtoby ne poteryat logiku krepleniya lesov k konstruktsii.
- dlya khomutovykh lesov ne dubliruyt ves montage-pack, a sobirat tolko differential-layer po otlichiyam ot klinovoy sborki: `soedineniya trub`, `obvyazka kollon` i otdelnyy slayd po ankerovaniyu.
