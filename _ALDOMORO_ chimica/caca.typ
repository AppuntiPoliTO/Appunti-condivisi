#import "@preview/cetz:0.3.4": canvas, draw
#set page(paper: "a4", margin: 2cm)
#set text(lang: "it", size: 11pt)
#set par(justify: true)
#set heading(numbering: none)
#set page(margin: 1.5cm)
#let immagine-originale = image
#let image(nome-file, ..args) = immagine-originale("images/" + nome-file + ".jpg")
// Nota / osservazione
#let nota(body) = block(
  width: 100%, fill: luma(240), inset: 8pt, radius: 3pt, body,)
#let circ = sym.degree
#let varphi = $phi$

#import "@preview/chemformula:0.1.3": ch

= Chimica [francesco.savorani\@polito.it]

== Capitolo 1

*Chimica:* scienza che studia la materia, le sue proprietà, le sue trasformazioni e l'energia associata a tali trasformazioni. \
*Materia:* tutto ciò che ha una massa e un volume. \
*Sostanza:* materia definita da una composizione chimica definita e fissa (elementi e composti). \
*Energia:* in un corpo è la somma di varie $E$ (potenziale, cinetica). Si conserva, non può essere distrutta, ma si converte in altre forme. Accompagna le trasformazioni chimiche e fisiche. [$E = Delta m c^2$] \
*Storia della chimica:*
- scoperta del fuoco (preistoria) $arrow.r$ processi metallurgici (Neolitico, 16000 anni fa) $arrow.r$ scoperta di materiali (6000 anni fa) $arrow.r$ vino e birra (3000 a.C.) $arrow.r$ elementi (greci/arabi)
- alchimia (per 15 secoli) $arrow.r$ chimica = medicinali (1500) $arrow.r$ chimica come scienza (1600 - Boyle)

= Proprietà della materia

*Fisiche:* quelle che una sostanza ha di per sé, senza interagire o trasformarsi.
- $arrow.r$ massa - colore - durezza - punto di fusione, ebollizione - densità - conduttività elettrica - stato di aggregazione (misurabili e non misurabili).

*Chimiche:* quelle che si presentano quando le sostanze interagiscono o si trasformano. Per determinarle bisogna modificare l'identità delle sostanze.
- infiammabilità - corrosività - reattività con acidi, ecc.
- *Proprietà estensive:* dipendono dalla quantità di campione [$m$, $V$].
- *Proprietà intensive:* non dipendono dalla quantità di campione [$d$, $p_"eb"$, $T$].

= Trasformazioni

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    *Fisiche:* si modifica la forma (stato di aggregazione), non la composizione. Può essere causata da una variazione di temperatura. È invertibile.

    *Chimiche:* una sostanza si trasforma in un'altra diversa. Non invertibile. Esprimibili con equazioni chimiche.
  ],
  [
    #image("ac143232-a97e-4b60-942a-8e6e8ba0f7b2-01_1237_4477_8856_1528", width: 70%)
  ]
)
#v(1em)

= Stati

- *Solido* $arrow.r$ ha forma e volume proprio.
- *Liquido* $arrow.r$ ha un volume ma assume la forma del recipiente.
- *Aeriforme* $arrow.r$ non ha né forma né volume. Si espande riempiendo lo spazio.

*Energia libera di reazione:*
$ Delta G_r^0 = Delta H_r^0 - T Delta S_r^0 wide Delta G^0 = n Delta G_"prodotti" - m Delta G_"reagenti" $
- $Delta G < 0$: reazione spontanea a $T$ e $P$ costanti.

$ Delta G = -R T ln K $

- Spontanea ad alte $T$ (se $Delta H > 0$, $Delta S > 0$).
- Basse $T$: spontanea (se $Delta H < 0$, $Delta S < 0$).


= Complementi Capitolo 1: Elementi, molecole, miscele e sistemi

*Elemento:* è una sostanza costituita da una sola specie di atomi, ha proprietà macroscopiche. I gas nobili esistono come atomi singoli, gli altri elementi esistono solo in forma aggregata/molecolare.

*Molecola:*
- è un'unità strutturale costituita da 2 o più atomi legati chimicamente tra loro;
- gli elementi si presentano in rapporti fissi di massa;
- ha proprietà diverse da quelle degli elementi che la compongono.

*Miscela:*
- è un gruppo di 2 o più sostanze mescolate fisicamente (può essere omogenea o eterogenea);
- non è una sostanza pura perché non ha rapporti fissi;
- ha proprietà simili a quelle dei suoi componenti.

