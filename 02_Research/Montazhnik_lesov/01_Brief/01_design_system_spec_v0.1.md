# Design System Spec

## 1. Obshchaya informatsiya

- Nazvanie kursa: `Montazhnik lesov`
- Kod kursa: `ML`
- Client code: `generic`
- Vybrannyy dizayn-kontsept: poka ne vybran, fallback `D-06 Corporate Neutral`
- Data sborki: `2026-05-13`
- Owner: vy

## 2. Rol etogo spec

- Generic shell ili branded shell: generic shell s podgotovkoy k branded adaptation
- Dlya kakikh nositeley deystvuet: `PPTX / PDF / A3 / A5`
- Chto pokryvaet: bazovye pravila tipografiki, setki, warning/logical blocks, skhem i QR-zon
- Chto ne pokryvaet: finalnye klientskie logotipy i palitry, poka oni ne polucheny

## 3. Design tokens

- Bazovye tsveta: neytralnaya industrial/corporate baza
- Accent colors: odin osnovnoy accent + odin warning accent
- Risk / warning color: dolzhen byt vysokokontrastnym i ne putat'sya s navigatsiey
- Safe / success color: vtorichnyy, ne konkuriruyushchiy s warning
- Neutral text colors: vysokiy kontrast dlya svetlykh i temnykh fonov
- Fony: bez shumovogo peregruza, s prioritetom chitaemosti
- Tipograficheskaya shkala: krupnye zagolovki, sredniy rabochiy tekst, akuratnye podpisy
- Rabochie shrifty: zavisyat ot vybrannogo kontsepta i brand-shell
- Minimalnyy razmer dlya ekrana: proverit na realnoy sborke
- Minimalnyy razmer dlya pechati: proverit po `print production spec`

## 4. Setka i kompozitsiya

- Bazovaya setka: stabilnaya modulnaya setka bez "plavayushchikh" blokov
- Rabochie polya: dolzhny sokhranyat mesto pod footer / QR / branded-slot
- Safe area: ne podvodit tekst slishkom blizko k krayam
- Pravilo vyravnivaniya: edinaya logika po zagolovkam, kontentnym blokam i testam
- Maksimalnoe kolichestvo vizualnykh blokov na slayde: ogranichit, chtoby ne razvalivat worker readability
- Kogda razreshen split-layout: sravneniya `pravilno / nepravilno`, `gotovo / ne gotovo`, tablichnye razbory

## 5. Tipy slaydov

| Tip slayda | Klyuchevaya zadacha | Kompozitsiya | Ogranicheniya |
|---|---|---|---|
| Cover | zadat ton i professionalnyy kontekst | odin silnyy vizual + title shell | bez peregruza tekstom |
| Content | obyasnit pravilo / logiku | zagolovok + 1 skhema ili 3-5 tezisov | ne prevraschat v stenu teksta |
| Scheme | obyasnit konstruktsiyu | yavnaya ierarkhiya elementov | ne melchit podpisy |
| Comparison | pokazat oshibku i normu | split-layout | kontrast bez vizualnogo shuma |
| Test | proverit ponimanie | odin vopros + 4 varianta | maksimalnaya chitaemost |
| Final | zakryt kurs takeaway | korotkoe itogovoe deystvie | bez dekora radi dekora |

## 6. Pravila vizualov

- Foto: tolko bez yavnykh TB-narusheniy, esli eto ne uchebnyy primer oshibki
- Skhemy: predpochtitelno vektornye ili chistye pererisovki
- Tablitsy: ne razduvat, derzhat aktsent na reshenii
- Ikonki: odin semeystvennyy stil, bez miksa raznykh bibliotek
- `correct / incorrect / risk` sravneniya: odna i ta zhe logika markirovki vo vsem kurse
- Worker-warning blocks: otdelnyy stabilnyy warning-shell
- ITR-organizational blocks: poka ne aktivny v etom kurse

## 7. Branded slots

- Gde stoit logo: cover, final, pri neobkhodimosti footer-shell
- Gde stoit nazvanie zakazchika: cover/final i metadata-slots
- Gde dopustim slogan: tolko esli ne ubivaet chitaemost
- Kak oformlyaetsya contact block: kompaktno, bez konkurentsii s uchebnym kontentom
- Kakie elementy nelzya menyat klientu: strukturu content, warning semantics, logiku testa

## 8. QR i direct links

- Est li postoyannaya zona pod QR: dolzhna byt predusmotrena sistemno
- Minimalnyy razmer QR: utochnit v print spec
- Safe margin vokrug QR: utochnit v print spec
- Pravilo dlya temnykh fonov: proverka kontrasta obyazatelna
- Nuzhna li podpis k QR: da, esli QR vedet na video ili dopresurs
- Kogda QR nuzhen na slayde, a kogda ego luchshe unesti v notes ili materials: na kontentnykh slaydakh tolko esli on ne razrushayet osnovnuyu kompozitsiyu

## 9. Adaptatsiya v A3 i A5

- Kakaya logika perekhodit bez izmeneniy: warning language, ikonki, branded slots, numbering logic
- Chto nado uprostit dlya A3: bolshe distantsiya chteniya, menshe melkih blokov
- Chto nado uprostit dlya A5: maksimalno zhatyy tekst i ochen zhestkaya prioritetizatsiya
- Kak sokhranit svyaz s osnovnoy prezentatsiey: odni i te zhe visual semantics i warning roles

## 10. Zapreshchennye resheniya

- Chto nelzya delat v etom kontsepte: smeshivat raznye shell-stili vnutri odnogo release
- Chto lomaet chitaemost: slishkom tonkie linii, slishkom mnogo cvetov, melkie podpisi na skhemakh
- Chto narushaet brand-shell: ruchnye lokalnye pravki bez pravil
- Chto razmyvaet odin visual language: miks raznykh ikonok, QR v sluchaynykh mestakh, raznye tablichnye setki

## 11. Reshenie po gotovnosti

- Spec gotov k production: `starter draft / yes`
- Chto nuzhno dosobrat: finalnyy kontsept, brand assets, realnye typographic values
- Chto nuzhno proverit na first build: testovyy set iz `cover / content / test / final` + `A3 / A5`
