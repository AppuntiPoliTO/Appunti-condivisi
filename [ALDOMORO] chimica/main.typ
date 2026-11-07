#import "@preview/cetz:0.5.3": canvas, draw
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


= Chimica
== Capitolo 1
#strong[Chimica:] scienza che studia la materia, le sue proprietà, le
sue trasformazioni e l'energia associata a tali trasformazioni. \
#strong[Materia:] tutto ciò che ha una massa e un volume. \
#strong[Sostanza:] materia definita da una composizione chimica definita
e fissa (elementi e composti). \ #strong[Energia:] in un corpo è la
somma di varie $E$ (potenziale, cinetica). Si conserva, non può essere
distrutta, ma si converte in altre forme. Accompagna le trasformazioni
chimiche e fisiche. \[$E = Delta m c^2$\] \ #strong[Storia della
chimica:]

- scoperta del fuoco (preistoria) $arrow.r$ processi metallurgici
  (Neolitico, 16000 anni fa) $arrow.r$ scoperta di materiali (6000 anni
  fa) $arrow.r$ vino e birra (3000 a.C.) $arrow.r$ elementi
  (greci/arabi)

- alchimia (per 15 secoli) $arrow.r$ chimica = medicinali (1500)
  $arrow.r$ chimica come scienza (1600 - Boyle)

= Proprietà della materia
#strong[Fisiche:] quelle che una sostanza ha di per sé, senza interagire
o trasformarsi.

- $arrow.r$ massa - colore - durezza - punto di fusione, ebollizione -
  densità - conduttività elettrica - stato di aggregazione (misurabili e
  non misurabili).

#strong[Chimiche:] quelle che si presentano quando le sostanze
interagiscono o si trasformano. Per determinarle bisogna modificare
l'identità delle sostanze.

- infiammabilità - corrosività - reattività con acidi, ecc.

- #strong[Proprietà estensive:] dipendono dalla quantità di campione
  \[$m$, $V$\].

- #strong[Proprietà intensive:] non dipendono dalla quantità di campione
  \[$d$, $p_(upright("eb"))$, $T$\].

= Trasformazioni
#figure(
  align(center)[#table(
    columns: (50%, 50%),
    align: (center,center,),
    [#strong[Fisiche:] si modifica la forma (stato di aggregazione), non
    la composizione. Può essere causata da una variazione di
    temperatura. È invertibile.

    #strong[Chimiche:] una sostanza si trasforma in un'altra diversa.
    Non invertibile. Esprimibili con equazioni chimiche.

    ], [#box(image("/ac143232-a97e-4b60-942a-8e6e8ba0f7b2-01_1237_4477_8856_1528", width: 70.0%))

    ],
  )]
  , kind: table
  )

= Stati
- #strong[Solido] $arrow.r$ ha forma e volume proprio.

- #strong[Liquido] $arrow.r$ ha un volume ma assume la forma del
  recipiente.

- #strong[Aeriforme] $arrow.r$ non ha né forma né volume. Si espande
  riempiendo lo spazio.

#strong[Sistema:] porzione di spazio con tutta la materia e l'energia in
esso contenute.

- #strong[Eterogeneo] $arrow.r$ i componenti non hanno proprietà
  fisico-chimiche uguali in ogni punto (es. granito, ghiaccio + acqua;
  se le particelle disperse hanno dimensioni intorno a
  $10^(- 6) upright(" cm")$ si hanno i #strong[colloidi]: ghisa,
  schiume, fumi, nebbia, latte, sangue).

- #strong[Omogeneo] $arrow.r$ i componenti hanno proprietà
  fisico-chimiche uguali in ogni punto (costituisce una singola
  #strong[FASE]). Può essere una sostanza pura o una #strong[soluzione]
  (es. ottone).

== Capitolo 2: I componenti della materia
=== Elementi, composti e miscele
La materia può essere classificata in tre tipi: elemento, composto e
miscela.

#strong[Elemento:] è una sostanza costituita da una sola specie di
atomi, ha proprietà macroscopiche. I gas nobili esistono come atomi
singoli, gli altri elementi esistono solo in forma aggregata/molecolare.
È il tipo di materia più semplice, con proprietà chimiche e fisiche
esclusive. Dall'elemento non è possibile ottenere, mediante gli ordinari
mezzi chimici, un tipo di materia più semplice. Essendo una sostanza
pura, la sua composizione è fissa (es. un campione di silicio contiene
soltanto atomi di silicio).

- #strong[Nota dalle slide:] nelle slide viene indicato che la maggior
  parte degli elementi esiste in natura come popolazioni di singoli
  atomi (es. neon, ma anche i metalli allo stato solido), mentre altri
  elementi esistono in forma molecolare (es. ossigeno).

#strong[Molecola:]

- è un'unità strutturale costituita da 2 o più atomi legati chimicamente
  tra loro;

- costituisce un'unità strutturale indipendente;

- gli elementi si presentano in rapporti fissi di massa;

- ha proprietà diverse da quelle degli elementi che la compongono.

- #strong[Nota dalle slide:] nelle slide queste ultime due
  caratteristiche (elementi presenti in parti fisse in massa e proprietà
  differenti da quelle degli elementi costituenti) sono attribuite al
  #strong[composto] e non alla molecola in generale (poiché esistono
  anche molecole di elementi puri, come $O_2$, costituite da una sola
  specie atomica).

#strong[Composto:]

- è un tipo di materia costituito da due o più elementi diversi legati
  chimicamente tra loro;

- gli elementi sono presenti in parti fisse in massa (essendo costituito
  da numeri fissi di atomi degli elementi costituenti) e, in virtù di
  ciò, un composto è considerato una sostanza pura;

- le proprietà di un composto sono differenti da quelle dei suoi
  elementi costituenti;

- può essere scomposto in sostanze più semplici (gli elementi
  costituenti) mediante trasformazioni chimiche.

#strong[Miscela:]

- è un gruppo di 2 o più sostanze mescolate fisicamente (può essere
  omogenea o eterogenea);

- non è una sostanza pura perché non ha rapporti fissi;

- ha proprietà simili a quelle dei suoi componenti.

- le rispettive parti in massa dei componenti possono variare (es. acqua
  salata);

- i componenti possono essere separati mediante trasformazioni fisiche.




= Chimica
== Capitolo 1
#strong[Chimica:] scienza che studia la materia, le sue proprietà, le
sue trasformazioni e l'energia associata a tali trasformazioni. \
#strong[Materia:] tutto ciò che ha una massa e un volume. \
#strong[Sostanza:] materia definita da una composizione chimica definita
e fissa (elementi e composti). \ #strong[Energia:] in un corpo è la
somma di varie $E$ (potenziale, cinetica). Si conserva, non può essere
distrutta, ma si converte in altre forme. Accompagna le trasformazioni
chimiche e fisiche. \[$E = Delta m c^2$\] \ #strong[Storia della
chimica:]

- scoperta del fuoco (preistoria) $arrow.r$ processi metallurgici
  (Neolitico, 16000 anni fa) $arrow.r$ scoperta di materiali (6000 anni
  fa) $arrow.r$ vino e birra (3000 a.C.) $arrow.r$ elementi
  (greci/arabi)

- alchimia (per 15 secoli) $arrow.r$ chimica = medicinali (1500)
  $arrow.r$ chimica come scienza (1600 - Boyle)

= Proprietà della materia
#strong[Fisiche:] quelle che una sostanza ha di per sé, senza interagire
o trasformarsi.

- $arrow.r$ massa - colore - durezza - punto di fusione, ebollizione -
  densità - conduttività elettrica - stato di aggregazione (misurabili e
  non misurabili).

#strong[Chimiche:] quelle che si presentano quando le sostanze
interagiscono o si trasformano. Per determinarle bisogna modificare
l'identità delle sostanze.

- infiammabilità - corrosività - reattività con acidi, ecc.

- #strong[Proprietà estensive:] dipendono dalla quantità di campione
  \[$m$, $V$\].

- #strong[Proprietà intensive:] non dipendono dalla quantità di campione
  \[$d$, $p_(upright("eb"))$, $T$\].

= Trasformazioni
#figure(
  align(center)[#table(
    columns: (50%, 50%),
    align: (center,center,),
    [#strong[Fisiche:] si modifica la forma (stato di aggregazione), non
    la composizione. Può essere causata da una variazione di
    temperatura. È invertibile.

    #strong[Chimiche:] una sostanza si trasforma in un'altra diversa.
    Non invertibile. Esprimibili con equazioni chimiche.], [#box(image("/ac143232-a97e-4b60-942a-8e6e8ba0f7b2-01_1237_4477_8856_1528", width: 70.0%))],
)]
  , kind: table
  )

= Stati
- #strong[Solido] $arrow.r$ ha forma e volume proprio.

- #strong[Liquido] $arrow.r$ ha un volume ma assume la forma del
  recipiente.

- #strong[Aeriforme] $arrow.r$ non ha né forma né volume. Si espande
  riempiendo lo spazio.

#strong[Sistema:] porzione di spazio con tutta la materia e l'energia in
esso contenute.

- #strong[Eterogeneo] $arrow.r$ i componenti non hanno proprietà
  fisico-chimiche uguali in ogni punto (es. granito, ghiaccio + acqua;
  se le particelle disperse hanno dimensioni intorno a
  $10^(- 6) upright(" cm")$ si hanno i #strong[colloidi]: ghisa,
  schiume, fumi, nebbia, latte, sangue).

- #strong[Omogeneo] $arrow.r$ i componenti hanno proprietà
  fisico-chimiche uguali in ogni punto (costituisce una singola
  #strong[FASE]). Può essere una sostanza pura o una #strong[soluzione]
  (es. ottone).

== Capitolo 2: I componenti della materia
=== Elementi, composti e miscele
La materia può essere classificata in tre tipi: elemento, composto e
miscela.

#strong[Elemento:] è una sostanza costituita da una sola specie di
atomi, ha proprietà macroscopiche. I gas nobili esistono come atomi
singoli, gli altri elementi esistono solo in forma aggregata/molecolare.
È il tipo di materia più semplice, con proprietà chimiche e fisiche
esclusive. Dall'elemento non è possibile ottenere, mediante gli ordinari
mezzi chimici, un tipo di materia più semplice. Essendo una sostanza
pura, la sua composizione è fissa (es. un campione di silicio contiene
soltanto atomi di silicio).

- #strong[Nota dalle slide:] nelle slide viene indicato che la maggior
  parte degli elementi esiste in natura come popolazioni di singoli
  atomi (es. neon, ma anche i metalli allo stato solido), mentre altri
  elementi esistono in forma molecolare (es. ossigeno).

#strong[Molecola:]

- è un'unità strutturale costituita da 2 o più atomi legati chimicamente
  tra loro;

- costituisce un'unità strutturale indipendente;

- gli elementi si presentano in rapporti fissi di massa;

- ha proprietà diverse da quelle degli elementi che la compongono.

- #strong[Nota dalle slide:] nelle slide queste ultime due
  caratteristiche (elementi presenti in parti fisse in massa e proprietà
  differenti da quelle degli elementi costituenti) sono attribuite al
  #strong[composto] e non alla molecola in generale (poiché esistono
  anche molecole di elementi puri, come $O_2$, costituite da una sola
  specie atomica).

#strong[Composto:]

- è un tipo di materia costituito da due o più elementi diversi legati
  chimicamente tra loro;

- gli elementi sono presenti in parti fisse in massa (essendo costituito
  da numeri fissi di atomi degli elementi costituenti) e, in virtù di
  ciò, un composto è considerato una sostanza pura;

- le proprietà di un composto sono differenti da quelle dei suoi
  elementi costituenti;

- può essere scomposto in sostanze più semplici (gli elementi
  costituenti) mediante trasformazioni chimiche.

#strong[Miscela:]

- è un gruppo di 2 o più sostanze mescolate fisicamente (può essere
  omogenea o eterogenea);

- non è una sostanza pura perché non ha rapporti fissi;

- ha proprietà simili a quelle dei suoi componenti.

- le rispettive parti in massa dei componenti possono variare (es. acqua
  salata);

- i componenti possono essere separati mediante trasformazioni fisiche.

//#figure(image("/image2.png", width: 70.0%),
  caption: [
    Rappresentazione microscopica di: (A) Atomi di un elemento, (B)
    Molecole di un elemento, (C) Molecole di un composto, (D) Miscela di
    due elementi e un composto.
  ]
)

#strong[Esempio di confronto tra elementi e composto (Sodio, Cloro,
Cloruro di sodio):]

#figure(
  align(center)[#table(
    columns: 4,
    align: (left,center,center,center,),
    [#strong[Proprietà]], [#strong[Sodio]], [#strong[Cloro]], [#strong[Cloruro
    di sodio]],
    [Temperatura (punto) di
    fusione], [$97\,8 med ""^compose C$], [$- 101 med ""^compose C$], [$801 med ""^compose C$],
    [Temperatura (punto) di
    ebollizione], [$881\,4 med ""^compose C$], [$- 234 med ""^compose C$], [$1413 med ""^compose C$],
    [Colore], [Argenteo], [Giallo-verde], [Incolore (bianco)],
    [Densità], [$0\,97 upright(" g/cm")^3$], [$0\,0032 upright(" g/cm")^3$], [$2\,16 upright(" g/cm")^3$],
    [Comportamento in acqua], [Reattivo], [Lievemente
    solubile], [Solubile],
  )]
  , kind: table
  )

=== Arti chimiche e origini della chimica moderna
La chimica ha le sue origini in un passato prescientifico che
comprendeva tre tradizioni parzialmente sovrapposte:

- #strong[Alchemica:] lo studio occulto della natura, secondo cui la
  materia ha una tendenza naturale verso la perfezione e si cercano
  procedimenti per trasformare sostanze di minore valore in altre di
  maggiore valore. Nel corso di indagini di laboratorio, gli alchimisti
  inventarono i metodi di distillazione, filtrazione ed estrazione.

- #strong[Medica:] gli alchimisti ebbero una notevole influenza sulla
  pratica medica. Il corpo veniva considerato come un sistema chimico il
  cui bilancio di sostanze poteva essere ripristinato mediante il
  trattamento medico.

- #strong[Tecnologica:] la ceramica, la tintura e la metallurgia diedero
  grandi contributi alla sperimentazione delle proprietà delle sostanze.
  Le nuove tecniche venivano scoperte e sviluppate per tentativi e i
  testi scritti mostravano scarso interesse per l'indagine sul perché
  una sostanza si trasformasse e come prevedere il comportamento della
  materia.

L'indagine chimica nel senso moderno cominciò alla fine del XVII secolo,
ma la comprensione era ostacolata da una teoria sbagliata della
combustione (il processo in cui si brucia una sostanza). Nessuno era in
grado di spiegare perché alcune sostanze bruciassero ed altre no, e cosa
accadesse durante una combustione.

- #strong[Teoria del flogisto:] la maggior parte degli scienziati
  abbracciò questa teoria, secondo cui le sostanze combustibili
  contengono flogisto, cioè una sostanza imponderabile che si libera
  durante la combustione.

- #strong[Contributo di Antoine-Laurent de Lavoisier (metà XVIII
  secolo):] mostrò la natura della combustione tramite una serie di
  accurate misurazioni che posero in rilievo l'importanza della massa.
  Nei suoi esperimenti, la massa dei prodotti era uguale a quella dei
  reagenti ed evidenziò l'importanza rivestita dall'aria nel processo di
  combustione. Ciò si estese a tutti gli altri tipi di reazioni chimiche
  (es. reazione tra soluzione di nitrato di piombo e soluzione di
  cromato di sodio per formare cromato di piombo solido in soluzione di
  nitrato di sodio, in cui la massa totale sulla bilancia resta
  invariata prima e dopo la reazione).

=== Leggi fondamentali della chimica
- #strong[Legge di conservazione della massa (Antoine-Laurent de
  Lavoisier, XVIII secolo):] la massa totale delle sostanze rimane
  invariata durante una reazione chimica. Ciò significa che la materia
  non può essere creata, né distrutta.

- #strong[Legge della composizione definita e costante (o legge delle
  proporzioni definite, Joseph-Louis Proust):] in un composto chimico
  gli elementi sono sempre combinati in rapporti in massa costanti e
  definiti. Si può pertanto esprimere, per ciascun composto, la
  #strong[percentuale in massa] (indicata con $upright("wt") %$) di
  ciascun elemento, dividendo la massa dell'elemento per la massa
  dell'intero composto e moltiplicando per $100$:

$ upright(" wt") % = m_(upright("elemento")) / m_(upright("composto")) times 100 $

#strong[Esercizio 2.1:] La pechblenda è il composto dell'uranio più
importante industrialmente. L'analisi indica che $84\,2 upright(" g")$
di pechblenda contengono $71\,4 upright(" g")$ di uranio, il resto è
ossigeno. Calcolare la massa di uranio ottenibile da
$102 upright(" kg")$ di pechblenda. \ #strong[Svolgimento:]
$ m_(upright("U ")) = 102 times 10^3 upright(" g ") times frac(71, 4 upright(" g")) = 8\,65 times 10^4 upright(" g ") $

- #strong[Legge delle proporzioni multiple (John Dalton):] se gli
  elementi A e B reagiscono per formare (a seconda delle condizioni
  sperimentali) due diversi composti, le differenti masse di B che si
  combinano con una massa fissa di A possono essere espresse come
  rapporti di numeri interi piccoli.

  - #strong[Esempio ($upright("CO")$ e $upright("CO")_2$):] carbonio e
    ossigeno reagiscono producendo due composti differenti:

    + Il primo ($upright("CO")$) ha il $57\,1 upright(" wt") %$ di
      ossigeno e il $42\,9 upright(" wt") %$ di carbonio, da cui deriva
      un rapporto tra masse di atomi pari a $57 / 1 = 1\,33$.

    + Il secondo ($upright("CO")_2$) ha il $72\,7 upright(" wt") %$ di
      ossigeno e il $27\,3 upright(" wt") %$ di carbonio, da cui deriva
      un rapporto tra masse di atomi pari a $72 / 7 = 2\,66$.

  Pertanto, il rapporto ossigeno/carbonio nei due composti è esprimibile
  come: $ 2 / 66 = 2 / 1 $ A parità di quantità di carbonio, il secondo
  composto ha esattamente il doppio della massa di ossigeno del primo
  composto.

=== Teoria atomica di Dalton
Nel 1808, #strong[John Dalton] studiò dal punto di vista quantitativo
come gli elementi si combinavano tra loro, e formulò i #strong[postulati
della teoria atomica di Dalton]:

+ Tutta la materia è costituita da #strong[atomi], piccolissime
  particelle indivisibili di un elemento, che non possono essere creati
  né distrutti.

+ Gli atomi di un elemento non possono essere convertiti in atomi di un
  altro elemento.

+ Tutti gli atomi di un dato elemento sono identici nella massa e nelle
  altre proprietà, e sono diversi dagli atomi di ogni altro elemento.

+ Un composto è una specifica combinazione di numeri interi di atomi di
  più di un elemento.

#strong[Determinazione delle masse atomiche relative e limiti del
modello:]

- Un singolo atomo è così piccolo da richiedere il ricorso a misure di
  massa relative a quelle di altri atomi, ricavandole dalle frazioni in
  massa degli elementi nei composti.

- Dalton assegnò come base massa $1$ all'atomo di idrogeno. Poiché
  Lavoisier mostrò che l'acqua contiene $8 upright(" g")$ di ossigeno
  per ogni grammo di idrogeno, Dalton assegnò massa relativa $8$
  all'atomo di ossigeno (corretto solo se la molecola d'acqua avesse
  avuto un atomo di ossigeno per ogni atomo di idrogeno, ossia
  $upright("HO")$).

- Altri scienziati riscontrarono invece che una molecola d'acqua ha un
  atomo di ossigeno per ogni due atomi di idrogeno ($H_2 O$), pertanto
  la massa relativa dell'ossigeno è pari a $16$ (valore concordato dalla
  comunità scientifica nel 1860).

- #strong[Limiti oggettivi:] il modello di Dalton fu criticato perché
  non era in grado di spiegare perché gli elementi si combinassero
  soltanto in certi rapporti.

=== Modello nucleare dell'atomo
- #strong[Esperimento di Joseph John Thomson (1897) e i raggi catodici:]
  prima prova sperimentale della struttura interna degli atomi. I
  #strong[raggi catodici] sono radiazioni emesse quando si applica
  un'elevata differenza di potenziale a due elettrodi metallici (catodo
  negativo e anodo positivo) dentro un tubo di vetro posto sotto vuoto.

  - Osservando la direzione di deflessione del raggio per effetto di un
    campo magnetico ed elettrico esterno, Thomson dimostrò che i raggi
    catodici erano fasci di particelle dotate di carica negativa
    provenienti dall'interno degli atomi costituenti il catodo.

  - Tali particelle cariche, chiamate #strong[elettroni], risultarono
    identiche qualunque metallo fosse adoperato: gli elettroni fanno
    quindi parte di tutta la materia.

  - Thomson misurò il rapporto carica/massa dell'elettrone:

  $ e / m_e $ dove $e$ è la quantità di carica dell'elettrone e $m_e$ la
  sua massa, accorgendosi che le particelle avevano massa minore di
  $1 / 1000$ di quella dell'atomo di idrogeno. Contrariamente alla
  teoria di Dalton, gli atomi sono divisibili in particelle ancora più
  piccole.

- #strong[Esperimento di Robert Millikan (carica e massa
  dell'elettrone):] determinò i singoli valori di $m_e$ ed $e$
  osservando minuscole gocce di olio nebulizzate e caricate
  elettricamente.

  - Dalla forza del campo elettrico necessaria a compensare l'attrazione
    di gravità sulle goccioline, ricavò il valore della carica presente
    sulle particelle.

  - Poiché differenti gocce d'olio catturavano un diverso numero di
    elettroni, le varie cariche risultavano sempre un multiplo intero di
    una carica minima, corrispondente a quella del singolo elettrone:

  $ e = - 1\,6 times 10^(- 19) upright(" C ")\,quad m_e = 9\,1 times 10^(- 31) upright(" kg ") $

//#figure(image("/image3.png", width: 70.0%),
  caption: [
    Schemi del tubo a raggi catodici di Thomson (catodo, anodo,
    fenditura, piastre elettriche, elettromagnete) e dell'apparato di
    Millikan con gocce d'olio ionizzato in equilibrio tra forza
    elettrica e forza di gravità.
  ]
)

- #strong[Modello a panettone di Thomson:] poiché gli atomi nel loro
  insieme sono elettricamente neutri pur contenendo elettroni negativi,
  devono contenere anche carica positiva. Thomson ipotizzò un modello
  dell'atomo simile all'impasto di un panettone, con un ammasso diffuso
  di materiale positivo nel quale gli elettroni si trovavano sospesi.

- #strong[Esperimento di Ernest Rutherford (1910):] bombardò una sottile
  lamina di oro (o platino) con un fascio di particelle positive
  (particelle $alpha$, provenienti da un campione gassoso di radon
  radioattivo), rilevando le scintillazioni su uno schermo fluorescente.

  - Se fosse stato valido il modello di Thomson, tutte le particelle
    $alpha$ avrebbero dovuto attraversare facilmente la carica positiva
    diffusa della lamina, deviando solo lievemente e di tanto in tanto.

  - Al contrario, quasi tutte le particelle $alpha$ passarono
    inalterate, ma $1$ su $20000$ deviava di oltre $90 ""^compose$ o
    rimbalzava in direzione opposta.

- #strong[Modello nucleare dell'atomo:] l'atomo possiede un centro
  puntiforme e denso di carica positiva detto #strong[nucleo], in cui si
  concentra essenzialmente tutta la massa, attorniato da un grande
  volume di spazio pressoché interamente vuoto nel quale si
  distribuiscono gli elettroni:
  $ d_(upright("nucleo ")) approx 10^(- 14) upright(" m ")\,quad d_(upright("atomo (elettroni) ")) approx 10^(- 9) upright(" m ") $

- #strong[Protoni e neutralità atomica:] la carica negativa degli
  elettroni compensa ed elide esattamente quella positiva del nucleo
  centrale, rendendo l'atomo elettricamente neutro. Le particelle di
  carica positiva nel nucleo si chiamano #strong[protoni], hanno carica
  uguale e opposta a quella degli elettroni e massa:
  $ m_p = 1\,7 times 10^(- 27) upright(" kg ") $

- #strong[Numero atomico ($Z$) ed esperimento di Henry Moseley:] il
  numero di protoni presenti nel nucleo atomico varia da un elemento
  all'altro ed è detto #strong[numero atomico] ($Z$). Moseley determinò
  i numeri atomici degli elementi bombardandoli con raggi catodici,
  osservando l'emissione di raggi X e correlandola al numero di protoni
  presenti nei nuclei.

//#figure(image("/image4.png", width: 70.0%),
  caption: [
    Schema dell'esperimento di Rutherford sulla lamina d'oro/platino e
    interpretazione microscopica della deflessione delle particelle
    $alpha$ da parte dei nuclei atomici.
  ]
)