// [DA SLIDE]
#nota[
  *Precisazione su Elementi, Molecole, Composti e Miscele:*
  - *Elemento:* è il tipo di materia più semplice, dotato di proprietà fisiche e chimiche esclusive, ed è costituito da una sola specie di atomi. È una *sostanza pura* (composizione fissa, es. un campione di silicio contiene solo atomi di #ch("Si")) da cui *non è possibile* ottenere materia più semplice mediante gli ordinari mezzi chimici. In natura, la maggior parte degli elementi esiste come popolazioni di singoli atomi (es. #ch("Ne"), metalli), mentre altri esistono in forma *molecolare* (es. #ch("O2"), #ch("N2")).
  - *Molecola vs Composto:* una *molecola* è qualsiasi unità strutturale indipendente formata da due o più atomi legati chimicamente tra loro; può appartenere a un elemento (se gli atomi sono uguali, es. #ch("O2")) oppure a un composto (se gli atomi sono diversi, es. #ch("H2O")). Un *composto*, invece, è una sostanza pura costituita da *due o più elementi diversi* legati chimicamente tra loro in *parti fisse in massa* (poiché contiene numeri fissi di atomi di ciascun elemento).
  - *Scomponibilità e proprietà:* a differenza delle *miscele* (in cui le sostanze sono mescolate fisicamente in proporzioni variabili, conservano le proprietà dei componenti e sono separabili mediante *trasformazioni fisiche*, come nell'acqua salata), un *composto* può essere scomposto nei suoi elementi costituenti solo mediante *trasformazioni chimiche* e possiede proprietà completamente differenti da quelle degli elementi che lo formano:

  #align(center)[
    #table(
      columns: 4,
      align: (left, center, center, center),
      [*Proprietà*], [*Sodio (#ch("Na"))*\ (Elemento)], [*Cloro (#ch("Cl2"))*\ (Elemento)], [*Cloruro di sodio (#ch("NaCl"))*\ (Composto)],
      [Punto di fusione], [$97,8 circ "C"$], [$-101 circ "C"$], [$801 circ "C"$],
      [Punto di ebollizione], [$881,4 circ "C"$], [$-234 circ "C"$], [$1413 circ "C"$],
      [Colore], [Argenteo], [Giallo-verde], [Incolore (bianco)],
      [Densità], [$0,97 "g/cm"^3$], [$0,0032 "g/cm"^3$], [$2,16 "g/cm"^3$],
      [Comportamento in #ch("H2O")], [Reattivo], [Lievemente solubile], [Solubile]
    )
  ]
]

*Sistema:* porzione di spazio con tutta la materia e l'energia in esso contenute.
- *Eterogeneo* $arrow.r$ i componenti non hanno proprietà fisico-chimiche uguali in ogni punto (es. granito, ghiaccio + acqua; se le particelle disperse hanno dimensioni intorno a $10^(-6) "cm"$ si hanno i *colloidi*: ghisa, schiume, fumi, nebbia, latte, sangue).
- *Omogeneo* $arrow.r$ i componenti hanno proprietà fisico-chimiche uguali in ogni punto (costituisce una singola *FASE*). Può essere una sostanza pura o una *soluzione* (es. ottone).

= Capitolo 2: Leggi ponderali e modelli atomici

*Lavoisier: legge della conservazione della massa* \
"La massa totale dei prodotti formati in una reazione chimica è esattamente uguale alla massa totale dei reagenti."

*Proust: legge della composizione definita e costante* \
"Una certa massa di una sostanza pura contiene un gran numero di particelle identiche, composte dallo stesso numero di elementi disposti nello stesso modo (in rapporti di massa definiti e costanti)."

*Dalton: legge delle proporzioni multiple* \
"Se A e B reagiscono per formare 2 composti, le diverse masse di B che si combinano con una stessa massa di A possono essere espresse come rapporti di numeri interi piccoli." \
// [DA SLIDE]
- *Origini sperimentali e superamento della teoria del flogisto (Lavoisier):* prima della chimica moderna (nata dall'unione di tre tradizioni prescientifiche: *alchemica*, da cui derivano i metodi di distillazione, filtrazione ed estrazione; *medica*; *tecnologica*, legata a ceramica e metallurgia), lo studio delle reazioni era ostacolato dalla *teoria del flogisto*, secondo cui ogni sostanza combustibile conteneva una sostanza imponderabile (il "flogisto") che si liberava durante la combustione. A metà del XVIII secolo, *Antoine-Laurent de Lavoisier* confutò tale teoria eseguendo misurazioni rigorose di massa durante le combustioni: dimostrò il ruolo fondamentale dell'aria (ossigeno) come reagente e provò che la massa totale rimane costante in ogni reazione chimica (la materia non si crea né si distrugge).
- *Percentuale in massa ($"wt"%$) e applicazione della legge di Proust:* poiché in un composto chimico gli elementi sono sempre combinati in rapporti in massa costanti e definiti, è possibile caratterizzare ciascun composto mediante la *percentuale in massa* ($"wt"%$) dei suoi elementi costituenti:
  $ "wt"%_"elemento" = frac(m_"elemento", m_"composto") dot 100 $
  #nota[
    *Esercizio 2.1 (Legge di Proust):* La pechblenda è il principale minerale dell'uranio. L'analisi chimica mostra che $84,2 "g"$ di pechblenda contengono $71,4 "g"$ di uranio (il resto è ossigeno). Calcolare la massa di uranio ottenibile da $102 "kg"$ di pechblenda. \
    *Svolgimento:* Per la legge delle proporzioni definite, il rapporto in massa tra uranio e pechblenda è costante indipendentemente dalla quantità di campione considerato. La frazione in massa di uranio è:
    $ frac(m_(ch("U")), m_"pechblenda") = frac(71,4 "g", 84,2 "g") = 0,84798 $
    Moltiplicando tale rapporto per la massa totale di minerale ($102 "kg" = 1,02 dot 10^5 "g"$):
    $ m_(ch("U")) = 1,02 dot 10^5 "g" dot frac(71,4, 84,2) = 8,65 dot 10^4 "g" = 86,5 "kg" $
  ]
- *Verifica quantitativa della legge di Dalton (sistema carbonio-ossigeno):* carbonio e ossigeno, a seconda delle condizioni sperimentali, reagiscono formando due composti distinti:
  + *Composto I (#ch("CO"), monossido di carbonio):* contiene il $57,1 "wt"%$ di #ch("O") e il $42,9 "wt"%$ di #ch("C"). A parità di massa di carbonio ($1 "g"$ di #ch("C")), la massa di ossigeno combinata è data dal rapporto:
    $ r_1 = frac(m_(ch("O")), m_(ch("C"))) = frac(57,1, 42,9) = 1,33 $
  + *Composto II (#ch("CO2"), diossido di carbonio):* contiene il $72,7 "wt"%$ di #ch("O") e il $27,3 "wt"%$ di #ch("C"). Il rapporto tra le masse di ossigeno e carbonio è:
    $ r_2 = frac(m_(ch("O")), m_(ch("C"))) = frac(72,7, 27,3) = 2,66 $
  Confrontando le masse di ossigeno che si legano alla *stessa quantità* di carbonio nei due composti si ottiene un rapporto di numeri interi piccoli:
  $ frac(r_2, r_1) = frac(2,66, 1,33) = frac(2, 1) $
  *Significato fisico:* a parità di atomi di carbonio, il secondo composto contiene esattamente il doppio della massa (e quindi il doppio del numero di atomi) di ossigeno rispetto al primo.

Postulati di Dalton:
+ *(FALSO)* Tutta la materia è costituita da ATOMI indivisibili, che non possono essere né creati né distrutti e sono eterni.
+ *(FALSO)* Gli atomi di un elemento non possono trasformarsi in atomi di altri elementi (falso per le reazioni nucleari, vero nelle reazioni chimiche dove possono solo ricombinarsi tra loro).
+ *(FALSO)* Gli atomi di un elemento sono tutti identici, ma diversi da quelli di ogni altro elemento (falso per l'esistenza degli isotopi).
+ *(VERO)* I composti sono formati dalla combinazione di specifici rapporti di atomi di elementi diversi.

// [DA SLIDE]
#nota[
  *Approfondimento sulla Teoria di Dalton (1808) e revisione moderna:*
  - *Il problema delle masse atomiche relative:* poiché un singolo atomo è troppo piccolo per essere pesato direttamente, dopo la formulazione della teoria atomica gli scienziati cercarono di ricavare le masse atomiche *relative* partendo dalle frazioni in massa degli elementi nei composti. Dalton scelse arbitrariamente come riferimento l'atomo di idrogeno assegnandogli massa relativa pari a $1$. Sapendo dalle misure di Lavoisier che nell'acqua ci sono $8 "g"$ di ossigeno per ogni $1 "g"$ di idrogeno, Dalton assegnò all'ossigeno massa relativa $8$: ciò però presupponeva erroneamente che la formula dell'acqua fosse #ch("HO") (rapporto atomico $1:1$). Quando altri scienziati dimostrarono che nella molecola d'acqua un atomo di ossigeno è legato a *due* atomi di idrogeno (#ch("H2O")), fu chiaro che il singolo atomo di ossigeno doveva pesare il doppio, ossia avere *massa relativa pari a $16$* (valore accettato ufficialmente dalla comunità scientifica solo nel 1860).
  - *Limiti del modello di Dalton e precisazioni odierne:*
    + Il modello di Dalton presentava un limite teorico fondamentale: non era in grado di spiegare *perché* gli elementi si combinassero tra loro soltanto secondo determinati rapporti numerici (assenza di una teoria del legame chimico).
    + *Sul postulato 1:* sebbene l'atomo sia divisibile in particelle subatomiche ($p^+$, $n^0$, $e^-$), esso resta comunque la *particella ultima di un elemento a mantenere inalterata la propria identità chimica* nel corso delle reazioni chimiche.
    + *Sul postulato 3:* tutti gli atomi di un dato elemento possiedono lo stesso numero di protoni ed elettroni (che ne governa il comportamento chimico), ma possono differire nel numero di neutroni (*isotopi*); un campione macroscopico si comporta quindi come se i suoi atomi avessero una *massa media* ponderata.
    + *Sul postulato 4:* sebbene valga per la quasi totalità delle sostanze, esistono alcuni composti solidi (detti *composti non stechiometrici* o bertollidi) che possono presentare lievi variazioni nei rapporti numerici tra i loro atomi.
]

*Gay-Lussac: legge dei rapporti multipli in volume* \
"Nelle reazioni tra sostanze gassose, i volumi dei reagenti e dei prodotti stanno tra loro in rapporti di numeri interi e semplici" (ad uguale $P$ e $T$).

*Avogadro: principio di Avogadro* \
"Volumi uguali di gas diversi, ad uguale $P$ e $T$, contengono lo stesso numero di particelle."

*Cannizzaro: regola di Cannizzaro* \
"Le varie quantità in peso di uno stesso elemento, contenute nelle molecole di sostanze diverse, sono tutte multiple di una stessa quantità, la quale deve ritenersi il peso atomico dell'elemento."

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    *Thomson (1897):* grazie al tubo catodico dimostrò:
    - l'esistenza di particelle con carica negativa (*Elettrone*);
    - determinò il rapporto carica/massa degli elettroni.
    *Modello a panettone:* nube di materia carica positivamente con particelle negative (elettroni) immerse.

    *Millikan (1909):* scoprì la carica di un elettrone ($1,6 dot 10^(-19) "C"$) e la sua massa (dalla relazione di Thomson).
  ],
  [
    #image("ac143232-a97e-4b60-942a-8e6e8ba0f7b2-17_339_407_3366_7664", width: 70%)
  ]
)
// [DA SLIDE]
#nota[
  *Descrizione fisica degli esperimenti di Thomson e Millikan:*
  - *Esperimento di J.J. Thomson (raggi catodici, 1897):* applicando un'elevata differenza di potenziale tra due elettrodi metallici racchiusi in un tubo di vetro sotto vuoto, si osserva l'emissione di radiazioni (*raggi catodici*) che viaggiano dall'elettrodo negativo (*catodo*) verso quello positivo (*anodo*). Sottoponendo il fascio a campi elettrici e magnetici esterni e misurandone la deflessione (il raggio viene attratto dalla piastra positiva), Thomson dimostrò che:
    + i raggi catodici non sono onde, ma fasci di particelle dotate di *carica negativa*, battezzate *elettroni*;
    + tali particelle sono *identiche qualunque sia il metallo* impiegato come catodo, dimostrando che gli elettroni sono costituenti universali di tutta la materia;
    + dall'entità della deflessione magnetica ed elettrica si ricava il rapporto carica/massa $frac(e, m_e)$, da cui emerse che la massa dell'elettrone $m_e$ è inferiore a $frac(1, 1000)$ della massa dell'atomo più leggero (l'idrogeno). Contrariamente al primo postulato di Dalton, l'atomo è dunque divisibile.
  - *Esperimento di R. Millikan (goccia d'olio):* per separare i valori di $e$ ed $m_e$, Millikan nebulizzò minuscole goccioline d'olio in una camera, caricandole elettricamente (tramite radiazioni ionizzanti) e osservandone la caduta al microscopio tra due piastre metalliche orizzontali. Regolando il campo elettrico $E$ tra le piastre in modo che la forza elettrica diretta verso l'alto ($F_"elettrica" = q E$) compensasse esattamente la forza di gravità diretta verso il basso ($F_"gravità" = m g$), egli determinò la carica totale $q$ presente su ciascuna goccia.
    Poiché gocce diverse catturavano un diverso numero di elettroni, Millikan osservò che la carica $q$ di ogni goccia era sempre un *multiplo intero* ($q = n e$) di una carica minima elementare pari a quella del singolo elettrone:
    $ e = -1,6 dot 10^(-19) "C" quad arrow.r.double quad m_e = frac(e, (e \/ m_e)_"Thomson") = 9,1 dot 10^(-31) "kg" $
]
#v(1em)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    *Rutherford:* modello atomico planetario (nucleare).
    - Il nucleo è tenuto insieme da "interazioni nucleari forti".
  ],
  [
    #image("ac143232-a97e-4b60-942a-8e6e8ba0f7b2-17_1376_2002_4924_6785", width: 70%)
    #image("ac143232-a97e-4b60-942a-8e6e8ba0f7b2-18_638_989_4610_2152", width: 70%)
    #image("ac143232-a97e-4b60-942a-8e6e8ba0f7b2-18_1870_6061_5154_652", width: 70%)
  ]
)
// [DA SLIDE]
#nota[
  *Esperimento di Rutherford (1910), modello nucleare e legge di Moseley:*
  - *Confutazione del modello di Thomson:* poiché l'atomo nel suo complesso è elettricamente neutro, Thomson aveva ipotizzato che gli elettroni fossero immersi in una sfera di carica positiva diffusa ("modello a panettone"). Nel 1910 *Ernest Rutherford* mise alla prova questa ipotesi bombardando una sottilissima lamina d'oro (o di platino) con un fascio di *particelle $alpha$* (particelle cariche positivamente emesse da un campione gassoso di radon radioattivo) e rilevandone i punti di impatto su uno schermo fluorescente circolare:
    + *Previsione secondo Thomson:* se la carica positiva e la massa dell'atomo fossero state distribuite uniformemente in tutto il volume atomico, il campo elettrico locale sarebbe stato troppo debole per ostacolare le particelle $alpha$, che avrebbero dovuto attraversare la lamina subendo solo minime deviazioni.
    + *Risultato sperimentale:* la quasi totalità delle particelle $alpha$ attraversò la lamina *completamente inalterata*, ma circa *1 su 20 000* subì deviazioni ad angoli superiori a $90^circ$ o, addirittura, rimbalzò all'indietro.
  - *Il modello nucleare dell'atomo:* per spiegare i rimbalzi, Rutherford concluse che tutta la carica positiva e quasi tutta la massa dell'atomo devono essere concentrate in una regione centrale puntiforme ed estremamente densa detta *nucleo* (con diametro di circa $10^(-14) "m"$), circondata da un enorme volume di spazio pressoché vuoto (diametro dell'ordine di $10^(-9) - 10^(-10) "m"$) in cui si muovono gli elettroni. Solo le pochissime particelle $alpha$ che passano vicinissime al nucleo subiscono una repulsione coulombiana così intensa da rimbalzare.
  - *Protoni e determinazione del numero atomico $Z$ (Moseley):* le particelle positive del nucleo furono chiamate *protoni* ($p^+$), aventi carica uguale e opposta a quella dell'elettrone ($+1,6 dot 10^(-19) "C"$) e massa pari a $m_p = 1,7 dot 10^(-27) "kg"$ (circa $1836$ volte quella dell'elettrone). In un atomo neutro, il numero di elettroni uguaglia esattamente il numero di protoni del nucleo, detto *numero atomico ($Z$)*. La determinazione sperimentale dei numeri atomici $Z$ dei vari elementi fu realizzata da *Henry Moseley*, il quale bombardò gli elementi con raggi catodici e scoprì che la frequenza dei *raggi X* emessi è direttamente correlata al numero di protoni $Z$ presenti nel nucleo.
]
#v(1em)

