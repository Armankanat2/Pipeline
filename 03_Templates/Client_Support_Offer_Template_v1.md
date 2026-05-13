# Client Support Offer Template v1

## Naznachenie

Shablon nuzhen dlya perevoda post-release feedback i signalov klienta v ponyatnoe predlozhenie na abonentskoe ili paketnoe soprovozhdenie kursa.

Ego zadacha:

- ne predlagat servis "v vozdukhe", a opirat'sya na realnye signaly;
- pokazat klientu, chto podderzhka - eto ne prosto pravki, a upravlyaemoe obnovlenie materiala;
- otdelit razovuyu doprabotku ot postoyannogo kontura soprovozhdeniya;
- svyazat feedback, release, maintenance i kommercheskoe predlozhenie v odnu logiku.

## Kogda ispolzovat

Shablon aktualen, esli:

- klient daet povtoryayushchiesya zamechaniya ili zaprosy;
- kurs zhivet posle reliza i ispolzuetsya regulyarno;
- domen kursa menyaetsya chashche, chem odin raz v god;
- klientu nuzhny planovye review, monitoring normativov, obnovlenie testa ili metodichki;
- po itogu `Client Feedback Form` signal pomechen kak kandidat v servisnyy kontur.

## 1. Obshchaya informatsiya

- Nazvanie kursa:
- Kod kursa:
- Klient / company:
- Kontaktnoe litso:
- Kto yavlyaetsya zakazchikom izmeneniy:
- Kto utverzhdaet change requests:
- Data podgotovki predlozheniya:
- Tekushchaya release-versiya:
- Osnovanie dlya predlozheniya: `client feedback / pilot / exploitation / regulation / roadmap`
- Kakie sborki zatronuty: `korotkaya / srednyaya / dlinnaya / all`
- Kakie track zatronuty: `worker / ITR / all`

Pravilo:

- esli signal otnositsya tolko k odnomu variantu dliny ili odnomu track, predlozhenie dolzhno snachala rassmatrivat lokalnoe obnovlenie etoy adaptatsii;
- peresborka `content core` ili vsego `Pipeline` ne dolzhna predlagat'sya, poka ne podtverzhdeno, chto problema ne reshaetsya na urovne varianta ili track.

## 2. Chto my uvideli po signalam

- Klyuchevye povtoryayushchiesya kommentarii:
- Kakie zamechaniya okazalis ne edinichnymi, a pattern:
- Kakie signaly otnosyatsya tolko k odnomu variantu dliny:
- Kakie signaly otnosyatsya tolko k odnomu track:
- Kakie bloki kursa trebuyut monitoringa:
- Kakie izmeneniya mogut voznikat regulyarno:
- Est li risk, chto bez podderzhki kurs bystro ustareet:

## 3. Zachem klientu nuzhno soprovozhdenie

Kratko zafiksirovat klientskuyu polzu:

- chto imenno budet sokrashchat'sya: riski, zaderzhki, haotichnye pravki, ustarevanie;
- chto budet uluchshat'sya: aktualnost, ponyatnost, gotovnost k proverkam, stabilnost release;
- pochemu razovye pravki uzhe nedostatochny ili neoptimalny.

## 4. Varianty servisa

### Variant A - Razovaya doprabotka

Podkhodit, esli:

- est ogranichennyy spisok pravok;
- net zaprosa na regulyarnyy monitoring;
- kurs ne trebuet postoyannogo obnovleniya.

Vklyuchaet:

- razbor odnoi partii kommentariyev;
- odin tsikl `filter -> decision -> update`;
- vypusk soglasovannoy versii.

Ne vklyuchaet:

- regulyarnyy monitoring;
- planovye review;
- podderzhku po budushchim signalam bez novogo zaprosa.

### Variant B - Paketovoe obnovlenie

Podkhodit, esli:

- klient sobiraet kommentarii partiyami;
- nuzhno ne reagirovat na kazhduyu meloch, a vnosit izmeneniya paketno;
- kurs trebuet periodicheskogo osovremenivaniya.

Vklyuchaet:

- sborka signalov za period;
- filtratsiya i conflict check;
- planovyy `patch / minor / major` update;
- release-note po obnovleniyu.

Rekomenduemyy ritm:

- `1` raz v mesyats;
- `1` raz v kvartal;
- po itogu sezona / proektnogo tsikla.

### Variant C - Abonentskoe soprovozhdenie

Podkhodit, esli:

- kurs ispolzuetsya postoyanno;
- zamechaniya i novye signaly voznikayut regulyarno;
- est normativnaya ili operatsionnaya volatilnost;
- klientu nuzhen ne razovyy vendor, a postoyannyy kontur podderzhki.

Vklyuchaet:

- regulyarnyy sbor i razbor signalov;
- monitoring normativnykh i metodicheskikh izmeneniy;
- planovyy review kontenta, testa i release-kontura;
- prioritetizatsiyu pravok po version-rule;
- obnovlenie klientskogo paketa po soglasovannomu grafiku.

## 5. Chto mozhno vklyuchit v servis

Otmetit nuzhnye moduli:

- monitoring feedback po klientskim formam;
- ezhemesyachnyy razbor signalov;
- kvartalnyy review kursa;
- monitoring normativnykh izmeneniy;
- obnovlenie `test pack` i `answer key`;
- obnovlenie `instructor guide` i `lecturer questions bank`;
- obnovlenie `online handoff`-kontura;
- release-perevypusk `PPTX / PDF`;
- podgotovka obosnovannogo spiska pravok s prioritetami;
- otchetnost po signalam i prinyatym resheniyam.

## 6. Granitsy rabot

Otdelno zafiksirovat, chto servis ne oznachaet:

- beskonechnye pravki bez version-rule;
- peresborku uchebnogo yadra po odnomu klientskomu pozhelaniyu;
- vklyuchenie novogo scope bez otdelnogo soglasovaniya;
- srochnoe vnesenie izmeneniy v aktivnyy release bez formalnogo resheniya;
- izmenenie globalnykh pravil vsego `Pipeline` po odnomu kursu bez proverki na pattern.

## 7. Rekomenduemaya model raboty

- Istochnik signalov: `client feedback form / pilot / exploitation / regulation`
- Chastota review:
- Format vzaimodeystviya: `async / call / monthly review`
- Format peredachi pravok: `package update / release update / service cycle`
- Kto so storony klienta sobiraet kommentarii:
- Kto so storony klienta imeet pravo zakazyvat izmeneniya:
- Kto so storony komandy vedet maintenance:

## 8. Itogovoe predlozhenie

- Rekomenduemyy variant: `A / B / C`
- Pochemu imenno on:
- Chto poluchaet klient:
- Kakie riski snimayutsya:
- Kakie rezul'taty mozhno ozhidat za `1-3` tsikla:

## 9. Kommercheskoe pole

Zdes mozhno ostavit mesto pod kommercheskie parametry bez ikh zhestkoy fiksatsii v shablone:

- Stoimost modeli:
- Chto vkhodit v bazovyy obem:
- Chto schitaetsya doprabotkoy vne paketa:
- SLA / sroki reaktsii:
- Usloviya zapuska:

## 10. Svyazannye dokumenty

- `Client_Feedback_Form_Short_Template_v1.md`
- `Client_Feedback_Form_Template_v1.md`
- `Feedback_Learning_Loop_v0.1.md`
- `Update_Log_Template_v1.md`
