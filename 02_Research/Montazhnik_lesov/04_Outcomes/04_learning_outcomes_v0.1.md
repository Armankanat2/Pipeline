# Learning Outcomes

## Obshchaya informatsiya

- Nazvanie kursa: `Montazhnik lesov`
- Kod kursa: `ML`
- Data sborki: `2026-05-12`
- Owner: vy

## Reestr outcomes

| ID | Blok / modul | Outcome | Kak proverim | Tip proverki | Prioritet |
|---|---|---|---|---|---|
| LO-01 | Dopusk i organizatsiya rabot | Slushatel mozhet opredelit, kakie usloviya dolzhny byt vypolneny pered nachalom rabot na lesakh | Dat situatsiyu pered nachalom rabot i poprosit ukazat, chego ne khvataet dlya bezopasnogo dopuska | situational | core |
| LO-02 | SIZ i rabota na vysote | Slushatel mozhet vybrat bazovye SIZ i ukazat, kogda ikh otsutstvie delaet rabotu nedopustimoy | Dat spisok usloviy raboty ili foto rabotnika i poprosit opredelit oshibki po SIZ | visual / situational | core |
| LO-03 | Elementy lesov | Slushatel mozhet raspoznat osnovnye elementi lesov i obyasnit ikh rol v ustoychivosti i bezopasnosti konstruktsii | Pokazat skhemu ili foto i poprosit sootnesti element s ego funktsiey | visual / test | core |
| LO-04 | Podgotovka ploshchadki | Slushatel mozhet opredelit, gotova li ploshchadka dlya nachala montazha, i nazvat kritichnye nedostatki | Dat opisanie ploshchadki ili foto i poprosit ukazat risk points | visual / situational | core |
| LO-05 | Priemka elementov | Slushatel mozhet opredelit, kakie elementi i uzly nelzya dopuskat k sborke iz-za povrezhdeniy ili nekomplektnosti | Pokazat nabor elementov ili opisanie sostoyaniya i poprosit vybrat problemnye pozitsii | visual / situational | core |
| LO-06 | Start sborki | Slushatel mozhet vyстроit bezopasnuyu logiku sborki bazy i pervogo yarusa bez propuska kritichnykh shagov | Dat peremeshannyy spisok shagov i poprosit rasstavit ikh v pravilnoy posledovatelnosti | test / situational | core |
| LO-07 | Nabor vysoty | Slushatel mozhet raspoznat narushenie pri naborе vysoty i obyasnit, pochemu ono opasno | Pokazat situatsiyu ili foto nedostroennogo yarusa i poprosit nazvat narusheniya | visual / situational | core |
| LO-08 | Kreplenie i ustoychivost | Slushatel mozhet obyasnit, pochemu otsutstvie krepleniy, svyazey ili otstuplenie ot skhemy opasno dlya vsey konstruktsii | Dat kratkiy keys po sborke i poprosit opredelit, chto ugrozhaet ustoychivosti | situational | core |
| LO-09 | Proverka pered ekspluatatsiey | Slushatel mozhet proverit gotovnost lesov k ekspluatatsii po bazovomu cheklistu i opredelit osnovaniya dlya zapreta rabot | Dat cheklist i opisanie konstruktsii, poprosit prinyat reshenie `dopustit / ne dopustit` | situational / test | core |
| LO-10 | Bezopasnaya ekspluatatsiya | Slushatel mozhet opredelit deystviya polzovatelya, kotorye privodyat k peregruzke, padeniyu predmetov ili drugomu opasnomu rezhimu raboty | Dat situatsionnye voprosy po ekspluatatsii i poprosit vybrat bezopasnoye reshenie | situational | core |
| LO-11 | Tipovye oshibki | Slushatel mozhet raspoznat tipovye oshibki pri montazhe, ekspluatatsii i demontazhe na foto ili v opisanii situatsii | Pokazat foto / opisanie i poprosit klassifitsirovat oshibku | visual / situational | core |
| LO-12 | Demontazh | Slushatel mozhet vyстроit bezopasnuyu posledovatelnost demontazha i opredelit deystviya, kotorye mogut privesti k obvalu | Dat scenario demontazha i poprosit nayti opasnye deystviya ili rasstavit shagi po poryadku | situational / test | core |
| LO-13 | Ogranicheniya i eskalatsiya | Slushatel mozhet opredelit, v kakikh sluchayakh nuzhno ostanovit raboty i peredat vopros masteru, ekspertu ili otvetstvennomu za bezopasnost | Dat problemnyy keys i poprosit prinyat reshenie `prodolzhit / ostanovit / eskalirovat` | situational | supporting |

## Pravila formulirovki

- Outcome nablyudaemyy i proveryaemyy
- Outcome svyazan s realnym deystviem ili resheniem
- Outcome ne formuliruetsya kak obshchee `ponimaet`
- Outcome mozhno svyazat s testom ili slaydom

## Pokrytie po blokam

- Bezopasnost: `LO-01`, `LO-02`, `LO-04`, `LO-08`, `LO-09`, `LO-10`, `LO-12`, `LO-13`
- Prakticheskie deystviya: `LO-03`, `LO-04`, `LO-05`, `LO-06`, `LO-07`, `LO-08`, `LO-09`, `LO-12`
- Tipovye oshibki: `LO-05`, `LO-07`, `LO-10`, `LO-11`, `LO-12`
- Dopusk / proverka: `LO-01`, `LO-02`, `LO-09`, `LO-13`

## Gap analysis

- Kakie outcomes slishkom abstraktny:
  - na etom shage samye abstraktnye riski snyaty; formulirovki sdelany cherez nablyudaemoe deystvie ili reshenie.
- Gde ne khvataet sposobov proverki:
  - dlya `LO-03`, `LO-05`, `LO-07`, `LO-11` silno zhelatelny foto i skhemy, inache test budet slishkom tekstovym;
  - dlya `LO-08` i `LO-12` nuzhny bolee predmetnye situatsii posle polucheniya pasporta sistemy lesov.
- Gde nuzhno sokratit ili obedinit formulirovki:
  - pri sborke arkhitektury mozhno obedinit blizkie outcomes vnutri moduley, no seychas ikh luchshe derzhat detalno dlya prozrachnoy svyazki s testom.

## Reshenie po gotovnosti

- Outcomes gotovy dlya `course architecture`: `yes`
- Chto nuzhno proverit do sleduyushchego etapa:
  - kakie outcomes obyazatelny imenno dlya vashego tipa lesov;
  - gde nuzhna usilennaya vizualnaya podderzhka;
  - kakie outcomes proverim testom, a kakie luchshe situatsionnymi keysami.
