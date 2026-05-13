# Client Feedback Form Template v1

## Naznachenie

Shablon nuzhen dlya sbora zamechaniy, pravok i signalov ot klienta v standartnom vide, kotoryy mozhno propustit cherez vnutrenniy `feedback filter`, `conflict check` i `version rule`.

Dlya bystroy otpravki klientu mozhno ispolzovat otdelnuyu korotkuyu versiyu: `Client_Feedback_Form_Short_Template_v1.md`.

Ego zadacha:

- ne sobirat razroznennye kommentarii po chatam i zvonkam;
- perevesti klientskie pozhelaniya v upravlyaemyy format;
- otdelit realnye nedorabotki ot edinichnykh vkusovykh pozhelaniy;
- sozdavat bazu dlya post-release podderzhki i abonentskogo obsluzhivaniya.

## Pravilo ispolzovaniya

- klient zapolnyaet blok `Client Input`;
- komanda `Pipeline` ne pravit kurs napryamuyu po etoy forme bez vnutrennego razbora;
- kazhdyy punkt posle polucheniya prokhodit cherez `internal filter`;
- reshenie o pravke prinimaetsya tolko posle klassifikatsii, conflict check i version rule.

## 1. Client Input

### Obshchaya informatsiya

- Nazvanie kursa:
- Kod kursa:
- Klient / company:
- Kontaktnoe litso:
- Rol kontakta:
- Yavlyaetsya li eto litso zakazchikom izmeneniy: `yes / no / partially`
- Kto yavlyaetsya zakazchikom izmeneniy:
- Kto so storony klienta imeet pravo soglasovat izmeneniya:
- Data otpravki formy:
- Versiya release, k kotoroy otnosyatsya kommentarii:
- Format paketa: `PPTX / PDF / test / notes / online / mixed`
- Variant kursa: `korotkaya / srednyaya / dlinnaya / mixed / all`
- Track: `worker / ITR / mixed / all`
- Tip feedback: `release review / pilot feedback / exploitation feedback / monthly review / quarterly review`

Pravilo:

- polya `Variant kursa` i `Track` v etom bloke zadayut bazovyy kontekst dlya vsey formy;
- esli konkretnoe zamechanie otnositsya ne ko vsemu paketu, a tolko k odnoi sborke ili odnomu track, eto utochnyaetsya v stroke reestra kommentariyev;
- esli znacheniya v stroke i v shapke ne sovpadayut, prioritet imeet stroka kommentariya.

### Obshchaya otsenka

- Chto v pakete rabotaet khorosho:
- Chto vyzyvaet osnovnye voprosy:
- Est li kritichnye zamechaniya do zapuska:
- Est li zamechaniya posle realnogo ispolzovaniya:

### Reestr klientskikh kommentariyev

Klient zapolnyaet odnu stroku na odno zamechanie ili zapros.

| ID | Variant | Track | Blok / fayl / slayd | Kommentariy klienta | Chto imenno ne ustroilo | Zhelaemyy rezultat | Kritichnost dlya klienta | Srok ozhidaniya | Eto oshibka ili uluchshenie? | Kto zaprashivaet izmenenie? | Dlya kogo eto izmenenie aktualno? |
|---|---|---|---|---|---|---|---|---|---|---|---|
| CL-01 | `korotkaya / srednyaya / dlinnaya / all` | `worker / ITR / all` |  |  |  |  | `critical / important / optional` | `asap / next release / no deadline` | `error / improvement / not sure` |  | `one build / one variant / one track / all builds` |

### Otdelnye voprosy po ispolzovaniyu

- Gde slushateli ili sotrudniki zadavali odni i te zhe voprosy:
- Gde lektoru ili instruktoru bylo slozhno vesti material:
- Gde test okazalsya slishkom prostym ili slishkom slozhnym:
- Gde material okazalsya neprimenimym na praktike:
- Est li novye trebovaniya ili izmeneniya so storony biznesa:

## 2. Internal Filter

Etot blok zapolnyaet komanda `Pipeline` posle polucheniya formy.

### Pravila filtra

- ne pravit kurs napryamuyu iz klientskogo kommentariya;
- ne schitat edinichnoe mnenie dostatochnym dlya perestroiki uchebnogo yadra;
- ne pozvolyat klientskomu zaprosu lomat metodiku bez otdelnogo resheniya;
- ne smeshivat `bug fix`, `content improvement` i `scope expansion`;
- ne vnosit izmeneniya v aktivnyy release bez `version rule`.