#align(center)[
  #table(
    columns: 3,
    [*Quark*], [$u$ (up): $+2/3$], [Protone: $u u d$ (carica $+1$)],
    [], [$d$ (down): $-1/3$], [Neutrone: $u d d$ (carica $0$)],
  )
]

= Dimensioni e grandezze atomiche

- Atomo: $10^(-10) "m" = 1 "Å"$ (Angstrom)
- Nucleoni: $10^(-15) "m"$
- Quark: $10^(-18) "m"$

Notazione: $Z^A X^"carica"$
- $Z =$ *numero atomico* $arrow.r$ differenzia chimicamente e qualitativamente gli atomi (numero di protoni).
- $A =$ *numero di massa* (protoni $+$ neutroni).

*Massa:* si misura in $"uma"$ (unità di massa atomica) o in $"Da"$ (Dalton):
$ 1 "uma" = 1 "Da" = 1/12 m(attach(ch("C"), tl: 12)) = 1,66 dot 10^(-27) "kg" = 1,66 dot 10^(-24) "g" $

// [DA SLIDE]
== Spettrometro di massa, scoperta dei neutroni e quadro delle particelle subatomiche

Per determinare sperimentalmente le masse atomiche fu sviluppato lo *spettrometro di massa*, il cui funzionamento (in condizioni di vuoto) si articola nelle seguenti fasi:
+ *Ionizzazione:* un fascio di elettroni ad alta energia, emesso da un cannone elettronico, impatta sugli atomi o sulle molecole del campione gassoso in esame, strappando elettroni e trasformando la specie in *ioni positivi* (cationi).
+ *Accelerazione:* il fascio di ioni positivi viene accelerato mediante una differenza di potenziale elettrico.
+ *Deflessione magnetica:* gli ioni attraversano il campo generato da un elettromagnete, che ne incurva la traiettoria. A parità di carica, ioni più leggeri vengono deflessi maggiormente rispetto a ioni più pesanti.
+ *Rivelazione:* variando l'intensità del campo magnetico, si fanno convergere selettivamente i diversi ioni sul rilevatore. La *massa di ciascuno ione è direttamente proporzionale all'intensità del campo magnetico* necessario per fargli colpire il rilevatore.

