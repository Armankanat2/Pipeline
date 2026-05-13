# Legal Risk Register v0.1

## Status

- Status: `inactive / research-only`
- Data sborki: `2026-05-13`
- Owner: `vy`
- Rezhim primeneniya: `neblokiruyushchiy`

## Naznachenie

Etot dokument nuzhen, chtoby zafiksirovat yuridicheskie riski vokrug `Pipeline` i kursov, kotorye on sobiraet.

Na tekushchem etape on:

- ne ostanavlivaet production-sborku;
- ne vvodit novye obyazatelnye QA-gates;
- ne zapreshchaet rabotu nad `Montazhnik_lesov`;
- ne schitaetsya finalnoy yuridicheskoy ekspertizoy.

Ego zadacha seychas:

- ne poteryat vazhnye yuridicheskie voprosy;
- razdelit `kritichno ponyat` i `kritichno srochno ostanovit`;
- podgotovit osnovu dlya bolee glubokogo pravovogo razbora pozhe.

## Pravilo ispolzovaniya poka dokument ne aktivirovan

- registr smotrit na risk, no ne blokiruet rabotu avtomaticheski;
- vse punkty iz nego pokuda schitayutsya `watchlist`, a ne `release stop`;
- esli vozniknet realnyy klient, formalnaya attestatsiya, publishing handoff ili massovyy release, registr nuzhno pereproyti otdelno;
- aktivatsiya etogo registra dolzhna byt otdelnym resheniem, a ne sluchaynoy eskalatsiey po khodu sborki.

## Granitsy dokumenta

Dokument ne daet okonchatelnykh otvetov po:

- licenzirovaniyu obrazovatelnoy deyatelnosti;
- sootvetstviyu obyazatelnomu obucheniyu po okhrane truda;
- statusu attestatsii, proverki znaniy i vydachi dokumentov;
- pravam na vse foto, skhemy, shrifty i brend-materialy;
- polnomu PD-analysis po klientskim dannym.

Po etim temam nuzhen otdelnyy glubokiy review.

## Reestr riskov

| ID | Zona riska | Chto mozhet byt problemoy | Tekushchiy signal v proekte | Risk seychas | Chto delat poka | Budushchiy trigger na aktivatsiyu |
|---|---|---|---|---|---|---|
| LR-01 | Product classification | Neopredeleno, yavlyaetsya li paket prosto uchebnym materialom, vnutrennim treningom ili produktom, kotoryy mozhet byt vosprinyat kak formalnoe obuchenie | V brief est test, publishing contour, online contour i pole `Nuzhna li attestatsiya: utochnyaetsya` | `high` | Ne obeshchat formalnyy status kursa i ne pozitsionirovat ego kak zamenyu obyazatelnogo obucheniya do razbora | realnyy klient, prodazha kursa, zapros na attestatsiyu ili udostoverenie |
| LR-02 | Okhrana truda / regulatory claims | Kurs mozhet byt vosprinyat kak dostatochnyy dlya vypolneniya obyazatelnykh trebovaniy po obucheniyu i proverke znaniy | V source register est normativnaya baza, no net finalnogo resheniya po granitsam kursa | `high` | V release-formulirovkakh derzhat ostorozhnuyu pozitsiyu: kurs ne zamenyaet lokalnye reglamenty i pasport sistemy | vyvod kursa vo vneshniy release, dogovor s zakazchikom, audit so storony rabotodatelya |
| LR-03 | Expert validation | Tekhnicheski chuvstvitelnyy safety-kontent bez finalnogo eksperta mozhet okazat'sya netochnym | Tekhnicheskiy ekspert poka ne opredelen, v source register validatsiya `missing` | `high` | Prodolzhat sborku kak draft, no ne schitat kontent finalno tekhnicheski zavershennym | pered pilotom, pered release, pered ispolzovaniem v realnom obuchenii |
| LR-04 | Asset copyright | Foto, skhemy, ikony, shrifty i pererisovki mogut ne imet chistogo pravovogo statusa | Asset register i publishing handoff uzhe fiksiruyut `partial / utochnit / needs approval` | `high` | Dalshe sobirat kontent, no ne schitat visual layer rights-cleared | publishing handoff, klientskiy release, tipografiya, public sharing |
| LR-05 | Producer / manufacturer materials | Skhemy proizvoditelya i pasporta sistem mogut byt nelzya prosto kopirovat ili pererisovyvat bez pravil | V asset register otkryto ukazano, chto eto nado utochnyat | `high` | Pometchat takie materialy kak `legal check needed`, ne schitat ikh avtomaticheski dopustimymi | poyavlenie konkretnogo pasporta sistemy, finalizatsiya skhem slaydov `09-13` |
| LR-06 | Trademarks and branding | White-label release mozhet narushit pravila ispolzovaniya logotipov, nazvaniy i klientskikh kontaktov | Brand profile znaet pro istochnik logotipa i pravovye ogranicheniya, no ne trebuet dokazatelstva razresheniya | `medium` | Ne ispolzovat chuzhoy branding v release bez otdelnogo podtverzhdeniya | poyavlenie realnogo klienta, branded deck, A3/A5, final PDF |
| LR-07 | Personal data | Formy feedback i support sobirayut kontaktnye dannye, no net otdelnogo PD-layer | V client feedback form est contact person, company, authority, review cadence | `medium` | Poka ne razvorachivat servisnyy kontur kak postoyannuyu bazu klientskikh kontaktov bez razbora | vneshniy support-process, baza klientov, abonentskoe obsluzhivanie |
| LR-08 | Online delivery liability | Self-paced / online-ready kontur mozhet usilit risk, esli safety-smysl budet uproshchen ili poteryan | V pipeline uzhe est online handoff, narration, language packs, QR/direct links | `medium` | Schitat online contour eksperimentalnym, ne nazyvat ego gotovym dlya samostoyatelnogo safety-obucheniya | zapusk LMS/web-versii, massovyy dostupa bez lektora |
| LR-09 | Translation risk | Perevod mozhet iskatit safety-smysl i sozdat lozhnoe chuvstvo ponyatnosti | V dokumentakh uzhe est glossary-lock i multilingual warnings | `medium` | Derzhat language packs kak controlled draft, a ne kak final multilingual release | zapros na realnyy uz/tg ili drugoy language release |
| LR-10 | Contract scope and change control | Bez dogovornogo sloya mozhno sluchayno obeshchat bolshe, chem gotova sistema | Pipeline khorosho opisal version rule i feedback filter, no eto poka vnutrenniy kontur | `medium` | Schitat eto vnutrenney disciplinoy, no ne podmenyat eyu budushchiy dogovor | pervyy vneshniy klient, change request, paid revisions |
| LR-11 | Font licensing | Da zhe pri chistom decke mozhet byt zapret na peredachu ili embedding shriftov | Publishing handoff otkryto fiksiruet, chto po fontam mnogo neutochnennogo | `medium` | Ne schitat source bundle publish-ready do otdelnogo podtverzhdeniya po shriftam | final export, print vendor, source bundle transfer |
| LR-12 | AI-assisted content provenance | Pri AI-support nuzhno otdelyat chernovik, proverennyy kontent i finalnuyu otvetstvennost | V brief zafiksirovano `solo mode s AI support`, no net otdelnogo pravila provenance | `low / medium` | Schitat AI vspomogatel'nym instrumentom, a ne istochnikom normativnoy istiny | vneshniy audit, spor po oshibke, klientskiy due diligence |