=== Spettrometro di massa e neutroni
- #strong[Spettrometro di massa:] strumento atto a determinare la massa
  atomica.

  - Gli elettroni escono da un cannone elettronico e impattano sulla
    specie in esame, che si carica diventando uno ione positivo.

  - Il fascio di ioni generato viene accelerato da una differenza di
    potenziale in condizioni di vuoto e passa attraverso un campo
    magnetico.

  - Variando l'intensità del campo magnetico, gli ioni cambiano la loro
    traiettoria fino a colpire un rilevatore: la massa di ogni ione è
    proporzionale all'intensità del campo magnetico necessario a fargli
    raggiungere il rilevatore.

- #strong[Scoperta dei neutroni e numero di massa ($A$):]

  - Usando gli spettrometri di massa si osservò che non tutti gli atomi
    di uno stesso elemento possiedono la stessa massa (es. un campione
    di neon puro ha la maggior parte degli atomi con massa circa $20$
    volte maggiore dell'idrogeno atomico, mentre altri atomi sono $21$ o
    $22$ volte più pesanti).

  - Il nucleo atomico contiene quindi anche particelle elettricamente
    neutre, chiamate #strong[neutroni], aventi circa la stessa massa dei
    protoni. Un diverso numero di neutroni nel nucleo dà origine ad
    atomi di massa diversa anche per lo stesso elemento.

  - Protoni e neutroni vengono denominati nel loro insieme
    #strong[nucleoni], e il loro numero totale è detto #strong[numero di
    massa], indicato con $A$. Un nucleo con numero di massa $A$ è
    approssimativamente $A$ volte più pesante dell'atomo di idrogeno (il
    cui nucleo è costituito da un solo protone).

//#figure(image("/image5.png", width: 70.0%),
  caption: [
    Schema dello spettrometro di massa e grafico dello spettro di massa
    del neon (segnale al rilevatore in funzione della massa $m / m_u$
    con picchi a $20$, $21$ e $22$).
  ]
)

=== Teoria atomica odierna
- Un #strong[atomo] è un'entità sferica, elettricamente neutra,
  costituita da un nucleo centrale carico positivamente (diametro
  $approx 10^(- 14) upright(" m")$), circondato da uno o più elettroni
  carichi negativamente che si muovono rapidamente nel volume atomico
  disponibile (diametro $approx 10^(- 10) upright(" m")$), ivi
  trattenuti dall'attrazione esercitata dal nucleo.

- Il #strong[nucleo] è estremamente denso e contribuisce al $99\,97 %$
  della massa atomica. È costituito da protoni (carichi positivamente) e
  neutroni (privi di carica), ad eccezione dell'idrogeno comune
  ($zws^1 H$), il cui nucleo non ha neutroni.

- Un atomo è neutro perché il numero di protoni del nucleo è uguale al
  numero di elettroni attorno al nucleo.

#figure(
  align(center)[#table(
    columns: 6,
    align: (left,center,center,center,center,left,),
    [#strong[Nome (simbolo)]], [#strong[Carica
    relativa]], [#strong[Carica assoluta (C)\*]], [#strong[Massa
    relativa (u)\*\*]], [#strong[Massa assoluta
    (g)]], [#strong[Posizione nell'atomo]],
    [Protone
    ($p^(+)$)], [$1 +$], [$+ 1\,602218 times 10^(- 19)$], [$1\,00727$], [$1\,67262 times 10^(- 24)$], [Nucleo],
    [Neutrone
    ($n^0$)], [$0$], [$0$], [$1\,00866$], [$1\,67493 times 10^(- 24)$], [Nucleo],
    [Elettrone
    ($e^(-)$)], [$1 -$], [$- 1\,60218 times 10^(- 19)$], [$0\,00054858$], [$9\,10939 times 10^(- 28)$], [All'esterno
    del nucleo],
  )]
  , kind: table
  )

#strong[\* Il coulomb ($C$) è l'unità SI di carica elettrica:
$1 upright(" C ") = 1 upright(" A ") dot.op upright(" s")$.] \
#strong[\*\* L'unità di massa atomica ($u$) è uguale a
$1\,660540 times 10^(- 24) upright(" g")$.]

- #strong[Isotopi e simbolo chimico:] gli atomi con lo stesso numero
  atomico ($Z$), ma con numero di massa ($A$) diverso si dicono
  #strong[isotopi] dell'elemento.

  - Il numero di massa $A$ si indica in apice a sinistra del simbolo
    chimico dell'elemento, mentre il numero atomico $Z$ viene indicato
    in basso a sinistra (es. $zws_10^20 upright("Ne")$,
    $zws_10^21 upright("Ne")$, $zws_10^22 upright("Ne")$).

  - Il #strong[simbolo] dell'elemento indica ciascun elemento in base al
    suo nome in lingua moderna, latino o greco.

  - Poiché gli isotopi di un elemento hanno lo stesso numero di protoni
    ed elettroni, le loro proprietà chimiche sono essenzialmente uguali;
    al contrario, le loro differenze di massa portano a differenze
    apprezzabili di proprietà fisiche (soprattutto per gli elementi più
    leggeri).

#figure(
  align(center)[#table(
    columns: 5,
    align: (left,center,center,center,center,),
    [#strong[Elemento]], [#strong[Simbolo]], [#strong[Numero atomico
    $Z$]], [#strong[Numero di massa $A$]], [#strong[Abbondanza $%$]],
    [Idrogeno], [$zws^1 H$], [$1$], [$1$], [$99\,985$],
    [Deuterio], [$zws^2 H$ o $D$], [$1$], [$2$], [$0\,015$],
    [Trizio], [$zws^3 H$ o $T$], [$1$], [$3$], [--- (radioattivo, vita
    brevissima)],
    [Carbonio-12], [$zws^12 C$], [$6$], [$12$], [$98\,90$],
    [Carbonio-13], [$zws^13 C$], [$6$], [$13$], [$1\,10$],
    [Ossigeno-16], [$zws^16 O$], [$8$], [$16$], [$99\,76$],
  )]
  , kind: table
  )

#strong[Esercizio 2.2:] Determinare il numero di protoni, neutroni ed
elettroni dell'isotopo $zws_14^29 upright("Si")$. \
#strong[Svolgimento:]

- Numero di protoni $= Z = 14$

- Numero di neutroni $= A - Z = 29 - 14 = 15$

- Numero di elettroni (atomo neutro) $= Z = 14$

#strong[\(Nota: la slide riporta `[14; 14; 15]` invertendo l'ordine tra
elettroni e neutroni rispetto alla domanda).]

- #strong[Unità di massa atomica e massa atomica:]

  - La massa di un atomo è misurata relativamente alla massa di un
    campione atomico prescelto, che attualmente è l'atomo di carbonio-12
    ($zws^12 C$), la cui massa è posta per definizione esattamente pari
    a $12$ unità di massa atomica.

  - L'#strong[unità di massa atomica] ($upright("u.m.a.")$ o $u$),
    chiamata anche #strong[dalton] ($upright("Da")$), è definita come
    $1 / 12$ della massa dell'atomo di carbonio-12 ed equivale a una
    massa assoluta di:

  $ 1 upright(" u ") = 1 upright(" Da ") = 1\,66 times 10^(- 24) upright(" g ") $

  - Mediante la spettrometria di massa si misura la #strong[massa
    isotopica] (massa di un singolo isotopo di un dato elemento) e
    l'abbondanza relativa di ciascun isotopo.

  - La #strong[massa atomica] di un elemento è la media delle masse dei
    suoi isotopi naturali ponderata secondo le rispettive abbondanze.

#strong[Esercizio 2.3:] L'argento esiste in natura come isotopo
$zws^107 upright("Ag")$ e $zws^109 upright("Ag")$. I due isotopi hanno
massa di $106\,90509 upright(" Da")$ e $108\,90476 upright(" Da")$,
rispettivamente, e abbondanza del $51\,84 %$ e $48\,16 %$. Calcolare la
massa atomica dell'argento esprimendola con 5 C.S. \
#strong[Svolgimento:]
$ m_(upright("Ag ")) = 0\,5184 times 106\,90509 upright(" Da ") + 0\,4816 times 108\,90476 upright(" Da ") = 107\,87 upright(" Da ") $

#strong[Riesame dei postulati della teoria di Dalton con le conoscenze
attuali:]

+ #strong[Tutta la materia è costituita da atomi:] sono però divisibili
  e costituiti da particelle subatomiche più piccole, ma l'atomo resta
  la particella ultima di un elemento a mantenere inalterata la sua
  identità nelle reazioni chimiche.

+ #strong[Gli atomi di un elemento non possono essere convertiti in
  atomi di un altro elemento:] in realtà ciò è possibile, ma occorre
  ricorrere a reazioni nucleari.

+ #strong[Tutti gli atomi di un dato elemento hanno lo stesso numero di
  protoni ed elettroni, e ciò determina il comportamento chimico
  dell'elemento:] esistono però isotopi diversi per ciascun elemento, e
  un campione di elemento viene trattato come se i suoi atomi avessero
  una massa media.

+ #strong[Un composto è una specifica combinazione di numeri interi di
  atomi di più di un elemento:] in realtà esistono alcuni composti che
  possono presentare lievi variazioni dei rapporti dei loro atomi.

=== Tavola periodica degli elementi
Alla metà del XIX secolo si erano accumulate enormi quantità di
informazioni concernenti le reazioni, le proprietà e le masse atomiche
degli elementi. Parecchi ricercatori notarono regolarità ricorrenti o
periodiche e proposero schemi per organizzare gli elementi secondo
alcune proprietà fondamentali.

- Nel 1871 #strong[Dmitrij Mendeleev] pubblicò uno schema che elencava
  gli elementi secondo #strong[massa atomica crescente], con una
  disposizione per cui elementi con proprietà chimiche simili occupavano
  la stessa colonna.

- Ne derivò l'attuale #strong[tavola periodica degli elementi],
  organizzata nel modo seguente:

  - Ogni elemento ha una casella che contiene il numero atomico, il
    simbolo e la massa atomica. Le caselle sono disposte in ordine di
    #strong[numero atomico crescente] da sinistra verso destra.

  - Le caselle sono disposte in un reticolato di #strong[periodi] (righe
    orizzontali, numerate da $1$ a $7$) e #strong[gruppi] (colonne
    verticali, numerate da $1$ a $18$).

  - I gruppi $1$, $2$ e $13$--$18$ contengono gli #strong[elementi dei
    gruppi principali], mentre i gruppi $3$--$12$ contengono gli
    #strong[elementi di transizione]. Al di sotto del corpo principale
    della tavola sono collocate due serie di #strong[elementi di
    transizione interna] (lantanidi nel periodo $6$ e attinidi nel
    periodo $7$), che si inseriscono tra gli elementi del gruppo $3$ e
    del gruppo $4$.

//#figure(image("/image6.png", width: 80.0%),
  caption: [
    Tavola periodica degli elementi completa con distinzione cromatica
    tra metalli dei gruppi principali, metalli di transizione, metalli
    di transizione interna (lantanidi e attinidi), metalloidi e non
    metalli.
  ]
)

#strong[Classificazione degli elementi:]

- #strong[Metalli:] comprendono molti elementi dei gruppi principali e
  tutti gli elementi di transizione e di transizione interna. Sono
  generalmente solidi lucenti a temperatura ambiente (fa eccezione il
  mercurio, liquido), conducono bene il calore e l'elettricità, e
  possono essere lavorati e trasformati in lamine (#strong[malleabili])
  e in fili (#strong[duttili]).

- #strong[Non metalli:] situati in alto a destra nella tavola periodica,
  sono gas o solidi fragili (oltre al bromo, liquido) e conducono male
  il calore e l'elettricità.

- #strong[Semimetalli (o metalloidi):] sono gli elementi collocati lungo
  la linea a scalinata sul lato destro della tavola periodica e sono
  caratterizzati da proprietà intermedie.

#strong[Nomenclatura dei gruppi principali:]

- #strong[Metalli alcalini:] gruppo $1$, eccetto l'idrogeno.

- #strong[Metalli alcalino-terrosi:] gruppo $2$.

- #strong[Alogeni:] gruppo $17$.

- #strong[Gas nobili:] gruppo $18$.

Gli elementi di uno stesso #strong[gruppo] hanno proprietà chimiche
simili, mentre quelli di uno stesso #strong[periodo] hanno proprietà
chimiche differenti.

//#figure(image("/image7.png", width: 70.0%),
  caption: [
    Campioni fisici e posizione sulla tavola periodica di alcuni metalli
    (cromo, rame, cadmio, piombo, bismuto), metalloidi (boro, silicio,
    arsenico, antimonio, tellurio) e non metalli (carbonio/grafite,
    zolfo, cloro, bromo, iodio).
  ]
)

=== Composti: introduzione al legame chimico
La grande maggioranza degli elementi esiste in natura in combinazione
chimica con altri elementi:

- Pochi elementi esistono liberi (monoatomici) in natura:
  $upright("He")$, $upright("Ne")$, $upright("Ar")$, $upright("Kr")$,
  $upright("Xe")$ e $upright("Rn")$.

- Altri (es. $O$) possono esistere sia nei composti che come molecole
  non combinate (es. $O_2$).

- Alcuni elementi possono esistere sia combinati che non: $C$,
  $upright("Cu")$, $upright("Ag")$, $upright("Au")$, $upright("Pt")$.

Gli elettroni degli atomi degli elementi interagenti intervengono nella
formazione dei composti secondo due modi:

+ #strong[Trasferimento] di uno o più elettroni dagli atomi di un
  elemento a quelli di un altro, per formare #strong[composti ionici].

+ #strong[Condivisione] di elettroni tra atomi di differenti elementi,
  per formare #strong[composti covalenti].

Questi processi generano #strong[legami chimici], ossia le forze che
tengono uniti gli atomi degli elementi in un composto.

#strong[Composti ionici e legame ionico:]

- I #strong[composti ionici] sono costituiti da #strong[ioni], ossia
  particelle cariche che si formano quando un atomo acquista o cede uno
  o più elettroni.

- Il tipo più semplice è il #strong[composto ionico binario], costituito
  soltanto da due elementi, che si forma generalmente quando un metallo
  reagisce con un non metallo:

  - il metallo cede un certo numero dei suoi elettroni e diventa un
    #strong[catione] (ione carico positivamente);

  - il non metallo acquista elettroni e diventa un #strong[anione] (ione
    carico negativamente).

  I cationi e gli anioni così formati si attraggono reciprocamente
  mediante forze elettrostatiche formando il composto ionico (es.
  trasferimento di $1 upright(" e")^(-)$ dall'atomo di sodio
  $upright("Na")$ all'atomo di cloro $upright("Cl")$ per formare gli
  ioni $upright("Na")^(+)$ e $upright("Cl")^(-)$ nel cristallo di
  cloruro di sodio).

- La #strong[forza del legame ionico] dipende dall'entità complessiva di
  attrazioni e repulsioni ed è descritta dalla #strong[legge di
  Coulomb]. Ne deriva che:

  - gli ioni con cariche maggiori si attraggono (o respingono) più
    intensamente rispetto agli ioni con cariche minori;

  - gli ioni più piccoli si attraggono (o respingono) più intensamente
    rispetto agli ioni più grandi.

- #strong[Neutralità e previsione della carica degli ioni:] i composti
  ionici sono elettricamente neutri (carica netta nulla) perché
  contengono lo stesso numero di cariche positive e negative.

  - Nella tavola periodica, i metalli cedono elettroni e i non metalli
    acquistano elettroni per formare ioni con lo stesso numero di
    elettroni del #strong[gas nobile più vicino] (i gas nobili
    possiedono una stabilità, cioè bassa reattività, correlata con il
    numero e la disposizione dei loro elettroni; es. $upright("Cl")$
    acquista $1 upright(" e")^(-)$ per raggiungere la stabilità di
    $upright("Ar")$).

  - In generale:

    - gli elementi del gruppo $1$ cedono $1$ elettrone (formando cationi
      $M^(+)$);

    - gli elementi del gruppo $2$ cedono $2$ elettroni (formando cationi
      $M^(2 +)$);

    - gli elementi del gruppo $17$ acquistano $1$ elettrone (formando
      anioni $X^(-)$);

    - $upright("Al")$ cede $3$ elettroni ($upright("Al")^(3 +)$), $O$ e
      $S$ ne acquistano $2$ ($O^(2 -)$, $S^(2 -)$), $N$ ne acquista $3$
      ($N^(3 -)$).

//#figure(image("/image8.png", width: 70.0%),
  caption: [
    Schema della formazione di $upright("NaCl")$ per trasferimento
    elettronico da $upright("Na")$ a $upright("Cl")$ con reticolo
    cristallino, e rappresentazione cilindrica della tavola periodica
    con le cariche degli ioni monoatomici rispetto ai gas nobili.
  ]
)

#strong[Composti covalenti e ioni poliatomici:]

- I #strong[composti covalenti] si formano quando gli elementi
  condividono elettroni, il che avviene di solito tra non metalli.

  - Considerando due atomi di $H$ separati che si avvicinano, il nucleo
    di ciascuno attrae sempre più intensamente l'elettrone dell'altro
    atomo finché, a una certa distanza ottimale tra i nuclei, i due
    atomi formano un #strong[legame covalente] costituito
    dall'attrazione reciproca tra una coppia di elettroni e i due
    nuclei.

  - Ne risulta una molecola $H_2$ in cui entrambi gli elettroni sono
    condivisi tra i due atomi. Lo stesso accade per le molecole
    elementari $N_2$, $O_2$, $F_2$, $upright("Cl")_2$,
    $upright("Br")_2$, $I_2$, $P_4$, $S_8$, $upright("Se")_8$.

  - Analogamente, atomi di differenti elementi condividono elettroni per
    formare le molecole di un composto covalente (es. fluoruro di
    idrogeno $upright("HF")$, acqua $H_2 O$).

- #strong[Precisazioni su molecole e ioni poliatomici:]

  - Mentre la maggior parte delle sostanze covalenti è costituita da
    molecole, in condizioni ordinarie #strong[non esistono molecole in
    un campione di un composto ionico].

  - Molti composti ionici contengono #strong[ioni poliatomici],
    costituiti da due o più atomi legati covalentemente che presentano
    una carica netta positiva o negativa (es. $upright("CaCO")_3$
    contiene ioni monoatomici $upright("Ca")^(2 +)$ e ioni poliatomici
    $upright("CO")_3^(2 -)$\; quest'ultimo è costituito da un atomo di
    $C$ legato covalentemente a tre atomi di $O$, con due elettroni
    addizionali che conferiscono allo ione la carica $2 -$).

//#figure(image("/image9.png", width: 70.0%),
  caption: [
    Formazione del legame covalente in $H_2$ con bilanciamento delle
    forze attrattive/repulsive, modelli di $upright("HF")$ e $H_2 O$, e
    struttura cristallina di $upright("CaCO")_3$ con lo ione poliatomico
    carbonato $upright("CO")_3^(2 -)$.
  ]
)

=== Formule chimiche
In una #strong[formula chimica], i simboli degli elementi e i pedici
indicano la specie e il numero di atomi presenti nella più piccola unità
della sostanza. Esistono:

- #strong[Formula minima:] mostra il numero relativo di atomi di ciascun
  elemento nel composto (es. per il perossido di idrogeno è
  $upright("HO")$).

- #strong[Formula molecolare:] mostra il numero reale di atomi di
  ciascun elemento in una molecola del composto (es. per il perossido di
  idrogeno è $H_2 O_2$).

- #strong[Formula di struttura:] mostra il numero di atomi e i legami
  tra essi, cioè le posizioni reciproche e le connessioni tra atomi
  nella molecola (es. per il perossido di idrogeno è $H - O - O - H$).

=== Numero di ossidazione
Per identificare quale atomo ceda o acquisti elettroni si ricorre al
#strong[numero (o stato) di ossidazione] ($upright("N.O.")$), che
corrisponde alla carica che l'atomo avrebbe se gli elettroni non fossero
condivisi, bensì fossero trasferiti completamente. Il numero di
ossidazione deve sempre essere riportato col #strong[segno] (positivo o
negativo), a meno che non valga zero.

#strong[Regole per l'assegnazione del $upright("N.O.")$:]

- #strong[Sostanze elementari:] $upright("N.O. ") = 0$ (es. $K$,
  $upright("Cl")_2$).

- #strong[Ossigeno:] $upright("N.O. ") = - 2$, tranne quando si trova in
  un perossido ($- 1$), in un superossido ($- 1 / 2$) o in
  $upright("OF")_2$ ($+ 2$).

- #strong[Idrogeno:] $upright("N.O. ") = + 1$, tranne quando è legato a
  un metallo o al boro $B$ ($- 1$).

- #strong[Ioni monoatomici:]
  $upright("N.O. ") = upright(" carica dello ione")$ (es. $+ 2$ per
  $upright("Ca")^(2 +)$).

- #strong[Elementi del gruppo 1:] $upright("N.O. ") = + 1$.

- #strong[Elementi del gruppo 2:] $upright("N.O. ") = + 2$.

- #strong[Elementi del gruppo 17:] $upright("N.O. ") = - 1$, tranne
  quando sono legati a $O$ o ad alogeni superiori nel gruppo
  ($+ 1\,+ 3\,+ 5\,+ 7$).

- #strong[Elementi con $upright("N.O.")$ da ricordare:] $F$ ($- 1$),
  $upright("Ag")$ ($+ 1$), $upright("Cd")$ ($+ 2$), $upright("Zn")$
  ($+ 2$), $upright("Al")$ ($+ 3$), $B$ ($+ 3$), $upright("Si")$
  ($+ 4$).

- #strong[Molecole neutre:]

$ sum upright(" N.O. ") = 0 $

- #strong[Ioni poliatomici:]

$ sum upright(" N.O. ") = upright(" carica dello ione ") $

#strong[Esercizio 2.4:] Assegnare i $upright("N.O.")$ in
$upright("CsNO")_2$ e $upright("HPO")_4^(2 -)$. \ #strong[Svolgimento:]

- Per $upright("CsNO")_2$ (molecola neutra,
  $sum upright(" N.O. ") = 0$): $upright("Cs")$ (gruppo 1) ha
  $upright("N.O. ") = + 1$\; $O$ ha $upright("N.O. ") = - 2$. Quindi per
  $N$:

$ \(+ 1\)+ upright(" N.O.")\(N\)+ 2 times\(- 2\)= 0 arrow.r upright(" N.O.")\(N\)= + 3 quad arrow.r quad\[+ 1\,+ 3\,- 2\] $

- Per $upright("HPO")_4^(2 -)$ (ione poliatomico con carica $- 2$,
  $sum upright(" N.O. ") = - 2$): $H$ ha $upright("N.O. ") = + 1$\; $O$
  ha $upright("N.O. ") = - 2$. Quindi per $P$:

$ \(+ 1\)+ upright(" N.O.")\(P\)+ 4 times\(- 2\)= - 2 arrow.r upright(" N.O.")\(P\)= + 5 quad arrow.r quad\[+ 1\,+ 5\,- 2\] $

=== Nomenclature e classi di composti
La #strong[nomenclatura] permette di identificare i composti mediante un
nome specifico, definito a partire dalla formula della sostanza. Si fa
riferimento a:

- #strong[Nomenclatura IUPAC] (#strong[International Union of Pure and
  Applied Chemistry]): consente di evidenziare, in modo chiaro ed
  immediato, la relazione tra il nome di un composto e la sua formula
  chimica.

- #strong[Nomenclatura tradizionale:] è basata sulla divisione degli
  elementi in metalli e non metalli, e tiene conto del $upright("N.O.")$
  degli elementi.

La chimica generale definisce #strong[10 classi di composti inorganici]:

//#figure(
  align(center)[#table(
    columns: 3,
    align: (center,center,center,),
    [#strong[COMPOSTI BINARI]], [], [#strong[COMPOSTI TERNARI]],
    [Ossidi basici], [$+ H_2 upright("O ") arrow.r$], [Idrossidi],
    [Ossidi acidi], [$+ H_2 upright("O ") arrow.r$], [Ossiacidi],
    [Perossidi], [], [],
    [Idracidi], [], [],
    [Idruri metallici], [], [],
    [Idruri covalenti], [], [],
    [Sali binari], [], [],
    [], [], [Sali ternari],
  )]
  , kind: table
  )
 //figure(image("/image2.png", width: 70.0%),
  caption: [
    Rappresentazione microscopica di: (A) Atomi di un elemento, (B)
    Molecole di un elemento, (C) Molecole di un composto, (D) Miscela di
    due elementi e un composto.
  ]
)

#strong[Esempio di confronto tra elementi e composto (Sodio, Cloro,
Cloruro di sodio):]