*Dallo spettrometro di massa alla scoperta del neutrone:* analizzando allo spettrometro campioni di elementi puri, gli scienziati scoprirono che *non tutti gli atomi di uno stesso elemento possiedono la stessa massa*. Ad esempio, un campione di neon puro ($Z = 10$) mostra tre picchi distinti: la maggior parte degli atomi ha massa circa $20$ volte quella dell'idrogeno, ma sono presenti frazioni minori con massa $21$ e $22$ volte quella dell'idrogeno. \
Poiché tutti gli atomi di neon devono avere esattamente $10$ protoni per mantenere la stessa identità chimica, il nucleo doveva necessariamente contenere delle ulteriori particelle *elettricamente neutre* e dotate di massa quasi identica a quella del protone: i *neutroni* ($n^0$).
- Protoni e neutroni costituiscono insieme i *nucleoni*, e il loro numero complessivo nel nucleo è il *numero di massa $A$* ($A = Z + N_"neutroni"$).
- Un nucleo con numero di massa $A$ è approssimativamente $A$ volte più pesante dell'atomo di idrogeno comune (#ch("H")), il cui nucleo è l'unico in natura a essere costituito da *un solo protone privo di neutroni*.
- Nella *teoria atomica odierna*, l'atomo è descritto come un'entità sferica elettricamente neutra in cui il nucleo centrale, estremamente denso, *contribuisce per il $99,97%$ alla massa atomica totale*, mentre gli elettroni si muovono rapidamente nel volume circostante trattenuti dall'attrazione elettrostatica nucleare.

#align(center)[
  #table(
    columns: 6,
    align: (left, center, center, center, center, left),
    [*Particella (simbolo)*], [*Carica relativa*], [*Carica assoluta ($"C"$)*], [*Massa relativa ($"u"$)*], [*Massa assoluta ($"g"$)*], [*Posizione nell'atomo*],
    [Protone ($p^+$)], [$1+$], [$+1,60218 dot 10^(-19)$], [$1,00727$], [$1,67262 dot 10^(-24)$], [Nucleo],
    [Neutrone ($n^0$)], [$0$], [$0$], [$1,00866$], [$1,67493 dot 10^(-24)$], [Nucleo],
    [Elettrone ($e^-$)], [$1-$], [$-1,60218 dot 10^(-19)$], [$0,00054858$], [$9,10939 dot 10^(-28)$], [All'esterno del nucleo]
  )
]

== Perché i protoni non si respingono?

I protoni nel nucleo si trovano molto vicini tra loro e, risentendo debolmente della forza di gravità e fortemente della repulsione elettrostatica, dovrebbero respingersi, distruggendo e impedendo la formazione dei nuclei atomici. Ma esiste una forza chiamata *forza nucleare forte* capace di trattenere i protoni vicini tra loro:
- è sempre attrattiva;
- si manifesta solo a distanze dell'ordine di $10^(-15) "m"$ (nel nucleo);
- avviene solo tra nucleoni ($p-p$, $n-n$, $p-n$).

