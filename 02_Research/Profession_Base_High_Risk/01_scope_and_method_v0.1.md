# Scope and Method v0.1

## Scope seychas

Na etom etape baza ogranichena:

- rabochimi professiyami;
- opasnymi / vysokoriskovymi rabotami;
- contourami, gde safety-pravila i obrazovatelnye trebovaniya kritichno vliyayut na strukturu kursa.

## Chto my stroim

My stroim ne "spisok krasivykh tem dlya prezentatsiy", a normativno-opornuyu bazu, v kotoroy po kazhdomu keysu dolzhno byt ponyatno:

1. kakoy tip programmy sobiraetsya;
2. kakaya professiya ili role yavlyaetsya opornoy;
3. kakie safety-acts upravlyayut etim keysom;
4. est li gruppy slushateley s raznymi trebovaniyami;
5. chto mozhno zapolnit uzhe seychas, a chto nado izvlech eshche.

## Pravilo raboty s istochnikom

- Iskluchitelno realnye NPA i ofitsialnye reestry.
- Exact profession title berem iz `534` i ego aktualizatsiy, a ne iz privychnogo razgovornogo nazvaniya.
- Esli NPA ne dayet exact volume / time, ne pridumyvaem ego.
- Esli NPA ne dayet gotovyy spisok blokov, stavim `partial` i vygruzhaem contour otdelno.
- Esli est worker i ITR / responsible contoury, ne smeshivaem ikh v odnu "srednyuyu" programmu.

## Otdelenie contourov

V etoy baze kazhdaya profession card dolzhna proveritsya na tri contoura:

1. `DPO`
2. `professional training`
3. `OT / special safety`

Odin i tot zhe keys mozhet imet bolee odnogo contoura, no oni ne dolzhny slivat'sya bez otslezhivaniya istochnika.

## Otdelenie grupp

Po kazhdomu keysu proverяем minimum:

- worker-role;
- ITR / responsible-role;
- special groups, esli ikh dayut safety-pravila.

## Minimalnyy marshrut zapolneniya

1. Vnesli cluster v reestr.
2. Privyazali exact profession title.
3. Podnyali bazovye akty.
4. Otmetili group split.
5. Zafiksirovali, est li exact volume / time / blocks.
6. Tolko potom delayem predvaritelnyy pipeline-prefill dlya kursa.
