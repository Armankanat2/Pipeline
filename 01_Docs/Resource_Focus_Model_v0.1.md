# Resource Focus Model v0.1

## Naznachenie

Etot dokument perevodit printsip "gribnitsy" v prakticheskoe pravilo `Pipeline`: resursy nuzhno usilivat ne vezde odinako, a tam, gde oni dayut maksimalnyy effekt dlya tekushchego kursa i dlya sistemy v tselom.

## Bazovaya formula

`signal -> bottleneck -> focus -> action -> review`

## Chto schitaetsya resursom

Vnutri `Pipeline` resursami schitayutsya:

- vremya ownera;
- metodicheskoe vnimanie;
- AI-progony i prompt-work;
- dizayn i visual effort;
- QA-ressurs;
- ekspertnoe soglasovanie;
- reuse assets i shablony.

## Chto schitaetsya uzkim mestom

Uzkim mestom schitaetsya element, kotoryy:

- zaderzhivaet perekhod na sleduyushchiy stage;
- sistemno portit QA;
- povtoryaetsya v neskolkikh kursakh;
- sozdayot risk release-provala;
- trebuet mnogo ruchnogo usiliya pri nizkom vyhode.

## Obyazatelnye instrumenty

Kazhdyy aktivnyy kurs mozhet ispolzovat:

- `Bottleneck Register`
- `Critical Path Map`
- `Focus Board`
- pri neobkhodimosti `Reusable Asset Register`

## Pravila fokusa

### Pravilo 1

Ne usilivat vse srazu. V aktivnom okne fokusa dolzhny byt ne bolee `1-2` glavnykh uzkikh mest.

### Pravilo 2

Prioritet poluchaet ne samyy zametnyy problemnyy uchastok, a samyy ogranichivayushchiy progress.

### Pravilo 3

Esli problema povtoryaetsya mezhdu kursami, fokus nuzhno perenosyt s lokalnoy pravki na shablon ili pipeline-rule.

### Pravilo 4

Esli uchastok uzhe stabilen, resurs s nego mozhno snyat i perebrosit v sleduyushchuyu tochnu rosta.

## Minimalnyy focus review

Raz v nedelyu ili posle krupnogo stage-shaga nuzhno otvetit na `4` voprosa:

1. Chto seychas glavnoe uzkoe mesto?
2. Chem ono dokazyvaetsya?
3. Kuda nuzhno perenapravit resurs na sleduyushchiy tsikl?
4. Chto mozhno vremenno ne usilivat?

## Ozhidaemy effekt

Etot sloy nuzhen, chtoby `Pipeline` ros ne "vo vse storony", a po liniyam naibolshego uskoreniya, naibolshego kachestva i naibolshego reuse.