*(Difetto di massa:* la massa del nucleo è inferiore alla somma delle masse dei singoli nucleoni; la differenza corrisponde all'energia di legame nucleare $E = Delta m c^2$).

= Ioni e isotopi

- *Ioni* $arrow.r$ specie chimica in cui il numero di protoni differisce da quello degli elettroni:
  - *CATIONE* $arrow.r$ $"protoni" > "elettroni" arrow.r$ carica $+$ (positiva)
  - *ANIONE* $arrow.r$ $"elettroni" > "protoni" arrow.r$ carica $-$ (negativa)
  - Possono legarsi tra loro per formare composti ionici / molecole.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    - *Isotopi* $arrow.r$ atomi dello stesso elemento in cui il numero di neutroni differisce (stesso $Z$, diverso $A$ e diversa massa).
    - In natura sono presenti gli isotopi più stabili.
    - Abbondanza relativa percentuale dell'idrogeno: $attach(ch("H"), tl: 1)$ (Prozio) $99,985 %$; $attach(ch("H"), tl: 2)$ (Deuterio) $0,015 %$; $attach(ch("H"), tl: 3)$ (Trizio) tracce.
  ],
  [
    #image("ac143232-a97e-4b60-942a-8e6e8ba0f7b2-19_1043_6827_6314_466", width: 70%)
    #image("ac143232-a97e-4b60-942a-8e6e8ba0f7b2-19_597_6822_8081_679", width: 70%)
  ]
)
// [DA SLIDE]
- *Notazione e proprietà degli isotopi:* un isotopo viene identificato ponendo il numero di massa $A$ in alto a sinistra e il numero atomico $Z$ in basso a sinistra rispetto al simbolo chimico dell'elemento (derivato dal nome moderno, latino o greco), ad esempio $attach(ch("Ne"), tl: 20, bl: 10)$, $attach(ch("Ne"), tl: 21, bl: 10)$ e $attach(ch("Ne"), tl: 22, bl: 10)$ (spesso abbreviati in $attach(ch("Ne"), tl: 20)$, $attach(ch("Ne"), tl: 22)$ poiché $Z$ è univocamente fissato dal simbolo chimico).
  - *Proprietà chimiche uguali:* poiché gli isotopi di uno stesso elemento possiedono lo *stesso numero di protoni e di elettroni* (e sono gli elettroni a determinare la formazione dei legami), il loro comportamento chimico è essenzialmente identico.
  - *Proprietà fisiche differenti:* la diversa massa nucleare (diverso numero di neutroni) comporta invece differenze apprezzabili nelle proprietà fisiche (densità, velocità di diffusione, punti di fusione/ebollizione), effetto particolarmente marcato negli elementi più leggeri (come tra prozio $attach(ch("H"), tl: 1)$, deuterio $attach(ch("H"), tl: 2)$ o #ch("D"), e trizio $attach(ch("H"), tl: 3)$ o #ch("T"), quest'ultimo radioattivo a vita brevissima).

#nota[
  *Esercizio 2.2 (Conteggio delle particelle subatomiche):* Determinare il numero di protoni, elettroni e neutroni dell'isotopo $attach(ch("Si"), tl: 29, bl: 14)$. \
  *Svolgimento:*
  - Il pedice sinistro indica il numero atomico $Z = 14$, pertanto il nucleo contiene *$14$ protoni*.
  - Poiché l'atomo è elettricamente neutro, il numero di elettroni deve uguagliare quello dei protoni: ci sono *$14$ elettroni*.
  - L'apice sinistro indica il numero di massa $A = 29$ (protoni $+$ neutroni); per differenza si ricava il numero di neutroni:
    $ N_"neutroni" = A - Z = 29 - 14 = bold(15 "neutroni") $
]
#v(1em)

= Stabilità nucleare e radiazioni

Nei processi di trasformazione nucleare i nuclei tendono a raggiungere la maggiore stabilità (massima intorno a #ch("Fe") e #ch("Ni")):
- *Fissione nucleare* = frammentazione indotta dei nuclei pesanti con emissione di neutroni ed energia $E$ (reattore nucleare, bombe atomiche).
- *Fusione nucleare* = coalescenza (unione) di nuclei piccoli per formare nuclei più grandi, con liberazione di energia $E$ (Sole, stelle, bombe all'idrogeno H).

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    *Radiazioni:*
    - Radiazioni $alpha$ (nuclei di elio $attach(ch("He"), tl: 4, bl: 2)^(2+)$)
    - Radiazioni $beta^-$ (elettroni) e $beta^+$ (positroni)
    - Radiazioni $gamma$ $arrow.r$ bloccate da uno spesso schermo di piombo (le più penetranti/potenti)
    - Cattura elettronica K
  ],
  [
    #image("ac143232-a97e-4b60-942a-8e6e8ba0f7b2-19_2609_2858_8820_4634", width: 70%)
  ]
)


= Peso atomico, peso molecolare e mole

*Peso atomico* $arrow.r$ è la massa di un atomo, indicata in $"uma"$. Tiene conto dell'abbondanza naturale degli isotopi facendo una media pesata:
$ attach(ch("C"), tl: 12) &= 12 "uma" times 0,989 &&= 11,868 \
attach(ch("C"), tl: 13) &= 13 "uma" times 0,011 &&= 0,143 \
"Totale" & &&= 12,011 "uma" $

// [DA SLIDE]
Più rigorosamente, mediante la spettrometria di massa si misura dapprima la *massa isotopica* (la massa esatta in $"Da"$ o $"u"$ di ciascun singolo isotopo, che per il solo $attach(ch("C"), tl: 12)$ vale esattamente $12 "u"$ per definizione) e l'*abbondanza relativa percentuale* di ogni isotopo in natura; la *massa atomica* dell'elemento è la media delle masse isotopiche ponderata sulle rispettive abbondanze:
$ "Massa atomica" = sum_i ("massa isotopica")_i dot frac("abbondanza"_i (%), 100) $

#nota[
  *Esercizio 2.3 (Calcolo della massa atomica media):* L'argento esiste in natura come miscela di due isotopi: $attach(ch("Ag"), tl: 107)$ (massa isotopica $106,90509 "Da"$, abbondanza $51,84%$) e $attach(ch("Ag"), tl: 109)$ (massa isotopica $108,90476 "Da"$, abbondanza $48,16%$). Calcolare la massa atomica dell'argento esprimendola con 5 cifre significative (C.S.). \
  *Svolgimento:* Calcoliamo i contributi pesati dei due isotopi:
  $ m(attach(ch("Ag"), tl: 107))_"pesata" &= 106,90509 "Da" dot 0,5184 = 55,41960 "Da" \
  m(attach(ch("Ag"), tl: 109))_"pesata" &= 108,90476 "Da" dot 0,4816 = 52,44853 "Da" $
  Sommando i due contributi ed esprimendo il risultato con 5 C.S. si ottiene:
  $ m_(ch("Ag")) = 55,41960 + 52,44853 = 107,86813 "Da" arrow.r.double bold(107,87 "Da") $
]