#figure(
  align(center)[#table(
    columns: 4,
    align: (left,center,center,center,),
    [#strong[Proprietà]], [#strong[Sodio]], [#strong[Cloro]], [#strong[Cloruro
    di sodio]],
    [Temperatura (punto) di
    fusione], [$97\,8 med ""^compose C$], [$- 101 med ""^compose C$], [$801 med ""^compose C$],
    [Temperatura (punto) di
    ebollizione], [$881\,4 med ""^compose C$], [$- 234 med ""^compose C$], [$1413 med ""^compose C$],
    [Colore], [Argenteo], [Giallo-verde], [Incolore (bianco)],
    [Densità], [$0\,97 upright(" g/cm")^3$], [$0\,0032 upright(" g/cm")^3$], [$2\,16 upright(" g/cm")^3$],
    [Comportamento in acqua], [Reattivo], [Lievemente
    solubile], [Solubile],
  )]
  , kind: table
  )

=== Arti chimiche e origini della chimica moderna
La chimica ha le sue origini in un passato prescientifico che
comprendeva tre tradizioni parzialmente sovrapposte:

- #strong[Alchemica:] lo studio occulto della natura, secondo cui la
  materia ha una tendenza naturale verso la perfezione e si cercano
  procedimenti per trasformare sostanze di minore valore in altre di
  maggiore valore. Nel corso di indagini di laboratorio, gli alchimisti
  inventarono i metodi di distillazione, filtrazione ed estrazione.

- #strong[Medica:] gli alchimisti ebbero una notevole influenza sulla
  pratica medica. Il corpo veniva considerato come un sistema chimico il
  cui bilancio di sostanze poteva essere ripristinato mediante il
  trattamento medico.

- #strong[Tecnologica:] la ceramica, la tintura e la metallurgia diedero
  grandi contributi alla sperimentazione delle proprietà delle sostanze.
  Le nuove tecniche venivano scoperte e sviluppate per tentativi e i
  testi scritti mostravano scarso interesse per l'indagine sul perché
  una sostanza si trasformasse e come prevedere il comportamento della
  materia.

L'indagine chimica nel senso moderno cominciò alla fine del XVII secolo,
ma la comprensione era ostacolata da una teoria sbagliata della
combustione (il processo in cui si brucia una sostanza). Nessuno era in
grado di spiegare perché alcune sostanze bruciassero ed altre no, e cosa
accadesse durante una combustione.

- #strong[Teoria del flogisto:] la maggior parte degli scienziati
  abbracciò questa teoria, secondo cui le sostanze combustibili
  contengono flogisto, cioè una sostanza imponderabile che si libera
  durante la combustione.

- #strong[Contributo di Antoine-Laurent de Lavoisier (metà XVIII
  secolo):] mostrò la natura della combustione tramite una serie di
  accurate misurazioni che posero in rilievo l'importanza della massa.
  Nei suoi esperimenti, la massa dei prodotti era uguale a quella dei
  reagenti ed evidenziò l'importanza rivestita dall'aria nel processo di
  combustione. Ciò si estese a tutti gli altri tipi di reazioni chimiche
  (es. reazione tra soluzione di nitrato di piombo e soluzione di
  cromato di sodio per formare cromato di piombo solido in soluzione di
  nitrato di sodio, in cui la massa totale sulla bilancia resta
  invariata prima e dopo la reazione).

=== Leggi fondamentali della chimica
- #strong[Legge di conservazione della massa (Antoine-Laurent de
  Lavoisier, XVIII secolo):] la massa totale delle sostanze rimane
  invariata durante una reazione chimica. Ciò significa che la materia
  non può essere creata, né distrutta.

- #strong[Legge della composizione definita e costante (o legge delle
  proporzioni definite, Joseph-Louis Proust):] in un composto chimico
  gli elementi sono sempre combinati in rapporti in massa costanti e
  definiti. Si può pertanto esprimere, per ciascun composto, la
  #strong[percentuale in massa] (indicata con $upright("wt") %$) di
  ciascun elemento, dividendo la massa dell'elemento per la massa
  dell'intero composto e moltiplicando per $100$:

$ upright(" wt") % = m_(upright("elemento")) / m_(upright("composto")) times 100 $

#strong[Esercizio 2.1:] La pechblenda è il composto dell'uranio più
importante industrialmente. L'analisi indica che $84\,2 upright(" g")$
di pechblenda contengono $71\,4 upright(" g")$ di uranio, il resto è
ossigeno. Calcolare la massa di uranio ottenibile da
$102 upright(" kg")$ di pechblenda. \ #strong[Svolgimento:]
$ m_(upright("U ")) = 102 times 10^3 upright(" g ") times frac(71, 4 upright(" g")) = 8\,65 times 10^4 upright(" g ") $

- #strong[Legge delle proporzioni multiple (John Dalton):] se gli
  elementi A e B reagiscono per formare (a seconda delle condizioni
  sperimentali) due diversi composti, le differenti masse di B che si
  combinano con una massa fissa di A possono essere espresse come
  rapporti di numeri interi piccoli.

  - #strong[Esempio ($upright("CO")$ e $upright("CO")_2$):] carbonio e
    ossigeno reagiscono producendo due composti differenti:

    + Il primo ($upright("CO")$) ha il $57\,1 upright(" wt") %$ di
      ossigeno e il $42\,9 upright(" wt") %$ di carbonio, da cui deriva
      un rapporto tra masse di atomi pari a $57 / 1 = 1\,33$.

    + Il secondo ($upright("CO")_2$) ha il $72\,7 upright(" wt") %$ di
      ossigeno e il $27\,3 upright(" wt") %$ di carbonio, da cui deriva
      un rapporto tra masse di atomi pari a $72 / 7 = 2\,66$.

  Pertanto, il rapporto ossigeno/carbonio nei due composti è esprimibile
  come: $ 2 / 66 = 2 / 1 $ A parità di quantità di carbonio, il secondo
  composto ha esattamente il doppio della massa di ossigeno del primo
  composto.

=== Teoria atomica di Dalton
Nel 1808, #strong[John Dalton] studiò dal punto di vista quantitativo
come gli elementi si combinavano tra loro, e formulò i #strong[postulati
della teoria atomica di Dalton]:

+ Tutta la materia è costituita da #strong[atomi], piccolissime
  particelle indivisibili di un elemento, che non possono essere creati
  né distrutti.

+ Gli atomi di un elemento non possono essere convertiti in atomi di un
  altro elemento.

+ Tutti gli atomi di un dato elemento sono identici nella massa e nelle
  altre proprietà, e sono diversi dagli atomi di ogni altro elemento.

+ Un composto è una specifica combinazione di numeri interi di atomi di
  più di un elemento.

#strong[Determinazione delle masse atomiche relative e limiti del
modello:]

- Un singolo atomo è così piccolo da richiedere il ricorso a misure di
  massa relative a quelle di altri atomi, ricavandole dalle frazioni in
  massa degli elementi nei composti.

- Dalton assegnò come base massa $1$ all'atomo di idrogeno. Poiché
  Lavoisier mostrò che l'acqua contiene $8 upright(" g")$ di ossigeno
  per ogni grammo di idrogeno, Dalton assegnò massa relativa $8$
  all'atomo di ossigeno (corretto solo se la molecola d'acqua avesse
  avuto un atomo di ossigeno per ogni atomo di idrogeno, ossia
  $upright("HO")$).

- Altri scienziati riscontrarono invece che una molecola d'acqua ha un
  atomo di ossigeno per ogni due atomi di idrogeno ($H_2 O$), pertanto
  la massa relativa dell'ossigeno è pari a $16$ (valore concordato dalla
  comunità scientifica nel 1860).

- #strong[Limiti oggettivi:] il modello di Dalton fu criticato perché
  non era in grado di spiegare perché gli elementi si combinassero
  soltanto in certi rapporti.

=== Modello nucleare dell'atomo
- #strong[Esperimento di Joseph John Thomson (1897) e i raggi catodici:]
  prima prova sperimentale della struttura interna degli atomi. I
  #strong[raggi catodici] sono radiazioni emesse quando si applica
  un'elevata differenza di potenziale a due elettrodi metallici (catodo
  negativo e anodo positivo) dentro un tubo di vetro posto sotto vuoto.

  - Osservando la direzione di deflessione del raggio per effetto di un
    campo magnetico ed elettrico esterno, Thomson dimostrò che i raggi
    catodici erano fasci di particelle dotate di carica negativa
    provenienti dall'interno degli atomi costituenti il catodo.

  - Tali particelle cariche, chiamate #strong[elettroni], risultarono
    identiche qualunque metallo fosse adoperato: gli elettroni fanno
    quindi parte di tutta la materia.

  - Thomson misurò il rapporto carica/massa dell'elettrone:

  $ e / m_e $ dove $e$ è la quantità di carica dell'elettrone e $m_e$ la
  sua massa, accorgendosi che le particelle avevano massa minore di
  $1 / 1000$ di quella dell'atomo di idrogeno. Contrariamente alla
  teoria di Dalton, gli atomi sono divisibili in particelle ancora più
  piccole.

- #strong[Esperimento di Robert Millikan (carica e massa
  dell'elettrone):] determinò i singoli valori di $m_e$ ed $e$
  osservando minuscole gocce di olio nebulizzate e caricate
  elettricamente.

  - Dalla forza del campo elettrico necessaria a compensare l'attrazione
    di gravità sulle goccioline, ricavò il valore della carica presente
    sulle particelle.

  - Poiché differenti gocce d'olio catturavano un diverso numero di
    elettroni, le varie cariche risultavano sempre un multiplo intero di
    una carica minima, corrispondente a quella del singolo elettrone:

  $ e = - 1\,6 times 10^(- 19) upright(" C ")\,quad m_e = 9\,1 times 10^(- 31) upright(" kg ") $

//#figure(image("/image3.png", width: 70.0%),
  caption: [
    Schemi del tubo a raggi catodici di Thomson (catodo, anodo,
    fenditura, piastre elettriche, elettromagnete) e dell'apparato di
    Millikan con gocce d'olio ionizzato in equilibrio tra forza
    elettrica e forza di gravità.
  ]
)

- #strong[Modello a panettone di Thomson:] poiché gli atomi nel loro
  insieme sono elettricamente neutri pur contenendo elettroni negativi,
  devono contenere anche carica positiva. Thomson ipotizzò un modello
  dell'atomo simile all'impasto di un panettone, con un ammasso diffuso
  di materiale positivo nel quale gli elettroni si trovavano sospesi.

- #strong[Esperimento di Ernest Rutherford (1910):] bombardò una sottile
  lamina di oro (o platino) con un fascio di particelle positive
  (particelle $alpha$, provenienti da un campione gassoso di radon
  radioattivo), rilevando le scintillazioni su uno schermo fluorescente.

  - Se fosse stato valido il modello di Thomson, tutte le particelle
    $alpha$ avrebbero dovuto attraversare facilmente la carica positiva
    diffusa della lamina, deviando solo lievemente e di tanto in tanto.

  - Al contrario, quasi tutte le particelle $alpha$ passarono
    inalterate, ma $1$ su $20000$ deviava di oltre $90 ""^compose$ o
    rimbalzava in direzione opposta.

- #strong[Modello nucleare dell'atomo:] l'atomo possiede un centro
  puntiforme e denso di carica positiva detto #strong[nucleo], in cui si
  concentra essenzialmente tutta la massa, attorniato da un grande
  volume di spazio pressoché interamente vuoto nel quale si
  distribuiscono gli elettroni:
  $ d_(upright("nucleo ")) approx 10^(- 14) upright(" m ")\,quad d_(upright("atomo (elettroni) ")) approx 10^(- 9) upright(" m ") $

- #strong[Protoni e neutralità atomica:] la carica negativa degli
  elettroni compensa ed elide esattamente quella positiva del nucleo
  centrale, rendendo l'atomo elettricamente neutro. Le particelle di
  carica positiva nel nucleo si chiamano #strong[protoni], hanno carica
  uguale e opposta a quella degli elettroni e massa:
  $ m_p = 1\,7 times 10^(- 27) upright(" kg ") $

- #strong[Numero atomico ($Z$) ed esperimento di Henry Moseley:] il
  numero di protoni presenti nel nucleo atomico varia da un elemento
  all'altro ed è detto #strong[numero atomico] ($Z$). Moseley determinò
  i numeri atomici degli elementi bombardandoli con raggi catodici,
  osservando l'emissione di raggi X e correlandola al numero di protoni
  presenti nei nuclei.

//#figure(image("/image4.png", width: 70.0%),
  caption: [
    Schema dell'esperimento di Rutherford sulla lamina d'oro/platino e
    interpretazione microscopica della deflessione delle particelle
    $alpha$ da parte dei nuclei atomici.
  ]
)

=== Spettrometro di massa e neutroni
- #strong[Spettrometro di massa:] strumento atto a determinare la massa
  atomica.

  - Gli elettroni escono da un cannone elettronico e impattano sulla
    specie in esame, che si carica diventando uno ione positivo.

  - Il fascio di ioni generato viene accelerato da una differenza di
    potenziale in condizioni di vuoto e passa attraverso un campo
    magnetico.

  - Variando l'intensità del campo magnetico, gli ioni cambiano la loro
    traiettoria fino a colpire un rilevatore: la massa di ogni ione è
    proporzionale all'intensità del campo magnetico necessario a fargli
    raggiungere il rilevatore.

- #strong[Scoperta dei neutroni e numero di massa ($A$):]

  - Usando gli spettrometri di massa si osservò che non tutti gli atomi
    di uno stesso elemento possiedono la stessa massa (es. un campione
    di neon puro ha la maggior parte degli atomi con massa circa $20$
    volte maggiore dell'idrogeno atomico, mentre altri atomi sono $21$ o
    $22$ volte più pesanti).

  - Il nucleo atomico contiene quindi anche particelle elettricamente
    neutre, chiamate #strong[neutroni], aventi circa la stessa massa dei
    protoni. Un diverso numero di neutroni nel nucleo dà origine ad
    atomi di massa diversa anche per lo stesso elemento.

  - Protoni e neutroni vengono denominati nel loro insieme
    #strong[nucleoni], e il loro numero totale è detto #strong[numero di
    massa], indicato con $A$. Un nucleo con numero di massa $A$ è
    approssimativamente $A$ volte più pesante dell'atomo di idrogeno (il
    cui nucleo è costituito da un solo protone).

//#figure(image("/image5.png", width: 70.0%),
  caption: [
    Schema dello spettrometro di massa e grafico dello spettro di massa
    del neon (segnale al rilevatore in funzione della massa $m / m_u$
    con picchi a $20$, $21$ e $22$).
  ]
)

=== Teoria atomica odierna
- Un #strong[atomo] è un'entità sferica, elettricamente neutra,
  costituita da un nucleo centrale carico positivamente (diametro
  $approx 10^(- 14) upright(" m")$), circondato da uno o più elettroni
  carichi negativamente che si muovono rapidamente nel volume atomico
  disponibile (diametro $approx 10^(- 10) upright(" m")$), ivi
  trattenuti dall'attrazione esercitata dal nucleo.

- Il #strong[nucleo] è estremamente denso e contribuisce al $99\,97 %$
  della massa atomica. È costituito da protoni (carichi positivamente) e
  neutroni (privi di carica), ad eccezione dell'idrogeno comune
  ($zws^1 H$), il cui nucleo non ha neutroni.

- Un atomo è neutro perché il numero di protoni del nucleo è uguale al
  numero di elettroni attorno al nucleo.

#figure(
  align(center)[#table(
    columns: 6,
    align: (left,center,center,center,center,left,),
    [#strong[Nome (simbolo)]], [#strong[Carica
    relativa]], [#strong[Carica assoluta (C)\*]], [#strong[Massa
    relativa (u)\*\*]], [#strong[Massa assoluta
    (g)]], [#strong[Posizione nell'atomo]],
    [Protone
    ($p^(+)$)], [$1 +$], [$+ 1\,602218 times 10^(- 19)$], [$1\,00727$], [$1\,67262 times 10^(- 24)$], [Nucleo],
    [Neutrone
    ($n^0$)], [$0$], [$0$], [$1\,00866$], [$1\,67493 times 10^(- 24)$], [Nucleo],
    [Elettrone
    ($e^(-)$)], [$1 -$], [$- 1\,60218 times 10^(- 19)$], [$0\,00054858$], [$9\,10939 times 10^(- 28)$], [All'esterno
    del nucleo],
  )]
  , kind: table
  )

#strong[\* Il coulomb ($C$) è l'unità SI di carica elettrica:
$1 upright(" C ") = 1 upright(" A ") dot.op upright(" s")$.] \
#strong[\*\* L'unità di massa atomica ($u$) è uguale a
$1\,660540 times 10^(- 24) upright(" g")$.]

- #strong[Isotopi e simbolo chimico:] gli atomi con lo stesso numero
  atomico ($Z$), ma con numero di massa ($A$) diverso si dicono
  #strong[isotopi] dell'elemento.

  - Il numero di massa $A$ si indica in apice a sinistra del simbolo
    chimico dell'elemento, mentre il numero atomico $Z$ viene indicato
    in basso a sinistra (es. $zws_10^20 upright("Ne")$,
    $zws_10^21 upright("Ne")$, $zws_10^22 upright("Ne")$).

  - Il #strong[simbolo] dell'elemento indica ciascun elemento in base al
    suo nome in lingua moderna, latino o greco.

  - Poiché gli isotopi di un elemento hanno lo stesso numero di protoni
    ed elettroni, le loro proprietà chimiche sono essenzialmente uguali;
    al contrario, le loro differenze di massa portano a differenze
    apprezzabili di proprietà fisiche (soprattutto per gli elementi più
    leggeri).

#figure(
  align(center)[#table(
    columns: 5,
    align: (left,center,center,center,center,),
    [#strong[Elemento]], [#strong[Simbolo]], [#strong[Numero atomico
    $Z$]], [#strong[Numero di massa $A$]], [#strong[Abbondanza $%$]],
    [Idrogeno], [$zws^1 H$], [$1$], [$1$], [$99\,985$],
    [Deuterio], [$zws^2 H$ o $D$], [$1$], [$2$], [$0\,015$],
    [Trizio], [$zws^3 H$ o $T$], [$1$], [$3$], [--- (radioattivo, vita
    brevissima)],
    [Carbonio-12], [$zws^12 C$], [$6$], [$12$], [$98\,90$],
    [Carbonio-13], [$zws^13 C$], [$6$], [$13$], [$1\,10$],
    [Ossigeno-16], [$zws^16 O$], [$8$], [$16$], [$99\,76$],
  )]
  , kind: table
  )

#strong[Esercizio 2.2:] Determinare il numero di protoni, neutroni ed
elettroni dell'isotopo $zws_14^29 upright("Si")$. \
#strong[Svolgimento:]

- Numero di protoni $= Z = 14$

- Numero di neutroni $= A - Z = 29 - 14 = 15$

- Numero di elettroni (atomo neutro) $= Z = 14$

#strong[\(Nota: la slide riporta `[14; 14; 15]` invertendo l'ordine tra
elettroni e neutroni rispetto alla domanda).]

- #strong[Unità di massa atomica e massa atomica:]

  - La massa di un atomo è misurata relativamente alla massa di un
    campione atomico prescelto, che attualmente è l'atomo di carbonio-12
    ($zws^12 C$), la cui massa è posta per definizione esattamente pari
    a $12$ unità di massa atomica.

  - L'#strong[unità di massa atomica] ($upright("u.m.a.")$ o $u$),
    chiamata anche #strong[dalton] ($upright("Da")$), è definita come
    $1 / 12$ della massa dell'atomo di carbonio-12 ed equivale a una
    massa assoluta di:

  $ 1 upright(" u ") = 1 upright(" Da ") = 1\,66 times 10^(- 24) upright(" g ") $

  - Mediante la spettrometria di massa si misura la #strong[massa
    isotopica] (massa di un singolo isotopo di un dato elemento) e
    l'abbondanza relativa di ciascun isotopo.

  - La #strong[massa atomica] di un elemento è la media delle masse dei
    suoi isotopi naturali ponderata secondo le rispettive abbondanze.

#strong[Esercizio 2.3:] L'argento esiste in natura come isotopo
$zws^107 upright("Ag")$ e $zws^109 upright("Ag")$. I due isotopi hanno
massa di $106\,90509 upright(" Da")$ e $108\,90476 upright(" Da")$,
rispettivamente, e abbondanza del $51\,84 %$ e $48\,16 %$. Calcolare la
massa atomica dell'argento esprimendola con 5 C.S. \
#strong[Svolgimento:]
$ m_(upright("Ag ")) = 0\,5184 times 106\,90509 upright(" Da ") + 0\,4816 times 108\,90476 upright(" Da ") = 107\,87 upright(" Da ") $

#strong[Riesame dei postulati della teoria di Dalton con le conoscenze
attuali:]

+ #strong[Tutta la materia è costituita da atomi:] sono però divisibili
  e costituiti da particelle subatomiche più piccole, ma l'atomo resta
  la particella ultima di un elemento a mantenere inalterata la sua
  identità nelle reazioni chimiche.

+ #strong[Gli atomi di un elemento non possono essere convertiti in
  atomi di un altro elemento:] in realtà ciò è possibile, ma occorre
  ricorrere a reazioni nucleari.

+ #strong[Tutti gli atomi di un dato elemento hanno lo stesso numero di
  protoni ed elettroni, e ciò determina il comportamento chimico
  dell'elemento:] esistono però isotopi diversi per ciascun elemento, e
  un campione di elemento viene trattato come se i suoi atomi avessero
  una massa media.

+ #strong[Un composto è una specifica combinazione di numeri interi di
  atomi di più di un elemento:] in realtà esistono alcuni composti che
  possono presentare lievi variazioni dei rapporti dei loro atomi.

=== Tavola periodica degli elementi
Alla metà del XIX secolo si erano accumulate enormi quantità di
informazioni concernenti le reazioni, le proprietà e le masse atomiche
degli elementi. Parecchi ricercatori notarono regolarità ricorrenti o
periodiche e proposero schemi per organizzare gli elementi secondo
alcune proprietà fondamentali.

- Nel 1871 #strong[Dmitrij Mendeleev] pubblicò uno schema che elencava
  gli elementi secondo #strong[massa atomica crescente], con una
  disposizione per cui elementi con proprietà chimiche simili occupavano
  la stessa colonna.

- Ne derivò l'attuale #strong[tavola periodica degli elementi],
  organizzata nel modo seguente:

  - Ogni elemento ha una casella che contiene il numero atomico, il
    simbolo e la massa atomica. Le caselle sono disposte in ordine di
    #strong[numero atomico crescente] da sinistra verso destra.

  - Le caselle sono disposte in un reticolato di #strong[periodi] (righe
    orizzontali, numerate da $1$ a $7$) e #strong[gruppi] (colonne
    verticali, numerate da $1$ a $18$).

  - I gruppi $1$, $2$ e $13$--$18$ contengono gli #strong[elementi dei
    gruppi principali], mentre i gruppi $3$--$12$ contengono gli
    #strong[elementi di transizione]. Al di sotto del corpo principale
    della tavola sono collocate due serie di #strong[elementi di
    transizione interna] (lantanidi nel periodo $6$ e attinidi nel
    periodo $7$), che si inseriscono tra gli elementi del gruppo $3$ e
    del gruppo $4$.

//#figure(image("/image6.png", width: 80.0%),
  caption: [
    Tavola periodica degli elementi completa con distinzione cromatica
    tra metalli dei gruppi principali, metalli di transizione, metalli
    di transizione interna (lantanidi e attinidi), metalloidi e non
    metalli.
  ]
)

#strong[Classificazione degli elementi:]

