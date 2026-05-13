# Expert Assessment Notes v0.1

## Status

- Status: `inactive / working layer`
- Data sborki: `2026-05-14`
- Owner: `vy`
- Rezhim primeneniya: `neblokiruyushchiy`

## Naznachenie

Etot dokument nuzhen, chtoby smotret na `Pipeline` i konkretnyy kurs kak ekspert po celemu proektu, a ne iz odnoy uzkoy professionalnoy roli.

Na tekushchem etape on:

- ne dobavlyaet novykh obyazatelnykh QA-gates;
- ne ostanavlivaet sborku kursa, release ili maintenance;
- ne podmenyaet `Blueprint`, `Workflow`, `QA_Gates`, `Definition_of_Done` i uzkie notes-sloi;
- ne schitaetsya finalnoy strategicheskoy politikoy sistemy.

Ego zadacha seychas:

- zafiksirovat, naskolko ambitsii proekta sootvetstvuyut ego tekushchey zrelosti;
- otdelit obyazatelnoe yadro kursa ot budushchikh nadstroek;
- podsvetit tocki, gde proekt ili kurs uzhe zvuchat zrelee, chem realno sobrany;
- podgotovit osnovu dlya bolee sobrannogo expert-review layer pozhe, esli on ponadobitsya.

## Pravilo ispolzovaniya poka dokument ne aktivirovan

- eti notes smotryat na proekt s vysoty systemnoy zrelosti, a ne vmeshivayutsya v operatsionnuyu sborku;
- vse punkty iz dokumenta seychas schitayutsya `production guidance`, a ne `release stop`;
- esli kakoy-to punkt ne zakryt, sborka mozhet prodolzhatsya, esli `core course contour` i QA-layer sokhranyayutsya;
- aktivatsiya etogo sloya kak obyazatelnogo pravila dolzhna byt otdelnym resheniem.

## Chto etot sloy delaet i chego ne delaet

Etot sloy:

- otsenivaet `scope realism`;
- smotrit na granitsu mezhdu `core` i `extension`;
- otslezhivaet `maturity mismatch`;
- otsenivaet, goditsya li kurs kak `reference build`;
- podsvetivaet `system stress points`;
- daet rekomendatsii po vremennoj strategicheskoy simplifikatsii.

Etot sloy ne dolzhen:

- povtoryat legal-risk reestr;
- zamenyat copy, editorial ili technical writing review;
- razbirat motion, 3D, photo, infographic i drugie uzkie production-sloi;
- vvodit novye stage-rules ili menyat `Definition of Done`.

## Glavnaya expert-pozitsiya dlya etogo proekta

`Pipeline` uzhe silen kak sistemnaya konstruktsiya.

No ego glavnaya opasnost seychas ne v slabosti, a v tom, chto on mestami pytaetsya byt:

- kursom;
- white-label produktom;
- release-sistemoy;
- publishing konturom;
- online handoff platformoy;
- worker-pack fabrikoy

odnovremenno, poka bazovoe yadro pervogo kursa eshche ne do konca dokazalo sobstvennuyu zrelost.

Prostoe pravilo:

Esli sistema uzhe prodaet obraz zrelogo universalnogo product-stack, a opornyy kurs eshche v aktivnoy dostroyke, expert-layer dolzhen eto zafiksirovat.

## Chto uzhe sdelano pravilno

- u proekta silnyy `Pipeline_Blueprint`;
- est rabochiy `Operational_Workflow`;
- est realistichnaya stage-model `00-13`;
- kurs `Montazhnik_lesov` uzhe imeet architecture, expanded script i asset/visual planning;
- v sisteme uzhe est kultura samokritiki i otdelnykh notes-sloev;
- proekt uzhe umeyet otdelyat `worker core` ot optionalnykh contour.

## Reestr expert-riskov i pravil

| ID | Zona | Chto vazhno s tochki zreniya eksperta | Tekushchiy signal | Risk seychas | Chto delat poka |
|---|---|---|---|---|---|
| EX-01 | Scope realism | Ambitsii kursa i sistemy dolzhny byt sorazmerny tekushchey gotovnosti | Brief uzhe tyanet `white-label`, `publishing`, `A3/A5`, `online handoff`, `worker pack` | `high` | Vremenno schitat pobedoy ne ves stack, a `worker core + test + deck + minimal release contour` |
| EX-02 | Core vs extension discipline | Nado otdelit to, bez chego kurs ne zhivet, ot togo, chto mozhno dostroit pozhe | Mnogo optional sloev uzhe vklyucheny v brief kak budto oni ravnotsenny yadru | `high` | Zhestche razvesti `must-have` i `future-ready` |
| EX-03 | Maturity mismatch | Sistema ili kurs mogut zvuchat zrelee, chem realno sobrany | Architecture gotova, no est otkrytye resheniya; script expanded, no ne polon | `high` | Chashche fiksirovat promezhutochnuyu zrelost chestnymi statusami |
| EX-04 | Reference-build fitness | Pervyy kurs dolzhen byt dostatochno ustoychiv, chtoby stat etalonom dlya drugikh professiy | `Montazhnik_lesov` silen, no eshche neset mnogo eksperimentov i optional sloev | `medium / high` | Smotret na nego kak na `reference build 0`, a ne kak na okonchatelny etalon |
| EX-05 | Validation load | Safety-kurs bez dostatochnoy ekspertnoi validatsii ostayotsya sistemno uyazvimym | Tekhnicheskiy ekspert eshche ne opredelen; ne khvataet proverennykh istochnikov | `high` | Ne pereotsenivat finalnost content-core do expert pass |
| EX-06 | Solo-mode stress | Sistema ne dolzhna opirat'sya tolko na pamyat i energiyu odnogo operatora | Proekt idet v `solo mode` s AI support i velikim contour | `medium / high` | Suzhat obyazatelnyy contour, kogda nagruzka rastet bystree gotovnosti |
| EX-07 | Meta-doc drift | Index i meta-dokumenty ne dolzhny otstavat ot fakticheskogo sostoyaniya kursa | Master index eshche zhivet v bolee rannem statuse aktivnogo kursa | `medium` | Obnovlyat entry-point docs posle krupnykh sdvigov, inache oni perestanut byt kartoy |
| EX-08 | Product gravity | Pipeline mozhet nachat stroitsya vokrug budushchikh klientskikh contour, a ne vokrug silnogo pervogo kursa | White-label i release-layer uzhe ochen silno prityagivayut vnimanie | `medium / high` | Derzhat `first working course` vyshe, chem `future packaging complexity` |
| EX-09 | Build sequencing | Poryadok sborki dolzhen ukreplyat kurs, a ne rasshiryat ego ran'she vremeni | Sistema uzhe bogata sloyami, a opornye validatsii eshche ne zakryty | `medium / high` | Snachala stabilizirovat course-core, potom naveshat release-extensions |
| EX-10 | Strategic simplification | Sistema dolzhna umet ne tolko dobavlyat, no i soznatelno vremenno ne brat lishniy ves | U proekta vysokaya prirodnaya sklonnost k razrastaniyu | `high` | Schitat suzhenie ne poteryey vozmozhnostey, a disciplinoy sborki |

