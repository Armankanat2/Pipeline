# Feedback Intake Rules v1

## Naznachenie

Etot dokument fiksiruet minimalnye pravila priyoma feedback v `Pipeline`, chtoby signaly ne teryalis i ne prevrashchalis v nekontroliruemye pravki.

## Obyazatelnyy minimum dlya lyubogo signala

Lyuboy signal dolzhen imet:

- istochnik;
- mesto vozniknoveniya;
- opisanie problemy ili vozmozhnosti;
- predvaritelnuyu klassifikatsiyu;
- predvaritelnyy uroven deystviya.

## Dopustimye istochniki

- `learner`
- `lecturer`
- `client`
- `test`
- `pilot`
- `incident`
- `regulation`
- `qa`

## Minimalnaya klassifikatsiya

- Type: `bug fix / content improvement / scope expansion`
- Frequency: `single / repeated / systemic`
- Impact: `local / module / course / pipeline`

## Zapret pryamykh pravok

Feedback ne dolzhen:

- napryamuyu menyat release;
- obkhodit `Decision Log`, esli vliyanie ne lokalnoe;
- smeshivat kursovuyu pravku i sistemnoe uluchshenie;
- ostavatsya tolko v chatakh ili ustnykh kommentariyakh.

## Kuda popadayut signaly

- lokalnye i uzhe ponyatnye - v zhivoy artefakt kursa;
- povtoryaemye ili spornye - v `Decision Log` ili `Change Request`;
- sistemnye - v `Improvement Backlog`.