## Chto uzhe khorosho

- v proekte uzhe est pravovaya ostorozhnost po rights-status assets;
- v release-materialakh uzhe est ogranicheniya вида `ne zamenyaet pasport sistemy i lokalnye reglamenty`;
- publishing handoff uzhe znaet pro `rights-cleared`, `font list`, `preflight`;
- multilingual contour uzhe smotrit na risk poteri safety-smysla;
- pipeline ne pytaetsya pryatno zamaskirovat pravovye probely pod vidom gotovogo release.

## Chto poka ne delat

- ne podnimat etot registr do obyazatelnogo gate pryamo seychas;
- ne ostanavlivat sborku script, assets i QA iz-za etogo dokumenta;
- ne peredelivat ves `Pipeline` pod yuridicheskiy contour do otdelnogo resheniya;
- ne schitat etot fayl zamenoy юриста, eksperta po okhrane truda ili dogovornogo paketa.

## Minimalnye bezopasnye predokhranateli uzhe seychas

Poka registr ne aktivirovan, dostatochno derzhat tri prakticheskikh pravila:

1. Ne zayavlyat, chto kurs zamenyaet obyazatelnoe obuchenie, attestatsiyu ili lokalnye reglamenty.
2. Ne vypuskat vneshne assets, shrifty i branding bez ponyatnogo rights-status.
3. Ne schitat kontent finalno zavershennym bez tekhnicheskoy validatsii eksperta po lesam.

## Usloviya budushchey aktivatsii

Registr imeet smysl perevesti v `active` tolko esli proizoydet hotya by odno:

- poyavlyaetsya realnyy klient;
- kurs idet v platnuyu postavku;
- nuzhna attestatsiya, proverka znaniy ili vydacha dokumentov;
- gotovitsya publishing handoff vo vneshniy contour;
- zapuskaetsya online/self-paced release;
- nachinaetsya obrabotka klientskikh kontaktnykh dannykh na postoyannoy osnove.

## Kandidaty na sleduyushchiy pravovoy sloy

Kogda vernyomsya k teme glubzhe, nuzhno budet sobrat minimum:

- `Legal_Position_Memo_v1`
- `Asset_Rights_Register_v1`
- `Brand_Use_Clearance_Rules_v1`
- `Personal_Data_Mini_Policy_v1`
- `Release_Legal_Gate_v1`

## Istochniki dlya glubokogo razbora pozhe

- Postanovlenie Pravitelstva RF N 2464 po obucheniyu po okhrane truda
- Zakon o personalnykh dannykh i ofitsialnye razyasneniya Roskomnadzora
- Rezhim licenzirovaniya obrazovatelnoy deyatelnosti
- Pravila po avtorskym pravam, tovarnym znakam i peredache fontov / visual assets

## Tekushchee reshenie

- Registr sobran: `yes`
- Registr aktiven kak blokiruyushchiy contour: `no`
- Mozhno li prodolzhat sborku proekta bez ostanovki: `yes`
- Nuzhen li bolee glubokiy pravovoy review pozhe: `yes`
