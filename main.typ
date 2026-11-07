#import "@preview/cetz:0.3.4": canvas, draw
#set page(paper: "a4", margin: 2cm)
#set text(lang: "it", size: 11pt)
#set par(justify: true)
#set heading(numbering: none)
#set page(margin: 1.5cm)
#let immagine-originale = image
#let image(nome-file, ..args) = immagine-originale("images/" + nome-file, ..args)
// Nota / osservazione
#let nota(body) = block(
  width: 100%, fill: luma(240), inset: 8pt, radius: 3pt, body,)
#let circ = sym.degree
#let varphi = $phi$
#set page(
  numbering: "1",
  number-align: bottom + right,
)


#set heading(numbering: "1.")
// --- INTESTAZIONE ---
#align(center)[
  #v(0.5cm)
  #line(length: 100%, stroke: 1.5pt)
  #v(0.4cm, weak: true)
  #text(size: 20pt, weight: "bold", fill: black )[Appunti di Elementi di Costruzione di Macchine  ] \
  #v(0.4cm, weak: true)
  #text(size: 12pt, style: "italic")[Corso del Prof. Eugenio Brusa] \
  #v(0.2cm, weak: true)
  #line(length: 100%, stroke: 0.5pt)
  #v(0.4cm, weak: true)
  
  // Equivalente delle due minipage affiancate
  #grid(
    columns: (1fr, 1fr),
    align(left)[
      *Autori:* \
      Marco Vicari \
 cazzone
    ],
    align(right)[
      *Istituzione:* \
      Politecnico di Torino \
      #text(size: 9pt)[Anno Accademico 2026/2027]
    ]
  )
  #v(1cm)
]

// --- INDICE ---
#outline(indent: auto)
#pagebreak()
= *Alberi di Trasmissione*

== Alberi: dimensionamento e verifica
<alberi-dimensionamento-e-verifica>

Un passaggio fondamentale nel dimensionamento è la distinzione formale tra assi e alberi:

- *Asse (Axle):* Elemento rotante o fisso adibito a sostenere elementi ruotanti. È soggetto unicamente a flessione e non trasmette momento torcente significativo (es. asse ferroviario).
- *Albero (Shaft):* Elemento rotante di trasmissione che eroga potenza. Subisce flessione (rotante) ed è specificamente soggetto a momento torcente.

// [DA SLIDE]
Assi e alberi rappresentano gli organi di macchina più prossimi al modello strutturale di *trave*, dal quale tuttavia si distinguono perché sono destinati a *ruotare o a oscillare attorno al proprio asse geometrico*. Questa esigenza cinematica fa sì che essi presentino quasi sempre *sezione trasversale circolare* (piena o cava), fatta eccezione per organi di forma speciale quali gli *alberi a gomito* o gli *alberi a camme*, e salvo localizzate variazioni geometriche necessarie al collegamento degli organi (cave per linguette, tratti scanalati, fori). Oltre alla flessione e (negli alberi) alla torsione, sia gli assi sia gli alberi possono trovarsi a sopportare anche *carichi assiali* (ad esempio generati da ruote dentate elicoidali o coniche).

Nel caso degli *assi*, per estensione rientrano nella medesima categoria progettuale anche:
- gli *elementi cavi rotanti soggetti a flessione* ma privi di coppia torcente trasmessa (come i tamburi rotanti folli);
- gli *assi fissi* (non rotanti) sui quali ruotano organi folli o che ricevono *carichi rotanti*: si noti che in un asse rotante sottoposto a carichi di direzione fissa (o in un asse fisso sottoposto a un carico rotante) ogni fibra del materiale subisce una *flessione rotante* (tensione normale variabile ciclicamente nel tempo da trazione a compressione ad ogni giro, quindi sollecitazione a fatica), mentre un asse fisso caricato da forze di direzione fissa lavora in flessione statica.

Dal punto di vista costruttivo e morfologico, lungo lo sviluppo assiale di un albero la sezione varia in modo articolato per consentire l'infilaggio, il bloccaggio assiale (tramite spallamenti) e il calettamento dei vari organi, nonostante i severi *effetti di intaglio* (concentrazione locale delle tensioni) che tali discontinuità geometriche comportano. Si distinguono in particolare tre tipologie di tratti cilindrici o conici:
- *Fusto:* il tratto intermedio dell'albero che raccorda e distanzia le zone di calettamento, trasmettendo le azioni interne da una sezione all'altra;
- *Sedi:* i tratti specificamente lavorati (spesso dotati di cave per linguette o scanalature) destinati ad alloggiare gli organi che scambiano potenza (ruote dentate, pulegge, giunti);
- *Perni (di estremità o intermedi):* le porzioni cilindriche corte, rettificate e con ristrette tolleranze dimensionali e geometriche, destinate ad alloggiare e sopportare i cuscinetti di supporto.