- #strong[Metalli:] comprendono molti elementi dei gruppi principali e
  tutti gli elementi di transizione e di transizione interna. Sono
  generalmente solidi lucenti a temperatura ambiente (fa eccezione il
  mercurio, liquido), conducono bene il calore e l'elettricità, e
  possono essere lavorati e trasformati in lamine (#strong[malleabili])
  e in fili (#strong[duttili]).

- #strong[Non metalli:] situati in alto a destra nella tavola periodica,
  sono gas o solidi fragili (oltre al bromo, liquido) e conducono male
  il calore e l'elettricità.

- #strong[Semimetalli (o metalloidi):] sono gli elementi collocati lungo
  la linea a scalinata sul lato destro della tavola periodica e sono
  caratterizzati da proprietà intermedie.

#strong[Nomenclatura dei gruppi principali:]

- #strong[Metalli alcalini:] gruppo $1$, eccetto l'idrogeno.

- #strong[Metalli alcalino-terrosi:] gruppo $2$.

- #strong[Alogeni:] gruppo $17$.

- #strong[Gas nobili:] gruppo $18$.

Gli elementi di uno stesso #strong[gruppo] hanno proprietà chimiche
simili, mentre quelli di uno stesso #strong[periodo] hanno proprietà
chimiche differenti.

//#figure(image("/image7.png", width: 70.0%),
  caption: [
    Campioni fisici e posizione sulla tavola periodica di alcuni metalli
    (cromo, rame, cadmio, piombo, bismuto), metalloidi (boro, silicio,
    arsenico, antimonio, tellurio) e non metalli (carbonio/grafite,
    zolfo, cloro, bromo, iodio).
  ]
)

=== Composti: introduzione al legame chimico
La grande maggioranza degli elementi esiste in natura in combinazione
chimica con altri elementi:

- Pochi elementi esistono liberi (monoatomici) in natura:
  $upright("He")$, $upright("Ne")$, $upright("Ar")$, $upright("Kr")$,
  $upright("Xe")$ e $upright("Rn")$.

- Altri (es. $O$) possono esistere sia nei composti che come molecole
  non combinate (es. $O_2$).

- Alcuni elementi possono esistere sia combinati che non: $C$,
  $upright("Cu")$, $upright("Ag")$, $upright("Au")$, $upright("Pt")$.

Gli elettroni degli atomi degli elementi interagenti intervengono nella
formazione dei composti secondo due modi:

+ #strong[Trasferimento] di uno o più elettroni dagli atomi di un
  elemento a quelli di un altro, per formare #strong[composti ionici].

+ #strong[Condivisione] di elettroni tra atomi di differenti elementi,
  per formare #strong[composti covalenti].

Questi processi generano #strong[legami chimici], ossia le forze che
tengono uniti gli atomi degli elementi in un composto.

#strong[Composti ionici e legame ionico:]

- I #strong[composti ionici] sono costituiti da #strong[ioni], ossia
  particelle cariche che si formano quando un atomo acquista o cede uno
  o più elettroni.

- Il tipo più semplice è il #strong[composto ionico binario], costituito
  soltanto da due elementi, che si forma generalmente quando un metallo
  reagisce con un non metallo:

  - il metallo cede un certo numero dei suoi elettroni e diventa un
    #strong[catione] (ione carico positivamente);

  - il non metallo acquista elettroni e diventa un #strong[anione] (ione
    carico negativamente).

  I cationi e gli anioni così formati si attraggono reciprocamente
  mediante forze elettrostatiche formando il composto ionico (es.
  trasferimento di $1 upright(" e")^(-)$ dall'atomo di sodio
  $upright("Na")$ all'atomo di cloro $upright("Cl")$ per formare gli
  ioni $upright("Na")^(+)$ e $upright("Cl")^(-)$ nel cristallo di
  cloruro di sodio).

- La #strong[forza del legame ionico] dipende dall'entità complessiva di
  attrazioni e repulsioni ed è descritta dalla #strong[legge di
  Coulomb]. Ne deriva che:

  - gli ioni con cariche maggiori si attraggono (o respingono) più
    intensamente rispetto agli ioni con cariche minori;

  - gli ioni più piccoli si attraggono (o respingono) più intensamente
    rispetto agli ioni più grandi.

- #strong[Neutralità e previsione della carica degli ioni:] i composti
  ionici sono elettricamente neutri (carica netta nulla) perché
  contengono lo stesso numero di cariche positive e negative.

  - Nella tavola periodica, i metalli cedono elettroni e i non metalli
    acquistano elettroni per formare ioni con lo stesso numero di
    elettroni del #strong[gas nobile più vicino] (i gas nobili
    possiedono una stabilità, cioè bassa reattività, correlata con il
    numero e la disposizione dei loro elettroni; es. $upright("Cl")$
    acquista $1 upright(" e")^(-)$ per raggiungere la stabilità di
    $upright("Ar")$).

  - In generale:

    - gli elementi del gruppo $1$ cedono $1$ elettrone (formando cationi
      $M^(+)$);

    - gli elementi del gruppo $2$ cedono $2$ elettroni (formando cationi
      $M^(2 +)$);

    - gli elementi del gruppo $17$ acquistano $1$ elettrone (formando
      anioni $X^(-)$);

    - $upright("Al")$ cede $3$ elettroni ($upright("Al")^(3 +)$), $O$ e
      $S$ ne acquistano $2$ ($O^(2 -)$, $S^(2 -)$), $N$ ne acquista $3$
      ($N^(3 -)$).

//#figure(image("/image8.png", width: 70.0%),
  caption: [
    Schema della formazione di $upright("NaCl")$ per trasferimento
    elettronico da $upright("Na")$ a $upright("Cl")$ con reticolo
    cristallino, e rappresentazione cilindrica della tavola periodica
    con le cariche degli ioni monoatomici rispetto ai gas nobili.
  ]
)

#strong[Composti covalenti e ioni poliatomici:]

- I #strong[composti covalenti] si formano quando gli elementi
  condividono elettroni, il che avviene di solito tra non metalli.

  - Considerando due atomi di $H$ separati che si avvicinano, il nucleo
    di ciascuno attrae sempre più intensamente l'elettrone dell'altro
    atomo finché, a una certa distanza ottimale tra i nuclei, i due
    atomi formano un #strong[legame covalente] costituito
    dall'attrazione reciproca tra una coppia di elettroni e i due
    nuclei.

  - Ne risulta una molecola $H_2$ in cui entrambi gli elettroni sono
    condivisi tra i due atomi. Lo stesso accade per le molecole
    elementari $N_2$, $O_2$, $F_2$, $upright("Cl")_2$,
    $upright("Br")_2$, $I_2$, $P_4$, $S_8$, $upright("Se")_8$.

  - Analogamente, atomi di differenti elementi condividono elettroni per
    formare le molecole di un composto covalente (es. fluoruro di
    idrogeno $upright("HF")$, acqua $H_2 O$).

- #strong[Precisazioni su molecole e ioni poliatomici:]

  - Mentre la maggior parte delle sostanze covalenti è costituita da
    molecole, in condizioni ordinarie #strong[non esistono molecole in
    un campione di un composto ionico].

  - Molti composti ionici contengono #strong[ioni poliatomici],
    costituiti da due o più atomi legati covalentemente che presentano
    una carica netta positiva o negativa (es. $upright("CaCO")_3$
    contiene ioni monoatomici $upright("Ca")^(2 +)$ e ioni poliatomici
    $upright("CO")_3^(2 -)$\; quest'ultimo è costituito da un atomo di
    $C$ legato covalentemente a tre atomi di $O$, con due elettroni
    addizionali che conferiscono allo ione la carica $2 -$).

//#figure(image("/image9.png", width: 70.0%),
  caption: [
    Formazione del legame covalente in $H_2$ con bilanciamento delle
    forze attrattive/repulsive, modelli di $upright("HF")$ e $H_2 O$, e
    struttura cristallina di $upright("CaCO")_3$ con lo ione poliatomico
    carbonato $upright("CO")_3^(2 -)$.
  ]
)

=== Formule chimiche
In una #strong[formula chimica], i simboli degli elementi e i pedici
indicano la specie e il numero di atomi presenti nella più piccola unità
della sostanza. Esistono:

- #strong[Formula minima:] mostra il numero relativo di atomi di ciascun
  elemento nel composto (es. per il perossido di idrogeno è
  $upright("HO")$).

- #strong[Formula molecolare:] mostra il numero reale di atomi di
  ciascun elemento in una molecola del composto (es. per il perossido di
  idrogeno è $H_2 O_2$).

- #strong[Formula di struttura:] mostra il numero di atomi e i legami
  tra essi, cioè le posizioni reciproche e le connessioni tra atomi
  nella molecola (es. per il perossido di idrogeno è $H - O - O - H$).

=== Numero di ossidazione
Per identificare quale atomo ceda o acquisti elettroni si ricorre al
#strong[numero (o stato) di ossidazione] ($upright("N.O.")$), che
corrisponde alla carica che l'atomo avrebbe se gli elettroni non fossero
condivisi, bensì fossero trasferiti completamente. Il numero di
ossidazione deve sempre essere riportato col #strong[segno] (positivo o
negativo), a meno che non valga zero.

#strong[Regole per l'assegnazione del $upright("N.O.")$:]

- #strong[Sostanze elementari:] $upright("N.O. ") = 0$ (es. $K$,
  $upright("Cl")_2$).

- #strong[Ossigeno:] $upright("N.O. ") = - 2$, tranne quando si trova in
  un perossido ($- 1$), in un superossido ($- 1 / 2$) o in
  $upright("OF")_2$ ($+ 2$).

- #strong[Idrogeno:] $upright("N.O. ") = + 1$, tranne quando è legato a
  un metallo o al boro $B$ ($- 1$).

- #strong[Ioni monoatomici:]
  $upright("N.O. ") = upright(" carica dello ione")$ (es. $+ 2$ per
  $upright("Ca")^(2 +)$).

- #strong[Elementi del gruppo 1:] $upright("N.O. ") = + 1$.

- #strong[Elementi del gruppo 2:] $upright("N.O. ") = + 2$.

- #strong[Elementi del gruppo 17:] $upright("N.O. ") = - 1$, tranne
  quando sono legati a $O$ o ad alogeni superiori nel gruppo
  ($+ 1\,+ 3\,+ 5\,+ 7$).

- #strong[Elementi con $upright("N.O.")$ da ricordare:] $F$ ($- 1$),
  $upright("Ag")$ ($+ 1$), $upright("Cd")$ ($+ 2$), $upright("Zn")$
  ($+ 2$), $upright("Al")$ ($+ 3$), $B$ ($+ 3$), $upright("Si")$
  ($+ 4$).

- #strong[Molecole neutre:]

$ sum upright(" N.O. ") = 0 $

- #strong[Ioni poliatomici:]

$ sum upright(" N.O. ") = upright(" carica dello ione ") $

#strong[Esercizio 2.4:] Assegnare i $upright("N.O.")$ in
$upright("CsNO")_2$ e $upright("HPO")_4^(2 -)$. \ #strong[Svolgimento:]

- Per $upright("CsNO")_2$ (molecola neutra,
  $sum upright(" N.O. ") = 0$): $upright("Cs")$ (gruppo 1) ha
  $upright("N.O. ") = + 1$\; $O$ ha $upright("N.O. ") = - 2$. Quindi per
  $N$:

$ \(+ 1\)+ upright(" N.O.")\(N\)+ 2 times\(- 2\)= 0 arrow.r upright(" N.O.")\(N\)= + 3 quad arrow.r quad\[+ 1\,+ 3\,- 2\] $

- Per $upright("HPO")_4^(2 -)$ (ione poliatomico con carica $- 2$,
  $sum upright(" N.O. ") = - 2$): $H$ ha $upright("N.O. ") = + 1$\; $O$
  ha $upright("N.O. ") = - 2$. Quindi per $P$:

$ \(+ 1\)+ upright(" N.O.")\(P\)+ 4 times\(- 2\)= - 2 arrow.r upright(" N.O.")\(P\)= + 5 quad arrow.r quad\[+ 1\,+ 5\,- 2\] $

=== Nomenclature e classi di composti
La #strong[nomenclatura] permette di identificare i composti mediante un
nome specifico, definito a partire dalla formula della sostanza. Si fa
riferimento a:

- #strong[Nomenclatura IUPAC] (#strong[International Union of Pure and
  Applied Chemistry]): consente di evidenziare, in modo chiaro ed
  immediato, la relazione tra il nome di un composto e la sua formula
  chimica.

- #strong[Nomenclatura tradizionale:] è basata sulla divisione degli
  elementi in metalli e non metalli, e tiene conto del $upright("N.O.")$
  degli elementi.

La chimica generale definisce #strong[10 classi di composti inorganici]:

#figure(
  align(center)[#table(
    columns: 3,
    align: (center,center,center,),
    [#strong[COMPOSTI BINARI]], [], [#strong[COMPOSTI TERNARI]],
    [Ossidi basici], [$+ H_2 upright("O ") arrow.r$], [Idrossidi],
    [Ossidi acidi], [$+ H_2 upright("O ") arrow.r$], [Ossiacidi],
    [Perossidi], [], [],
    [Idracidi], [], [],
    [Idruri metallici], [], [],
    [Idruri covalenti], [], [],
    [Sali binari], [], [],
    [], [], [Sali ternari],
  )]
  , kind: table
  )


= Capitolo 2: Leggi ponderali e modelli atomici

*Lavoisier: legge della conservazione della massa* \
"La massa totale dei prodotti formati in una reazione chimica è esattamente uguale alla massa totale dei reagenti."

*Proust: legge della composizione definita e costante* \
"Una certa massa di una sostanza pura contiene un gran numero di particelle identiche, composte dallo stesso numero di elementi disposti nello stesso modo (in rapporti di massa definiti e costanti)."

*Dalton: legge delle proporzioni multiple* \
"Se A e B reagiscono per formare 2 composti, le diverse masse di B che si combinano con una stessa massa di A possono essere espresse come rapporti di numeri interi piccoli." \
Postulati di Dalton:
+ *(FALSO)* Tutta la materia è costituita da ATOMI indivisibili, che non possono essere né creati né distrutti e sono eterni.
+ *(FALSO)* Gli atomi di un elemento non possono trasformarsi in atomi di altri elementi (falso per le reazioni nucleari, vero nelle reazioni chimiche dove possono solo ricombinarsi tra loro).
+ *(FALSO)* Gli atomi di un elemento sono tutti identici, ma diversi da quelli di ogni altro elemento (falso per l'esistenza degli isotopi).
+ *(VERO)* I composti sono formati dalla combinazione di specifici rapporti di atomi di elementi diversi.

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
#v(1em)


#set page(paper: "a4", margin: 2cm)
#set text(lang: "it", size: 11pt)
#set par(justify: true)
#set math.equation(numbering: "(1)")
#set heading(numbering: none)

#import "@preview/chemformula:0.1.3": ch

= Peso atomico, peso molecolare e mole

*Peso atomico* $arrow.r$ è la massa di un atomo, indicata in $"uma"$. Tiene conto dell'abbondanza naturale degli isotopi facendo una media pesata:
$ attach(ch("C"), tl: 12) &= 12 "uma" times 0,989 &&= 11,868 \
attach(ch("C"), tl: 13) &= 13 "uma" times 0,011 &&= 0,143 \
"Totale" & &&= 12,011 "uma" $

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
  - $\"n.o.\" =$ numero di $e^-$ ceduti o acquisiti durante la formazione di un composto.
  - *Agente ossidante:* è l'elemento che si riduce.
  - *Agente riducente:* è l'elemento che si ossida.

== Capitolo 4

= Spettri di emissione e assorbimento

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    L'atomo eccitato emette frequenze luminose speciali, tipiche di ciascun atomo. Gli stessi atomi possono assorbire (*spettro di assorbimento*) le stesse frequenze che sono in grado di emettere (*spettro di emissione*).
    - *Spettri di emissione:* emettono onde elettromagnetiche appartenenti allo spettro visibile, ultravioletto e infrarosso.
  ],
  [
    #image("ac143232-a97e-4b60-942a-8e6e8ba0f7b2-21_141_123_989_181", width: 70%)
  ]
)
#v(1em)

- *Balmer (1885):* fu il $1^degree$ a studiare l'emissione dell'#ch("H") nella regione della luce visibile riconoscendone un andamento regolare (correlazione tra lunghezza d'onda $lambda$ e intervalli spettrali).
- *Legge di Rydberg:*
$ 1/lambda = underbrace(R_H, 1.09678 dot 10^7 "m"^(-1)) (1/n_1^2 - 1/n_2^2) wide n in NN^+ $
- *CORPO NERO:* sostanza capace di assorbire su tutto lo spettro di frequenze. Emette tutto lo spettro quando viene scaldato. Presenta una distribuzione asimmetrica dell'energia emessa; la massima intensità si sposta a frequenze maggiori all'aumentare della temperatura.
- Non si spiegano con le teorie classiche.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    *Teoria della quantizzazione dell'energia (Planck, inizio 1900):* \
    Quantum di energia:
    $ E = h nu $
    dove $nu$ è la frequenza e $h$ è la costante di Planck ($6,626 dot 10^(-34) "J" dot "s"$).
  ],
  [
    #image("ac143232-a97e-4b60-942a-8e6e8ba0f7b2-21_489_941_6203_4152", width: 70%)
  ]
)
#v(1em)

= Modello di Bohr

$ Delta E = h nu $

- Per il moto dell'elettrone sono permessi solo alcuni stati stazionari in orbite circolari aventi un valore di energia costante (*LIVELLI ENERGETICI DISCRETI*, identificati da $n$, numero quantico principale).
- L'energia potenziale aumenta allontanandosi dal nucleo (e avvicinandosi perde un fotone).
- L'*eccitazione* di un elettrone comporta l'assorbimento di $E$ e il passaggio ad un livello energetico superiore. Mentre l'*emissione* svolge l'operazione inversa:
  - salto verso il livello $n = 1$: raggi ultravioletti (serie di Lyman);
  - livello $n = 2$: spettro visibile (serie di Balmer);
  - livello $n = 3$: infrarosso (serie di Paschen).
- Se l'elettrone rimane in un'orbita la sua energia è costante e *non emette $E$!*
- *Perché gli elettroni non cadono nel nucleo?*
  - Gli elettroni sono in equilibrio quando: $F_"centrifuga" = F_"elettrostatica"$.

= Numeri quantici

- $n =$ *numero quantico principale* $arrow.r$ identifica il livello energetico e la dimensione dell'orbitale.
- $l =$ *numero quantico angolare (secondario)* $arrow.r$ individua sottolivelli a diverse energie all'interno dello stesso $n$ e determina la forma dell'orbitale:
  $ 0 lt.eq l lt.eq n - 1 $
- $m =$ *numero quantico magnetico* $arrow.r$ determina l'orientamento dell'orbitale rispetto agli assi:
  $ -l lt.eq m lt.eq +l $
- $s =$ *spin elettronico* ($+1/2; -1/2$) $arrow.r$ l'unico modo per cui $2 e^-$ possano stare nello stesso orbitale è che abbiano spin opposto (contribuisce a compensare la loro forza repulsiva).

Ogni elettrone è descritto completamente ed univocamente dai 4 numeri quantici ($3$ per l'orbitale $+ 1$ per l'elettrone).
- Numero massimo di orbitali nel livello $n = n^2$
- Numero massimo di elettroni nel livello $n = 2 n^2$

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    *Principio di indeterminazione di Heisenberg e dualismo onda-particella (de Broglie):* \
    È impossibile conoscere esattamente e contemporaneamente posizione e velocità di un elettrone perché è in continuo movimento. Si introduce il concetto di *probabilità di presenza* (orbitale), non di posizione/traiettoria perfetta.
  ],
  [
    #image("ac143232-a97e-4b60-942a-8e6e8ba0f7b2-21_838_1901_3982_6866", width: 70%)
  ]
)
#v(1em)

#align(center)[
  #table(
    columns: 6,
    [$n$ (dimensione)], [$l$ (forma)], [$m$ (orientamento)], [Nome], [$N^degree$ orbitali], [$N^degree$ tot $e^-$],
    [1], [0], [0], [$1s$], [1], [2],
    [2], [0], [0], [$2s$], [1], [8],
    [], [1], [$-1, 0, 1$], [$2p$], [3], [],
    [3], [0], [0], [$3s$], [1], [18],
    [], [1], [$-1, 0, 1$], [$3p$], [3], [],
    [], [2], [$-2, -1, 0, 1, 2$], [$3d$], [5], [],
    [4], [0], [0], [$4s$], [1], [32],
    [], [1], [$-1, 0, 1$], [$4p$], [3], [],
    [], [2], [$-2, -1, 0, 1, 2$], [$4d$], [5], [],
    [], [3], [$-3, -2, -1, 0, 1, 2, 3$], [$4f$], [7], [],
    [$n$], [$0 lt.eq l < n$], [$-l lt.eq m lt.eq l$], [$-$], [$n^2$], [$2n^2$],
  )
]

= Orbitali

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    - $1s$: ha forma sferica
    - $2s$: ha forma sferica ma bimodale (con superficie nodale)
    - Orbitali $p$ ($2p, 3p, 4p$): forma bilobata ($3$ orbitali)
    - Orbitali $d$ ($3d$): $5$ orbitali (4 a 4 lobi + 1 bilobato con anello)
    - Orbitali $f$ ($4f$): $7$ orbitali complessi
  ],
  [
    #image("ac143232-a97e-4b60-942a-8e6e8ba0f7b2-21_619_1417_6717_7011", width: 70%)
    #image("ac143232-a97e-4b60-942a-8e6e8ba0f7b2-21_958_1881_7271_6667", width: 70%)
    #image("ac143232-a97e-4b60-942a-8e6e8ba0f7b2-22_542_533_4948_1947", width: 70%)
    #image("ac143232-a97e-4b60-942a-8e6e8ba0f7b2-22_1477_3428_5813_2013", width: 70%)
  ]
)
#v(1em)

== Capitolo 5a

= Carica nucleare effettiva e configurazione elettronica

$ Z_"eff" = Z - S $
dove $Z$ è il numero atomico e $S$ è la *costante di schermo* (più è piccola, maggiore è la capacità degli $e^-$ di penetrare verso il nucleo).

*Regole di Slater per il calcolo di $S$:*
- $e^-$ di gruppi superiori rispetto a quello preso in esame: contributo $0$ (non schermano);
- se l'$e^-$ in esame appartiene a un gruppo $n s, n p$:
  - $+0,35$ per ogni altro $e^-$ dello stesso gruppo $n s, n p$ ($+0,30$ se appartiene a $1s$);
  - $+0,85$ per ogni $e^-$ del guscio $(n - 1)$;
  - $+1,00$ per ogni $e^-$ del guscio $(n - 2)$ o inferiori;
- se l'$e^-$ in esame appartiene a un gruppo $n d, n f$:
  - $+0,35$ per ogni altro $e^-$ dello stesso gruppo $n d, n f$;
  - $+1,00$ per ogni $e^-$ di tutti i gruppi inferiori.

*Configurazione elettronica:*
- *Principio di Aufbau:* gli $e^-$ tendono a riempire gli orbitali privilegiando quelli a energia inferiore (l'ordine di occupazione degli orbitali è tale da minimizzare l'energia: $1s, 2s, 2p, 3s, 3p, 4s, 3d, 4p, 5s, 4d, dots.h$).
- *Principio di esclusione di Pauli:* al massimo un orbitale ospita $2 e^-$, aventi spin opposto.
- *Regola di Hund:* se più configurazioni sono possibili in orbitali degeneri, la più stabile sarà quella con il maggior numero di $e^-$ spaiati a spin parallelo (es. $1s^2 2s^2 2p^3$: $[arrow.t arrow.b] [arrow.t arrow.b] [arrow.t][arrow.t][arrow.t]$).

*Notazione di Lewis per gli elettroni di valenza (2° periodo):*

#align(center)[
  #table(
    columns: 3,
    [$e^-$ di valenza], [Configurazione Elettronica], [Simbolo di Lewis],
    [1], [$2s^1$], [$ch("Li") dot$],
    [2], [$2s^2$], [$dot ch("Be") dot$],
    [3], [$2s^2 2p^1$], [$dot attach(ch("B"), t: dot) dot$],
    [4], [$2s^2 2p^2$], [$dot attach(ch("C"), t: dot, b: dot) dot$],
    [5], [$2s^2 2p^3$], [$colon attach(ch("N"), t: dot, b: dot) dot$],
    [6], [$2s^2 2p^4$], [$colon attach(ch("O"), t: colon, b: dot) dot$],
    [7], [$2s^2 2p^5$], [$colon attach(ch("F"), t: colon, b: colon) dot$],
    [8], [$2s^2 2p^6$], [$colon attach(ch("Ne"), t: colon, b: colon) colon$ (Molto stabile: ottetto)],
  )
]

== Capitolo 5b

= Il sistema periodico degli elementi

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    *Legge periodica* $arrow.r$ stabilisce che gli elementi, quando vengono messi in ordine di massa atomica o numero atomico, mostrano una periodicità delle proprietà.
    - 1869: Mendeleev in Russia e Meyer in Germania.

    *Proprietà:*
    - Gli elementi di uno stesso *periodo* andando da sx a dx passano da solidi a gassosi, e dai più metallici a quelli con le caratteristiche più da non metalli.
    - Gli elementi dello stesso *gruppo* hanno lo stesso numero di $e^-$ nel guscio esterno e anche analoghe proprietà chimico-fisiche (aspetto delle sostanze allo stato elementare, reattività, reazioni di sintesi con composti, tipo e numero di legami).
  ],
  [
    #image("ac143232-a97e-4b60-942a-8e6e8ba0f7b2-24_2876_6556_586_185", width: 70%)
  ]
)
#v(1em)