*Peso molecolare* $arrow.r$ è la somma delle masse degli atomi presenti:
$ "PM"_(ch("H2O")) = 2 dot 1,008 "uma" + 16 "uma" = 18,016 "uma" $

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    *Mole:* \
    La mole è l'unità di misura della quantità di sostanza. Una mole contiene una quantità specifica di molecole che equivale al numero di Avogadro ($6,022 dot 10^23$ atomi, molecole, ioni). \
    $ N_A = 6,022 dot 10^23 "mol"^(-1) = 1 / (1,66 dot 10^(-24) "g/uma") $
    Nelle reazioni il rapporto tra le moli in gioco è rappresentato dai coefficienti stechiometrici.
  ],
  [
    #image("ac143232-a97e-4b60-942a-8e6e8ba0f7b2-20_585_1470_4282_727", width: 70%)
  ]
)
#v(1em)

// [DA SLIDE]
= Tavola periodica degli elementi

Alla metà del XIX secolo, l'accumularsi di dati sperimentali sulle proprietà e sulle masse atomiche permise di notare regolarità ricorrenti (*periodiche*) nel comportamento degli elementi. Nel 1871 *Dmitrij Mendeleev* propose uno schema in cui gli elementi erano elencati per *massa atomica crescente*, disponendo nella stessa colonna verticale quelli dotati di proprietà chimiche simili.

Nell'attuale *tavola periodica degli elementi*, l'ordinamento è basato sul *numero atomico $Z$ crescente* da sinistra verso destra:
- *Casella dell'elemento:* riporta il numero atomico $Z$, il simbolo chimico e la massa atomica media.
- *Periodi e Gruppi:* le righe orizzontali sono dette *periodi* (numerati da *1 a 7*), mentre le colonne verticali sono dette *gruppi* (numerati da *1 a 18*, o secondo la notazione tradizionale da 1A a 8A per i gruppi principali e da 1B a 8B per quelli di transizione).
- *Suddivisione strutturale:*
  - *Elementi dei gruppi principali (o rappresentativi):* occupano i gruppi *1, 2 e 13–18*.
  - *Elementi di transizione:* occupano il blocco centrale, ossia i gruppi *3–12*.
  - *Elementi di transizione interna:* sono collocati nelle due righe poste al di sotto del corpo principale della tavola (*lantanidi* nel periodo 6 e *attinidi* nel periodo 7), che si inseriscono formalmente tra gli elementi del gruppo 3 e del gruppo 4.

== Classificazione fisica e famiglie chimiche