// [RIORDINATO DA SLIDE]
#align(center)[

#canvas(length: 1cm, {
  import draw: *
  
  // Assi di riferimento (tratto-punto)
  line((-0.5, 0), (14.5, 0), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  line((1.0, -1.3), (1.0, 1.3), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  line((6.8, -0.7), (6.8, 0.7), stroke: (dash: "dash-dotted", thickness: 0.6pt))
  line((7.7, -0.7), (7.7, 0.7), stroke: (dash: "dash-dotted", thickness: 0.6pt))

  // ----------------------------------------------------
  // SEZIONE 1: Sede sinistra (x: 0 -> 2.5)
  // ----------------------------------------------------
  // Faccia sinistra e smussi
  line((0, 0.8), (0, -0.8), stroke: 1pt)
  line((0, 0.8), (0.1, 1.0), stroke: 1pt)
  line((0, -0.8), (0.1, -1.0), stroke: 1pt)
  // Profilo esterno
  line((0.1, 1.0), (2.5, 1.0), stroke: 1pt)
  line((0.1, -1.0), (2.5, -1.0), stroke: 1pt)
  // Scanalatura superiore (cava per linguetta)
  line((0, 0.6), (1.4, 0.6), stroke: 1pt)
  arc((1.4, 1.0), start: -90deg, stop: 0deg, radius: 0.4, anchor: "origin", stroke: 1pt)
  // Foro cieco interno (tratteggiato)
  line((0, 0.35), (1.5, 0.35), stroke: (dash: "dashed", thickness: 0.8pt))
  line((1.5, 0.35), (1.8, 0), stroke: (dash: "dashed", thickness: 0.8pt))
  line((1.8, 0), (1.5, -0.35), stroke: (dash: "dashed", thickness: 0.8pt))
  line((1.5, -0.35), (0, -0.35), stroke: (dash: "dashed", thickness: 0.8pt))
  // Proiezione larghezza scanalatura (tratteggiata)
  line((0, 0.8), (1.4, 0.8), stroke: (dash: "dashed", thickness: 0.8pt))
  // Parete di cambio sezione
  line((2.5, 1.0), (2.5, -1.0), stroke: 1pt)

  // ----------------------------------------------------
  // SEZIONE 2: Perno intermedio (x: 2.5 -> 4.0)
  // ----------------------------------------------------
  line((2.5, 0.5), (4.0, 0.5), stroke: 1pt)
  line((2.5, -0.5), (4.0, -0.5), stroke: 1pt)
  line((4.0, 1.1), (4.0, -1.1), stroke: 1pt)

  // ----------------------------------------------------
  // SEZIONE 3: Fusto (x: 4.0 -> 6.5)
  // ----------------------------------------------------
  line((4.0, 1.1), (6.5, 1.1), stroke: 1pt)
  line((4.0, -1.1), (6.5, -1.1), stroke: 1pt)
  line((6.5, 1.1), (6.5, -1.1), stroke: 1pt)

  // ----------------------------------------------------
  // SEZIONE 4: Sede centrale con asola (x: 6.5 -> 8.0)
  // ----------------------------------------------------
  line((6.5, 1.1), (8.0, 1.1), stroke: 1pt)
  line((6.5, -1.1), (8.0, -1.1), stroke: 1pt)
  line((8.0, 1.1), (8.0, -1.1), stroke: 1pt)
  // Asola
  line((6.8, 0.3), (7.7, 0.3), stroke: 1pt)
  line((6.8, -0.3), (7.7, -0.3), stroke: 1pt)
  arc((6.8, 0), start: 90deg, stop: 270deg, radius: 0.3, anchor: "origin", stroke: 1pt)
  arc((7.7, 0), start: -90deg, stop: 90deg, radius: 0.3, anchor: "origin", stroke: 1pt)

  // ----------------------------------------------------
  // SEZIONE 5: Fusto rastremato (x: 8.0 -> 11.5)
  // ----------------------------------------------------
  line((8.0, 1.1), (11.5, 0.9), stroke: 1pt)
  line((8.0, -1.1), (11.5, -0.9), stroke: 1pt)
  line((11.5, 0.9), (11.5, -0.9), stroke: 1pt)

  // ----------------------------------------------------
  // SEZIONE 6: Perno estremità (x: 11.5 -> 13.8)
  // ----------------------------------------------------
  // Primo gradino
  line((11.5, 0.75), (12.5, 0.75), stroke: 1pt)
  line((11.5, -0.75), (12.5, -0.75), stroke: 1pt)
  line((12.5, 0.75), (12.5, -0.75), stroke: 1pt)
  // Secondo gradino (parte filettata esterna)
  line((12.5, 0.55), (13.6, 0.55), stroke: 1pt)
  line((12.5, -0.55), (13.6, -0.55), stroke: 1pt)
  // Linee di filettatura interne (sottili)
  line((12.5, 0.45), (13.8, 0.45), stroke: 0.6pt)
  line((12.5, -0.45), (13.8, -0.45), stroke: 0.6pt)
  // Smusso finale e faccia destra
  line((13.6, 0.55), (13.8, 0.45), stroke: 1pt)
  line((13.6, -0.55), (13.8, -0.45), stroke: 1pt)
  line((13.8, 0.45), (13.8, -0.45), stroke: 1pt)

  // ----------------------------------------------------
  // ANNOTAZIONI (Frecce e Testi)
  // ----------------------------------------------------
  // Sede sx
  line((1.8, -1.9), (1.4, -1.1), mark: (end: ">"), stroke: red)
  content((1.8, -2.1), [Sede], anchor: "north")
  
  // Perno intermedio
  line((3.5, -1.9), (3.1, -0.6), mark: (end: ">"), stroke: red)
  content((3.5, -2.1), [Perno\ intermedio], anchor: "north")
  
  // Fusto sx
  line((5.3, -1.9), (4.9, -1.2), mark: (end: ">"), stroke: red)
  content((5.3, -2.1), [Fusto], anchor: "north")
  
  // Sede centrale
  line((7.5, -1.9), (7.1, -1.2), mark: (end: ">"), stroke: red)
  content((7.5, -2.1), [Sede], anchor: "north")
  
  // Fusto dx rastremato
  line((9.8, -1.9), (9.4, -1.0), mark: (end: ">"), stroke: red)
  content((9.8, -2.1), [Fusto], anchor: "north")
  
  // Perno estremità dx
  line((12.8, -1.9), (12.3, -0.8), mark: (end: ">"), stroke: red)
  content((12.8, -2.1), [Perno\ estremità], anchor: "north")


})

]
#v(1em)