*Proprietà periodiche:*
- *Raggio atomico* [$r_a$] (#ch("He") $arrow.r$ #ch("Fr"): cresce in diagonale verso il basso a sinistra $arrow.bl$):
  - calcolato dividendo a metà la distanza tra 2 nuclei;
  - *raggio ionico:* catione (riduce il raggio rispetto all'atomo neutro) - anione (aumenta il raggio).
- *Energia di ionizzazione* [$E_i$] (diminuisce all'aumentare del raggio, cresce da #ch("Fr") $arrow.r$ #ch("He") $arrow.tr$):
  - è l'energia necessaria per allontanare l'$e^-$ più esterno di un elemento allo stato gassoso e formare un catione;
  - l'andamento non è del tutto regolare e nelle ionizzazioni successive presenta un aumento drastico (salto) quando vengono rimossi $e^-$ di gusci interni.
- *Affinità elettronica* [$A_e$] (diminuisce all'aumentare del raggio, cresce verso l'alto a destra $arrow.tr$):
  - è l'energia che si sviluppa quando un atomo neutro gassoso acquista un elettrone diventando un anione (forza con cui l'$e^-$ è trattenuto unito all'atomo).
- *Elettronegatività* [$chi$] (#ch("Cs") $arrow.r$ #ch("F"): cresce in diagonale verso l'alto a destra $arrow.tr$):
  - capacità di attrarre gli elettroni condivisi tra 2 atomi durante i legami;
  - $chi = (abs(E_i) + abs(E_(A e))) / 2 arrow.r$ elettronegatività secondo *Mulliken*;
  - $abs(chi_A - chi_B) = sqrt(Delta)$ ($Delta =$ energia di risonanza ionico-covalente) $arrow.r$ elettronegatività secondo *Pauling*, con:
    $ Delta = D_(A B) - sqrt(D_(A A) dot D_(B B)) quad (D = "energia di dissociazione del legame molecolare biatomico") $

= I gruppi della tavola periodica

== Metalli alcalini (1° gruppo)

- Configurazione elettronica: $n s^1$
- Elevata reattività: reagiscono rapidamente con l'aria umida, con #ch("O2") formano ossidi basici (perossidi/superossidi), con #ch("H2") idruri, con gli acidi dei sali e con #ch("H2O") gli idrossidi $+$ #ch("H2").
- Producono cationi (ioni) $M^+$.

== Metalli alcalino-terrosi (2° gruppo)

- Configurazione elettronica: $n s^2$
- Reattività simile agli alcalini, ma minore: con #ch("O2") formano ossidi basici, con #ch("H2") idruri e con gli acidi dei sali.
- Producono cationi (ioni) $M^(2+)$.

== Gruppo 3° o 13°

- Configurazione elettronica: $n s^2 n p^1$
- Il carattere metallico cresce lungo il gruppo: #ch("B") (unico non metallo/semimetallo) con #ch("O2") forma anidridi, mentre tutti gli altri con #ch("O2") formano ossidi.
- #ch("B") forma legami prevalentemente covalenti, gli altri elementi del gruppo producono cationi $M^(3+)$.

== Gruppo 4° o 14°

- Configurazione elettronica: $n s^2 n p^2$
- Il carattere metallico cresce lungo il gruppo: #ch("C") e #ch("Si") (non metalli/semimetalli) con #ch("O2") formano anidridi, mentre gli altri con #ch("O2") formano ossidi.
- #ch("C") e #ch("Si") possono produrre formalmente anioni $M^(4-)$, mentre gli altri producono cationi $M^(4+)$ (e $M^(2+)$).
- #ch("Si") e #ch("Ge") sono semiconduttori intrinseci.

== Gruppo 5° o 15°

- Configurazione elettronica: $n s^2 n p^3$
- Il carattere metallico cresce lungo il gruppo: #ch("N"), #ch("P") e #ch("As") con #ch("O2") formano anidridi, mentre gli altri con #ch("O2") formano ossidi. [#ch("N") forma molecole biatomiche #ch("N2")].

== Gruppo 6° o 16° (Calcogeni)

- Configurazione elettronica: $n s^2 n p^4$
- Il carattere metallico cresce lungo il gruppo: #ch("Po") (unico metallo) con #ch("O2") forma un ossido, mentre gli altri con #ch("O2") formano anidridi.
- Producono principalmente anioni $M^(2-)$.

== Alogeni (7° o 17° gruppo)

- Configurazione elettronica: $n s^2 n p^5$
- Elevata reattività: con #ch("O2") formano anidridi, con i metalli formano i sali.
- Producono anioni (ioni) $X^-$.

== Gas nobili (8° o 18° gruppo)

- Configurazione elettronica: $n s^2 n p^6$ ($1s^2$ per #ch("He"))
- Bassa reattività: nulla per #ch("He"), #ch("Ne"), #ch("Ar"); alcuni composti possibili per #ch("Kr"), #ch("Xe"), #ch("Rn").

== Capitolo 6a

= I legami chimici

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    Gli atomi tendono a combinarsi per arrivare ad un sistema finale più stabile di quello iniziale (a minor contenuto energetico):
    - $Delta chi lt.eq 0,4$: legame covalente puro (apolare)
    - $0,4 < Delta chi lt.eq 1,7 - 1,9$: legame covalente polare
    - $Delta chi > 1,9$: legame ionico
  ],
  [
    #image("ac143232-a97e-4b60-942a-8e6e8ba0f7b2-25_1550_2525_1959_6722", width: 70%)
    #image("ac143232-a97e-4b60-942a-8e6e8ba0f7b2-26_2321_7528_2925_613", width: 70%)
  ]
)
#v(1em)

- *Legame ionico* $arrow.r$ gli $e^-$ vengono trasferiti da un atomo a bassa energia di ionizzazione (elettropositivo) ad uno ad elevata affinità elettronica (elettrodonegativo). I composti sono comunque complessivamente neutri. Gli ioni tendono a circondarsi di ioni di segno opposto formando un reticolo cristallino. La formazione del legame porta ad un vantaggio energetico:
  $ ch("Li+ + F- -> LiF") $
  - *Energia reticolare:* minore è il raggio, maggiore è l'energia di attrazione coulombiana:
    $ F = 1/(4 pi epsilon_0) dot (Q_1 dot Q_2)/r^2 $
  - *Proprietà meccaniche:* legame forte, ma i materiali sono fragili e subiscono una frattura lungo i piani di sfaldamento (perché uno scorrimento avvicina ioni dello stesso segno che si respingono).

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    - *Legame covalente* $arrow.r$ gli $e^-$ sono condivisi e appartengono ad entrambi gli atomi:
      - *omopolare (apolare)* $arrow.r$ 2 atomi uguali;
      - *polare* $arrow.r$ atomi diversi;
      - rappresentabile come sovrapposizione di orbitali.
    - *Carattere ionico:* il dipolo nasce per la differenza di elettronegatività, rinforza il legame e aumenta la percentuale di carattere ionico:
      $ % "C.I." = (1 - e^(-(Delta chi / 2)^2)) dot 100 quad ("Pauling") $
      $ % "C.I." = mu_"effettivo" / mu_"ionico" dot 100 quad (mu = "momento di dipolo") $
  ],
  [
    #image("ac143232-a97e-4b60-942a-8e6e8ba0f7b2-26_449_7487_7929_874", width: 70%)
  ]
)
#v(1em)

- *Legame metallico* $arrow.r$ gli $e^-$ di valenza non sono legati ad un particolare atomo ma sono condivisi tra tutti gli atomi e delocalizzati (*mare di $e^-$*).
  - La forza del legame cresce all'aumentare degli elettroni che ogni atomo mette in condivisione ($n^degree$ di valenza).
- *Legame covalente coordinato (dativo)* $arrow.r$ i $2 e^-$ di legame vengono messi in condivisione da un atomo solo (donatore). L'atomo ricevente (accettore) deve avere un orbitale vuoto libero.

*Energia e lunghezza di legame:*
+ La coesione della molecola risulta dall'attrazione elettrostatica fra nuclei ed elettroni.
+ La lunghezza di legame è la distanza tra i centri di due atomi legati insieme.
+ Distanza ottimale = energia minima (attrazione $e^--$nuclei = repulsione fra nuclei e fra $e^-$).
+ Lunghezze: $"legame polare" < "legame apolare"$; $"legame triplo" < "legame doppio" < "legame singolo"$.
+ $"Energia di legame" = E_"molecola" - E_"atomi isolati"$.
+ Più il legame è forte, più le distanze sono piccole (a parità di dimensione).
+ I legami multipli non hanno energia esattamente multipla di quella del legame singolo.

== Capitolo 6b

= Ordine di legame e strutture di Lewis

*Ordine di legame [secondo Lewis]:* \
$arrow.r$ numero di doppietti elettronici di legame condivisi fra 2 atomi:
$ ch("H-H") quad ("O.L." = 1) wide ch("|O=O|") quad ("O.L." = 2) wide ch("|N#N|") quad ("O.L." = 3) $

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    *Strati di valenza espansi:*
    - Solo per non metalli (atomi centrali) del periodo 3 o superiore (hanno a disposizione orbitali $d$).
    - Possono accogliere più di $8 e^-$ intorno all'atomo centrale.
    - Sono gli elementi che presentano una covalenza variabile (attitudine a formare un numero variabile di legami covalenti). Deve essere un atomo abbastanza grande (es. #ch("PCl5"), #ch("PCl3"), #ch("SF6")).
  ],
  [
    #image("ac143232-a97e-4b60-942a-8e6e8ba0f7b2-27_1096_1263_5953_628", width: 70%)
    //#image("smile-27eec9adf62981372ef58f3ed76185a6879df55e", width: 70%)
    #image("ac143232-a97e-4b60-942a-8e6e8ba0f7b2-27_568_1636_5741_3777", width: 70%)
  ]
)
#v(1em)

= Carica formale

$ "C.F." = e^-_"valenza" - (e^-_"coppie solitarie" + 1/2 e^-_"condivisi") $

Esempio per il monossido di carbonio (#ch("CO")):
- Struttura $|ch("C=O") underline(|)$:
  $ "C.F."(ch("C")) &= 4 - (2 + 1/2 dot 4) = 0 \
  "C.F."(ch("O")) &= 6 - (4 + 1/2 dot 4) = 0 quad ("Più plausibile per le cariche formali, ma ottetto incompleto su C!") $
- Struttura $|ch("C#O")|$:
  $ "C.F."(ch("C")) &= 4 - (2 + 1/2 dot 6) = -1 \
  "C.F."(ch("O")) &= 6 - (2 + 1/2 dot 6) = +1 quad ("Più simile al vero perché rispetta la regola dell'ottetto!") $

= Risonanza

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    A volte esistono più modi per rappresentare una formula di struttura di una molecola, soprattutto se sono presenti doppi legami (es. Ozono #ch("O3"), ione carbonato #ch("CO3^2-"), Benzene).
    - Il doppio legame dovrebbe essere più corto perché più intenso, ma nell'ibrido di risonanza tutti i legami sono uguali e intermedi.
  ],
  [
    #image("ac143232-a97e-4b60-942a-8e6e8ba0f7b2-27_718_1879_10138_1387", width: 70%)
    #image("ac143232-a97e-4b60-942a-8e6e8ba0f7b2-27_804_2804_10173_3729", width: 70%)
  ]
)
#v(1em)

- La risonanza si può verificare solo quando gli atomi giacciono sullo stesso piano (o quasi): ogni variazione della struttura complanare impedisce o limita la risonanza.
- La risonanza è un fenomeno di delocalizzazione elettronica ($e^-$ di legami $pi$).

*Ordine di legame nella risonanza:*
+ Formule limite equivalenti:
  $ "O.L." = ("coppie complessive di legame")/("n° atomi periferici con cui fa legami") wide ("es. per " ch("CO3^2-"): "O.L." = 4/3) $
+ Strutture non equivalenti: l'ibrido assomiglierà sempre al più stabile rappresentando prevalentemente il suo O.L.

*Carica formale nella risonanza:*
+ Formule limite equivalenti:
  $ "C.F." = ("somma cariche formali nelle diverse formule")/("n° di formule limite") wide ("es. per " ch("CO3^2-"): "C.F."(ch("O")) = -2/3) $
+ Strutture non equivalenti: l'ibrido assomiglierà sempre al più stabile rappresentando prevalentemente la sua carica formale.

= Radicali e paramagnetismo

Non sempre gli atomi utilizzano tutti i loro $e^-$ spaiati per creare legami; in quel caso rimangono orbitali semisaturi. Tutte le sostanze che possiedono almeno un $e^-$ spaiato sono *paramagnetiche* (vengono debolmente attratte da un magnete). Le specie chimiche in cui sono presenti $e^-$ con spin spaiati sono dette *radicali*.

== Capitolo 7a

= Geometria molecolare e teoria VSEPR

Gli orbitali determinano la forma delle particelle; $m$ e $l$ rappresentano orientamento e forma degli orbitali. Nelle molecole i legami covalenti hanno caratteristiche geometriche (lunghezza, angoli) definite e determinano la disposizione spaziale degli atomi nelle molecole (*stereochimica*).

*Teoria VSEPR (Valence Shell Electron Pair Repulsion):*
- Considera l'atomo centrale e le coppie elettroniche (di legame e di non-legame o solitarie) che assumono la posizione in cui la loro repulsione reciproca è minima:
  $ "rep. tra coppie solitarie" > "rep. tra coppie solitarie e di legame" > "rep. tra coppie di legame" $

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    *Geometrie principali (Metodo $A X_n E_m$):*
    - *Lineare* ($A X_2$, $180 degree$)
    - *Trigonale planare* ($A X_3$, es. #ch("BF3"), $120 degree$) e *Piegata a V* ($A X_2 E$, es. #ch("SO2"))
    - *Tetraedrica* ($A X_4$, $109,5 degree$), *Piramidale trigonale* ($A X_3 E$, es. #ch("NH3")) e *Piegata a V* ($A X_2 E_2$, es. #ch("H2O"))
    - *Bipiramidale trigonale* ($A X_5$, es. #ch("PCl5"))
    - *Ottaedrica* ($A X_6$, es. #ch("SF6"))
    - Se gli atomi centrali sono più di uno, si determina la geometria di ciascuno.
  ],
  [
    #image("ac143232-a97e-4b60-942a-8e6e8ba0f7b2-29_576_1263_21_1111", width: 70%)
    #image("ac143232-a97e-4b60-942a-8e6e8ba0f7b2-29_383_1386_507_1273", width: 70%)
    //#image("smile-46ac6005bd6ecdf654dca9889c89f98291a3b274", width: 70%)
    //#image("smile-eac4631f408783865097443028401c358054a558", width: 70%)
    #image("ac143232-a97e-4b60-942a-8e6e8ba0f7b2-29_670_3838_1854_1216", width: 70%)
  ]
)
#v(1em)

- *Doppietti elettronici di non-legame:* aumentano la repulsione riducendo l'angolo di legame tra gli atomi legati.
- *Doppi legami:* gli angoli di legame sono esattamente quelli predetti teoricamente solo se gli atomi legati a quello centrale sono tutti uguali e i legami sono dello stesso ordine. I doppi legami allontanano gli altri legami singoli stringendone l'angolo (per il loro maggiore ingombro elettronico).

= Teoria del legame di valenza (VB)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    - Un legame covalente si forma per sovrapposizione parziale di 2 orbitali che contengono al massimo $2 e^-$ a spin opposto.
    - *Legame singolo ($sigma$):* sovrapposizione frontale lungo la congiungente dei nuclei (tra orbitali $s-s$, $p-p$, $s-p$).
    - *Legami multipli:* $1$ legame $sigma + 1$ o $2$ legami $pi$ (sovrapposizione laterale).
    - I legami semplici permettono la libera rotazione attorno all'asse di legame; i legami multipli bloccano la molecola (non permettendo la rotazione).
  ],
  [
    #image("ac143232-a97e-4b60-942a-8e6e8ba0f7b2-29_254_1107_5277_3589", width: 70%)
    #image("ac143232-a97e-4b60-942a-8e6e8ba0f7b2-29_563_1224_5534_2982", width: 70%)
  ]
)
#v(1em)

= Ibridazione

Combinazione matematica di funzioni d'onda (orbitali atomici) per ottenere *orbitali ibridi* isoenergetici che descrivono meglio le caratteristiche dei legami sulla base delle intersezioni delle nuvole elettroniche. Queste transizioni sono possibili perché la debole energia di "promozione" elettronica viene ampiamente compensata dall'energia liberata nella formazione di più legami.
- Gli orbitali ibridi permettono una maggior sovrapposizione rispetto agli orbitali atomici puri $arrow.r$ *legami più forti*.

== Ibridazione del carbonio

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    - *$s p^3$:* Tetraedro (angoli $109,5 degree$). \
      Promozione da $2s^2 2p^2$ a $4$ orbitali $s p^3$ degeneri. \
      Si trova in: metano, ammoniaca, acqua, alcani.

    - *$s p^2$:* Triangolo planare (angoli $120 degree$). \
      Formazione di $3$ orbitali ibridi $s p^2 + 1$ orbitale $p$ puro non ibridato. \
      Si trova in: etilene, #ch("CO3^2-"), #ch("O3"), #ch("SO2"), #ch("BF3"), alcheni. \
      $arrow.r$ 2 atomi ibridati $s p^2$ creano tra loro doppi legami ($1 sigma + 1 pi$).

    - *$s p$:* Lineare (angoli $180 degree$). \
      Formazione di $2$ orbitali ibridi $s p + 2$ orbitali $p$ puri. \
      Si trova in: #ch("BeCl2"), etino (#ch("C2H2")), alchini. \
      $arrow.r$ 2 atomi ibridati $s p$ creano tra loro tripli legami ($1 sigma + 2 pi$).
  ],
  [
    #image("ac143232-a97e-4b60-942a-8e6e8ba0f7b2-30_700_4904_347_110", width: 70%)
    #image("ac143232-a97e-4b60-942a-8e6e8ba0f7b2-30_476_5362_2633_498", width: 70%)
  ]
)
#v(1em)

[Esistono anche altre ibridazioni come $s p^3 d$ (#ch("PCl5")) e $s p^3 d^2$ (#ch("SF6")), ma meno comuni].

== Capitolo 7b

= Orbitali molecolari (Teoria MO)

La teoria VSEPR e quella del legame di valenza (VB) non spiegano le proprietà magnetiche e spettroscopiche di alcune molecole né la completa delocalizzazione elettronica (es. #ch("O2") è paramagnetico). Per questo si ricorre ad una teoria che prevede orbitali molecolari delocalizzati sull'intera molecola.

- *Teoria VB:* prevede che i legami siano localizzati tra i nuclei degli atomi.
- *Teoria MO:* prevede che si formino degli orbitali molecolari che appartengono a tutta la molecola. Gli orbitali sono trattati da un punto di vista quantomeccanico (funzioni d'onda, densità di probabilità elettronica) con varie caratteristiche: forma, energia e occupazione da parte degli elettroni di legame della molecola.
  + Gli $e^-$ sono rappresentati da funzioni d'onda $Psi$ dette *orbitali molecolari*, caratterizzate da numeri quantici (energia, forma).
  + $Psi^2 =$ probabilità di trovare l'$e^-$ in un determinato punto dello spazio.
  + *Energia orbitale* (secondo l'equazione di Schrödinger) = energia necessaria ad allontanare l'$e^-$ dalla molecola.
  + L'orbitale è rappresentabile con superfici limite che delimitano la regione di spazio in cui è compresa la maggior parte della presenza elettronica.
  + La distribuzione degli $e^-$ in una molecola viene effettuata secondo gli stessi principi validi per l'atomo (Aufbau, Pauli, Hund).

== Metodo LCAO (Linear Combination of Atomic Orbitals)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    Metodo approssimato:
    - Combinazione lineare delle funzioni d'onda degli orbitali atomici corrispondenti.
    - $"n° orbitali molecolari che si formano" = "n° orbitali atomici coinvolti"$.

    Esempio: per combinazione lineare di 2 orbitali atomici ($Psi_1, Psi_2$) si formano 2 orbitali molecolari:
    - 1 legante per somma ($Psi_1 + Psi_2$, interferenza costruttiva, minore energia);
    - 1 antilegante per sottrazione ($Psi_1 - Psi_2$, interferenza distruttiva, maggiore energia).
  ],
  [
    #image("ac143232-a97e-4b60-942a-8e6e8ba0f7b2-31_457_6335_1823_110", width: 70%)
  ]
)
#v(1em)

*Regole di combinazione degli orbitali atomici:*
- 2 orbitali possono combinarsi se hanno:
  + energie confrontabili;
  + nuvole di carica sovrapponibili il più possibile;
  + stessa simmetria rispetto all'asse internucleare AB ($s-s$, $s-p_x$, $p_x-p_x$, $p_y-p_y$, $p_z-p_z$).
- *OM di tipo $sigma$:* simmetria cilindrica intorno all'asse di legame.
- *OM di tipo $pi$:* densità elettronica sopra e sotto l'asse internucleare.
- *Ordine di legame:*
$ "O.L." = 1/2 ("n° " e^- " in OM leganti" - "n° " e^- " in OM antileganti") $

== Capitolo 8

= I gas

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    - Il volume cambia con la pressione e la temperatura.
    - Non hanno forma né volume propri $arrow.r$ possono essere compressi.
    - Le molecole dei gas sono molto distanti tra loro e si muovono continuamente in modo disordinato.

    $ "Pressione" = ("Forza" ("N"))/("Superficie" ("m"^2)) $
    [$P_"atmosferica"$ diminuisce all'aumentare dell'altitudine]. \
    $1 "atm" = 101325 "Pa" = 1,01325 "bar" = 760 "Torr" = 760 "mmHg"$.
  ],
  [
    #image("ac143232-a97e-4b60-942a-8e6e8ba0f7b2-32_1897_3323_907_148", width: 70%)
  ]
)
#v(1em)

*Gas ideali* $arrow.r$ sono i gas per cui le relazioni tra $P, T, V, n$ sono lineari:
- Non esiste nessun gas realmente ideale (ma i gas reali si avvicinano al comportamento ideale ad alte $T$ e basse $P$).
- Particelle puntiformi (con volume proprio trascurabile), senza interazioni reciproche e con urti perfettamente elastici con le pareti del recipiente (nessuna perdita di energia), in movimento secondo moto rettilineo uniforme (traiettorie casuali).

*Leggi dei gas:*
- *Boyle* $arrow.r P V = K$ ($T, n$ costanti) - *ISOTERMA*
- *Charles* $arrow.r V = K T$ ($P, n$ costanti) - *ISOBARA*
- *Gay-Lussac* $arrow.r P = K T$ ($V, n$ costanti) - *ISOCORA*
- *Avogadro* $arrow.r V = K n$ ($P, T$ costanti): nelle stesse condizioni di $P, T$ e $V$, gas diversi contengono lo stesso numero di particelle.

*Volume molare normale* $arrow.r$ volume di 1 mole di gas a condizioni normali ($0 degree "C" = 273,15 "K"$ e $1 "atm"$):
$ V_m = 22,414 "L" $

*Equazione di stato dei gas perfetti* (deriva dalla combinazione delle leggi dei gas):
$ P V = n R T $
dove:
$ P = "atm", wide V = "L", wide T = "K" (t[degree "C"] + 273,15), wide R = 0,0821 ("L" dot "atm")/("mol" dot "K") = 8,314 "J"/("mol" dot "K") $

Relazioni con massa molare ($"MM"$) e densità ($d$, direttamente proporzionale alla massa molare):
$ P V = m/("MM") R T wide "MM" = (m R T)/(P V) wide d = m/V = ("MM" dot P)/(R T) $

*Legge di Dalton e Legge di Amagat:*
- Tutte le sostanze allo stato gassoso si mescolano facilmente tra loro formando miscele omogenee. Ogni gas in una miscela omogenea si comporta come se fosse l'unico gas presente.
$ P_"TOT" = P_1 + P_2 + P_3 + dots.h $
$ P_i / P_"TOT" = V_i / V_"TOT" = n_i / n_"TOT" = X_i quad ("Frazione molare") ==> P_i = P_"TOT" dot X_i $
- Percentuale in volume: $\%_(V_i) = V_i / V_"TOT" dot 100 = X_i dot 100$
- Percentuale in peso: $\%_(m_i) = m_i / m_"TOT" dot 100$

*Teoria cinetica dei gas, effusione e diffusione:*
- La velocità media delle molecole dipende dall'energia cinetica di ciascuna molecola ($E_c = 1/2 m v^2$): la teoria cinetica dei gas mostra che l'$E_c$ aumenta con l'aumentare della temperatura:
  $ E_c = 3/2 k_B T quad (k_B = "costante di Boltzmann" = 1,381 dot 10^(-23) "J/K") $
- *Effusione:* processo per cui un gas fuoriesce dal recipiente attraverso un piccolo foro, trasferendosi in uno spazio in cui è stato fatto il vuoto.
- *Diffusione:* velocità con cui le molecole di un gas si disperdono muovendosi in un altro gas.
- *Legge di Graham:*
$ v_("eff/diff") prop 1 / sqrt("MM") ==> v_A / v_B = sqrt("MM"_B) / sqrt("MM"_A) wide v_"media" prop sqrt(T / "MM") $

= Gas reali

Hanno un comportamento diverso rispetto ai gas ideali per via di:
- effetto delle attrazioni intermolecolari;
- effetto del volume molecolare proprio sul volume totale a disposizione del gas.

*Equazione di van der Waals:*
$ (P + underbrace(a n^2 / V^2, "pressione interna"))(V - underbrace(b n, "covolume")) = n R T $

Parametri critici:
$ P_c = a / (27 b^2) wide V_c = 3 b wide T_c = (8 a)/(27 b R) $
- *Temperatura critica ($T_c$):* temperatura sopra la quale una sostanza non può esistere allo stato liquido, neanche se sottoposta a fortissima compressione.
- *Pressione critica ($P_c$):* pressione necessaria per liquefare un gas alla sua temperatura critica. Al di sopra di $P_c$ e $T_c$ (fluido supercritico) la trasformazione tra liquido e gas avviene senza passaggio discontinuo di fase.

*Liquefazione dei gas:*
- In un gas a basse $T$ e $P$ elevate non si possono trascurare le forze intermolecolari, quindi si può avere la *LIQUEFAZIONE* (passaggio di stato a liquido).
- In ogni sistema gassoso in cui $T > T_c$, il gas non può essere liquefatto aumentando solo la $P$:
  - *VAPORE:* è un aeriforme che si trova al di sotto della sua $T_c$ (può essere liquefatto a quella $T$ aumentando la $P$).
  - *GAS:* è un aeriforme che si trova al di sopra della sua $T_c$ (non può essere liquefatto per semplice compressione a quella $T$).

*Fattore di compressibilità (o comprimibilità):*
$ Z = (P V)/(n R T) = V_"eff" / V_"ideale" $
- se $Z = 1 arrow.r$ è un gas ideale;
- se $Z > 1 arrow.r$ predomina l'effetto repulsivo del volume molecolare (atomi/molecole molto vicini ad alte $P$);
- se $Z < 1 arrow.r$ predomina l'effetto delle attrazioni intermolecolari.

== Capitolo 9a

= I liquidi

- Energia cinetica minore rispetto ai gas e maggiore rispetto ai cristalli solidi.
- Poca distanza tra le particelle, disposizione disordinata e molecole sempre in movimento.
- Forze di interazione tra le particelle maggiori rispetto ai gas ma minori rispetto ai solidi.
- Stato condensato della materia $arrow.r$ densità leggermente inferiore al corrispettivo solido (tranne eccezioni come l'#ch("H2O")).
- Sono sostanze praticamente incomprimibili.
- All'aumentare della $T$ aumenta il volume: $V = V_0 (1 + k T)$ [$k =$ coefficiente di dilatazione termica].
- Le forze d'attrito interno ad un liquido sono la causa della sua *viscosità* (difficoltà a scorrere).

== Tensione superficiale

Nelle gocce di liquido ci sono delle forze d'interazione intermolecolare (*coesione*) che spingono le particelle a raggrupparsi per esporre meno superficie possibile all'esterno.
- *Tensione superficiale:* è la forza (o il lavoro per unità di area) che agisce sulla superficie opponendosi all'aumento della superficie stessa.
- *Capillarità:* fenomeno dovuto al bilancio tra forze di coesione interna e forze di attrazione tra le molecole del liquido e le pareti del contenitore (*ADESIONE*).

= Legami intermolecolari (Forze deboli)

Sono responsabili dell'esistenza delle fasi condensate della materia. Sono riconducibili a interazioni elettrostatiche tra cariche ($F prop (Q_1 Q_2)/(4 pi epsilon r^2)$): la forza diminuisce rapidamente se aumenta la distanza.

- *Forze ione-dipolo:* interazione tra uno ione e una molecola polare (es. sale solido $+$ acqua $arrow.r$ *idratazione*, energia $prop mu / r^2$). Per avere interazioni significative la molecola polare deve trovarsi vicinissima allo ione:
  - #ch("H2O") $+$ Catione: l'atomo di #ch("O") ($delta^-$) si orienta verso il catione;
  - #ch("H2O") $+$ Anione: gli atomi di #ch("H") ($delta^+$) si orientano verso l'anione.
- *Forze dipolo-dipolo (di Keesom):* allo stato liquido 2 molecole polari si attraggono orientandosi testa-coda ($arrows.rl$) per avere energia potenziale minore ($E prop mu^2 / r^3$ nei solidi, $E prop mu^4 / r^6$ nei gas dove le molecole ruotano).

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    - *Legame a idrogeno:* particolare interazione dipolo-dipolo molto forte in cui un atomo di #ch("H") legato covalentemente a un atomo piccolo e molto elettronegativo (#ch("F"), #ch("O"), #ch("N")) viene attratto da una coppia di $e^-$ solitaria di un atomo elettronegativo vicino.
    - Proprietà anomale dell'#ch("H2O"): ottimo solvente, calore specifico alto, calore di vaporizzazione alto, alta tensione superficiale, densità del solido (ghiaccio) minore di quella del liquido.
  ],
  [
    #image("ac143232-a97e-4b60-942a-8e6e8ba0f7b2-34_420_1783_9010_3792", width: 70%)
  ]
)
#v(1em)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    - *Forze di van der Waals (Debye e London):* includono le interazioni dipolo permanente-dipolo indotto e le forze di dispersione di London tra molecole apolari (dovute a fluttuazioni temporanee della nube elettronica che generano dipoli istantanei e dipoli indotti).
  ],
  [
    #image("ac143232-a97e-4b60-942a-8e6e8ba0f7b2-35_1902_5650_210_1107", width: 70%)
  ]
)
#v(1em)

