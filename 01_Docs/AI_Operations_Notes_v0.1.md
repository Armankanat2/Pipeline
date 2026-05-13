# AI Operations Notes v0.1

## Status

- Status: `inactive / working layer`
- Data sborki: `2026-05-13`
- Owner: `vy`
- Rezhim primeneniya: `neblokiruyushchiy`

## Naznachenie

Etot dokument nuzhen, chtoby smotret na `Pipeline` i konkretno na kurs `Montazhnik_lesov` glazami AI-operatora.

Na tekushchem etape on:

- ne dobavlyaet novykh obyazatelnykh QA-gates;
- ne ostanavlivaet sborku `script`, `asset layer`, `deck` ili `release`;
- ne prevrashchaet AI v samostoyatelnyy istochnik metodicheskoy ili normativnoy istiny;
- ne schitaetsya formalnoy policy dlya vneshnego audita.

Ego zadacha seychas:

- zafiksirovat, gde AI deystvitelno uskorayet sistemu;
- otdelit AI-assisted draft ot proverennogo kontenta;
- ne dopustit, chtoby operator derzhal kriticheskie pravila "v golove";
- podgotovit osnovu dlya bolee zhestkogo AI-operations layer pozhe, esli on ponadobitsya.

## Pravilo ispolzovaniya poka dokument ne aktivirovan

- eti notes smotryat na AI kak na uskoritel, strukturator i vspomogatelnyy reviewer;
- vse punkty iz dokumenta seychas schitayutsya `production guidance`, a ne `release stop`;
- esli kakoy-to punkt ne zakryt, sborka mozhet prodolzhatsya, esli chelovecheskaya proverka i QA-logika sokhranyayutsya;
- aktivatsiya etogo sloya kak obyazatelnogo pravila dolzhna byt otdelnym resheniem.

## Glavnaya AI-pozitsiya dlya etogo kursa

`Pipeline` uzhe khorosho podkhodit dlya AI-assisted raboty, no AI v nem dolzhen delat ne vse.

Bazovaya rolevaya model dlya AI zdes takaya:

- AI pomogaet sobirat draft
- AI pomogaet uzhimat peregruz
- AI pomogaet sravnivat varianty
- AI pomogaet uderzhivat strukturu i consistency
- AI ne dolzhen sam po sebe zamenyat `source basis`, eksperta ili finalnyy release-gate

Prostoe pravilo:

AI mozhet predlagat, strukturirovat i proveryat, no ne dolzhen poluchat status neproveryaemogo avtora safety-smysla.

## Chto uzhe sdelano pravilno

- v sisteme uzhe est stage-based workflow, kotoryy khorosho lozhitsya na AI-support;
- est artefact templates, a znachit est stabilnye formy vkhoda i vykhoda;
- est `writer core`, kotoryy mozhet stat khoroshim interfeisom mezhdu operatorom i AI;
- est QA gates i versioning rules, kotorye uderzhivayut AI-uskorenie ot khaosa;
- v brief uzhe chestno zafiksirovan `solo mode s AI support`.

## Reestr AI-operation riskov i pravil

| ID | Zona | Chto vazhno s tochki zreniya AI-operatora | Tekushchiy signal | Risk seychas | Chto delat poka |
|---|---|---|---|---|---|
| AO-01 | Role ambiguity | Ne ponyatno, gde AI generiruet, gde proveryaet, a gde ego voobsche nelzya pustit bez cheloveka | AI v proekte opisan obshche | `high` | Razvesti minimum na tri roli: draft, review, consistency-check |
| AO-02 | Provenance blur | Chernovik, proverennyy kontent i ekspertnyy kontent mogut smeshat'sya | Risk provenance uzhe ponyat v legal-layer | `high` | Schitat AI-output chernovikom, poka on ne proshyol source-check i chelovecheskuyu proverku |
| AO-03 | Source drift | AI mozhet upakovat krasivyy tekst bez zhestkoy opory na istochniki | `source basis` uzhe zaduman, no eshche ne vezde zhivet v kartochke | `high` | Ne schitat slayd gotovym bez ponyatnogo `source basis` |
| AO-04 | Hidden human memory | Slishkom mnogo pravil AI-operator pomnit ne v sisteme, a v golove | Proekt bogat pravilami, no AI-layer eshche ne formalen | `high` | Vynosit AI-rabochie pravila v notes, templates i prompt contracts |
| AO-05 | Template underuse | AI mozhet davat khoroshiy tekst, no mimo nuzhnoy formy artefakta | Shablony est, no AI-kontur ne formalizovan | `medium / high` | Vsegda rabotat cherez target-template, a ne cherez "svobodnyy tekst" |
| AO-06 | QA illusion | Khorosho napisannyy AI-draft legko prinyat za uzhe proverennoe reshenie | QA gates est, no AI-specific QA net | `high` | Posle AI-sborki vsegda delat otdelnyy human pass i stage-gate |
| AO-07 | Scope creep | AI uskorit rabotu, no mozhet razdut obem i porodit slishkom mnogo vetok | Proekt uzhe bogat optional layers | `medium` | Davat AI tolko konkretnuyu zadachu, a ne "uluchshi vse" |
| AO-08 | Version confusion | AI mozhet perezapisyvat formulirovki bez ponyatnoy versii resheniya | Version rules v sisteme silnye | `medium` | Fiksirovat znachimye AI-predlozheniya cherez obychnyy version flow |
| AO-09 | Expert gap masking | AI mozhet sozdat vidimost tekhnicheskoy uverennosti tam, gde nujna ekspertnaya validatsiya | Expert validation po safety-temam eshche ne zavershena | `high` | Ne putat uverennyy ton s tekhnicheskoy proverennostyu |
| AO-10 | Release contamination | Chernovye AI-formulirovki mogut prosochit'sya v release-grade dokumenty bez editorial cleanup | V sisteme uzhe priznan proofread i editorial layer | `medium / high` | Derzhat obyazatelnyy final pass na yazyk, kodirovku, glossary i release-cleanliness |