Per limitare pesi e ingombri, la linea di trasmissione viene ottimizzata per operare ad elevata velocità angolare. Poiché la potenza è il prodotto tra coppia e velocità angolare, l'alta velocità permette di abbattere la coppia torcente trasmessa, consentendo l'uso di alberi più snelli. I riduttori di velocità vengono inseriti solo in prossimità dell'utenza finale.
// [RIORDINATO DA SLIDE]
Lungo la linea si inseriscono inoltre giunti e innesti a frizione che fungono da "elemento fusibile": in caso di sovraccarico grave, il giunto cede preservando l'integrità del motore.

// [DA SLIDE]
=== Il concetto di sistema meccanico e la linea di trasmissione
A differenza dell'elemento strutturale isolato (la semplice *trave* studiata nella meccanica strutturale), nella costruzione di macchine si analizza un *sistema meccanico*: un insieme di sottosistemi e componenti collegati tra loro e assemblabili costruttivamente per svolgere una precisa funzione, tipicamente la *trasmissione e il controllo del moto e della potenza* da una sorgente a un utilizzatore.

#align(center)[
  #canvas(length: 1cm, {
    import draw: *
    // Linea d'asse / albero
    line((0.8, 0), (11.2, 0), stroke: 1.4pt)
    
    // Motore M
    rect((0, -0.45), (0.9, 0.45), stroke: 1pt, fill: luma(245))
    arc((0.9, 0.45), start: 90deg, stop: -90deg, radius: 0.45, stroke: 1pt, fill: luma(245))
    content((0.55, 0), [*M*])
    content((0.55, -0.9), [Motore], anchor: "north")

    // Utilizzatore U
    rect((11.1, -0.45), (12.0, 0.45), stroke: 1pt, fill: luma(245))
    arc((11.1, -0.45), start: -90deg, stop: -270deg, radius: 0.45, stroke: 1pt, fill: luma(245))
    content((11.45, 0), [*U*])
    content((11.45, -0.9), [Utilizzatore], anchor: "north")

    // Giunto 1 (sinistra)
    line((2.4, -0.45), (2.4, 0.45), stroke: 1pt)
    line((2.6, -0.45), (2.6, 0.45), stroke: 1pt)
    line((2.2, 0.25), (2.8, 0.25), stroke: 0.8pt)
    line((2.2, -0.25), (2.8, -0.25), stroke: 0.8pt)
    circle((2.5, 1.1), radius: 0.3, stroke: 0.8pt)
    content((2.5, 1.1), [1])
    line((2.5, 0.8), (2.5, 0.45), stroke: 0.6pt)
    content((2.5, -0.9), [Giunto], anchor: "north")

    // Supporto 2 (sinistra - carrello)
    line((4.2, -0.2), (4.8, 0.2), stroke: 1pt)
    circle((4.5, 1.1), radius: 0.3, stroke: 0.8pt)
    content((4.5, 1.1), [2])
    line((4.5, 0.8), (4.5, 0.15), stroke: 0.6pt)

    // Supporto 3 (centro-destra - cerniera/cuscinetto reggispinta)
    line((6.7, -0.2), (7.3, 0.2), stroke: 1pt)
    line((7.0, 0), (7.0, -0.55), stroke: 0.8pt)
    circle((6.8, -0.4), radius: 0.12, stroke: 0.7pt)
    line((6.6, -0.55), (7.4, -0.55), stroke: 0.8pt)
    circle((7.0, 1.1), radius: 0.3, stroke: 0.8pt)
    content((7.0, 1.1), [3])
    line((7.0, 0.8), (7.0, 0.15), stroke: 0.6pt)
    content((5.75, -0.9), [Supporti], anchor: "north")

    // Giunto 1 (destra)
    line((9.4, -0.45), (9.4, 0.45), stroke: 1pt)
    line((9.6, -0.45), (9.6, 0.45), stroke: 1pt)
    line((9.2, 0.25), (9.8, 0.25), stroke: 0.8pt)
    line((9.2, -0.25), (9.8, -0.25), stroke: 0.8pt)
    circle((9.5, 1.1), radius: 0.3, stroke: 0.8pt)
    content((9.5, 1.1), [1])
    line((9.5, 0.8), (9.5, 0.45), stroke: 0.6pt)
    content((9.5, -0.9), [Giunto], anchor: "north")
  })
]