= Tensione di vapore e cambiamenti di stato

*Tensione di vapore:* \
Pressione esercitata dal vapore di un liquido quando si trova in equilibrio dinamico con la propria fase condensata (dipende dall'intensità delle forze intermolecolari). Per una data sostanza dipende solo dalla temperatura secondo l'*equazione di Clausius-Clapeyron*:
$ ln (P_2 / P_1) = (Delta H_"vap")/R (1/T_1 - 1/T_2) $
- Aumentando $T$, aumenta la tensione di vapore.
- *Temperatura di ebollizione ($T_"eb"$):* temperatura alla quale $P_"tensione di vapore" = P_"esterna"$ (la $T_"eb"$ varia al variare della pressione esterna).
- Durante l'ebollizione tutto il calore fornito viene usato per l'evaporazione ($T$ resta costante) $arrow.r$ *fenomeno endotermico*.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    *Cambiamenti di stato e diagrammi di fase:* \
    Rappresentano le curve di equilibrio tra le fasi solida, liquida e vapore al variare di $P$ e $T$ (punto triplo e punto critico).
  ],
  [
    #image("ac143232-a97e-4b60-942a-8e6e8ba0f7b2-35_1873_3687_4674_472", width: 70%)
    #image("ac143232-a97e-4b60-942a-8e6e8ba0f7b2-35_3279_5016_6436_475", width: 70%)
  ]
)
#v(1em)

== Capitolo 9b

= Le soluzioni

*Soluzione* = miscela omogenea di atomi, molecole o ioni:
- Componente principale: *solvente* (da cui dipende lo stato fisico della soluzione).
- *Soluto:* è la sostanza disciolta nel solvente.
- Possono essere: miscele gassose, soluzioni liquide, soluzioni solide (leghe metalliche, es. Ottone #ch("Zn/Cu"), Acciaio #ch("Fe/C"), Acciaio inox #ch("Fe/C/Cr/Ni")).

== Concentrazioni

Le masse sono sempre sommabili, i volumi a volte NO!
- *Frazione ponderale* $arrow.r ("g soluto")/("g soluzione")$
- *Percentuale in peso ($%_(p/p)$)* $arrow.r ("g soluto")/("g soluzione") dot 100$ ($"g"$ di soluto in $100 "g"$ di soluzione)
- *Percentuale in volume ($%_(V/V)$)* $arrow.r ("mL soluto")/("mL soluzione") dot 100$ ($"mL"$ di soluto in $100 "mL"$ di soluzione)
- *Molarità ($M$)* $arrow.r ("moli soluto")/("L soluzione") quad [M = "mol/L"]$
- *Molalità ($m$)* $arrow.r ("moli soluto")/("kg solvente") quad [m = "mol/kg"]$
- *Frazione molare ($X$)* $arrow.r ("moli soluto")/("moli totali soluzione")$

== Solubilità

*"Il simile scioglie il simile"*: si sciolgono tra loro sostanze che subiscono lo stesso tipo di forze intermolecolari.
- La *solubilità* è la quantità massima di soluto che si scioglie in una quantità fissa di solvente a una temperatura specifica.
- Se parte del soluto resta indisciolta (in equilibrio col corpo di fondo), la soluzione è *satura*.
- Cambia con la *Temperatura*:
  - se il soluto è un *SOLIDO*, in genere aumenta con $T$ (con eccezioni esotermiche come #ch("Ce2(SO4)3"));
  - se il soluto è un *GAS*, diminuisce sempre con l'aumento della temperatura.
- Effetto della *Pressione*:
  - $"SOLIDO/LIQUIDO" + ch("H2O")$: non dipende dalla pressione;
  - $"GAS (soluto)" + "LIQUIDO (solvente)"$: aumenta con l'aumentare della pressione (*Legge di Henry*), perché aumenta la frequenza degli urti tra le particelle di gas e la superficie del liquido.

*Solvatazione (idratazione in acqua)* $arrow.r$ processo di dissoluzione e circondamento di diverse sostanze (soprattutto ioniche) da parte delle molecole di un solvente.

= Proprietà colligative

Queste proprietà dipendono solo dalla quantità (concentrazione di particelle) o proporzione tra soluto e solvente, e non dalla natura chimica del soluto:

- *Abbassamento della tensione di vapore* $arrow.r$ *Legge di Raoult*:
  $ P_A = P_A^0 dot X_A $
  dove $P_A$ è la pressione di vapore del solvente in soluzione, $P_A^0$ è la pressione di vapore del solvente puro e $X_A$ è la frazione molare del solvente. \
  Vale per soluzioni ideali:
  - soluzione diluita;
  - la tensione di vapore del soluto è trascurabile rispetto a quella del solvente (soluto non volatile);
  - il soluto non si associa né si dissocia.
- *Innalzamento ebullioscopico:*
  $ Delta T_"eb" = K_"eb" dot m $
- *Abbassamento crioscopico:*
  $ Delta T_"cr" = K_"cr" dot m $
  (con $K_"eb"$ e $K_"cr"$ costanti caratteristiche del solvente).
- *Osmosi (pressione osmotica $pi$)* $arrow.r$ fenomeno per cui 2 soluzioni a diversa concentrazione vengono messe a contatto tramite una membrana semipermeabile, che viene attraversata solo dalle molecole di solvente (dalla soluzione più diluita a quella più concentrata):
  $ pi = (n R T)/V = M R T $

*Soluzioni elettrolitiche:* \
Una soluzione può essere elettrolitica o non elettrolitica, sulla base della presenza o meno di sali, acidi o basi che si dissociano completamente (*FORTI*) o parzialmente (*DEBOLI*) liberando ioni in soluzione, diventando così conduttori di elettricità.
- *Grado di dissociazione ($alpha$):*
  $ alpha = n_"dissociate" / n_"iniziali" wide (0 lt.eq alpha lt.eq 1) $
- Se la soluzione contiene un elettrolita bisogna aggiungere il *coefficiente di van 't Hoff ($i$)* nelle espressioni della pressione osmotica e delle variazioni delle temperature di ebollizione e congelamento:
  $ i = 1 + alpha (z - 1) quad (z = "n° di ioni prodotti per unità formula") $
  $ Delta T_"eb" &= K_"eb" dot m dot i \
  Delta T_"cr" &= K_"cr" dot m dot i \
  pi &= M R T i $

== Capitolo 10

= I solidi

I *SOLIDI* possiedono energia cinetica minore rispetto ai gas e ai liquidi; le particelle sono il più vicino possibile tra loro e le forze di legame sono maggiori rispetto a gas e liquidi. Si dividono in:
- *Cristalli* $arrow.r$ particelle disposte in modo ordinato, periodico e simmetrico.
- *Solidi amorfi* (es. vetro) $arrow.r$ particelle disposte in modo non ordinato.

*Cristalli:* si ripete nello spazio la struttura della *cella elementare* $arrow.r$ 7 tipi di sistemi cristallini: cubico, tetragonale, ortorombico, esagonale, romboedrico (trigonale), monoclino, triclino.
- *Reticolo cristallino:* insieme di punti geometrici detti *nodi* (che hanno intorno particelle sempre uguali).
- Alcune sostanze possono esistere in diverse forme cristalline a seconda delle condizioni di pressione e temperatura $arrow.r$ *Polimorfismo* (per i composti) o *Allotropia* (per gli elementi, es. diamante e grafite).
- *Cristalli ionici:* sono composti da ioni disposti in modo da rendere minime le repulsioni tra cariche di segno uguale e massime le attrazioni tra cariche di segno opposto. La grandezza dello ione determina la disposizione: tendenzialmente gli anioni (più grandi) formano il reticolo principale e i cationi (più piccoli) si dispongono negli interstizi.
- *Cristalli covalenti (reticolari, es. diamante):* la struttura è determinata dalla geometria degli orbitali e dall'ingombro dell'atomo; sono materiali leggeri, durissimi, resistenti e costituiti da legami covalenti forti e direzionali.

== Difetti dei cristalli

- *Difetti puntiformi:*
  - *di Schottky* $arrow.r$ manca un atomo/ione dal reticolo (vacanza);
  - *di Frenkel* $arrow.r$ un atomo/ione è fuori posto (in posizione interstiziale);
  - *Centri di colore (o centri F)* $arrow.r$ sostituzione di un anione mancante con un $e^-$ intrappolato nella vacanza: il cristallo ionico si colora.
- *Difetti di linea o dislocazioni* $arrow.r$ modificano il reticolo attorno ad una linea, formandosi durante la solidificazione o per deformazione plastica.
- *Difetti di superficie* $arrow.r$ *materiali policristallini* (es. metalli, granito): costituiti da molti piccoli grani cristallini orientati in modo casuale separati da bordi di grano.

== Capitolo 11a

= Termodinamica e termochimica

*Termodinamica:* studio dell'energia e delle sue trasformazioni da una forma all'altra. \
*Termochimica* $arrow.r$ studia l'energia scambiata (sotto forma di *calore* e *lavoro*) nelle trasformazioni chimiche e fisiche.

*Definizioni:*
- *Ambiente* $arrow.r$ tutto ciò che sta fuori dal sistema.
- *Tipi di sistemi:*
  - *Sistema aperto:* può scambiare con l'ambiente sia materia che energia.
  - *Sistema chiuso:* può scambiare con l'ambiente solo energia ($"materia" = "costante"$).
  - *Sistema isolato:* non ha nessun contatto con l'ambiente e non può effettuare alcuno scambio con esso.

== Energia interna ($U$ o $E$)

È una *funzione di stato* (dipende solo dallo stato iniziale e finale del sistema, non dal cammino percorso):
- è la somma delle energie potenziali e delle energie cinetiche di tutte le particelle presenti nel sistema;
- una sua variazione comporta una variazione uguale e opposta dell'ambiente se il sistema non è isolato (in un sistema isolato l'energia interna è costante).

*Primo principio della termodinamica:*
$ Delta U_"universo" = Delta U_"sistema" + Delta U_"ambiente" = 0 $
$ Delta U = U_"finale" - U_"iniziale" = U_"prodotti" - U_"reagenti" $

$ Delta U = q + w $
- Se il sistema compie lavoro sull'ambiente ($w < 0$), la sua energia interna si riduce; se l'ambiente compie lavoro sul sistema ($w > 0$), la sua energia aumenta.
- Se $w = 0$ (volume costante), il sistema non compie lavoro ma trasferisce soltanto calore ($Delta U = q_V$):
  - $q < 0 arrow.r Delta U < 0$: il sistema cede calore all'ambiente (*ESOTERMICA*);
  - $q > 0 arrow.r Delta U > 0$: il sistema acquista calore dall'ambiente (*ENDOTERMICA*).

*Lavoro pressione-volume:* \
Lavoro di espansione/compressione compiuto da un gas a pressione costante ($w = -P Delta V$):
$ Delta U = q - P Delta V $
- $Delta V > 0$: espansione (il sistema compie lavoro);
- $Delta V < 0$: contrazione (il sistema subisce lavoro).

- *Calore specifico:* quantità di calore necessaria per aumentare di $1 "K"$ la temperatura di $1 "g"$ di sostanza (a $P = "costante" = 1 "atm"$).
- *Calore specifico molare:* quantità di calore necessaria per aumentare di $1 "K"$ la temperatura di $1 "mole"$ di sostanza.
- Il calore prodotto da una reazione a volume costante ($Delta U = q_V$) si misura con *calorimetri a volume costante* (bomba calorimetrica).

= Entalpia ($H$)

Misura le variazioni energetiche a *pressione costante* ($q_P = Delta H$):
$ H = U + P V ==> Delta H = Delta U + P Delta V $
A $P$ costante e in presenza di solo lavoro espansivo di gas ideali ($P Delta V = Delta n R T$, con $R = 8,314 "J"/("mol" dot "K") = 1,987 "cal"/("mol" dot "K")$):
$ Delta H = H_"finale" - H_"iniziale" = Delta U + Delta n R T = q_P $
(mentre a $T$ e $V$ costanti: $Delta U = q_V$ poiché $P Delta V = 0$).

- $Delta H < 0$: reazione *ESOTERMICA*
- $Delta H > 0$: reazione *ENDOTERMICA*
- Non esiste un punto zero assoluto per $U$ e $H$: si misurano solo variazioni $Delta H$.
- Si ha $Delta H approx Delta U$ quando:
  - nelle reazioni non partecipano gas;
  - nelle reazioni il numero totale di moli di gas non cambia ($Delta n = 0$);
  - il calore scambiato $q$ è molto maggiore di $P Delta V$ ($P Delta V$ risulta trascurabile).
- *Legge di Lavoisier-Laplace:* se l'entalpia nel processo diretto è $Delta H$, in quello inverso sarà $-Delta H$.

*Tipi di calore (entalpia) molare:*
+ di combustione
+ di formazione
+ di fusione
+ di vaporizzazione

= Legge di Hess

La variazione di entalpia di un processo complessivo è data dalla somma algebrica delle variazioni di entalpia delle singole tappe intermedie. Vale anche per il calore totale scambiato:
$ Delta H_"TOT" = Delta H_1 + Delta H_2 + dots.h + Delta H_n $
$ Delta H_"reazione"^0 = sum n_p Delta H_f^0 ("prodotti") - sum n_r Delta H_f^0 ("reagenti") $

*Entalpie standard di formazione ($Delta H_f^0$):* \
I valori tabulati sono riferiti a condizioni standard ($25 degree "C"$ e $1 "bar"$, sostanze pure nella loro forma più stabile) e si riferiscono alla formazione di $1 "mole"$ di composto a partire dagli elementi(che hanno per convenzione $Delta H_f^0 = 0$).

== Capitolo 11b

= Spontaneità ed entropia

- *Trasformazione SPONTANEA:* una volta iniziata (superata l'energia di attivazione), avviene senza bisogno di un continuo apporto di energia dall'esterno del sistema.
- *Trasformazione NON SPONTANEA:* avviene solo se l'ambiente fornisce continuamente energia al sistema.
- Se la reazione diretta è spontanea, quella inversa sarà non spontanea.
- Il solo $Delta H$ non permette di comprendere se una reazione è spontanea: esistono reazioni spontanee sia esotermiche che endotermiche. La variazione di libertà di movimento delle particelle (aumento di disordine/libertà) contribuisce a determinare la direzione del processo spontaneo.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    *Entropia ($S$):* \
    È una funzione termodinamica di stato che descrive il grado di dispersione dell'energia (e della materia, ovvero il disordine) di un sistema:
    $ Delta S = S_"prodotti" - S_"reagenti" $
    Se c'è scambio di calore in modo reversibile a $T$ costante:
    $ Delta S = q_"rev" / T $
  ],
  [
    #image("ac143232-a97e-4b60-942a-8e6e8ba0f7b2-40_519_952_319_5240", width: 70%)
  ]
)
#v(1em)

- *Entropia assoluta ($S^0$):* è il $Delta S$ che si ottiene riscaldando $1 "mole"$ di sostanza pura dallo zero assoluto ($0 "K"$) alla $T$ finale. È determinabile in valore assoluto perché esiste uno zero.
- Ogni sistema tende ad evolvere verso una distribuzione di energia più dispersa (maggiore disordine).
- *$2^a$ Legge della Termodinamica:*
  - l'entropia di un sistema isolato aumenta nel corso di una trasformazione spontanea;
  - tutti i processi reali avanzano spontaneamente nella direzione in cui aumenta l'entropia dell'universo:
    $ Delta S_"universo" = Delta S_"sistema" + Delta S_"ambiente" > 0 $
  - se c'è una diminuzione di entropia del sistema ($Delta S_"sistema" < 0$), affinché il processo sia spontaneo essa deve essere bilanciata e superata da un aumento dell'entropia dell'ambiente ($Delta S_"ambiente" > 0$, cedendo calore).
- *$3^a$ Legge della Termodinamica:*
  - un cristallo perfetto ha entropia pari a zero alla temperatura dello zero assoluto ($S_"sistema" = 0$ a $0 "K"$, poiché l'agitazione termica è nulla e le particelle possono essere disposte in un solo modo).

*Tipi di entropia ($Delta S$):* di fusione, di vaporizzazione.

*Fattori che influenzano l'entropia:*
+ *Temperatura* $arrow.r S$ aumenta all'aumentare della temperatura.
+ *Stato fisico* $arrow.r S_"solido" < S_"liquido" < S_"gassoso"$.
+ *Formazione di una soluzione* (aumento del disordine).
+ *Complessità molecolare* (raggio atomico, numero di atomi e gradi di libertà).

*Entropia standard di reazione ($Delta S_r^0$):* \
È il $Delta S$ quando i prodotti e i reagenti sono nei loro stati standard:
- se varia il numero di moli di gas:
  - $Delta n_"gas" > 0 arrow.r Delta S_r^0 > 0$ (le moli di gas aumentano);
  - $Delta n_"gas" < 0 arrow.r Delta S_r^0 < 0$ (le moli di gas diminuiscono);
- se la reazione è in equilibrio non c'è una direzione spontanea netta:
  $ Delta S_"universo" = 0 ==> Delta S_"sistema" = -Delta S_"ambiente" $

= Energia libera di Gibbs ($G$)

*ENERGIA LIBERA:* prevede la spontaneità di un processo a $T$ e $P$ costanti tenendo conto contemporaneamente di $Delta H$ e $Delta S$. È una funzione di stato:
$ Delta G = Delta H - T Delta S quad ("Equazione di Gibbs") $

- $Delta G < 0 arrow.r$ *SPONTANEA* (favorita da $Delta H < 0$, stato più stabile a minore energia, e da $Delta S > 0$, distribuzione di energia più dispersa).
- $Delta G > 0 arrow.r$ *NON SPONTANEA*.
- $Delta G = 0 arrow.r$ *EQUILIBRIO*.

*Energia libera di reazione:*
$ Delta G_r^0 = Delta H_r^0 - T Delta S_r^0 wide Delta G^0 = n Delta G_"prodotti" - m Delta G_"reagenti" $
- $Delta G < 0$: reazione spontanea a $T$ e $P$ costanti.

$ Delta G = -R T ln K $

- Spontanea ad alte $T$ (se $Delta H > 0$, $Delta S > 0$).
- Basse $T$: spontanea (se $Delta H < 0$, $Delta S < 0$).

== Capitolo 12

= La cinetica chimica

Si occupa dello studio della velocità di reazione e del suo meccanismo (considera gli stadi intermedi). \
$arrow.r$ Fattori che la influenzano:

$ a A + b B arrow.r c C + d D \
v = -1/a (Delta [A])/(Delta t) = -1/b (Delta [B])/(Delta t) = 1/c (Delta [C])/(Delta t) = 1/d (Delta [D])/(Delta t) $

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    - Per poter reagire le particelle devono urtarsi (contano solo gli urti efficaci).
    - Maggiore è la concentrazione dei reagenti, maggiore è la velocità (+ collisioni).
    - Stato fisico dei reagenti.
    - Temperatura maggiore, maggiore velocità (+ energia = + collisioni).
    $ "Velocità" = -1/a (Delta [A])/(Delta t) quad ("variazione di concentrazione") quad M = "mol/L" $
    - La velocità di reazione diminuisce nel corso della reazione (- molecole = - collisioni). Mentre la concentrazione dei reagenti diminuisce, con la stessa velocità aumenta la concentrazione dei prodotti:
    $ ch("H2 + I2 -> 2 HI") wide v_(ch("HI")) = 2 v_(ch("I2")) $
  ],
  [
    #image("ac143232-a97e-4b60-942a-8e6e8ba0f7b2-02_651_1442_3783_5091", width: 70%)
  ]
)
#v(1em)

*Legge cinetica di reazione:* secondo ordine $[A]^2$, ordine zero $[A]^0$.

$ "Velocità" = K [A]^n [B]^m quad ("ordini di reazione sperimentali, non sono i coefficienti stechiometrici") $

$K = A e^(-E_a / (R T))$ dove $K$ è la costante di velocità $arrow.r$ specifica per ogni reazione a una data $T$. \
*Tempo di dimezzamento* $arrow.r$ tempo impiegato per far dimezzare la concentrazione $arrow.r$ in una reazione di $1^degree$ ordine è costante.

- *Energia di attivazione* $arrow.r$ barriera di energia da superare per avere una trasformazione chimica:
$ f ("frazione urti efficaci") = e^(-E_a / (R T)) $
- Maggiore è $E_a$, minore è la velocità di reazione.
- $arrow.r.double$ Se la reazione viene suddivisa in stadi elementari, lo stadio più lento determina la velocità di reazione (Stadio Determinante o Limitante).

