# Legal Source Policy v0.1

## 1. Naznachenie

Etot dokument vvodit legkiy `legal-compliance` sloy dlya kursov, v kotorykh ispolzuyutsya ssylki na zakonodatel'nuyu bazu RF.

Tsel:

- ispolzovat tol'ko real'no sushchestvuyushchie normativnye akty;
- ne dopuskat v kurs pridumannye nazvaniya, nomera, stat'i, punkty, prikazy, GOSTy, SP i postanovleniya;
- delat obnovlenie ssylok i nomeratsii upravlyaemym, a ne tikhim.

## 2. Granitsy primeneniya

Pravilo vklyuchaetsya, esli kurs ssylayetsya na:

- federal'nyy zakon;
- postanovlenie;
- prikaz;
- SP;
- GOST;
- drugoy normativnyy ili normativno-tekhnicheskiy dokument RF.

Esli kurs ne soderzhit RF-law references, etot sloy mozhno ne aktivirovat.

## 3. Bazovoe pravilo istochnikov

- V `Pipeline` mozhno ssylat'sya tol'ko na real'no sushchestvuyushchiy dokument.
- Pridumyvat zakon, nomer, datu, stat'yu, punkt ili status zapreshcheno.
- Esli real'nost' ili aktual'nost' dokumenta ne podtverzhdena, on ne schitaetsya validnym istochnikom dlya kursa.
- Esli podtverzhdenie ne naideno, material nuzhno pometit kak `needs verification`, a ne maskirovat pod normu.

## 4. Urovni istochnikov

Predpochtitel'nyy uroven':

1. `official`
2. `trusted mirror`
3. `needs verification`

Pravilo:

- dlya release-grade ssylok predpochtitel'ny `official` istochniki;
- `trusted mirror` dopustim tol'ko kak rabochiy vremenniy kanal s pometkoy;
- `needs verification` ne dolzhen stanovit'sya osnovaniem dlya final'noy pravki ili release.

## 5. Poluruchnoy review-ritm

V etom `Pipeline` ispol'zuetsya ne postoyannyy monitoring zakonodatel'stva, a poluruchnaya reviziya po komande.

Rabochiy ritm:

- po komande pol'zovatelya zapuskaetsya `legal review`;
- rekomenduemyi tsikl proverki: raz v `6` mesyatsev;
- etot tsikl yavlyaetsya ritmom obsluzhivaniya `Pipeline`, a ne utverzhdeniem o real'nom poryadke izmeneniya zakonov.

## 6. Obyazatel'naya forma pered zamenoy

Pered lyuboy zamenoy nomera, ssylki, statusa ili formulirovki dolzhna byt zapolnena `Legal Review Form`.

Bez etoy formy nel'zya:

- menyat ssylku na dokument;
- menyat nomer dokumenta;
- ob'yavlyat dokument utrativshim silu;
- delat massovuyu zamenu po kursu.

## 7. Pravilo obnovleniya

Posledovatel'nost' takaya:

1. pol'zovatel' daet komandu na proverku;
2. zapolnyaetsya `Legal Review Form`;
3. fiksiruetsya status: `deystvuet / izmenen / utratil silu / ne podtverzhden`;
4. esli est podtverzhdennaya zamena, fiksiruetsya `old -> new mapping`;
5. tol'ko posle etogo obnovlyayutsya zatronutye artefakty kursa;
6. izmeneniya zerkalyatsya v `13_update_log.md`, esli oni doshli do release-kontura.

## 8. Pravilo avtomatizatsii

- Avtomaticheskaya zamena bez zapolnennoy formy zapreshchena.
- Poluavtomaticheskaya zamena dopustima tol'ko posle proverennogo `mapping`.
- Esli est risk smyslovogo sdviga, posle zamyeny obyazatelen ruchnoy review.

## 9. Gde zhit etim dannym

- Shablon formy zhivet v `03_Templates/Legal_Review_Form_Template_v1.md`.
- Global'nyy cheklist proverki zhivet v `04_QA/Legal_Compliance_Checklist_v1.md`.
- Kursovye review-formy rekomenduetsya khranit v `02_Research/<Course>/_Control`.
- Rekomenduemoe imya fayla: `Legal_Review_YYYY-MM_vX.Y.md` ili `Legal_Review_YYYY-MM-DD_vX.Y.md`.

## 10. Minimum resheniya

Sistemnaya pozitsiya prostaya:

- ne pridumyvat normativku;
- ne menyat ssylki tikhoy pravkoy;
- snachala proverka i forma;
- potom korrektsiya kursa.