Analizzando lo schema funzionale di una linea di trasmissione tipo, si individuano i seguenti elementi fondamentali:
- *Motore (M):* è la sorgente che genera la potenza meccanica $P$, erogandola all'albero di uscita sotto forma di una coppia motrice $C_m$ a una determinata velocità angolare $omega_m$, secondo la relazione $P = C_m omega_m$.
- *Utilizzatore (U):* è l'organo operatore (dotato di propria inerzia) che richiede coppia per funzionare. Esso riceve la potenza generata dal motore (a meno delle perdite per attrito), ma generalmente la vede trasmessa con una coppia in ingresso $C_u$ e una velocità angolare $omega_u$ *diverse* da quelle del motore, pur restando invariato (nel caso ideale) il loro prodotto:
  $ P = C_m omega_m = C_u omega_u $
  L'utilizzatore, inoltre, può subire urti o danni in esercizio e ripercuoterli a ritroso lungo la linea.
- *Albero di trasmissione e Giunti (1):* per trasferire la potenza da M a U si impiega una linea o un albero rotante, che deve attraversare la macchina risultando leggero (data la sua estensione assiale), poco ingombrante e facilmente accessibile per la manutenzione. I *giunti* (1) collegano l'albero al motore e all'utilizzatore assolvendo quattro possibili funzioni progettuali:
  1. compensare eventuali *errori di allineamento* (assiali, radiali o angolari) tra gli assi degli alberi collegati;
  2. fungere da *elemento sacrificabile ("fusibile" meccanico)* in caso di guasto o sovraccarico improvviso, interrompendo la trasmissione per salvaguardare il motore o l'utilizzatore;
  3. contenere e smorzare le *vibrazioni* della linea di trasmissione (sia lato motore sia lato utilizzatore);
  4. contribuire a *regolarizzare la velocità di rotazione*.
- *Supporti (2 e 3):* poiché l'albero deve poter ruotare liberamente attorno al proprio asse ma restare posizionato nello spazio, viene collegato al telaio fisso (suolo/statore) mediante *supporti* (cuscinetti), i quali agiscono da vincoli strutturali sui quali scaricare le forze e le reazioni vincolari a cui l'albero è assoggettato.

In fase di sintesi progettuale del sistema si pone quindi il problema di:
1. determinare la *configurazione di massima* del sistema e definirne gli elementi costitutivi;
2. attribuire a ciascun componente la propria *funzione* specifica;
3. *dimensionare* ogni elemento nei riguardi della resistenza statica, della durata a fatica e della deformabilità;
4. prevenire *problemi di funzionamento* (interferenze, vibrazioni, usura, surriscaldamento);
5. curare la *compatibilità geometrica e funzionale* tra i componenti e garantire la *reale possibilità di assemblaggio e smontaggio* delle parti che costituiscono la macchina.