In base alle proprietà fisiche e chimiche, gli elementi della tavola periodica si dividono in tre grandi categorie:
+ *Metalli:* costituiscono la maggioranza degli elementi (comprendono molti elementi dei gruppi principali e *tutti* gli elementi di transizione e di transizione interna, occupando la parte sinistra e centrale della tavola). A temperatura ambiente sono generalmente *solidi lucenti* (con l'unica eccezione del *mercurio*, #ch("Hg"), che è liquido), sono *buoni conduttori* di calore e di elettricità, e sono lavorabili meccanicamente poiché *malleabili* (riducibili in lamine sottili) e *duttili* (riducibili in fili).
+ *Non metalli:* situati in alto a destra nella tavola periodica (più l'idrogeno #ch("H")). A temperatura ambiente sono *gas* (es. #ch("O2"), #ch("N2"), #ch("Cl2")) oppure *solidi fragili* (es. carbonio, zolfo, iodio) e *conducono male* sia il calore sia l'elettricità.
+ *Semimetalli (o metalloidi):* sono gli elementi collocati lungo la *linea diagonale a scalinata* che separa i metalli dai non metalli sul lato destro della tavola (#ch("B"), #ch("Si"), #ch("Ge"), #ch("As"), #ch("Sb"), #ch("Te"), #ch("Po"), #ch("At")) e presentano proprietà fisiche e chimiche intermedie (es. semiconduttori).

A livello di nomenclatura, quattro gruppi principali assumono nomi specifici fondamentali:
- *Gruppo 1 (eccetto l'idrogeno #ch("H")):* *Metalli alcalini* (#ch("Li"), #ch("Na"), #ch("K"), #ch("Rb"), #ch("Cs"), #ch("Fr")).
- *Gruppo 2:* *Metalli alcalino-terrosi* (#ch("Be"), #ch("Mg"), #ch("Ca"), #ch("Sr"), #ch("Ba"), #ch("Ra")).
- *Gruppo 17:* *Alogeni* (#ch("F"), #ch("Cl"), #ch("Br"), #ch("I"), #ch("At")).
- *Gruppo 18:* *Gas nobili* (#ch("He"), #ch("Ne"), #ch("Ar"), #ch("Kr"), #ch("Xe"), #ch("Rn")).

#nota[
  *Regola generale di periodicità:* gli elementi appartenenti a uno *stesso gruppo* (colonna verticale) possiedono *proprietà chimiche simili*, mentre gli elementi appartenenti a uno *stesso periodo* (riga orizzontale) presentano *proprietà chimiche progressivamente differenti* man mano che ci si sposta da sinistra (carattere metallico) verso destra (carattere non metallico).
]

// [DA SLIDE]
= Composti: introduzione al legame chimico

In natura, pochissimi elementi esistono liberi sotto forma di atomi singoli non combinati: ciò avviene solo per i *gas nobili* (#ch("He"), #ch("Ne"), #ch("Ar"), #ch("Kr"), #ch("Xe"), #ch("Rn")). Alcuni elementi esistono sia combinati nei composti sia come molecole elementari non combinate (es. l'ossigeno come #ch("O2")) o come solidi elementari nativi (#ch("C"), #ch("Cu"), #ch("Ag"), #ch("Au"), #ch("Pt")), ma la stragrande maggioranza degli elementi si trova combinata chimicamente con altri elementi.

Le forze attrattive che tengono uniti gli atomi degli elementi in un composto sono dette *legami chimici* e coinvolgono gli elettroni degli atomi interagenti secondo due meccanismi fondamentali:
+ *Trasferimento* di uno o più elettroni dagli atomi di un elemento a quelli di un altro $arrow.r$ formazione di *composti ionici*.
+ *Condivisione* di elettroni tra gli atomi $arrow.r$ formazione di *composti covalenti*.

== Composti ionici e legge di Coulomb

I *composti ionici* sono costituiti da *ioni* (particelle cariche generate quando un atomo cede o acquista elettroni). Il caso più semplice è il *composto ionico binario*, formato da due soli elementi, che si ottiene tipicamente quando un *metallo reagisce con un non metallo*:
- l'atomo del *metallo* cede uno o più elettroni trasformandosi in un *catione* (ione positivo, es. $ch("Na") arrow.r ch("Na+") + e^-$);
- l'atomo del *non metallo* acquista tali elettroni trasformandosi in un *anione* (ione negativo, es. $ch("Cl") + e^- arrow.r ch("Cl-")$);
- i cationi e gli anioni così formati si attraggono reciprocamente mediante forze elettrostatiche disponendosi in un reticolo cristallino ordinato (es. #ch("NaCl")).

*Forza del legame ionico:* l'intensità del legame ionico dipende dal bilancio complessivo delle attrazioni (tra ioni di segno opposto) e delle repulsioni (tra ioni dello stesso segno) ed è governata dalla *legge di Coulomb*:
$ F_"elettrostatica" prop frac(|q_1 dot q_2|, d^2) $
Da essa derivano due conseguenze fondamentali:
+ *Effetto della carica:* ioni dotati di *cariche maggiori* (es. $ch("Mg^2+")$ e $ch("O^2-")$) si attraggono (o si respingono) molto più intensamente rispetto a ioni con cariche minori (es. $ch("Na+")$ e $ch("Cl-")$).
+ *Effetto della dimensione (raggio ionico):* ioni *più piccoli* permettono una distanza interionica $d$ minore tra i centri di carica e quindi si attraggono più intensamente rispetto a ioni più grandi.

*Neutralità elettrica e previsione della carica ionica dalla tavola periodica:*
Un composto ionico è complessivamente *elettricamente neutro*, poiché contiene un numero uguale di cariche positive totali e di cariche negative totali. Per prevedere quanti elettroni un atomo di un gruppo principale può cedere o acquistare, si osserva che gli atomi tendono a formare ioni aventi *lo stesso numero di elettroni del gas nobile più vicino* nella tavola periodica (i gas nobili possiedono infatti un'elevatissima stabilità e bassissima reattività legata al numero e alla disposizione dei loro elettroni). Pertanto:
- *Gruppo 1 (metalli alcalini):* cedono $1 e^-$ formando cationi monovalenti ($ch("Li+")$, $ch("Na+")$, $ch("K+")$, $ch("Rb+")$, $ch("Cs+")$).
- *Gruppo 2 (metalli alcalino-terrosi):* cedono $2 e^-$ formando cationi bivalenti ($ch("Mg^2+")$, $ch("Ca^2+")$, $ch("Sr^2+")$, $ch("Ba^2+")$).
- *Gruppo 13:* l'alluminio cede $3 e^-$ formando il catione $ch("Al^3+")$.
- *Gruppo 17 (alogeni):* acquistano $1 e^-$ (es. #ch("Cl") passa da $17$ a $18 e^-$, come l'argon #ch("Ar")) formando anioni monovalenti ($ch("F-")$, $ch("Cl-")$, $ch("Br-")$, $ch("I-")$, più l'idruro $ch("H-")$).
- *Gruppo 16:* ossigeno e zolfo acquistano $2 e^-$ formando gli anioni $ch("O^2-")$ e $ch("S^2-")$.
- *Gruppo 15:* l'azoto acquista $3 e^-$ formando l'anione $ch("N^3-")$.

== Composti covalenti e ioni poliatomici

I *composti covalenti* si formano quando gli atomi *condividono* elettroni, processo che avviene tipicamente tra *non metalli*.
- *Meccanismo di formazione del legame covalente:* considerando ad esempio due atomi di idrogeno (#ch("H")) inizialmente separati che si avvicinano, il nucleo positivo di ciascun atomo inizia ad attrarre sempre più intensamente anche l'elettrone dell'altro atomo. A una specifica *distanza ottimale* tra i due nuclei, l'attrazione reciproca esercitata da entrambi i nuclei sulla coppia di elettroni interposta bilancia esattamente le repulsioni (nucleo-nucleo ed elettrone-elettrone): si forma così la molecola #ch("H2"), in cui i due elettroni non appartengono più a un singolo atomo ma sono *condivisi* in un *legame covalente*.
- *Molecole elementari e composti covalenti:* lo stesso meccanismo porta alla formazione delle molecole elementari biatomiche (#ch("H2"), #ch("N2"), #ch("O2"), #ch("F2"), #ch("Cl2"), #ch("Br2"), #ch("I2")) e poliatomiche (#ch("P4"), #ch("S8"), #ch("Se8")), nonché delle molecole dei composti covalenti tra non metalli diversi (es. fluoruro di idrogeno #ch("HF"), acqua #ch("H2O")).

#nota[
  *Due precisazioni strutturali fondamentali:*
  + *Assenza di molecole nei composti ionici:* mentre la maggior parte delle sostanze covalenti è costituita da singole unità molecolari discrete, in condizioni ordinarie *non esistono molecole in un campione di un composto ionico* (che è invece un reticolo tridimensionale continuo di ioni positivi e negativi).
  + *Ioni poliatomici:* molti composti ionici contengono *ioni poliatomici*, ossia unità costituite da due o più atomi *legati covalentemente tra loro* che possiedono complessivamente una carica netta positiva o negativa. Ad esempio, il carbonato di calcio (#ch("CaCO3")) è un composto ionico costituito da cationi monoatomici $ch("Ca^2+")$ e da anioni poliatomici carbonato $ch("CO3^2-")$: all'interno dello ione $ch("CO3^2-")$, un atomo di carbonio è legato covalentemente a tre atomi di ossigeno, e due elettroni addizionali conferiscono al gruppo la carica complessiva $2-$.
]

= Formule chimiche

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    - *Formula bruta:* #ch("CH4") (non descrive nulla sulla struttura, indica solo il numero di atomi di ogni elemento).
    - *Formula di (semi)struttura.*
    - *Formula di struttura* (con geometria della molecola).

    Per determinare la formula di una sostanza sconosciuta bisogna:
    + determinare da quali elementi è composta e la quantità di ogni elemento (restituendo delle percentuali in peso);
    + determinare la formula minima (empirica).
  ],
  [
    //#image("smile-bb813eae0dafe458bea2d233915cd5ddd7b72291", width: 70%)
    #image("ac143232-a97e-4b60-942a-8e6e8ba0f7b2-20_551_563_5939_4759", width: 70%)
  ]
)
// [DA SLIDE]
#nota[
  *Classificazione rigorosa delle formule chimiche:*
  In una *formula chimica*, i simboli degli elementi e i pedici numerici indicano la specie e il numero di atomi presenti nella più piccola unità della sostanza. Si distinguono tre livelli di rappresentazione (illustrati per il *perossido di idrogeno*, o acqua ossigenata):
  + *Formula minima (o empirica):* mostra il *numero relativo* (ossia il rapporto intero più semplice) di atomi di ciascun elemento nel composto $arrow.r$ per il perossido di idrogeno è #ch("HO") (rapporto $1:1$ tra #ch("H") e #ch("O")).
  + *Formula molecolare (o bruta):* mostra il *numero reale* di atomi di ciascun elemento effettivamente presenti in una singola molecola del composto $arrow.r$ per il perossido di idrogeno è #ch("H2O2") (due atomi di #ch("H") e due di #ch("O") per molecola).
  + *Formula di struttura:* mostra non solo il numero reale di atomi, ma anche i *legami chimici* tra di essi, cioè le connessioni e le posizioni reciproche degli atomi nella molecola $arrow.r$ per il perossido di idrogeno è #ch("H-O-O-H").
]
#v(1em)

= Reazioni

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    $ ch("3 H2 + N2 -> 2 NH3") quad ("coefficienti stechiometrici") $

    - Descrive un processo reale spesso più complesso
    - Le masse sono bilanciate
    - Le cariche sono bilanciate
    - Il numero di atomi è bilanciato
  ],
  [
    #image("ac143232-a97e-4b60-942a-8e6e8ba0f7b2-20_1074_3182_7979_4046", width: 70%)
  ]
)
#v(1em)

Tipi di reazioni:
- *Non redox* $arrow.r$ lo stato di ossidazione non cambia dai reagenti ai prodotti (neutralizzazione, scambio, decomposizione).
- *Redox* $arrow.r$ comporta un trasferimento di $e^-$ da una specie che cede gli $e^-$ (che si ossida) ad una specie che acquista $e^-$ (che si riduce), quindi cambia lo stato di ossidazione di questi elementi.
  - $"n.o." =$ numero di $e^-$ ceduti o acquisiti durante la formazione di un composto.
// [DA SLIDE]
#nota[
  *Definizione e regole di assegnazione del Numero di Ossidazione (N.O.):*
  Per identificare quale atomo ceda o acquisti elettroni (anche nei composti covalenti), si definisce il *numero (o stato) di ossidazione (N.O.)* come la *carica che l'atomo avrebbe se tutti gli elettroni di legame non fossero condivisi, bensì trasferiti completamente* all'atomo più elettronegativo. Il N.O. va *sempre riportato con il proprio segno* ($+$ o $-$), a meno che non valga $0$.

  *Regole operative per l'assegnazione del N.O.:*
  + *Sostanze elementari:* $"N.O." = bold(0)$ per qualsiasi atomo in una sostanza elementare (es. #ch("K"), #ch("Cl2"), #ch("O2")).
  + *Ossigeno (#ch("O")):* $"N.O." = bold(-2)$, *tranne* quando si trova:
    - in un *perossido*, contenente il gruppo $ch("O2^2-")$ ($"N.O." = bold(-1)$, es. #ch("H2O2"), #ch("K2O2"));
    - in un *superossido*, contenente lo ione $ch("O2-")$ ($"N.O." = bold(-1/2)$);
    - legato al fluoro nel composto #ch("OF2") ($"N.O." = bold(+2)$, poiché il fluoro è più elettronegativo dell'ossigeno).
  + *Idrogeno (#ch("H")):* $"N.O." = bold(+1)$, *tranne* quando è legato a un metallo (negli idruri metallici) o al boro (#ch("B")), casi in cui assume $"N.O." = bold(-1)$.
  + *Ioni monoatomici:* $"N.O." = bold("carica dello ione")$ (es. $+2$ per $ch("Ca^2+")$, $-1$ per $ch("Cl-")$).
  + *Elementi del Gruppo 1 (metalli alcalini):* nei composti hanno sempre $"N.O." = bold(+1)$.
  + *Elementi del Gruppo 2 (metalli alcalino-terrosi):* nei composti hanno sempre $"N.O." = bold(+2)$.
  + *Elementi del Gruppo 17 (alogeni):* hanno $"N.O." = bold(-1)$, *tranne* quando sono legati all'ossigeno (#ch("O")) oppure ad alogeni situati più in alto nel gruppo, casi in cui assumono numeri di ossidazione positivi ($bold(+1, +3, +5, +7)$).
  + *Elementi con N.O. fisso da ricordare nei composti:*
    $ ch("F") (-1), quad ch("Ag") (+1), quad ch("Cd") (+2), quad ch("Zn") (+2), quad ch("Al") (+3), quad ch("B") (+3), quad ch("Si") (+4) $
  + *Molecole neutre:* la somma algebrica dei N.O. di tutti gli atomi della formula è nulla: $sum "N.O." = bold(0)$.
  + *Ioni poliatomici:* la somma algebrica dei N.O. di tutti gli atomi è uguale alla carica netta dello ione: $sum "N.O." = bold("carica dello ione")$.

  *Esercizio 2.4 (Calcolo dei N.O.):* Assegnare i numeri di ossidazione a tutti gli elementi in #ch("CsNO2") e nello ione $ch("HPO4^2-")$. \
  *Svolgimento:*
  - *In #ch("CsNO2") (molecola neutra, $sum "N.O." = 0$):* il cesio (#ch("Cs")) appartiene al Gruppo 1, quindi $"N.O."(ch("Cs")) = bold(+1)$; l'ossigeno non è in un perossido, quindi $"N.O."(ch("O")) = bold(-2)$. Detto $x$ il N.O. dell'azoto (#ch("N")), imponiamo la neutralità:
    $ (+1) + x + 2 dot (-2) = 0 quad arrow.r.double quad 1 + x - 4 = 0 quad arrow.r.double quad x = bold(+3) $
    Pertanto i N.O. in #ch("CsNO2") sono rispettivamente: *$+1 / +3 / -2$*.
  - *In $ch("HPO4^2-")$ (ione poliatomico con carica $-2$, $sum "N.O." = -2$):* l'idrogeno ha $"N.O."(ch("H")) = bold(+1)$ e l'ossigeno ha $"N.O."(ch("O")) = bold(-2)$. Detto $y$ il N.O. del fosforo (#ch("P")), imponiamo la somma uguale alla carica dello ione:
    $ (+1) + y + 4 dot (-2) = -2 quad arrow.r.double quad 1 + y - 8 = -2 quad arrow.r.double quad y = bold(+5) $
    Pertanto i N.O. in $ch("HPO4^2-")$ sono rispettivamente: *$+1 / +5 / -2$*.
]
  - *Agente ossidante:* è l'elemento che si riduce.
  - *Agente riducente:* è l'elemento che si ossida.