### Reestr obrabotki signalov

| Client ID | Requester role | Type | Frequency | Impact | Conflict | Predvaritelnoe reshenie | Kommentariy komandy |
|---|---|---|---|---|---|---|---|
| CL-01 | `owner / approver / lecturer / user / mixed` | `bug fix / content improvement / scope expansion` | `single / repeated / systemic` | `local / module / course / pipeline` | `none / client-vs-core / speed-vs-version / local-vs-pipeline / variant-vs-core / track-vs-core` | `ignore / monitor / patch / minor / major / escalate` |  |

## 3. Conflict Check

Kazhdyy klientskiy signal dolzhen byt svereen s prioritetami:

1. povtoryaemyy pattern vyshe edinichnogo mneniya;
2. tselostnost uchebnogo yadra vyshe zaprosa klienta;
3. pravilnaya metodika vyshe udobstva lokalnogo provedeniya;
4. stabilnost versii vyshe bystroy pravki;
5. standartizatsiya vsego `Pipeline` vyshe lokalnoy optimizatsii odnogo kursa.

Dopolnitelnye pravila dlya mnogoversionnoy sborki:

- esli konflikt voznik tolko v `korotkaya / srednyaya / dlinnaya` adaptatsii, snachala proverit, mozhno li ispravit variant bez izmeneniya `content core`;
- esli konflikt voznik tolko v `worker / ITR` adaptatsii, snachala proverit, mozhno li ispravit track bez izmeneniya bazovogo uchebnogo yadra;
- tolko esli lokalnaya pravka varianta ili track ne reshaet problemu, signal podnimaetsya do urovnya `course core`.

Zafiksirovat:

- Kakie kommentarii yavlyayutsya edinichnym mneniem:
- Kakie kommentarii podtverzhdayutsya patternom:
- Kakie kommentarii konfliktuyut s uchebnym yadrom:
- Kakie kommentarii otnosyatsya tolko k `korotkaya / srednyaya / dlinnaya` versii:
- Kakie kommentarii otnosyatsya tolko k `worker / ITR` track:
- Kakie kommentarii mogut byt prinyaty bez riska dlya sistemy:
- Kakie kommentarii nuzhno eskalirovat kak otdelnoe reshenie:

## 4. Version Decision

Po itogu razbora komanda dolzhna prinyat odno iz resheniy:

- `ignore` - signal ne trebuet izmeneniya;
- `monitor` - signal nuzhno nablyudat dal'she;
- `patch` - lokalnaya pravka bez izmeneniya yadra;
- `minor` - uluchshenie bloka, testa, notes ili struktury podachi;
- `major` - izmenenie kursovoy logiki, coverage ili delivery-kontura;
- `escalate to pipeline` - signal mozhet trebovat izmeneniya ne tolko kursa, no i pravila sistemy.

### Itog po forme

- Status formy: `accepted / partially accepted / deferred / rejected`
- Kto provel razbor:
- Data razbora:
- Razreshennyy tip izmeneniy:
- Kto so storony klienta utverdil change request:
- Trebuetsya li otdelnoe metodicheskoe reshenie: `yes / no`
- Trebuetsya li otdelnyy raschet na doprabotku: `yes / no`
- Trebuetsya li vynesti v abonentskoe obsluzhivanie: `yes / no`

## 5. Maintenance Opportunity

Etot blok nuzhen ne dlya prodazhi radi prodazhi, a dlya ponyatnogo perekhoda ot razovoy postavki k servisnoy modeli.

Signal mozhet byt kandidatom v abonentskoe obsluzhivanie, esli:

- klient regulyarno daet povtoryayushchiesya kommentarii;
- domen kursa bystro menyaetsya;
- material aktivno zhivet posle reliza;
- est zapros na planovye review, osovremenivanie ili monitoringa normativov;
- klient khochet ne razovuyu pravku, a postoyannyy kontur podderzhki.

### Rekomendatsiya po servisu

- Razovaya pravka: `yes / no`
- Paketovoe obnovlenie na sleduyushchiy release: `yes / no`
- Ezhemesyachnyy monitoring i update support: `yes / no`
- Kvartalnyy review kontenta i testa: `yes / no`
- Monitoring normativnykh izmeneniy: `yes / no`

Esli signal pererastaet v servisnyy kontur, dlya podgotovki predlozheniya mozhno ispolzovat `Client_Support_Offer_Template_v1.md`.