## Gde expert-layer deystvitelno mozhet byt usilen

### 1. Chyotkoe opredelenie pervoy pobedy

Proektu nuzhno ne tolko ponimat, chto on khochet postroit v ideale, no i zafiksirovat:

- chto schitaetsya pervoy realnoy pobedoy;
- chto schitaetsya rasshireniem;
- chto mozhno vremenno ne tyanut, ne schitaya eto porazheniem.

Pochemu eto vazhno:

- inache sistema vse vremya budet perenaznachat sebe novyy obyazatelnyy contour;
- inache `scope creep` budet vyglyadet kak "normalnyy rost".

### 2. Reference-build discipline

Esli `Montazhnik_lesov` dolzhen stat opornym kursom dlya drugih professiy, nuzhno chestno priznat:

- kakie ego sloi uzhe dostatochno ustoychivy;
- kakie sloi eshche eksperimentalny;
- chto iz nego mozhno masshtabirovat;
- chto poka eshche ne nado schitat etalonom.

Pravilo:

- ne vse, chto sdelano v pervom kurse, avtomaticheski nado tirazhirovat na vse profili.

### 3. Strategiya vremennogo suzheniya

Proekt uzhe ochen silen v dobavlenii contour.

Emu nuzhen ravno stol zhe silnyy navyk:

- vremenno ne brat lishniy contour;
- ne tyanut optional sloi v status obyazatelnykh;
- ne schitat, chto kazhdaya budushchaya vozmozhnost dolzhna byt zakryta uzhe segodnya.

## Gde expert-layer skoree vsego navredit, esli ego ne kontrollirovat

Expert-layer skoree vsego navredit:

- esli prevratitsya v eshche odin "dokument pro vsyo";
- esli nachnet povtoryat uzkie notes-sloi;
- esli budet podmenyat `QA_Gates` i `Definition_of_Done`;
- esli iz nablyudatelnogo sloya stanet strategicheskim diktatorom bez otdelnogo resheniya.

Pochemu:

- togda vmesto systemnoy soberennosti on dobavit eshche odin istochnik konflikta;
- vmesto prioretizatsii on umnozhit kollektivnuyu refleksiyu bez proizvodstvennogo effekta.

## Minimalnye prakticheskie pravila poka sloy ne aktivirovan

- smotret na `core build` otdelno ot `future contour`;
- ne schitat optional sloi avtomaticheski obyazatelnymi;
- ne putat `silnuyu sistemu` s `gotovym etalonnym kursom`;
- ispolzovat etot dokument kak watchlist dlya `scope realism`, a ne kak novyy upravlencheskiy gate.

## Kogda etot sloy stoit aktivirovat pozhe

Etot sloy imeet smysl perevodit iz `inactive` v bolee aktivnyy rezhim, kogda:

- v sisteme poyavitsya minimum `2-3` kursa po raznym professiyam;
- vozniknet nuzhda reshat, chto deystvitelno perenositsya iz pervogo kursa v sleduyushchie;
- optional contour nachnut regulyarno pretendovat na status obyazatelnykh;
- budet nuzhen bolee zhestkiy expert-review ne po otdelnomu sloyu, a po proektu v tselom.

## Prakticheskiy vyvod seychas

Na segodnya `Pipeline` uzhe silen kak proizvodstvennaya sistema i kak pole dlya sborki silnogo worker-kursa.

No s ekspertnoi tochki zreniya emu vazhno ne poteryat distsiplinu masshtaba:

- snachala dokazat silu bazovogo kursovogo yadra;
- potom zakreplyat release i packaging contour;
- i tolko potom schitat sistemu polnotsenno etalonnoy dlya drugikh professiy.

Poetomu etot sloy poka nuzhen ne dlya upravleniya, a dlya sderzhivaniya pereambitsii:

chtoby sistema rosla kak sobrannyy product, a ne kak beskonechno rasshiryayushchiysya konstrukt.
