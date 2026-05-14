# Adaptive Rules v0.1

## Naznachenie

Etot dokument dobavlyaet v `Pipeline` upravlyaemuyu adaptatsiyu bez lomki stage-modeli i bez "zhivoy peresborki" yadra kursa.

Glavnaya formula:

`stable core + adaptive layers + logged decisions`

## Chto schitaetsya stabilnym yadrom

Stabilnym yadrom ostayutsya:

- stage-logika `01-05` na urovne `Pipeline`;
- osnovnye obyazatelnye artefakty kursa;
- outcomes, arkhitektura i bazovaya metodicheskaya logika kursa;
- pravila naming, QA-gates i release discipline.

Yadro ne dolzhno menyatsya iz-za lokalnogo pozhelaniya bez otdelnogo resheniya.

## Chto schitaetsya adaptivnym sloem

K upravlyaemoy adaptatsii otnosyatsya:

- klientskiy branding;
- format dostavki `offline / online-ready / self-paced`;
- variant dlitelnosti `Short / Standard / Deep`;
- nalichie ili otsutstvie testovogo kontura;
- title-only override i drugie lokalnye release-nastroyki;
- lokalnye dopolneniya, ne razrushayushchie outcomes i arkhitekturu.

## Obyazatelnye elementy adaptivnogo sloya v kurse

Kazhdyy aktivnyy kurs dolzhen imet:

- `Course Profile`
- minimum odin `Variant Profile`
- `Decision Log`
- pri slozhnom ili bystro menyayushchemsya kurse `Change Request`

## Pravila adaptatsii

### Pravilo 1

Esli izmenenie ne menyaet yadro, ono mozhet proyti kak adaptation-layer change.

### Pravilo 2

Esli izmenenie menyaet outcomes, coverage, course architecture ili obyazatelnyy release contour, eto uzhe ne adaptation, a sistemnaya pravka kursa.

### Pravilo 3

Povtoryayushcheesya izmenenie dolzhno stat ne "ruchnoy ulovkoy", a profile-rule, template-rule ili pipeline-rule.

### Pravilo 4

Lyubaya zametnaya adaptatsiya dolzhna ostavit sled v `Decision Log`.

## Kogda nuzhen Change Request

`Change Request` obyazatelen, esli:

- zatrachivaetsya bolee odnogo stage-artefakta;
- est risk konflikta mezhdu klientskim zaprosom i uchebnym yadrom;
- est risk sdviga srokov, QA ili release;
- izmenenie mozhet stat novym povtoryaemym pravilom dlya vsego `Pipeline`.

## Reshenie po adaptatsii

Kazhdyy zapros dolzhen zakanchivatsya odnim iz statusov:

- `accepted as local adaptation`
- `accepted as reusable rule`
- `accepted with escalation`
- `rejected to protect core`
- `deferred`

## Ozhidaemy effekt

Etot sloy nuzhen, chtoby kurs mog menyatsya, no sam `Pipeline` ne prevraschalsya v haotichnyy nabor razovykh pravok.
