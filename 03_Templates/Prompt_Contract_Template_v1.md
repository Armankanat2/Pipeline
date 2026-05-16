# Prompt Contract Template v1

## Status

- Status: `active`
- Naznachenie: unifitsirovat povtoryaemye AI-zaprosy dlya stage-raboty v `Pipeline`

## Kak ispolzovat

- zapolnyat, kogda prompt nachinaet povtoryatsya kak systemnyy instrument;
- ne ispolzovat vmesto authoritative core;
- ssylat prompt na konkretnye stage-fayly i QA-pravila;
- ne derzhat v contracte neproveryaemye obeshchaniya.

## Metadata

- Prompt ID: `P-XX`
- Nazvanie: ``
- Stage: ``
- Status: `draft / active / deprecated`
- Owner: ``
- Data obnovleniya: ``

## Zachem nuzhen etot prompt

- Kakuyu povtoryaemuyu zadachu on uskoryaet:
- Kakoy artefakt dolzhen pomoch sobrat:
- Dlya kakogo kursa ili dlya kakogo tipa kursov on nuzhen:

## Kogda ego zapuskat

- Stage trigger:
- Input trigger:
- QA ili decision trigger:

## Obyazatelnyy vkhod

- Fayly:
- Stage context:
- Variant / audience:
- Ogranicheniya:

## Chto AI ne dolzhen delat

- Ne vydumyvat:
- Ne podmenyat:
- Ne vykhodi za granitsy:

## Ozhidaemyy vykhod

- Tselevoy artefakt:
- Obyazatelnyy format otveta:
- Chto dolzhno byt proveryaemo:
- Chto schitaetsya `gap`, a ne `otvetom`:

## Prompt Body

```text
<vstav syuda gotovyy prompt>
```

## Review Checklist

- Stage ukazan korrektno: `yes / no`
- Source of truth podklyuchen: `yes / no`
- Vkhody dostatochno konkretny: `yes / no`
- Generic-safe granitsy ukazany: `yes / no`
- Ozhidaemyy format vykhoda opisan: `yes / no`
- Prompt ne konfliktuet s authoritative core: `yes / no`

## Primechaniya po iteratsii

- Chto srabotalo:
- Chto davalo shum:
- Chto nado utochnit v sleduyushchey versii:
