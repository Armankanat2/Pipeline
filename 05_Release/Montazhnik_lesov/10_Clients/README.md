# Client Releases

Eta papka nuzhna dlya branded release-paketov po konkretnym zakazchikam.

## Pravilo imenovaniya

- format papki: `<CLIENT_CODE>`
- `CLIENT_CODE` dolzhen byt korotkim, stabilnym i ASCII-sovmestimym
- rekomenduemyy vid: `ACME`, `ROSTEH`, `PROMSTROY`, `CLIENT_A`

## Pravilo sborki

- vnutri kazhdoy klientskoy papki povtoryaetsya release-logika konkretnogo paketa
- brand shell menyaetsya, uchebnoe yadro net
- fayly dolzhny vklyuchat `client-code` v imeni, naprimer `ML_ACME_12_short_with-test_v1.0.pptx`

## Startovye konteinery

- `ACME`
- `ROSTEH`
- `PROMSTROY`