*Meccanismi di reazione:* \
La somma dei singoli stadi di reazione restituisce la reazione complessiva.

= Enzimi

È un catalizzatore biologico formato da proteine. Contiene un sito attivo adatto ad ospitare solo le molecole con cui deve agire. Aumenta la velocità di reazione.

== Capitolo 13

= L'equilibrio chimico

Concentrazioni a $Delta G = 0$ e $"Velocità"_"diretta" = "Velocità"_"inversa"$. Le concentrazioni sono costanti nel tempo, ma la reazione continua ad avvenire.

$ "reagenti" arrows.rl "prodotti" wide ("esponenti = coeff. stechiometrici") $

Costante di equilibrio:
$ K = (["prodotti"]^b)/(["reagenti"]^a) quad ("legge di azione di massa") $

- $K$ piccola: reazione poco spostata a dx.
- $K$ grande: reazione completamente a dx.
- $K$ intermedia: prodotti e reagenti in quantità non trascurabili.

$arrow.r$ Quoziente di reazione:
$ Q = (["prodotti"]^b)/(["reagenti"]^a) $

$ Q = 1 / Q_("inversa") wide K = 1 / K_("inversa") $

- All'equilibrio: $Q = K arrow.r Delta G = 0$
- $Delta G < 0 arrow.l.r Q < K$: $"reagenti" arrow.r "prodotti"$
- $Delta G > 0 arrow.l.r Q > K$: $"prodotti" arrow.r "reagenti"$
- Se reagenti e prodotti sono in un'unica fase (liquida, gas) $arrow.r$ *Equilibrio omogeneo*.
- Se reagenti e prodotti si trovano in fasi diverse $arrow.r$ *Equilibrio eterogeneo* (le concentrazioni di solidi o liquidi puri non cambiano).

== $K$ dipende solo dalle specie presenti in fase gassosa

- Se i reagenti sono gassosi, $K$ si può esprimere tramite le pressioni parziali:
$ P = (n R T)/V = M R T arrow.r M = P/(R T) wide K_c = ([P/(R T) "prodotti"]^b)/([P/(R T) "reagenti"]^a) $

*Principio di Le Châtelier:* \
Se una sollecitazione esterna perturba un sistema chimico all'equilibrio, il sistema tenderà ad evolvere nella direzione che si oppone alla perturbazione ripristinando l'equilibrio: $"reagenti" arrows.lr "prodotti"$.

- aggiungo reagenti $arrow.r$
- aggiungo prodotti $arrow.l$
- diminuisce $V$ (aumenta $P$) $arrow.r$ (- moli)
- aumenta $V$ (diminuisce $P$) $arrow.l$ (+ moli)
- aumento $T$: favorisco reazione endotermica $a A + b B + q arrow.r c C + d D$
- diminuisco $T$: favorisco reazione esotermica
- rimuovo reagenti $arrow.l$
- rimuovo prodotti $arrow.r$

Reazione endotermica: $a A + b B + q arrow.r c C + d D$
- aumento $T arrow.r$
- diminuisco $T arrow.l$

Reazione esotermica: $a A + b B arrow.r c C + d D + q$
- $arrow.l$ aumento $T$
- diminuisco $T arrow.r.long$

- Aggiungendo catalizzatori aumenta la velocità per raggiungere l'equilibrio, ma non ha effetto sulla posizione dell'equilibrio.

= Acidi e basi

Legami ionici e covalenti polari. \
*Elettroliti* = sostanze che in acqua tendono a scindersi in ioni:
- $alpha = 1$: reazione irreversibile
- *FORTI* $arrow.r$ si dissociano completamente: #ch("NaCl -> Na+ + Cl-")
- *DEBOLI* $arrow.r$ si dissociano parzialmente: #ch("CH3COOH <=> CH3COO- + H+")

== Teoria di Arrhenius

- *Acido* $arrow.r$ sostanza che in acqua libera #ch("H+") o meglio ioni #ch("H3O+").
- *Base* $arrow.r$ sostanza che in acqua libera ioni #ch("OH-").
- Acidi e basi:
  - FORTI = completamente dissociati (elettroliti forti) $arrow.r.double K_a >> 1$
  - DEBOLI = parzialmente dissociati (elettroliti deboli) $arrow.r.double K_a$ piccola

== Costante di dissociazione acida

$ K_a = K_c [ch("H2O")] = ([ch("H3O+")] [ch("A-")])/([ch("HA")]) wide ch("HA (aq) + H2O (l) <=> H3O+ (aq) + A- (aq)") $

- L'acidità aumenta lungo gruppo $arrow.b$ e periodo $arrow.r$.

*Teoria di Brønsted e Lowry:*
$ cases(
  "Acido" arrow.r "in grado di donare 1 o più protoni",
  "Base" arrow.r "in grado di accettare 1 o più protoni"
) quad "reazione acido-base è un processo di trasferimento protonico" $

Procede nel verso in cui si formano le specie più deboli.

== Anfoterismo

Capacità che hanno alcune sostanze di comportarsi come acido o come base a seconda delle altre sostanze presenti. L'acqua può autoionizzarsi con una molecola da acido e una da base.

= pH e pOH

$ "pH" &= -log [ch("H3O+")] \
"pOH" &= -log [ch("OH-")] $

$ "pOH" = -log (K_b dot C)^(1/2) wide "pH" = -log (K_a dot C)^(1/2) $

$ &"pH" = 7 arrow.r "NEUTRO" quad ("Sali = sostanze neutre", ch("NaCl")) \
&"pH" < 7 arrow.r "ACIDO" quad (0 < "pH" < 7) \
&"pH" > 7 arrow.r "BASICO" quad (7 < "pH" < 14) quad ("Sali basici", ch("CH3COONa")) \
&"pH" + "pOH" = 14 quad ("a " 25 degree "C") $

$ K_a = (C alpha^2)/(1 - alpha) quad (C = "concentrazione iniziale di soluto") $

= Solubilità

- *SOLUBILE:* ioni metalli alcalini, ione ammonio, nitrati, ioni cloruro, bromuro e ioduro (eccetto ioni argento, piombo, mercurio(I)), solfati (eccetto ioni bario, piombo, mercurio(II) e calcio).
- *INSOLUBILE:* idrossidi, solfuri, carbonati, cromati e fosfati.
$ A_m B_n harpoons.ltrb m A^(n+) + n B^(m-) $
$ K_"ps" = [A^(n+)]^m dot [B^(m-)]^n $

== Capitolo 15

= Elettrochimica

Studio delle relazioni tra reazioni chimiche e lavoro elettrico. \
Nelle redox l'elemento che si riduce è il *CATODO*, mentre quello che si ossida è l'*ANODO*. Le semireazioni rappresentano le semireazioni della cella elettrochimica, messe in contatto da una membrana semipermeabile o da un ponte salino.

- Le reazioni elettrochimiche sono reazioni chimiche in cui c'è un passaggio di elettroni:
  - le semireazioni avvengono in zone fisicamente diverse;
  - la conduzione avviene con un conduttore di I specie mentre il circuito è chiuso con un conduttore di II specie.
- *Cella elettrochimica* $arrow.r$ sistema redox che viene sfruttato per produrre o utilizzare energia elettrica:
  - Se la redox è spontanea ($Delta G < 0$) è una *cella galvanica* o *voltaica* o *pila*.
  - *Cella elettrolitica* $arrow.r$ si fornisce energia al sistema per far avvenire la reazione opposta a quella spontanea ($Delta G > 0$): si invertono anodo e catodo.

== Pila di Daniell (1836)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    $ ch("Cu / Cu^2+ // Ag+ / Ag") $

    Ponte salino = membrana semi-permeabile. \
    Un elettrodo può essere *ATTIVO* (componente attivo del semielemento che partecipa alla reazione) o *INERTE* (conduce elettroni e fornisce superficie alla reazione). Spesso sono barrette di grafite o platino.
  ],
  [
    #image("ac143232-a97e-4b60-942a-8e6e8ba0f7b2-05_1044_1182_3382_2037", width: 70%)
  ]
)
#v(1em)

= Differenza di potenziale

Condizioni standard:
$ P &= 1 "atm" &wide T &= 25 degree "C" = 298,15 "K" \
"concentrazione" &= 1 "M" &wide & $

Il potenziale di cella dipende dalla differenza del potenziale elettrico di riduzione tra i 2 elettrodi:

$ "fem" = Delta E = E_"catodo"^0 - E_"anodo"^0 quad ["V"] $

- $Delta E > 0 arrow.r$ PILA SPONTANEA
- $Delta E < 0 arrow.r$ CELLA ELETTROLITICA (non spontanea)

$ Delta G = -n F Delta E $
dove $F$ è la costante di Faraday $= 96500 "C"$ e $n$ sono le moli di $e^-$ trasferiti.

- Se le condizioni non sono standard:

$ Delta E = Delta E^0 - (R T)/(n F) ln Q $

$ cases(
  R = 8,31 "J"/("mol" dot "K"),
  T = 25 degree "C" = 298,15 "K",
  F = 96500 "C"
) ==> (R T)/F dot ln(10) = 0,0592 "V" $

Più un metallo è un riducente forte, più sarà negativo il suo $Delta E^0$.

= Leggi di Faraday

+ La massa di sostanze che si producono in una cella elettrolitica è direttamente proporzionale alla quantità di carica elettrica che la attraversa.
+ Un $N_A$ di $e^-$ produce un equivalente di prodotti di reazione ad ogni elettrodo.

= Batterie (celle galvaniche: batterie, Leclanché)

- *PRIMARIE* $arrow.r$ non ricaricabili, è scarica quando si esauriscono i reagenti.
- *SECONDARIE* $arrow.r$ ricaricabili fornendo energia elettrica per invertire la reazione e rigenerare i reagenti (batterie al nichel-cadmio, al piombo, al litio).

== Capitolo 16

= Chimica organica

Caratteristiche:
- Legame covalente poco polare
- Solubili in solventi apolari, non si dissociano
- Sono solidi molecolari
- Basse $T$ di fusione ed ebollizione
- $"densità" < 1$
- Si decompongono a basse $T$
- Sono quasi tutti combustibili
- #ch("C") $arrow.r$ valenza 4, forma legami più frequentemente con #ch("O"), #ch("N"), #ch("H") e alogeni:
  - forma legami covalenti (semplici, doppi o tripli);
  - crea concatenazioni che danno vita a strutture lineari, chiuse, ramificate;
  - ha 3 ibridazioni: $s p^3$ ($109,5 degree$), $s p^2$ ($120 degree$), $s p$ ($180 degree$).

*Formule:*

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    - Struttura di Lewis / espansa
    - Condensata: #ch("CH3-CH2-CH2-CH3")
  ],
  [
    //#image("smile-7300da8d7b0e5dcb9b3da46f5bd5b6a91ffc192a", width: 70%)
  ]
)
#v(1em)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    - A stecche, linee e angoli (scheletrica)
  ],
  [
    //#image("smile-992c0c3145334e70757af2a219e56e9e7c55b49f", width: 70%)
  ]
)
#v(1em)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    - Ball-and-stick 3D
    - Space-filling
  ],
  [
    //#image("smile-3df9c77eb32570ee16b6cb1250cb4cea7e0833c4", width: 70%)
  ]
)
#v(1em)

*Legami:*
- #ch("C-C") e #ch("C-H") $arrow.r$ apolari (stabili)
- #ch("C-O"), #ch("N"), alogeni $arrow.r$ polari (siti attivi)

*Reazioni:*
- *SOSTITUZIONE* $arrow.r$ un gruppo funzionale si sostituisce ad 1 #ch("H").
- *ADDIZIONE o ELIMINAZIONE* $arrow.r$ rottura di un doppio legame per aggiungere una molecola, mentre l'eliminazione è il processo inverso.
- *OSSIDAZIONE* $arrow.r$ reazioni in cui #ch("C") cambia n.o. (es. combustione).

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    *Alcani* $arrow.r$ $ch("C")_n ch("H")_(2n+2)$
    - ibridazione $s p^3$ ($sigma$), suffisso *-ANO*.
    - Sono poco solubili in acqua (paraffine = poca affinità). Danno reazioni di combustione: più la catena è lunga, più la reazione è esotermica.

    *Alcheni* $arrow.r$ $ch("C")_n ch("H")_(2n)$
    - ibridazione $s p^2$ ($sigma + pi$), suffisso *-ENE*.
    - Composti insaturi. Presentano isomeria cis-trans. Danno reazioni di addizione rompendo il doppio legame (idroalogenazione $+$ #ch("HCl"), formazione di alcoli $+$ #ch("H2O")).

    *Alchini* $arrow.r$ $ch("C")_n ch("H")_(2n-2)$
    - ibridazione $s p$ ($sigma + 2 pi$), suffisso *-INO*.
    - Composti insaturi. Danno reazioni di addizione rompendo il triplo legame.
  ],
  [
    #image("ac143232-a97e-4b60-942a-8e6e8ba0f7b2-06_1871_5440_8952_397", width: 70%)
  ]
)
#v(1em)

*Cicloalcani* $arrow.r$ $ch("C")_n ch("H")_(2n)$ - ibridazione $s p^3$ ($sigma$) \
Isomeri di catena degli alcheni.

*Cicloalcheni* $arrow.r$ $ch("C")_n ch("H")_(2n-2)$ - ibridazione $s p^2$ ($sigma + pi$) \
Isomeri di catena degli alchini.

*Cicloalchini* $arrow.r$ $ch("C")_n ch("H")_(2n-4)$ - ibridazione $s p$ ($sigma + 2 pi$)

= Idrocarburi alifatici e idrocarburi aromatici

Hanno una struttura ad anello planare con ibridazione $s p^2$. Sopra e sotto l'anello c'è un'alta densità elettronica. L'anello (Benzene) è un ibrido di risonanza.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    *Benzene* (#ch("C6H6")) \
    La struttura fu scoperta da Kekulé. È un composto molto stabile che dà solo reazioni di sostituzione elettrofila.
  ],
  [
    #image("ac143232-a97e-4b60-942a-8e6e8ba0f7b2-07_606_533_5409_991", width: 70%)
    //#image("smile-e25ffd0fcbe59873b99c140c1c09f62d32dc58cf", width: 70%)
  ]
)
#v(1em)

= Gruppi funzionali e composti ($R$ = gruppo alchilico, $"Ar"$ = gruppo arilico)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    + Alogenuri alchilici o arilici ($R-X$)
    + Alcoli ($R-"OH"$)
    + Eteri ($R-"O"-R'$)
    + Esteri ($R-"COO"-R'$)
    + Chetoni ($R-"CO"-R'$)
    + Aldeidi ($R-"CHO"$)
    + Acidi carbossilici ($R-"COOH"$)
    + Ammine ($R-"NH"_2$, basiche)
    + Ammidi ($R-"CONH"_2$)
  ],
  [
    //#image("smile-daa7864b52a4e2a968b4f057803a156cd2d49fd0", width: 70%)
  ]
)
#v(1em)

== Alcoli $arrow.r$ gruppo funzionale #ch("-OH") (ossidrile), suffisso *-olo*

Sono classificabili in primari, secondari e terziari a seconda di quanti gruppi $R$ sono legati al carbonio con #ch("-OH"). Ossidandosi danno come prodotto aldeidi (primari) e chetoni (secondari), ma i terziari non si ossidano. Hanno $T_"ebollizione"$ e fusione alte (legami a idrogeno).

== Eteri $arrow.r$ gruppo funzionale $R-"O"-R'$, suffisso *-ico* / *etere*

- Sono classificabili in Alifatici (2 catene alchiliche), Aromatici (2 catene ariliche) o Misti.
- Sono poco polari e poco reattivi. Hanno proprietà fisiche simili agli alcani. Spesso usati come solventi.

== Aldeidi $arrow.r$ gruppo funzionale aldeidico #ch("-CHO"), suffisso *-ale*

- Danno reazioni di ossidazione (acidi carbossilici) o riduzione (alcoli primari).

== Chetoni $arrow.r$ gruppo funzionale carbonile #ch("C=O"), suffisso *-one*

- Danno reazioni di ossidazione (acidi carbossilici) o riduzione (alcoli secondari).

== Acidi carbossilici $arrow.r$ gruppo funzionale carbossilico #ch("-COOH"), suffisso *-oico*

- Sono acidi deboli. Fino a 3 atomi di #ch("C") sono solubili in acqua.
- Hanno $T_"ebollizione"$ alti. La densità aumenta con l'aumentare della massa.
- I *SAPONI* o detergenti sono sali di acidi carbossilici a lunga catena.

== Esteri $arrow.r$ gruppo funzionale #ch("-COO-"), suffisso *-oato*

- Si ottengono da: $"acidi carbossilici" + "alcoli" arrow.r "esteri" + ch("H2O")$.

== Ammine $arrow.r$ gruppo funzionale #ch("-NH2") (contiene un atomo di #ch("N"), #ch("C-N-C")), suffisso *ammino-* / *-ammina*

- Come gli alcoli possono essere divise in primarie, secondarie e terziarie, e alifatiche, ariliche o miste (come gli eteri). Sono basi deboli.

== Ammidi $arrow.r$ gruppo funzionale #ch("-CONH2") (legame ammidico)

= Polimeri

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    Catene costituite dalla ripetizione di monomeri (molecole organiche). Possono essere: lineari, ramificati o reticolati (a maglie larghe o strette).
    - *Naturali* $arrow.r$ Polisaccaridi, Proteine, Acidi nucleici
    - *Struttura:*
      - Omopolimeri $arrow.r$ 1 solo monomero
      - Copolimeri $arrow.r$ + monomeri (random, a blocchi, alternati, ad innesto)
    - *Proprietà:*
      - Termoplastici $arrow.r$ Riciclabili
      - Termoindurenti $arrow.r$ Non riciclabili
    - *Polimerizzazione:* Condensazione / Addizione
  ],
  [
    #image("ac143232-a97e-4b60-942a-8e6e8ba0f7b2-08_505_4332_9491_461", width: 70%)
  ]
)
#v(1em)

- *Polietilene (PE)* $arrow.r$ è una termoplastica trasparente (forma amorfa) o bianca (forma cristallina). Isolante, stabile chimicamente, versatile, economico.
- *Polistirene (PS)* (polistirolo) $arrow.r$ è termoplastico con struttura lineare. Rigido e trasparente a $T_"ambiente"$, inerte agli agenti corrosivi e solubile in solventi organici.
- *Cloruro di Polivinile (PVC)* $arrow.r$ se puro è rigido (bottiglie, tubi), ma può essere reso flessibile con l'aggiunta di plastificanti (esteri).
- *Poliesteri* $arrow.r$ usati per le bottiglie di plastica.
- *Polietilentereftalato (PET)* $arrow.r$ usato per recipienti alimentari.
- *Politetrafluoroetilene (PTFE / TEFLON)* $arrow.r$ materiale liscio, antiaderente, resistente fino a $200 degree "C"$ e con una buona inerzia chimica.

= Nomenclatura: composti binari

== Tradizionale

*Ossidi:* $"Me" + ch("O2")$
+ 1 n.o. (valenza): $"ossido" + "di" + "nome Me"$
+ 2 n.o.:
  - $"ossido" + "radice Me" + "-oso"$ (basso)
  - $"ossido" + "radice Me" + "-ico"$ (alto)

*Anidridi:* $"NMe" + ch("O2")$
+ 1 n.o.: $"anidride" + "di" + "nome NMe"$ (o $-"ica"$)
+ 2 n.o.:
  - $"anidride" + "radice" + "-osa"$ (basso)
  - $"anidride" + "radice" + "-ica"$ (alto)
+ 3 o 4 n.o. (#ch("F"), #ch("Cl"), #ch("Br"), #ch("I")):
  - $"anidride" + "ipo-" + "radice" + "-osa"$ (basso)
  - $"anidride" + "radice" + "-osa"$
  - $"anidride" + "radice" + "-ica"$
  - $"anidride" + "per-" + "radice" + "-ica"$ (alto)

*Eccezioni:*
- #ch("ZrO2"): Zirconia
- #ch("B2O3"): Anidride borica
- #ch("CO"): Ossido di carbonio
- #ch("SiO2"): Ossido di silicio (Silice)
- #ch("NO2"): Ipoazotide

*Perossidi:* $"Me" (1^degree-2^degree "gruppo") + ch("O2^2-")$ (n.o. $-1$) \
$"Perossido" + "di" + "nome Me"$ \
Eccezioni: #ch("H2O2") acqua ossigenata.

*Superossidi:* $"Me" (1^degree "gruppo") + ch("O2^-")$ (n.o. $-1/2$) \
$"Superossido" + "di" + "nome Me"$

*Idracidi:* $"NMe" + ch("H+")$ (n.o. $+1$) \
$"Acido" + "radice NMe" + "-idrico"$ \
$\{#ch("HCN"), #ch("HCl"), #ch("H2S"), #ch("HF"), #ch("HI"), #ch("HBr"), #ch("HAt"), #ch("H2Se")\}$

*Idruri:* $"Me/NMe" + ch("H")$
- Metallici: $"Me" + ch("H-")$ (n.o. $-1$)
- Covalenti: $"NMe" (13^degree-14^degree-15^degree "gruppo") + ch("H")$ \
$"Idruro" + ("di") + "elemento" + "-oso/-ico"$ \
Eccezioni: #ch("CH4") Metano, #ch("NH3") Ammoniaca, #ch("BH3") Borano, #ch("SiH4") Silano, #ch("PH3") Fosfina, #ch("AsH3") Arsina.

*Sali binari:* $"Me/NMe" + "NMe"$ (Idrossido + Idracido) \
$"radice NMe" + "-uro" + ("di") + "nome Me" + "-oso/-ico"$ \
Esempi: #ch("PCl3"), #ch("PCl5"), #ch("CS2"), #ch("As2S3"), #ch("SiCl4").

== IUPAC

*Ossidi basici* ($"Me" + ch("O2")$) e *Ossidi acidi* ($"NMe" + ch("O2")$): \
$"prefisso" + "ossido" + "di" + "prefisso" + "nome elemento"$

#align(center)[
  #table(
    columns: 4,
    [1], [mono-], [7], [epta-],
    [2], [di-], [8], [otta-],
    [3], [tri-], [9], [nona-],
    [4], [tetra-], [10], [deca-],
    [5], [penta-], [11], [undeca-],
    [6], [esa-], [12], [dodeca-],
  )
]

Caso del Cromo (#ch("Cr")) e Manganese (#ch("Mn")):
- #ch("Cr"): $+2, +3 arrow.r$ Me (ossidi basici); $+6 arrow.r$ NMe (ossido acido).
- #ch("Mn"): $+2, +3 arrow.r$ Me (ossidi basici); $+4 arrow.r$ anfotero; $+6, +7 arrow.r$ NMe (ossidi acidi).

*Idracidi:* \
$"radice NMe" + "-uro" + "di" + "prefisso" + "idrogeno"$

*Idruri:* \
$"prefisso" + "idruro" + "di" + "nome elemento"$

*Sali binari:* \
$"prefisso" + "radice NMe" + "-uro" + "di" + "prefisso" + "nome Me"$

= Composti ternari

== Tradizionale

*Idrossidi:* $"Me" + ch("OH-")$ (ossidrile) [$"ossido" + ch("H2O")$] \
$"idrossido" + ("di") + "nome Me" + "-oso/-ico"$

*Ossiacidi:* $ch("H") + "NMe" + ch("O")$ [$"anidride" + ch("H2O")$] \
$"Acido" + "prefisso" + "nome NMe" + "-oso/-ico"$ \
Eccezioni:
$ cases(ch("P")_(3, 5), ch("B")_3, ch("As")_(3, 5), ch("Sb")_(3, 5)) quad cases(
  + 1 ch("H2O") arrow.r "meta-",
  + 2 ch("H2O") arrow.r "piro-",
  + 3 ch("H2O") arrow.r "orto-"
) wide ch("Si")_4 quad cases(
  + 1 ch("H2O") arrow.r "meta-",
  + 2 ch("H2O") arrow.r "orto-"
) $
- Cromo ($+6$):
  - $ch("CrO3 + H2O -> H2CrO4")$ (acido cromico)
  - $ch("2 CrO3 + H2O -> H2Cr2O7")$ (acido dicromico)

*Sali ternari:* $"Me" + "NMe" + ch("O")$ (idrossidi + ossiacidi) \
$"prefisso" + "nome NMe" + "-ito/-ato" + ("di") + "nome Me" + "-oso/-ico"$

*Sali acidi:* $"Me" + ch("H") + "NMe" + ch("O")$
- da ossiacidi: $"nome NMe" + "-ito/-ato" + ("mono/bi-") + "acido" + ("di") + "nome Me" + "-oso/-ico"$
- da idracidi ($16^degree$ gruppo): $"nome NMe" + "-uro" + "acido" + ("di") + "nome Me" + "-oso/-ico"$
- Eccezioni:
  - #ch("NaHCO3"): Bicarbonato di sodio
  - #ch("Sn(HSO4)4"): Bisolfato stannico (o #ch("Sn(HSO3)4"): Bisolfito stannico)

== IUPAC

*Idrossidi:* \
$"prefisso" + "idrossido" + "di" + "nome Me"$ (Notazione di Stock: n.o. in cifre romane)

*Ossiacidi:* \
$"Acido" + "prefisso" + "osso" + "prefisso" + "nome NMe" + "-ico"$ (Notazione di Stock: n.o. in cifre romane)

*Sali ternari:* \
$("prefisso") + "prefisso" + "osso" + "nome NMe" + "-ato" + "di" + "nome Me"$ (Notazione di Stock)

*Sali acidi:*
- da ossiacidi: $("prefisso") + "prefisso" + "idrogeno" + "nome NMe" + "-ato" + "di" + "nome Me"$ (Notazione di Stock)
- da idracidi: $"idrogeno" + "nome NMe" + "-uro" + "di" + "nome Me"$ (Notazione di Stock)

= Esercizi

== Esercizio 1

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    Dati: \
    $m = 3,71 "g"$ \
    $V = 1,29 "L"$ \
    $P = 721 "mmHg"$ \
    $T = 65 degree "C" = 338,15 "K"$

    $ %_x = (i_x dot "MM"_x)/("MM"_c) dot 100 arrow.r i_x = (%_x dot "MM"_c)/("MM"_x dot 100) $
  ],
  [
    #image("ac143232-a97e-4b60-942a-8e6e8ba0f7b2-12_514_6948_15_82", width: 70%)
  ]
)
#v(1em)