// [DA SLIDE]
=== Modalità di trasmissione del moto e architettura costruttiva
Nei sistemi meccanici il trasferimento di potenza tra componenti avviene secondo due modalità cinematiche principali:
- *Trasmissione del moto (rotatorio $arrow.r$ rotatorio):* la scelta della configurazione dipende dalla disposizione geometrica degli assi e dalle esigenze di compattezza e variazione di velocità. Può avvenire tra *alberi coassiali* (mediante giunti), tra *alberi paralleli vicini* o *ad assi incidenti/sghembi* (mediante ingranaggi con ruote dentate cilindriche o coniche, che permettono anche più cambi di direzione e di velocità riducendo gli ingombri), oppure tra *alberi paralleli distanti* (mediante trasmissioni flessibili a cinghie e pulegge o a catena).
- *Trasformazione del moto (rotatorio $arrow.l.r$ lineare):* quando occorre convertire una rotazione in una traslazione rettilinea o viceversa (es. sistemi pignone-cremagliera, viti a ricircolo di sfere accoppiate a guide lineari).

Osservando il particolare costruttivo di un albero inserito nella propria macchina (ad esempio all'interno di un riduttore ad ingranaggi), emerge la necessità di integrare e dimensionare una serie di organi accessori sia sulla parte rotante sia su quella fissa:
- *Collegamenti mozzo-albero:* gli organi che scambiano coppia (ruote dentate, pulegge, volani, semi-giunti) devono essere resi solidali alla rotazione dell'albero tramite opportuni dispositivi di *accoppiamento di forma* (*chiavette, linguette, profili scanalati*) o per attrito/interferenza, e devono essere posizionati assialmente mediante *spallamenti* ricavati sull'albero o *distanziali* interposti (la presenza di un distanziale risulta peraltro superflua qualora sia già presente uno spallamento sull'albero che svolge la medesima funzione di battuta assiale).
- *Interfaccia con i supporti (cuscinetti volventi vs bronzine):* il vincolo rotazionale tra albero e telaio può essere realizzato tramite cuscinetti a strisciamento (*bronzine*) oppure tramite *cuscinetti volventi* (composti da un *anello interno* rotante solidale all'albero, un *anello esterno* fisso alloggiato nella cassa statorica e una serie di *corpi volventi* interposti). La scelta tra bronzina e cuscinetto volvente dipende strettamente dalla velocità di rotazione dell'albero, dall'entità dei carichi e dalla durata di esercizio richiesta.
- *Parte statorica (cassa e tenute):* l'involucro fisso della macchina deve essere progettato in moduli connessi da *collegamenti smontabili filettati* (viti e bulloni) per consentire il montaggio degli alberi, e deve includere *coperchi* ed elementi di tenuta che delimitino la regione di lavoro degli organi (ad esempio per trattenere i lubrificanti ed evitare contaminazioni esterne).

Il progettista deve verificare:

- Resistenza statica e a fatica.
- Deformabilità in condizioni stazionarie (verificata tramite l'equazione della linea elastica per scongiurare il contatto fisico tra rotore e statore e garantire il corretto ingranamento delle ruote dentate).
*Schematizzazione dei vincoli:* \
    Ai fini della statica elementare, gli alberi sono schematizzati come travi e i cuscinetti come vincoli ideali per gestire le reazioni e la dilatazione termica:
    - *Cerniera:* Un cuscinetto viene bloccato assialmente per fornire rigidezza e scaricare le spinte.
    - *Carrello:* Il cuscinetto opposto viene lasciato libero di scorrere assialmente per assorbire la dilatazione termica, evitando tensioni parassite.

// [DA SLIDE]
Oltre alla libertà di scorrimento assiale, nella schematizzazione del sistema è particolarmente delicata l'interpretazione del *grado di vincolo angolare (flessionale)* esercitato dai supporti reali:
- se il supporto è costituito da un singolo cuscinetto (ad esempio radiale a sfere o orientabile) che consente piccole rotazioni relative dell'asse dell'albero nel piano di flessione, esso viene modellato come un appoggio semplice (*cerniera* o *carrello* ideali), in corrispondenza del quale l'abbassamento trasversale è nullo ma la rotazione angolare della linea elastica è libera ($phi_A, phi_B != 0$);
- se invece il supporto è molto esteso assialmente (bronzina lunga) oppure è realizzato mediante una coppia di cuscinetti opportunamente distanziati che contrastano l'inclinazione dell'asse, il vincolo reagisce anche con una coppia flettente e si approssima al comportamento di un *incastro* (rotazione impedita, $phi = 0$), irrigidendo notevolmente la struttura e modificando i diagrammi del momento flettente.

Accanto alle verifiche di *resistenza* (statica e a fatica) e di *deformabilità statica* (controllo della freccia massima $delta$ e delle rotazioni angolari $phi$ in corrispondenza dei supporti e degli ingranaggi), il dimensionamento degli alberi veloci (come nelle turbomacchine o nei mandrini ad alta velocità) deve tenere conto anche dei fenomeni legati al *comportamento dinamico* (oggetto della dinamica dei rotori):
- *Squilibrio delle masse in rotazione:* un'inevitabile eccentricità residua del baricentro del rotore rispetto all'asse di rotazione genera forze centrifughe rotanti proporzionali a $omega^2$, che sollecitano dinamicamente l'albero e i supporti;
- *Precessione ed effetti giroscopici:* l'albero deformato in rotazione descrive moti di precessione (forme modali di vibrazione in rotazione) le cui frequenze proprie variano al variare della velocità angolare $omega$ a causa delle coppie giroscopiche introdotte dai dischi calettati (ruote, ventole, volani);
- *Velocità critiche flessionali:* sono specifiche velocità di rotazione in corrispondenza delle quali la frequenza di rotazione (o di eccitazione) coincide con una frequenza propria del sistema rotore-supporti (condizione di *risonanza*), provocando una crescita progressiva dell'ampiezza della deformata dinamica;
- *Instabilità dinamica:* fenomeno auto-eccitato ben distinto dalla risonanza classica, per il quale, *al di sopra di una determinata velocità di soglia*, l'ampiezza della deformata cresce in forma *esponenziale e inarrestabile*, portando rapidamente al cedimento se il sistema non viene mantenuto al di sotto di tale soglia.

// [DA SLIDE]
#figure(
  canvas(length: 0.9cm, {
    import draw: *

    // --- COLONNA SINISTRA: Schema statico con sbalzo e diagrammi M_f, M_t ---
    content((3.0, 4.3), [*Sollecitazioni ($M_f, M_t$)*], anchor: "center")
    // Trave A-B-C
    line((0.5, 3.2), (5.5, 3.2), stroke: 1.5pt)
    // Cerniera in A (x = 1.0)
    line((1.0, 3.2), (0.75, 2.75), (1.25, 2.75), close: true, stroke: 0.9pt)
    line((0.6, 2.75), (1.4, 2.75), stroke: 0.9pt)
    content((1.0, 3.55), [$A$])
    // Carrello in B (x = 4.0)
    line((4.0, 3.2), (3.75, 2.8), (4.25, 2.8), close: true, stroke: 0.9pt)
    line((3.6, 2.7), (4.4, 2.7), stroke: 0.9pt)
    content((4.0, 3.55), [$B$])
    // Estremità C a sbalzo (x = 5.5) con forza F
    line((5.5, 4.0), (5.5, 3.25), mark: (end: ">"), stroke: 1pt)
    content((5.8, 3.8), [$F$])
    content((5.5, 2.9), [$C$])
    // Quote L e a
    line((1.0, 2.3), (4.0, 2.3), mark: (start: "|", end: "|"), stroke: 0.6pt)
    content((2.5, 2.5), [$L$])
    line((4.0, 2.3), (5.5, 2.3), mark: (start: "|", end: "|"), stroke: 0.6pt)
    content((4.75, 2.5), [$a$])

    // Diagramma M_t (costante da A a C)
    line((0.5, 1.4), (5.5, 1.4), stroke: 0.8pt)
    rect((0.5, 0.9), (5.5, 1.4), stroke: 0.9pt, fill: luma(235))
    for x in (0.8, 1.3, 1.8, 2.3, 2.8, 3.3, 3.8, 4.3, 4.8, 5.2) {
      line((x, 0.9), (x, 1.4), stroke: 0.5pt)
    }
    content((6.0, 1.15), [$M_t$])

    // Diagramma M_f (triangolare con picco in B)
    line((1.0, 0.1), (5.5, 0.1), stroke: 0.8pt)
    line((1.0, 0.1), (4.0, -0.6), (5.5, 0.1), close: true, stroke: 0.9pt, fill: luma(235))
    for x in (1.5, 2.0, 2.5, 3.0, 3.5, 4.0, 4.5, 5.0) {
      let y = if x <= 4.0 { 0.1 - 0.7 * (x - 1.0) / 3.0 } else { 0.1 - 0.7 * (5.5 - x) / 1.5 }
      line((x, 0.1), (x, y), stroke: 0.5pt)
    }
    content((6.0, -0.25), [$M_f$])

    // --- COLONNA DESTRA: Linea elastica e rotazioni agli appoggi ---
    content((10.5, 4.3), [*Deformabilità (linea elastica)*], anchor: "center")
    // Trave A-B con carico intermedio in C
    line((8.0, 3.2), (13.0, 3.2), stroke: 1.5pt)
    // Cerniera A
    line((8.0, 3.2), (7.75, 2.75), (8.25, 2.75), close: true, stroke: 0.9pt)
    content((8.0, 3.55), [$A$])
    // Carrello B
    line((13.0, 3.2), (12.75, 2.8), (13.25, 2.8), close: true, stroke: 0.9pt)
    line((12.6, 2.7), (13.4, 2.7), stroke: 0.9pt)
    content((13.0, 3.55), [$B$])
    // Forza F in C (x = 11.2)
    line((11.2, 4.0), (11.2, 3.25), mark: (end: ">"), stroke: 1pt)
    content((11.5, 3.8), [$F$])
    content((11.2, 2.9), [$C$])

    // Linea elastica deformata
    line((8.0, 0.8), (13.0, 0.8), stroke: (dash: "dashed", thickness: 0.7pt))
    bezier((8.0, 0.8), (13.0, 0.8), (9.8, -0.4), (11.5, -0.4), stroke: 1.2pt)
    // Tangenti di fine corsa per mostrare phi_A e phi_B
    line((8.0, 0.8), (9.2, 0.0), stroke: (dash: "dotted", thickness: 0.7pt))
    line((13.0, 0.8), (11.8, 0.0), stroke: (dash: "dotted", thickness: 0.7pt))
    content((8.3, 0.15), [$phi_A$])
    content((12.7, 0.15), [$phi_B$])
    // Freccia delta_C
    line((11.2, 0.8), (11.2, -0.1), mark: (start: "|", end: ">"), stroke: 0.7pt)
    content((11.6, 0.35), [$delta_C$])
  }),
  caption: [Schematizzazione strutturale dell'albero come trave vincolata: tracciamento dei diagrammi di momento torcente $M_t$ e flettente $M_f$ (a sinistra) e calcolo della linea elastica con freccia $delta_C$ e rotazioni agli appoggi $phi_A, phi_B$ (a destra).]
)

Delineato lo schema delle forze, si calcolano i momenti flettenti nei due piani ortogonali per ottenere il momento flettente totale risultante $M_f = sqrt(M_x^2 + M_y^2)$. Essendo gli alberi tipicamente realizzati in acciaio duttile, per il dimensionamento preliminare della sezione trasversale si adotta il criterio di resistenza di Tresca (massima tensione tangenziale), scelto perché più conservativo rispetto a Von Mises:
$ sigma_(i d) = sqrt(sigma^2 + 4 tau^2) = sqrt((M_f / W_f)^2 + 4 (M_t / W_t)^2) $
Poiché per le sezioni circolari piene il modulo di resistenza a torsione è doppio rispetto a quello a flessione ($W_t = 2 W_f$), l'equazione si semplifica in:
$ sigma_(i d) = 1 / W_f sqrt(M_f^2 + M_t^2) $
Questa tensione ideale in esercizio viene confrontata con una tensione ammissibile $sigma_"amm" = R_m / (C S)$. Si assume preliminarmente un coefficiente di sicurezza molto elevato (es. $C S = 10$) per compensare preventivamente gli effetti della fatica e degli intagli, riducendo le iterazioni successive. Sostituendo il modulo di resistenza a flessione $W_f = (pi D^3) / 32$, si ricava il diametro minimo teorico:
$ D_"min" = (32 / (pi sigma_"amm") sqrt(M_f^2 + M_t^2))^(1/3) $

// [DA SLIDE]
=== Osservazioni sul dimensionamento preliminare e sul processo iterativo
Affinché questa procedura di progetto diretto sia applicabile, è essenziale notare che:
1. *Indipendenza delle sollecitazioni dalla geometria trasversale:* in uno schema statico isostatico (e trascurando in prima approssimazione il peso proprio dell'albero rispetto alle forze esterne trasmesse dagli organi), i diagrammi del momento flettente $M_f$ e del momento torcente $M_t$ dipendono unicamente dai carichi esterni e dalle distanze assiali tra supporti e organi, risultando *indipendenti dal diametro $D$ dell'albero*. Ciò consente di tracciare i diagrammi prima ancora di aver definito le dimensioni della sezione.
2. *Relazione tra i moduli di resistenza nella sezione circolare piena:* per una sezione circolare di diametro $D$, il momento d'inerzia polare $I_p = (pi D^4) / 32$ è esattamente il doppio del momento d'inerzia assiale $I = (pi D^4) / 64$; dividendo per il raggio esterno $R = D / 2$, si ottiene $W_t = (pi D^3) / 16 = 2 W_f$, con $W_f = (pi D^3) / 32$. Imponendo la condizione limite di progetto $sigma_(i d) = sigma_"amm"$, si ricava dapprima il modulo di resistenza a flessione minimo necessario:
   $ W_f = 1 / sigma_"amm" sqrt(M_f^2 + M_t^2) = (pi D^3) / 32 $
   da cui discende direttamente l'espressione del diametro minimo $D_"min"$.
3. *Applicazione per tratti e convergenza iterativa:* la formula di $D_"min"$ viene applicata a *ognuna delle sezioni di interesse* lungo l'asse dell'albero (ovvero alla sezione più sollecitata di ciascun tratto avente diametro costante). Il profilo preliminare così ottenuto costituisce il punto di partenza di un *processo progettuale iterativo* che, integrando i vincoli costruttivi dei componenti a catalogo e le verifiche di dettaglio, converge solitamente entro pochi passaggi alla geometria definitiva.

La necessità di alloggiare accessori impone variazioni di sezione (spallamenti, cave per chiavette) che agiscono come intagli. L'introduzione dei fattori di concentrazione delle tensioni ($K_t$, $K_f$) rende obbligatoria la riverifica a fatica nelle sezioni critiche.

// [DA SLIDE]
=== Disegno della struttura e calcoli di verifica per il dimensionamento finale
Una volta stimati i diametri minimi preliminari $D_"min"$, si procede al *disegno costruttivo dell'albero*, definendo nel dettaglio le variazioni di sezione, i *raggi di raccordo* e le *finiture superficiali*. In questa fase il dimensionamento dell'albero si intreccia strettamente con la scelta dei componenti accessori:
- *Vincoli imposti dal catalogo dei cuscinetti:* la scelta dei cuscinetti condiziona direttamente sia il *diametro dei perni* (che deve coincidere con i diametri interni normalizzati disponibili a catalogo, es. multipli di $5 "mm"$), sia l'altezza e il *raggio di raccordo degli spallamenti* (il raggio di raccordo sul fondo dello spallamento dell'albero deve essere inferiore allo smusso dell'anello interno riportato a catalogo, per garantire il corretto appoggio assiale contro la parete verticale dello spallamento).
- *Compatibilità con gli organi di trasmissione:* analogamente, si definiscono le geometrie dei mozzi di ruote dentate, pulegge e volani affinché risultino geometricamente compatibili con le sedi dell'albero.

Definita così la geometria completa del componente, si eseguono i *calcoli di verifica per il dimensionamento finale* secondo quattro direttrici distinte, ciascuna governata da specifici fattori fisici e progettuali:
1. *Verifiche statiche:* si controlla che nelle sezioni più sollecitate non vengano superati i limiti di resistenza statica (a rottura e, per i materiali duttili, allo *snervamento*) sotto i carichi massimi o di picco.
2. *Verifiche a rigidezza (spostamenti massimi e rotazioni):* si verifica che le frecce flessionali $delta$ e le inclinazioni angolari $phi$ della linea elastica rientrino nei limiti ammissibili per i cuscinetti e per il corretto ingranamento delle ruote dentate.
   - *Nota progettuale:* qualora un albero in acciaio non superi la verifica a rigidezza, *non è utile sostituire il materiale con un acciaio più pregiato o ad alta resistenza*. Tutti gli acciai appartengono infatti alla medesima classe elastica e possiedono praticamente lo stesso modulo di Young ($E approx 210 "GPa"$): poiché la rigidezza flessionale dipende dal prodotto $E I$, per ridurre frecce e rotazioni è indispensabile *modificare la geometria dell'albero* (aumentando i diametri per incrementare il momento d'inerzia $I = (pi D^4) / 64$, oppure riducendo la distanza tra i supporti).
3. *Verifiche a fatica:* si valuta la resistenza a durata (vita infinita o a termine) nelle sezioni critiche soggette a flessione rotante e torsione.
   - *Nota progettuale:* nella resistenza a fatica assumono un'importanza determinante la *forma locale del componente nei suoi vari intagli* (raggi di raccordo agli spallamenti, cave per linguette, gole di scarico), lo *stato di finitura superficiale* (rugosità da lavorazione) e gli eventuali *trattamenti superficiali* (pallinatura, nitrurazione, cementazione, tempra superficiale), fattori che incidono sul comportamento a fatica talora *quasi più del materiale base selezionato*.
4. *Verifiche di risposta dinamica:* si controlla l'assenza di risonanze (velocità critiche) nel campo operativo e il margine rispetto alla soglia di instabilità dinamica. In queste verifiche giocano un ruolo cruciale anche proprietà quali lo *smorzamento interno del materiale* e la rigidezza/smorzamento dei *supporti*.

Solo al superamento congiunto di tutte le verifiche sopra elencate la forma, le dimensioni, il materiale e i trattamenti termici/superficiali dell'albero risultano univocamente determinati.