## Gde AI deystvitelno polezen

### 1. Stage-based drafting

AI ochen khorosho podkhodit dlya:

- pervichnogo drafta artefakta po shablonu;
- kompressii razduvshikhsya formulirovok;
- peresborki odnogo i togo zhe smysla v bolee yasnuyu strukturu;
- bystroy proverki, ne razvalilas li logika mezhdu stage-artifacts.

### 2. Script support

AI osobenno polezen v `writer core`, esli est ponyatnyy karkas:

- tsel slayda;
- odna glavnaya mysl;
- chto dolzhen ponyat slushatel;
- speaker notes;
- source basis;
- vizualnoe namerenie.

Zdes AI mozhet usilit format, no ne dolzhen podmenyat content truth.

### 3. Consistency review

AI khorosho podkhodit dlya:

- poiska peregruza;
- proverki povtoryayushchikhsya formulirovok;
- proverki simmetrii compare-slides;
- proverki, ne plavaet li tone of voice;
- proverki, ne razshlas li terminologiya mezhdu dokumentami.

## Gde AI skoree vsego navredit

AI skoree vsego navredit, esli ego pustit bez uzkogo konteksta:

- v safety-claims bez `source basis`;
- v tekhnicheski spornye formulirovki bez eksperta;
- v legal, publishing i rights-statements bez otdelnoy proverki;
- v release-note, gde ton mozhet stat slishkom uverennym;
- v finalnyy deck bez human editorial pass.

Pochemu:

- AI legko glazhivayet tekst i delaet ego uverennym;
- no uverennost ne ravna korrektnosti;
- v etom proekte oshibka mozhet byt ne stilisticheskoy, a metodicheskoy.

## Minimalnye AI-pravila uzhe seychas

Poka etot sloy ne aktivirovan, khvatit pyati pravil:

1. AI-output = chernovik, poka ne proveren chelovekom.
2. Net `source basis` = net gotovogo slayda.
3. AI ne zakryvaet expert validation.
4. AI luchshe davat formu i strukturu, chem finalnuyu pravdu.
5. Posle AI-uskoreniya obyazatelen obychnyy version i QA flow.

## Chto poka ne delat

- ne perenaznachat AI v rol "glavnogo metodista";
- ne schitat krasivo sobrannyy tekst dokazatelstvom korrektnosti;
- ne rabotat s AI bez target-template i bez target-stage;
- ne vpuskat AI-chernovik v release-grade dokument bez finalnogo editorial i QA pass.

## Kogda etot sloy stoit aktivirovat silnee

Imeet smysl perevesti ego iz `working layer` v bolee zhestkiy contour, esli proizoydet hotya by odno:

- vy nachnyote massovo sobirat artefakty cherez AI;
- poyavyatsya povtoryaemye prompt contracts dlya stage-work;
- kurs poydet vo vneshniy audit, publishing ili klientskiy due diligence;
- nado budet dokazivat provenance, ownership i granitsy AI-vklada.

## Kandidaty na sleduyushchiy AI-sloy pozhe

Kogda vernyomsya k teme glubzhe, polezno budet sobrat:

- `AI_Role_Map_v1`
- `Prompt_Contract_Rules_v1`
- `AI_Provenance_Statuses_v1`
- `AI_QA_Addendum_v1`
- `Human_vs_AI_Handoff_Check_v1`

## Tekushchee reshenie

- Notes sobrany: `yes`
- Oni blokiruyut tekushchuyu sborku: `no`
- Oni mogut ispolzovatsya kak production-orientir uzhe seychas: `yes`
- Nuzhen li bolee zhestkiy AI-operations layer pozhe: `yes`