$ "MM"_c = (m R T)/(P V) = (3,71 "g" dot 0,0821 ("L" dot "atm")/("mol" dot "K") dot 338,15 "K")/(721/760 "atm" dot 1,29 "L") = 84,78 "g/mol" $

$ cases(
  i_(ch("Cl")) = (83,43 dot 84,78 "g/mol")/(35,45 "g/mol" dot 100) approx 2,
  i_(ch("H")) approx 2,
  i_(ch("C")) approx 1
) ==> ch("CH2Cl2") $

== Esercizio 2

Composto incognito, determinare densità a $P, T$ standard (NTP): \
$V = 27 "L"$, $d = 1,41 "g/L"$ (per $1 "mol"$).

$ d = m/V arrow.r m = d dot V = 27 "L" dot 1,41 "g/L" = 38,07 "g" approx 38,7 "g" quad ("essendo 1 mol, questa è anche MM") $

$ P V = m/("MM") R T arrow.r d = (P dot "MM")/(R T) = (1 "atm" dot 38,7 "g/mol")/(0,0821 ("L" dot "atm")/("mol" dot "K") dot 273,15 "K") = 1,7 "g/L" $

Oppure a NTP:
$ d = m/V = (38,7 "g")/(22,414 "L") = 1,7 "g/L" $

== Esercizio 3

$ ch("CH3CH2OH (l) + 3 O2 (g) -> 2 CO2 (g) + 3 H2O (g)") $

$ n_(ch("CH3CH2OH")) &= (30 "g")/(46,08 "g/mol") = 0,651 "mol" quad ("LIMITANTE") \
n_(ch("O2")) &= (P V)/(R T) = (1 "atm" dot 150 "L")/(0,0821 ("L" dot "atm")/("mol" dot "K") dot 273,15 "K") = 6,692 "mol" quad ("o " n = (150 "L")/(22,414 "L/mol") = 6,692 "mol") $

$n_"effettive" (ch("O2")) = 3 dot 0,651 = 1,953 "mol"$ $arrow.r$ $4,739 "mol"$ non reagite. \
A $T = 500 degree "C" = 773,15 "K"$ e $V_"tot" = 500 "L"$:

$ n_"TOT" = 1,953 + 0,651 dot 2 + 4,739 = 7,994 "mol" $

$ P_"TOT" = (7,994 "mol" dot 0,0821 ("L" dot "atm")/("mol" dot "K") dot 773,15 "K")/(500 "L") = 1,01435 "atm" $

Pressioni e volumi parziali ($P_i = X_i dot P_"tot"$, $V_i = X_i dot V_"tot"$):
$ P_(ch("O2")) &= (4,739)/(7,994) dot 1,01435 = 0,601 "atm" &wide P_(ch("CO2")) &= 0,165 "atm" &wide P_(ch("H2O")) &= 0,248 "atm" \
V_(ch("O2")) &= (4,739)/(7,994) dot 500 "L" = 296,41 "L" &wide V_(ch("CO2")) &= 81,44 "L" &wide V_(ch("H2O")) &= 122,15 "L" $

== Esercizio 4

Miscela #ch("NH3 + H2O") con $X_(ch("NH3")) = 0,21$. Si calcoli $%_(p/p)$ e molalità $m$:

$ X_(ch("NH3")) = (n_(ch("NH3")))/(n_(ch("NH3")) + n_(ch("H2O"))) = 0,21 ==> "ponendo " n_"tot" = 1 "mol": quad cases(n_(ch("NH3")) = 0,21 "mol", n_(ch("H2O")) = 0,79 "mol") $

$ m_(ch("NH3")) &= 0,21 "mol" dot 17,03 "g/mol" = 3,58 "g" \
m_(ch("H2O")) &= 0,79 "mol" dot 18,02 "g/mol" = 14,24 "g" \
m_"tot" &= 3,58 + 14,24 = 17,82 "g" $

$ %_(p/p) = (3,58 "g")/(17,82 "g") dot 100 = 20,09 % $

$ m = (0,21 "mol")/(14,24 / 1000 "kg") = 14,75 "mol/kg" $

== Esercizio 5

Dati:
$ V_(ch("H2O")) &= 125,5 "mL" quad (d_1 = 1 "g/mL") \
V_(ch("C2H5OH")) &= 68,2 "mL" quad (d = 0,79 "g/mL") \
d_2 ("soluzione") &= 0,954 "g/cm"^3 $
Trovare $V_f$ e $%_(V/V)$.

I volumi non sono sommabili, ma le masse sì:
$ m_(ch("H2O")) &= d dot V = 1 "g/mL" dot 125,5 "mL" = 125,5 "g" \
m_(ch("C2H5OH")) &= d dot V = 0,79 "g/mL" dot 68,2 "mL" = 53,88 "g" $

$ V_f = m_"tot" / d_2 = ((125,5 + 53,88) "g")/(0,954 "g/mL") = 188,03 "mL" $

$ %_(V/V) = (V_(ch("C2H5OH")))/(V_"soluzione") dot 100 = (68,2 "mL")/(188,03 "mL") dot 100 = 36,3 % $

== Esercizio 6

Dati: soluzione di #ch("HCl") con $d = 1,2 "g/cm"^3$, $%_(p/p) = 37 %$ di #ch("HCl"). Calcolare il volume necessario per preparare $80 "mL"$ a concentrazione $3,4 "M"$:

$ n_(ch("HCl")) &= M dot V = 3,4 "mol/L" dot 0,080 "L" = 0,272 "mol" \
m_(ch("HCl")) &= n dot "MM" = 0,272 "mol" dot 36,46 "g/mol" = 9,92 "g" $

$ %_(p/p) = m_"soluto" / m_"soluzione" dot 100 arrow.r m_"soluzione" = m_"soluto" / (%_(p/p)) dot 100 = (9,92 "g")/(37) dot 100 = 26,81 "g" $

$ d = m/V arrow.r V = m/d = (26,81 "g")/(1,2 "g/mL") = 22,3 "mL" $


= Esercizi

== Esercizio 7

Dati: $m_"soluzione" = 800 "g"$ di #ch("NaOH + H2O"). \
$m_i = 0,5 "m" arrow.r 0,5 "mol"$ di #ch("NaOH") in $1 "kg"$ di #ch("H2O") ($m_"soluz" = 1020 "g"$). \
$m_f = 0,15 "m"$. Calcolare $m_(ch("H2O"))$ da aggiungere.

$ m_(ch("NaOH")) = n dot "MM" = 0,5 "mol" dot 40 "g/mol" = 20 "g" $

Proporzione per $800 "g"$ di soluzione iniziale:
$ 0,5 "mol" : 1020 "g" = x : 800 "g" ==> x = 0,392 "mol" $
$ m_(ch("NaOH")) = 0,392 "mol" dot 40 "g/mol" = 15,68 "g" $

$ m_(ch("H2O")) = 800 "g" - 15,68 "g" = 784 "g" $
$ 0,15 "mol/kg" = (0,392 "mol")/(m_(ch("H2O"))) arrow.r m_(ch("H2O")) = (0,392 "mol")/(0,15 "mol/kg") = 2,613 "kg" = 2613 "g" $

$ m_(ch("H2O")) "aggiunta" = 2613 "g" - 784 "g" = 1829 "g" $

== Esercizio 8 (Proprietà colligative: tensione di vapore)

Soluzione di #ch("C8H8O") (non volatile, non elettrolita) $+$ #ch("H2O"):
$ P_"soluz" = cancel(P_(ch("C8H8O"))^0 X_(ch("C8H8O"))) + P_(ch("H2O"))^0 X_(ch("H2O")) $

Dati: $%_(p/p) = 11,2 %$, $P_(ch("H2O"))^0 (30 degree "C") = 0,042 "atm"$. Calcolare $P$ a $30 degree "C"$ (in $"bar"$ e $"atm"$).

$ n_(ch("C8H8O")) &= (11,2 "g")/(120,16 "g/mol") = 9,32 dot 10^(-2) "mol" \
n_(ch("H2O")) &= ((100 - 11,2) "g")/(18,02 "g/mol") = 4,928 "mol" $

$ X_(ch("C8H8O")) = (9,32 dot 10^(-2) "mol")/((9,32 dot 10^(-2) + 4,928) "mol") = 0,019 $

$ P_"soluz" = P_A^0 dot (1 - X_(ch("C8H8O"))) = 0,042 "atm" dot (1 - 0,019) = 0,041 "atm" = 4,15 dot 10^(-2) "bar" $

== Esercizio 9 (Abbassamento crioscopico)

Dati:
- $2,18 "g"$ composto A $+$ $127 "g"$ solvente $arrow.r Delta T_"cr" = 1,9 degree "C"$
- $3,85 "g"$ composto B $+$ $205 "g"$ solvente $arrow.r Delta T_"cr" = 1,1 degree "C"$
- Composto B: $"MM" = 162 "uma"$
- Composto A: $"MM" = ?$

$ n_B &= (3,85 "g")/(162 "g/mol") = 2,38 dot 10^(-2) "mol" \
m_B &= (2,38 dot 10^(-2) "mol")/(0,205 "kg") = 1,16 dot 10^(-1) "mol/kg" $

$ Delta T_"cr" = K_"cr" dot m_B arrow.r K_"cr" = (Delta T_"cr")/(m_B) = (1,1 degree "C")/(1,16 dot 10^(-1) "mol/kg") = 9,483 (degree "C" dot "kg")/"mol" $

$ m_A &= (Delta T_"cr")/(K_"cr") = (1,9 degree "C")/(9,483 (degree "C" dot "kg")/"mol") = 0,2 "mol/kg" \
m &= n / ("kg"_"solvente") arrow.r n_A = m_A dot "kg"_"solvente" = 0,2 "mol/kg" dot 0,127 "kg" = 2,54 dot 10^(-2) "mol" \
"MM"_A &= m_"massa" / n_A = (2,18 "g")/(2,54 dot 10^(-2) "mol") = 85,83 "g/mol" $

== Esercizio 10 (Innalzamento ebullioscopico con elettroliti)

Dati: $1,5 "g"$ di #ch("Na2SO4") $+$ $6 "g"$ di #ch("KI") (non volatili, elettroliti forti) $+$ $500 "cm"^3$ di #ch("H2O") ($d = 0,995 "g/cm"^3$). \
$arrow.r$ Coefficiente di van 't Hoff: $i = 1 + alpha (z - 1)$, $K_"eb" = 0,512 (degree "C" dot "kg")/"mol"$.

Dissociazioni:
- #ch("Na2SO4 -> 2 Na+ + SO4^2-") $arrow.r i = 1 + 1(3 - 1) = 3$
- #ch("KI -> K+ + I-") $arrow.r i = 1 + 1(2 - 1) = 2$

$ n_(ch("Na2SO4")) &= (1,5 "g")/(142,06 "g/mol") = 10,56 dot 10^(-3) "mol" \
n_(ch("KI")) &= (6 "g")/(166 "g/mol") = 3,61 dot 10^(-2) "mol" $

$ m_(ch("H2O")) = d dot V = 0,995 "g/cm"^3 dot 500 "cm"^3 = 497,5 "g" = 0,4975 "kg" $

$ Delta T_"eb" = K_"eb" dot m_"tot" = 0,512 dot ((10,56 dot 10^(-3) "mol" dot 3) + (3,61 dot 10^(-2) "mol" dot 2))/(0,4975 "kg") = 0,11 degree "C" $

== Esercizio 11 (Pressione osmotica)

Dati:
$ cases(
  "Sol 1": 0,01 "M" ch("CaCl2") quad ("elettrolita forte"),
  "Sol 2": 0,025 "M" "acido debole" ch("HA")
) quad "Isotoniche a " T = "costante" $

#ch("CaCl2 -> Ca^2+ + 2 Cl-") $arrow.r i_1 = 1 + 1(3 - 1) = 3$. \
Calcolare $alpha$ di #ch("HA"):

$ pi_1 = pi_2 ==> M_1 R T i_1 = M_2 R T i_2 $
$ i_2 = (M_1 i_1)/(M_2) = (0,01 "M" dot 3)/(0,025 "M") = 1,2 $

Per #ch("HA <=> H+ + A-"):
$ i_2 = 1 + alpha (2 - 1) = 1,2 ==> alpha = 0,2 $

= Termochimica

== Esercizio 1 (Entalpia di formazione)

Dati: $Delta H_R^0 (ch("CH3OH")) = -726,5 "kJ/mol"$ a $1 "atm"$ e $25 degree "C"$. Calcolare $Delta H_f^0 (ch("CH3OH"))$.

$ ch("CH3OH + 3/2 O2 -> CO2 + 2 H2O") $

$ Delta H_R^0 = (Delta H_f^0 (ch("CO2")) + 2 Delta H_f^0 (ch("H2O"))) - Delta H_f^0 (ch("CH3OH")) $

$ Delta H_f^0 (ch("CH3OH")) &= (Delta H_f^0 (ch("CO2")) + 2 Delta H_f^0 (ch("H2O"))) - Delta H_R^0 \
&= (-393,5 "kJ/mol" + 2 dot (-285,8 "kJ/mol")) - (-726,5 "kJ/mol") = -238,6 "kJ/mol" $

In kilocalorie ($1 "cal" = 4,184 "J" arrow.r 1 "kcal" = 4184 "J" = 4,184 "kJ"$):
$ Delta H_f^0 (ch("CH3OH")) = (-238,6 "kJ/mol")/(4,184 "kJ/kcal") = -57 "kcal/mol" $

== Esercizio 2 (Legge di Hess)

Reazione obiettivo: #ch("P4 + 10 Cl2 -> 4 PCl5")
- $"RO"_1$: #ch("P4 + 6 Cl2 -> 4 PCl3") $wide Delta H_1 = -1207 "kJ"$
- $"RO"_2$: #ch("PCl5 -> PCl3 + Cl2") $wide Delta H_2 = 157 "kJ"$

Combinazione delle reazioni:
$ cases(
  "RO"_1: ch("P4 + 6 Cl2 -> 4 PCl3") &wide Delta H_1 = -1207 "kJ",
  "RO"_2 ("invertita" times 4): ch("4 PCl3 + 4 Cl2 -> 4 PCl5") &wide Delta H_2' = -157 dot 4 "kJ"
) $
Somma: #ch("P4 + 10 Cl2 -> 4 PCl5")
$ Delta H = Delta H_1 + Delta H_2' = -1207 - 157 dot 4 = -1835 "kJ" $

== Esercizio 3 (Calore a volume costante)

$ ch("4 NH3 (g) + 5 O2 (g) -> 4 NO (g) + 6 H2O (g)") $

Dati: $V_(ch("NH3")) = 1,25 "m"^3 = 1250 "L"$ (a NTP). Calcolare $Q$ a $V, T$ costanti ($25 degree "C"$, dove $Q_V = Delta U$) e il volume di aria necessario per la reazione (composizione $\%_(V/V)$: $78 %$ #ch("N2"), $21 %$ #ch("O2"), $1 %$ #ch("Ar")).

$ Delta H = Delta U + Delta n R T arrow.r Delta U &= Delta H - Delta n R T \
&= -905,88 "kJ" - (10 - 9) "mol" dot 8,314 dot 10^(-3) "kJ"/("mol" dot "K") dot 298,15 "K" \
&= -908,36 "kJ" $

$ n_(ch("NH3")) = (P V)/(R T) = (1 "atm" dot 1250 "L")/(0,0821 ("L" dot "atm")/("mol" dot "K") dot 273,15 "K") = 55,767 "mol" $

$ -908,36 "kJ" : 4 "mol" = x : 55,767 "mol" ==> x = Delta U = -12664,13 "kJ" quad (Q = -12664,13 "kJ") $

Volume d'aria necessario:
$ n_(ch("O2")) &= 5/4 n_(ch("NH3")) = 69,709 "mol" \
n_"aria" &= (n_(ch("O2")))/(0,21) = (69,709 "mol")/(0,21) = 331,948 "mol" \
V_"aria" &= (331,948 "mol" dot 0,0821 ("L" dot "atm")/("mol" dot "K") dot 273,15 "K")/(1 "atm") = 7440,5 "L" $

= Equilibrio chimico: esercizi

== Esercizio 1

Dati: $V_"TOT" = 120 "L"$, $T = 550 degree "C"$. Reazione: $ch("C (s) + CO2 (g) <=> 2 CO (g)")$ (inizialmente $14 "mol"$ di #ch("C") e $3 "mol"$ di #ch("CO2")). \
All'equilibrio la fase gassosa è composta da: $40 %$ #ch("CO") e $60 %$ #ch("CO2") ($%_(V/V)$). Calcolare $P_"TOT"$, $K_c$ e $m_(ch("C (s)"))$.

#align(center)[
  #table(
    columns: 5,
    [], [#ch("C (s)")], [#ch("CO2 (g)")], [#ch("CO (g)")], [$n_"gas tot"$],
    [i], [$14$], [$3$], [$-$], [$3$],
    [v], [$-x$], [$-x$], [$+2x$], [$-x + 2x$],
    [eq], [$14 - x$], [$3 - x$], [$2x$], [$3 + x$],
  )
]

$ X_(ch("CO")) = 0,40 arrow.r (2x)/(3 + x) = 0,40 ==> 2x = 0,40 (3 + x) ==> x = 0,75 "mol" $

$ n_(ch("CO2")) &= 3 - x = 2,25 "mol" \
n_(ch("CO")) &= 2x = 1,5 "mol" \
n_"gas tot" &= 3 + 0,75 = 3,75 "mol" $

$ P_"TOT" &= (n R T)/V = (3,75 "mol" dot 0,0821 ("L" dot "atm")/("mol" dot "K") dot (550 + 273,15) "K")/(120 "L") = 2,11 "atm" \
K_c &= (n_(ch("CO")) / V)^2 / (n_(ch("CO2")) / V) = (1,5 "mol" / 120 "L")^2 / (2,25 "mol" / 120 "L") = 8,33 dot 10^(-3) \
m_(ch("C")) &= (14 - 0,75) "mol" dot 12,01 "g/mol" = 159,1 "g" $

== Esercizio 2

Se $Delta n = 0 ==> K_c = K_p = K_x = K_n$. \
Dati: $T = 1010 degree "C"$, $K_c = 0,639$, $m_0 (ch("H2")) = 2,02 "g"$. Calcolare $m_(ch("H2"))$ all'equilibrio (per una reazione del tipo $ch("MO (s) + H2 (g) <=> M (s) + H2O (g)")$).

$ n_0 (ch("H2")) = (2,02 "g")/(2,02 "g/mol") = 1 "mol" $
$ K_n = (n_(ch("H2O")))/(n_(ch("H2"))) ==> x/(1 - x) = 0,639 ==> x = 0,39 "mol" $

$ n_(ch("H2")) &= 1 - 0,39 = 0,61 "mol" \
m_(ch("H2")) &= 0,61 "mol" dot 2,02 "g/mol" = 1,23 "g" $

== Esercizio 3

Dati: $V = 472 "cm"^3 = 0,472 "L"$, $T = 1000 "K"$, $P = 2,175 "atm"$, $m_(ch("COCl2")) = 0,631 "g"$. Calcolare $K_p$ e $K_c$.

$ ch("COCl2 (g) <=> CO (g) + Cl2 (g)") wide Delta n = 2 - 1 = 1 $

$ n_0 (ch("COCl2")) = (0,631 "g")/(98,91 "g/mol") = 6,38 dot 10^(-3) "mol" $

#align(center)[
  #table(
    columns: 5,
    [], [#ch("COCl2")], [#ch("CO")], [#ch("Cl2")], [$n_"tot"$],
    [i], [$6,38 dot 10^(-3)$], [$-$], [$-$], [$6,38 dot 10^(-3)$],
    [v], [$-x$], [$+x$], [$+x$], [$+x$],
    [eq], [$6,38 dot 10^(-3) - x$], [$x$], [$x$], [$6,38 dot 10^(-3) + x$],
  )
]

$ n_"tot" = (P V)/(R T) = (2,175 "atm" dot 0,472 "L")/(0,0821 ("L" dot "atm")/("mol" dot "K") dot 1000 "K") = 1,25 dot 10^(-2) "mol" $

$ 6,38 dot 10^(-3) + x = 1,25 dot 10^(-2) ==> x = 6,12 dot 10^(-3) "mol" $
$ n_(ch("COCl2")) = 6,38 dot 10^(-3) "mol" - 6,12 dot 10^(-3) "mol" = 2,6 dot 10^(-4) "mol" $

$ K_p = ((n_(ch("CO")) / n_"tot" dot P_"tot") (n_(ch("Cl2")) / n_"tot" dot P_"tot")) / (n_(ch("COCl2")) / n_"tot" dot P_"tot") = (((6,12 dot 10^(-3))/(1,25 dot 10^(-2)) dot 2,175) ((6,12 dot 10^(-3))/(1,25 dot 10^(-2)) dot 2,175)) / ((2,6 dot 10^(-4))/(1,25 dot 10^(-2)) dot 2,175) = 25,07 $

$ K_c = K_p / (R T)^(Delta n) = (25,07)/(0,0821 dot 1000 "K")^1 = 0,305 $

= Acidi e basi: esercizi

$ K_c = ([ch("H3O+")] [ch("OH-")]) / ([ch("H2O")]^2) wide K_w = K_c dot [ch("H2O")]^2 = 1,0 dot 10^(-14) "M"^2 wide K_a dot K_b = K_w $

== Esercizio 1

Dati: $V = 1,2 "L"$, ioni idrogeno $= 2,46 dot 10^(-4) "mol"$. Calcolare $"pH"$ e $[ch("OH-")]$.

$ [ch("H3O+")] = (2,46 dot 10^(-4) "mol")/(1,2 "L") = 2,05 dot 10^(-4) "mol/L" approx 2 dot 10^(-4) "mol/L" $

$ "pH" = -log (2 dot 10^(-4)) = 3,7 wide "pOH" = 14 - 3,7 = 10,3 $

$ [ch("OH-")] = 10^(-"pOH") = 10^(-10,3) = 5 dot 10^(-11) "M" quad ("oppure " [ch("OH-")] = K_w / ([ch("H3O+")]) = (1,0 dot 10^(-14))/(2 dot 10^(-4) "M") = 5 dot 10^(-11) "M") $

== Esercizio 2

Dati:
- #ch("HCl"): $V = 50 "mL"$, $0,4 "M"$
- #ch("Ca(OH)2"): $V = 50 "mL"$, $0,4 "M"$

$ ch("2 HCl + Ca(OH)2 -> CaCl2 + 2 H2O") wide cases(ch("HCl -> H+ + Cl-"), ch("Ca(OH)2 -> Ca^2+ + 2 OH-")) $

$ n_(ch("HCl")) &= M dot V = 0,4 "mol/L" dot 0,05 "L" = 2,0 dot 10^(-2) "mol" arrow.r n_(ch("H+")) = 2,0 dot 10^(-2) "mol" \
n_(ch("Ca(OH)2")) &= M dot V = 0,4 "mol/L" dot 0,05 "L" = 2,0 dot 10^(-2) "mol" arrow.r n_(ch("OH-")) = 2 n_(ch("Ca(OH)2")) = 4,0 dot 10^(-2) "mol" $

$2,0 dot 10^(-2) "mol"$ verranno neutralizzate, ma $2,0 dot 10^(-2) "mol"$ di #ch("OH-") rimarranno, quindi:

$ [ch("OH-")] = (2,0 dot 10^(-2) "mol")/((0,05 + 0,05) "L") = 0,2 "M" $
$ "pOH" = -log (0,2) = 0,7 wide "pH" = 14 - 0,7 = 13,3 $

= Complementi Capitolo 1: Elementi, molecole, miscele e sistemi

