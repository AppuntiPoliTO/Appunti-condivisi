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
      Federico Toro
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

// [DA AUDIO]
Lo studio degli elementi costruttivi delle macchine si apre con l'*albero di trasmissione* per una duplice motivazione metodologica:
1. *Applicazione diretta del calcolo a fatica:* l'albero rotante costituisce il caso archetipico in cui trovano immediata implementazione i criteri di resistenza a fatica e i fattori di concentrazione delle tensioni studiati nella meccanica del danneggiamento.
2. *Continuità con la teoria elementare della trave:* essendo un corpo snello (*traviforme*), ad esso si applicano direttamente i modelli di calcolo delle caratteristiche di sollecitazione e delle deformazioni propri della meccanica strutturale.

Un passaggio fondamentale nel dimensionamento è la distinzione formale tra assi e alberi:

- *Asse (Axle):* Elemento rotante o fisso adibito a sostenere elementi ruotanti. È soggetto unicamente a flessione e non trasmette momento torcente significativo (es. asse ferroviario).
- *Albero (Shaft):* Elemento rotante di trasmissione che eroga potenza. Subisce flessione (rotante) ed è specificamente soggetto a momento torcente.

// [DA SLIDE]
Assi e alberi rappresentano gli organi di macchina più prossimi al modello strutturale di *trave*, dal quale tuttavia si distinguono perché sono destinati a *ruotare o a oscillare attorno al proprio asse geometrico*. Oltre alla flessione e (negli alberi) alla torsione, sia gli assi sia gli alberi possono trovarsi a sopportare anche *carichi assiali* (ad esempio generati da ruote dentate elicoidali o coniche).

// [DA AUDIO]
In particolare, l'applicabilità del modello di trave di De Saint-Venant è garantita dal fatto che le dimensioni della sezione trasversale sono sensibilmente inferiori rispetto allo sviluppo longitudinale dell'organo. L'adozione della *sezione circolare (assialsimmetrica)* risponde a due precise esigenze:
- *Regolarità dinamica di rotazione:* una sezione assialsimmetrica mantiene costante il momento d'inerzia rispetto a qualunque asse baricentrico durante la rotazione, evitando fluttuazioni inerziali e irregolarità di moto che si manifesterebbero con sezioni prismatiche (es. quadrate o rettangolari).
- *Sicurezza antinfortunistica:* l'assenza di spigoli vivi in rotazione riduce drasticamente il rischio di aggancio o ferimento grave qualora un operatore entrasse accidentalmente in contatto con l'organo in movimento.

Per quanto riguarda i *carichi assiali*, oltre alla spinta generata da dentature elicoidali o coniche, essi possono avere origine anche da un *precarico assiale* imposto in fase di montaggio dei cuscinetti oppure dal *peso proprio* dell'albero e degli organi calettati nelle configurazioni ad *asse verticale*.


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

// [DA AUDIO]
L'esigenza di mantenere l'albero snello e leggero è particolarmente stringente nei veicoli terrestri, navali e aeronautici, dove una linea pesante richiederebbe ulteriore potenza solo per essere trasportata. Per questo motivo, l'architettura di trasmissione può prevedere una prima trasformazione cinematica già *a monte* dell'albero (dal motore verso la linea) per *innalzare la velocità angolare* e ridurre la coppia sull'albero lungo, seguita da una seconda trasformazione *a valle* (in prossimità dell'utilizzatore, come il differenziale automobilistico o il riduttore finale) per *abbattere la velocità e moltiplicare la coppia* erogata alle ruote o all'elica. Di conseguenza, l'albero di trasmissione può trovarsi a ruotare a una velocità angolare diversa sia da quella del motore sia da quella dell'utenza.

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
  // [DA AUDIO]
  Più in generale, qualora la sorgente o l'utilizzatore operino con un moto traslatorio anziché rotatorio, la potenza meccanica è espressa dal prodotto tra la forza sviluppata $F$ e la velocità lineare di traslazione $v$ ($P = F v$). L'elevata inerzia dell'utilizzatore (si pensi ad esempio a un'*elica navale*, la cui massa è cospicua ed è distribuita a grande distanza radiale dall'asse di rotazione, determinando un elevato momento d'inerzia polare) giustifica la necessità di erogare all'utenza una coppia $C_u$ molto elevata a bassa velocità angolare $omega_u$. In ambito navale, ad esempio, ciò può essere realizzato collegando l'albero collegato al motore a un secondo albero porta-elica mediante una trasmissione multipla a cinghie e pulegge in parallelo: in tale configurazione occorre tuttavia controllare rigorosamente la *freccia flessionale* dell'albero snello, poiché un'inflessione eccessiva comprometterebbe il corretto lavoro delle cinghie e potrebbe portare le pulegge rotanti a strisciare o urtare contro la cassa statorica fissa.
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

// [DA AUDIO]
Il confronto progettuale tra le diverse modalità di trasmissione evidenzia precisi compromessi in termini di rigidezza, precisione cinematica e costo:
- *Ingranaggi (ruote dentate):* realizzano un contatto diretto tra corpi rigidi; garantiscono un *interasse tra gli alberi rigorosamente fisso e stabile* (specifica di progetto), un rapporto di velocità costante ed esatto e vibrazioni contenute, ma comportano costi elevati legati alle lavorazioni di precisione, alla lubrificazione e ai fenomeni di fatica superficiale e usura dei denti.
- *Trasmissioni a cinghia e puleggia:* impiegano un elemento intermedio flessibile ed elastico (la cinghia); abbattono drasticamente i costi costruttivi e offrono un'estrema versatilità geometrica nel collegare alberi distanti, ma non garantiscono il mantenimento rigoroso della posizione relativa (fasatura) tra gli alberi e risultano più esposte all'innesco di vibrazioni qualora gli alberi siano molto deformabili.
- *Giunti articolati (es. giunti cardanici):* a differenza dei giunti rigidi, mantengono connessi i due alberi nella trasmissione della coppia pur consentendo tra essi un *moto relativo controllato* (angolare o assiale).

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

// [DA AUDIO]
Dal punto di vista costruttivo, la distinzione tra cerniera e carrello non dipende necessariamente dal tipo di cuscinetto impiegato (che può essere il medesimo cuscinetto radiale a una corona di sfere in entrambi i supporti $A$ e $B$), ma da *come vengono vincolati assialmente gli anelli interno ed esterno* nel montaggio:
- *Realizzazione costruttiva della cerniera (supporto $A$):* l'anello interno è bloccato assialmente sul rotore da entrambi i lati (ad esempio tra un distanziale da un lato e un elemento di chiusura o spallamento dall'altro), e contemporaneamente l'anello esterno è bloccato assialmente nella sede statorica (chiuso tra uno spallamento della cassa da un lato e un coperchio imbullonato dall'altro). Poiché le piste dei cuscinetti radiali a sfere hanno profilo toroidale (semicircolare), il contatto sfera-pista è in grado di sviluppare una modesta reazione anche in direzione assiale in ambo i versi, pur consentendo una lieve rotazione angolare relativa nel piano di flessione: il supporto impedisce quindi le traslazioni radiale e assiale lasciando libera la rotazione, comportandosi come una *cerniera*.
- *Realizzazione costruttiva del carrello (supporto $B$):* mentre l'anello interno resta bloccato assialmente sull'albero (tra il distanziale e lo spallamento del fusto), l'*anello esterno viene alloggiato nella sede cilindrica della cassa senza battute assiali laterali*, restando libero di scorrere assialmente sulla superficie statorica. In presenza di una *dilatazione termica* differenziale tra albero e cassa in esercizio, l'anello esterno può traslare leggermente rilassando l'allungamento termico: si evita così l'insorgere di una severa forza di compressione assiale parassita che sovraccaricherebbe l'albero e i cuscinetti qualora entrambi i supporti fossero bloccati.

// [DA SLIDE]
Oltre alla libertà di scorrimento assiale, nella schematizzazione del sistema è particolarmente delicata l'interpretazione del *grado di vincolo angolare (flessionale)* esercitato dai supporti reali:
- se il supporto è costituito da un singolo cuscinetto che consente piccole rotazioni relative dell'asse dell'albero nel piano di flessione, esso viene modellato come un appoggio semplice (*cerniera* o *carrello* ideali), in corrispondenza del quale l'abbassamento trasversale è nullo ma la rotazione angolare della linea elastica è libera ($phi_A, phi_B != 0$);
- se invece il supporto è molto esteso assialmente (bronzina lunga) oppure è realizzato mediante una coppia di cuscinetti opportunamente distanziati che contrastano l'inclinazione dell'asse, il vincolo reagisce anche con una coppia flettente e si approssima al comportamento di un *incastro* (rotazione impedita, $phi = 0$), irrigidendo notevolmente la struttura e modificando i diagrammi del momento flettente.


// [DA SLIDE]
#figure(canvas(length: 1.25cm, {
  import draw: *

  // ==========================================
  // PANNELLO 1 (SINISTRA)
  // ==========================================

  // --- Linee di proiezione verticali ---
  line((0.6, 5.8), (0.6, 1.45), stroke: 0.5pt)
  line((2.5, 7.45), (2.5, 0.85), stroke: 0.6pt)
  line((4.8, 7.55), (4.8, 0.0), stroke: 0.6pt)
  line((5.85, 5.8), (5.85, 0.85), stroke: 0.6pt)

  // --- Asse dell'albero (tratteggiato) ---
  line((-0.4, 5.8), (6.7, 5.8), stroke: (dash: "dashed", thickness: 0.6pt))

  // --- Punti neri sull'asse dell'albero ---
  circle((2.5, 5.8), radius: 0.08, fill: black)
  circle((4.8, 5.8), radius: 0.08, fill: black)

  // --- Freccia cava Mt a sinistra ---
  line((-0.27, 5.8), (-0.27, 5.45), (-0.11, 5.45), (-0.11, 5.8), stroke: 0.8pt)
  arc((0.05, 5.8), start: 0deg, stop: 180deg, radius: (0.32, 0.85), anchor: "origin", stroke: 0.8pt)
  arc((0.05, 5.8), start: 0deg, stop: 180deg, radius: (0.16, 0.68), anchor: "origin", stroke: 0.8pt)
  line((0.37, 5.8), (0.37, 5.65), (0.46, 5.65), (0.29, 5.3), (0.12, 5.65), (0.21, 5.65), (0.21, 5.8), stroke: 0.8pt)
  content((0.05, 6.9), text(size: 7pt)[$M_t$], anchor: "south")

  // --- Albero a gradini (metà superiore in vista/sezione) ---
  // Tratto 1 (estremo sinistro)
  line((0.6, 5.8), (0.6, 6.35), (1.35, 6.35), (1.35, 5.8), stroke: 1pt)
  line((0.68, 5.8), (0.68, 6.35), stroke: 0.6pt)
  line((0.6, 6.3), (1.35, 6.3), stroke: 0.6pt)

  // Tratto 2 (filettatura / ghiera)
  line((1.35, 6.35), (1.42, 6.45), (1.75, 6.45), (1.75, 5.8), stroke: 1pt)
  // Guarnizione a labbro (in 1.42..1.70, y=6.45..7.1)
  line((1.42, 6.45), (1.42, 7.1), (1.75, 7.1), (1.75, 6.45), stroke: 0.8pt)
  circle((1.56, 6.62), radius: 0.08, stroke: 0.6pt)
  circle((1.56, 6.62), radius: 0.04, stroke: 0.5pt)
  line((1.47, 6.45), (1.47, 6.78), (1.68, 6.78), (1.68, 7.1), stroke: 0.6pt)

  // Ghiera / distanziale prima del cuscinetto A
  line((1.75, 6.62), (2.22, 6.62), (2.22, 5.8), stroke: 1pt)
  line((1.95, 5.8), (1.95, 6.82), (2.22, 6.82), stroke: 0.8pt)
  line((1.75, 6.55), (1.95, 6.55), stroke: 0.6pt)
  // Tratteggio distanziale
  line((1.98, 6.62), (2.15, 6.79), stroke: 0.5pt)
  line((2.08, 6.62), (2.22, 6.76), stroke: 0.5pt)

  // Cuscinetto A (centro x = 2.5, y = 7.02)
  // Anello interno
  line((2.22, 6.65), (2.78, 6.65), (2.78, 6.88), (2.22, 6.88), close: true, stroke: 0.8pt)
  line((2.22, 6.65), (2.22, 5.8), stroke: 0.8pt)
  line((2.78, 6.65), (2.78, 5.8), stroke: 0.8pt)
  // Tratteggio anello interno A
  line((2.25, 6.65), (2.48, 6.88), stroke: 0.5pt)
  line((2.40, 6.65), (2.63, 6.88), stroke: 0.5pt)
  line((2.55, 6.65), (2.78, 6.88), stroke: 0.5pt)
  // Sfera A
  circle((2.5, 7.02), radius: 0.22, fill: white, stroke: 0.8pt)
  line((2.22, 7.02), (2.78, 7.02), stroke: (dash: "dashed", thickness: 0.5pt))
  line((2.5, 6.75), (2.5, 7.30), stroke: (dash: "dashed", thickness: 0.5pt))
  // Anello esterno A
  line((2.22, 7.16), (2.78, 7.16), (2.78, 7.36), (2.22, 7.36), close: true, stroke: 0.8pt)
  line((2.25, 7.16), (2.45, 7.36), stroke: 0.5pt)
  line((2.42, 7.16), (2.62, 7.36), stroke: 0.5pt)
  line((2.58, 7.16), (2.78, 7.36), stroke: 0.5pt)

  // Tratto centrale dell'albero tra A e B (x = 2.78 .. 4.50)
  line((2.78, 6.65), (4.50, 6.65), stroke: 1pt)
  line((2.78, 6.80), (3.12, 6.80), (3.12, 6.65), stroke: 0.8pt)
  line((3.12, 6.82), (4.20, 6.82), (4.20, 6.65), stroke: 0.8pt)
  line((4.20, 6.80), (4.50, 6.80), stroke: 0.8pt)
  line((3.12, 6.65), (3.12, 5.8), stroke: 0.6pt)
  line((4.20, 6.65), (4.20, 5.8), stroke: 0.6pt)
  // Tratteggio boccole/spallamenti tra A e B
  line((2.82, 6.65), (2.97, 6.80), stroke: 0.5pt)
  line((2.96, 6.65), (3.11, 6.80), stroke: 0.5pt)
  line((3.20, 6.65), (3.37, 6.82), stroke: 0.5pt)
  line((3.40, 6.65), (3.57, 6.82), stroke: 0.5pt)
  line((3.60, 6.65), (3.77, 6.82), stroke: 0.5pt)
  line((3.80, 6.65), (3.97, 6.82), stroke: 0.5pt)
  line((4.00, 6.65), (4.17, 6.82), stroke: 0.5pt)
  line((4.25, 6.65), (4.40, 6.80), stroke: 0.5pt)

  // Cuscinetto B (centro x = 4.8, y = 7.12)
  // Anello interno B
  line((4.50, 6.72), (5.08, 6.72), (5.08, 6.96), (4.50, 6.96), close: true, stroke: 0.8pt)
  line((4.50, 6.72), (4.50, 5.8), stroke: 0.8pt)
  line((5.08, 6.72), (5.08, 5.8), stroke: 0.8pt)
  line((4.55, 6.72), (4.79, 6.96), stroke: 0.5pt)
  line((4.72, 6.72), (4.96, 6.96), stroke: 0.5pt)
  line((4.88, 6.72), (5.08, 6.92), stroke: 0.5pt)
  // Sfera B
  circle((4.8, 7.12), radius: 0.22, fill: white, stroke: 0.8pt)
  line((4.50, 7.12), (5.08, 7.12), stroke: (dash: "dashed", thickness: 0.5pt))
  line((4.8, 6.85), (4.8, 7.40), stroke: (dash: "dashed", thickness: 0.5pt))
  // Anello esterno B
  line((4.50, 7.26), (5.08, 7.26), (5.08, 7.46), (4.50, 7.46), close: true, stroke: 0.8pt)
  line((4.55, 7.26), (4.75, 7.46), stroke: 0.5pt)
  line((4.72, 7.26), (4.92, 7.46), stroke: 0.5pt)
  line((4.88, 7.26), (5.08, 7.46), stroke: 0.5pt)

  // Coperchio sinistro della cassa
  line((1.42, 7.1), (1.62, 7.1), (1.62, 8.2), (1.80, 8.2), (1.80, 7.36), (2.22, 7.36), (2.22, 7.22), (1.95, 7.22), (1.95, 7.1), close: true, stroke: 0.8pt)
  line((1.35, 7.82), (2.15, 7.82), stroke: (dash: "dashed", thickness: 0.6pt))
  // Tratteggio coperchio
  line((1.42, 7.25), (1.80, 7.63), stroke: 0.5pt)
  line((1.42, 7.50), (1.80, 7.88), stroke: 0.5pt)
  line((1.62, 7.95), (1.80, 8.13), stroke: 0.5pt)
  line((1.80, 7.38), (2.05, 7.63), stroke: 0.5pt)

  // Corpo principale della cassa (sezione tratteggiata a 45°)
  line((1.80, 8.2), (1.80, 8.95), (2.35, 8.98), (3.10, 8.85), (3.85, 8.92), (4.65, 9.08), (5.05, 9.15), (5.18, 9.15), (5.18, 7.46), (4.50, 7.46), (4.50, 7.92), (3.15, 7.92), (3.15, 7.36), (2.22, 7.36), (2.22, 7.52), (1.80, 7.52), close: true, stroke: 0.9pt)

  // Tratteggio a 45° della cassa
  line((1.80, 8.60), (2.15, 8.95), stroke: 0.5pt)
  line((1.80, 8.25), (2.50, 8.95), stroke: 0.5pt)
  line((1.80, 7.90), (2.82, 8.92), stroke: 0.5pt)
  line((1.80, 7.55), (3.12, 8.87), stroke: 0.5pt)
  line((2.15, 7.52), (3.48, 8.88), stroke: 0.5pt)
  line((2.35, 7.36), (3.85, 8.86), stroke: 0.5pt)
  line((2.70, 7.36), (4.25, 8.91), stroke: 0.5pt)
  line((3.05, 7.36), (3.15, 7.46), stroke: 0.5pt)
  line((3.60, 7.92), (4.72, 9.04), stroke: 0.5pt)
  line((3.95, 7.92), (5.15, 9.12), stroke: 0.5pt)
  line((4.30, 7.92), (5.18, 8.80), stroke: 0.5pt)
  line((4.50, 7.77), (5.18, 8.45), stroke: 0.5pt)
  line((4.55, 7.46), (5.18, 8.09), stroke: 0.5pt)
  line((4.90, 7.46), (5.18, 7.74), stroke: 0.5pt)

  // Elemento C a sbalzo a destra
  line((5.08, 6.92), (5.40, 6.92), (5.40, 8.02), (6.30, 8.02), (6.30, 5.8), stroke: 1pt)
  line((5.40, 6.92), (5.40, 5.8), stroke: 0.8pt)
  line((5.22, 6.92), (5.22, 7.82), (5.40, 7.82), stroke: 0.8pt)
  line((5.40, 7.95), (6.30, 7.95), stroke: 0.6pt)
  line((5.15, 7.90), (6.60, 7.90), stroke: (dash: "dashed", thickness: 0.6pt))

  // Etichette A, B, C sull'albero (con linee di richiamo per A e B)
  content((2.5, 7.80), text(size: 7pt)[$A$], anchor: "south")
  content((4.75, 7.88), text(size: 7pt)[$B$], anchor: "south")
  content((5.85, 7.05), text(size: 7pt)[$C$], anchor: "center")

  // --- Schema statico (trave) ---
  line((0.6, 4.2), (5.85, 4.2), stroke: 1.2pt)

  // Appoggio A (carrello / cerniera)
  circle((2.5, 4.13), radius: 0.07, fill: white, stroke: 0.8pt)
  line((2.5, 4.06), (2.36, 3.82), (2.64, 3.82), close: true, stroke: 0.8pt)
  line((2.28, 3.75), (2.72, 3.75), stroke: 0.8pt)

  // Appoggio B (cerniera)
  circle((4.8, 4.13), radius: 0.07, fill: white, stroke: 0.8pt)
  line((4.8, 4.06), (4.66, 3.82), (4.94, 3.82), close: true, stroke: 0.8pt)
  line((4.58, 3.75), (5.02, 3.75), stroke: 0.8pt)

  // Forza F in C
  line((5.85, 5.3), (5.85, 4.2), mark: (end: ">", fill: black), stroke: 1pt)
  content((6.0, 4.9), text(size: 7pt)[$F$], anchor: "west")

  // Etichette A, B, C sullo schema trave
  content((2.25, 4.55), text(size: 7pt)[$A$], anchor: "center")
  content((5.0, 4.55), text(size: 7pt)[$B$], anchor: "center")
  content((6.02, 3.98), text(size: 7pt)[$C$], anchor: "center")

  // --- Quote L e a ---
  line((2.5, 3.15), (4.8, 3.15), mark: (start: ">", end: ">"), stroke: 0.7pt)
  content((3.65, 3.25), text(size: 7pt)[$L$], anchor: "south")

  line((4.8, 3.15), (5.85, 3.15), mark: (start: ">", end: ">"), stroke: 0.7pt)
  content((5.32, 3.25), text(size: 7pt)[$a$], anchor: "south")

  // --- Diagramma del momento torcente Mt ---
  rect((0.6, 1.45), (5.85, 2.1), stroke: 1pt)
  // Tratteggio verticale interno
  line((0.75, 1.45), (0.75, 2.1), stroke: 0.5pt)
  line((0.90, 1.45), (0.90, 2.1), stroke: 0.5pt)
  line((1.05, 1.45), (1.05, 2.1), stroke: 0.5pt)
  line((1.20, 1.45), (1.20, 2.1), stroke: 0.5pt)
  line((1.35, 1.45), (1.35, 2.1), stroke: 0.5pt)
  line((1.50, 1.45), (1.50, 2.1), stroke: 0.5pt)
  line((1.65, 1.45), (1.65, 2.1), stroke: 0.5pt)
  line((1.80, 1.45), (1.80, 2.1), stroke: 0.5pt)
  line((1.95, 1.45), (1.95, 2.1), stroke: 0.5pt)
  line((2.10, 1.45), (2.10, 2.1), stroke: 0.5pt)
  line((2.25, 1.45), (2.25, 2.1), stroke: 0.5pt)
  line((2.40, 1.45), (2.40, 2.1), stroke: 0.5pt)
  line((2.50, 1.45), (2.50, 2.1), stroke: 0.5pt)
  line((2.65, 1.45), (2.65, 2.1), stroke: 0.5pt)
  line((2.80, 1.45), (2.80, 2.1), stroke: 0.5pt)
  line((2.95, 1.45), (2.95, 2.1), stroke: 0.5pt)
  line((3.10, 1.45), (3.10, 2.1), stroke: 0.5pt)
  line((3.25, 1.45), (3.25, 2.1), stroke: 0.5pt)
  line((3.40, 1.45), (3.40, 2.1), stroke: 0.5pt)
  line((3.55, 1.45), (3.55, 2.1), stroke: 0.5pt)
  line((3.70, 1.45), (3.70, 2.1), stroke: 0.5pt)
  line((3.85, 1.45), (3.85, 2.1), stroke: 0.5pt)
  line((4.00, 1.45), (4.00, 2.1), stroke: 0.5pt)
  line((4.15, 1.45), (4.15, 2.1), stroke: 0.5pt)
  line((4.30, 1.45), (4.30, 2.1), stroke: 0.5pt)
  line((4.45, 1.45), (4.45, 2.1), stroke: 0.5pt)
  line((4.60, 1.45), (4.60, 2.1), stroke: 0.5pt)
  line((4.75, 1.45), (4.75, 2.1), stroke: 0.5pt)
  line((4.90, 1.45), (4.90, 2.1), stroke: 0.5pt)
  line((5.05, 1.45), (5.05, 2.1), stroke: 0.5pt)
  line((5.20, 1.45), (5.20, 2.1), stroke: 0.5pt)
  line((5.35, 1.45), (5.35, 2.1), stroke: 0.5pt)
  line((5.50, 1.45), (5.50, 2.1), stroke: 0.5pt)
  line((5.65, 1.45), (5.65, 2.1), stroke: 0.5pt)
  line((5.75, 1.45), (5.75, 2.1), stroke: 0.5pt)
  content((6.0, 1.77), text(size: 7pt)[$M_t$], anchor: "west")

  // --- Diagramma del momento flettente Mf ---
  line((0.6, 0.85), (5.85, 0.85), stroke: 1pt)
  line((2.5, 0.85), (4.8, 0.0), (5.85, 0.85), stroke: 1pt)
  // Tratteggio verticale interno Mf
  line((2.65, 0.85), (2.65, 0.79), stroke: 0.5pt)
  line((2.80, 0.85), (2.80, 0.74), stroke: 0.5pt)
  line((2.95, 0.85), (2.95, 0.68), stroke: 0.5pt)
  line((3.10, 0.85), (3.10, 0.63), stroke: 0.5pt)
  line((3.25, 0.85), (3.25, 0.57), stroke: 0.5pt)
  line((3.40, 0.85), (3.40, 0.52), stroke: 0.5pt)
  line((3.55, 0.85), (3.55, 0.46), stroke: 0.5pt)
  line((3.70, 0.85), (3.70, 0.41), stroke: 0.5pt)
  line((3.85, 0.85), (3.85, 0.35), stroke: 0.5pt)
  line((4.00, 0.85), (4.00, 0.30), stroke: 0.5pt)
  line((4.15, 0.85), (4.15, 0.24), stroke: 0.5pt)
  line((4.30, 0.85), (4.30, 0.18), stroke: 0.5pt)
  line((4.45, 0.85), (4.45, 0.13), stroke: 0.5pt)
  line((4.60, 0.85), (4.60, 0.07), stroke: 0.5pt)
  line((4.70, 0.85), (4.70, 0.04), stroke: 0.5pt)
  line((4.80, 0.85), (4.80, 0.00), stroke: 0.5pt)
  line((4.90, 0.85), (4.90, 0.08), stroke: 0.5pt)
  line((5.02, 0.85), (5.02, 0.18), stroke: 0.5pt)
  line((5.15, 0.85), (5.15, 0.28), stroke: 0.5pt)
  line((5.28, 0.85), (5.28, 0.39), stroke: 0.5pt)
  line((5.40, 0.85), (5.40, 0.49), stroke: 0.5pt)
  line((5.52, 0.85), (5.52, 0.58), stroke: 0.5pt)
  line((5.65, 0.85), (5.65, 0.69), stroke: 0.5pt)
  line((5.75, 0.85), (5.75, 0.77), stroke: 0.5pt)
  content((6.0, 0.55), text(size: 7pt)[$M_f$], anchor: "west")


  // ==========================================
  // PANNELLO 2 (DESTRA)
  // ==========================================

  // --- Linee di proiezione verticali ---
  line((8.1, 7.6), (8.1, 1.0), stroke: 0.6pt)
  line((12.5, 7.6), (12.5, 0.48), stroke: 0.6pt)
  line((14.2, 7.6), (14.2, 1.0), stroke: 0.6pt)

  // --- Asse dell'albero (tratteggiato) ---
  line((7.4, 7.0), (15.1, 7.0), stroke: (dash: "dashed", thickness: 0.6pt))

  // --- Punti neri sull'asse dell'albero ---
  circle((8.1, 7.0), radius: 0.08, fill: black)
  circle((14.2, 7.0), radius: 0.08, fill: black)
  content((7.75, 6.7), text(size: 7pt)[$A$], anchor: "center")
  content((14.45, 6.75), text(size: 7pt)[$B$], anchor: "center")

  // --- Albero e componenti (metà superiore) ---
  // Estremo sinistro e cuscinetto A (con simbolo X)
  line((7.6, 7.0), (7.6, 7.52), (7.83, 7.52), (7.83, 7.0), stroke: 1pt)
  line((7.66, 7.0), (7.66, 7.52), stroke: 0.8pt)
  line((7.72, 7.0), (7.72, 7.62), (7.83, 7.62), stroke: 0.8pt)
  line((7.83, 7.60), (8.37, 7.60), stroke: 1pt)
  // Cuscinetto A (rettangolo con croce di Sant'Andrea)
  rect((7.83, 7.60), (8.37, 8.28), stroke: 0.8pt)
  line((7.83, 7.60), (8.37, 8.28), stroke: 0.6pt)
  line((7.83, 8.28), (8.37, 7.60), stroke: 0.6pt)

  // Corpo centrale dell'albero tra A e C
  line((8.37, 7.0), (8.37, 7.60), (12.10, 7.60), (12.10, 7.0), stroke: 1pt)

  // Tratto sotto l'elemento C e fino a B
  line((12.10, 7.68), (13.93, 7.68), (13.93, 7.0), stroke: 1pt)
  line((12.10, 7.60), (12.10, 7.72), (12.90, 7.72), (12.90, 7.68), stroke: 0.8pt)

  // Mozzo / puleggia in C (x = 12.10 .. 12.90)
  rect((12.10, 7.72), (12.90, 8.60), stroke: 0.8pt)
  line((12.10, 8.38), (12.90, 8.38), stroke: 0.6pt)
  line((12.10, 8.50), (12.90, 8.50), stroke: 0.6pt)
  // Tratteggio a 45° sul mozzo C (tra y=7.72 e y=8.38)
  line((12.10, 8.15), (12.33, 8.38), stroke: 0.5pt)
  line((12.10, 7.92), (12.56, 8.38), stroke: 0.5pt)
  line((12.12, 7.72), (12.78, 8.38), stroke: 0.5pt)
  line((12.35, 7.72), (12.90, 8.27), stroke: 0.5pt)
  line((12.58, 7.72), (12.90, 8.04), stroke: 0.5pt)
  line((12.80, 7.72), (12.90, 7.82), stroke: 0.5pt)

  // Cuscinetto B (rettangolo con croce di Sant'Andrea, x = 13.93 .. 14.47)
  line((13.93, 7.60), (14.47, 7.60), stroke: 1pt)
  rect((13.93, 7.60), (14.47, 8.35), stroke: 0.8pt)
  line((13.93, 7.60), (14.47, 8.35), stroke: 0.6pt)
  line((13.93, 8.35), (14.47, 7.60), stroke: 0.6pt)

  // Estremo destro dopo B (ghiera e spallamento)
  line((14.47, 7.0), (14.47, 7.68), (14.92, 7.68), (14.92, 7.0), stroke: 1pt)
  rect((14.47, 7.68), (14.78, 7.95), stroke: 0.7pt)
  line((14.47, 7.82), (14.78, 7.82), stroke: 0.6pt)
  line((14.55, 7.68), (14.68, 7.82), stroke: 0.5pt)

  // --- Schema statico (trave appoggiata) ---
  line((8.1, 4.6), (14.2, 4.6), stroke: 1.2pt)

  // Appoggio A
  circle((8.1, 4.6), radius: 0.10, fill: white, stroke: 0.9pt)
  line((8.1, 4.50), (7.94, 4.22), (8.26, 4.22), close: true, stroke: 0.9pt)
  line((7.86, 4.18), (8.34, 4.18), stroke: 1.2pt)
  content((7.75, 4.6), text(size: 7pt)[$A$], anchor: "center")

  // Appoggio B
  circle((14.2, 4.6), radius: 0.10, fill: white, stroke: 0.9pt)
  line((14.2, 4.50), (14.04, 4.22), (14.36, 4.22), close: true, stroke: 0.9pt)
  line((13.96, 4.18), (14.44, 4.18), stroke: 1.2pt)
  content((14.52, 4.65), text(size: 7pt)[$B$], anchor: "center")

  // Forza F in C
  line((12.5, 5.8), (12.5, 4.6), mark: (end: ">", fill: black), stroke: 1pt)
  content((12.62, 5.35), text(size: 7pt)[$F$], anchor: "west")
  content((12.65, 4.38), text(size: 7pt)[$C$], anchor: "center")

  // --- Asse x e Quote a, b, L ---
  line((8.1, 3.92), (9.6, 3.92), mark: (end: ">"), stroke: 0.7pt)
  content((9.1, 4.02), text(size: 7pt)[$x$], anchor: "south")

  line((8.1, 3.52), (12.5, 3.52), mark: (start: ">", end: ">"), stroke: 0.7pt)
  content((10.3, 3.60), text(size: 7pt)[$a$], anchor: "south")

  line((12.5, 3.52), (14.2, 3.52), mark: (start: ">", end: ">"), stroke: 0.7pt)
  content((13.35, 3.60), text(size: 7pt)[$b$], anchor: "south")

  line((8.1, 3.00), (14.2, 3.00), mark: (start: ">", end: ">"), stroke: 0.7pt)
  content((11.15, 3.08), text(size: 7pt)[$L$], anchor: "south")

  // --- Linea elastica (deformata) ---
  // Linea orizzontale indeformata
  line((8.1, 1.0), (14.2, 1.0), stroke: 0.7pt)

  // Arco di cerchio della linea elastica
  arc((11.15, 7.83), start: 245.94deg, stop: 294.06deg, radius: 7.48, anchor: "origin", stroke: 1.2pt)

  // Tangenti agli estremi e angoli phi_A, phi_B
  line((8.1, 1.0), (9.2, 0.51), stroke: 0.6pt)
  arc((8.1, 1.0), start: 336deg, stop: 360deg, radius: 0.65, anchor: "origin", mark: (end: ">"), stroke: 0.6pt)
  content((8.32, 0.68), text(size: 7pt)[$phi_A$], anchor: "center")

  line((14.2, 1.0), (13.1, 0.51), stroke: 0.6pt)
  arc((14.2, 1.0), start: 180deg, stop: 204deg, radius: 0.65, anchor: "origin", mark: (start: ">"), stroke: 0.6pt)
  content((14.12, 0.68), text(size: 7pt)[$phi_B$], anchor: "center")

  // Freccia delta_C in corrispondenza di x = 12.5
  content((12.55, 1.40), text(size: 7pt)[$delta_C$], anchor: "center")
}))

// [DA AUDIO]
Con riferimento allo schema statico con organo (es. ingranaggio) calettato all'estremità a sbalzo $C$, la forza trasversale $F$ scambiata tra i denti genera un diagramma del momento flettente $M_f$ ad andamento lineare (triangolare) che raggiunge il valore massimo in corrispondenza del supporto intermedio $B$. Contemporaneamente, la coppia torcente $M_t$ introdotta dall'ingranaggio nella sezione $C$ percorre l'intero sviluppo dell'albero fino all'estremità opposta $A$ a cui è collegata l'utenza (o il motore), determinando un diagramma di momento torcente costante su tutta la lunghezza attiva tra ingresso e uscita di potenza.

Delineato lo schema delle forze, si calcolano i momenti flettenti nei due piani ortogonali per ottenere il momento flettente totale risultante $M_f = sqrt(M_x^2 + M_y^2)$. Essendo gli alberi tipicamente realizzati in acciaio duttile, per il dimensionamento preliminare della sezione trasversale si adotta il criterio di resistenza di Tresca (massima tensione tangenziale), scelto perché più conservativo rispetto a Von Mises:
$ sigma_(i d) = sqrt(sigma^2 + 4 tau^2) = sqrt((M_f / W_f)^2 + 4 (M_t / W_t)^2) $
Poiché per le sezioni circolari piene il modulo di resistenza a torsione è doppio rispetto a quello a flessione ($W_t = 2 W_f$), l'equazione si semplifica in:
$ sigma_(i d) = 1 / W_f sqrt(M_f^2 + M_t^2) $
Questa tensione ideale in esercizio viene confrontata con una tensione ammissibile $sigma_"amm" = R_m / (C S)$. Si assume preliminarmente un coefficiente di sicurezza molto elevato (es. $C S = 10$) per compensare preventivamente gli effetti della fatica e degli intagli, riducendo le iterazioni successive. Sostituendo il modulo di resistenza a flessione $W_f = (pi D^3) / 32$, si ricava il diametro minimo teorico:
$ D_"min" = (32 / (pi sigma_"amm") sqrt(M_f^2 + M_t^2))^(1/3) $

// [DA AUDIO]
In merito alle ipotesi adottate in questa formula di progetto diretto, occorre evidenziare tre aspetti fondamentali di natura normativa e progettuale:
- *Confronto tra Tresca e Von Mises:* l'espressione della tensione equivalente secondo Von Mises presenta un coefficiente $3$ anziché $4$ associato alla tensione tangenziale ($sigma_(i d, "VM") = sqrt(sigma^2 + 3 tau^2)$). Sebbene la scelta tra i due criteri dipenda dalla specifica normativa tecnica di riferimento, il criterio di Tresca viene frequentemente preferito nel predimensionamento poiché fornisce una stima leggermente superiore (più cautelativa) della tensione ideale, garantendo una sezione preliminare più robusta.
- *Giustificazione del coefficiente di sicurezza $C S = 10$:* in un calcolo di verifica puramente statico, la contenuta incertezza sui carichi e sul materiale consente di adottare coefficienti di sicurezza modesti, tipicamente pari a $C S approx 1.5 - 2$. Nel predimensionamento di un albero si adotta invece una procedura formalmente statica ma con un margine volutamente esasperato ($C S = 10$ secondo la tradizione progettuale, o altro valore analogo indicato dalla normativa) proprio perché tale diametro iniziale deve già assorbire il severo abbattimento di resistenza dovuto alla *fatica* e agli *intagli*: partire da una sezione sovradimensionata rispetto alla sola statica consente di far convergere il processo progettuale in sole $2 - 3$ iterazioni.
- *Distinzione tra tensione limite e tensione ammissibile ($sigma_"amm"$):* nella letteratura e nelle normative tecniche, la *tensione limite* indica la proprietà intrinseca di resistenza del materiale (es. limite di rottura $R_m$ o di snervamento $R_(p 0.2)$), mentre il termine *tensione ammissibile* ($sigma_"amm"$) indica un valore di soglia al cui interno *il coefficiente di sicurezza è già stato incluso* dal normatore ($sigma_"amm" = sigma_"lim" / (C S)$). Pertanto, qualora una norma o una tabella tecnica fornisca direttamente il valore di $sigma_"amm"$ come dato di ingresso, il progettista non deve dividere ulteriormente per un coefficiente di sicurezza, ma deve unicamente imporre la condizione $sigma_(i d) <= sigma_"amm"$.

// [DA SLIDE]
=== Osservazioni sul dimensionamento preliminare e sul processo iterativo
Affinché questa procedura di progetto diretto sia applicabile, è essenziale notare che:
1. *Indipendenza delle sollecitazioni dalla geometria trasversale:* in uno schema statico isostatico (e trascurando in prima approssimazione il peso proprio dell'albero rispetto alle forze esterne trasmesse dagli organi), i diagrammi del momento flettente $M_f$ e del momento torcente $M_t$ dipendono unicamente dai carichi esterni e dalle distanze assiali tra supporti e organi, risultando *indipendenti dal diametro $D$ dell'albero*. Ciò consente di tracciare i diagrammi prima ancora di aver definito le dimensioni della sezione.
2. *Relazione tra i moduli di resistenza nella sezione circolare piena:* per una sezione circolare di diametro $D$, il momento d'inerzia polare $I_p = (pi D^4) / 32$ è esattamente il doppio del momento d'inerzia assiale $I = (pi D^4) / 64$; dividendo per il raggio esterno $R = D / 2$, si ottiene $W_t = (pi D^3) / 16 = 2 W_f$, con $W_f = (pi D^3) / 32$. Imponendo la condizione limite di progetto $sigma_(i d) = sigma_"amm"$, si ricava dapprima il modulo di resistenza a flessione minimo necessario:
   $ W_f = 1 / sigma_"amm" sqrt(M_f^2 + M_t^2) = (pi D^3) / 32 $
   da cui discende direttamente l'espressione del diametro minimo $D_"min"$.
3. *Applicazione per tratti e convergenza iterativa:* la formula di $D_"min"$ viene applicata a *ognuna delle sezioni di interesse* lungo l'asse dell'albero (ovvero alla sezione più sollecitata di ciascun tratto avente diametro costante). Il profilo preliminare così ottenuto costituisce il punto di partenza di un *processo progettuale iterativo* che, integrando i vincoli costruttivi dei componenti a catalogo e le verifiche di dettaglio, converge solitamente entro pochi passaggi alla geometria definitiva.

La necessità di alloggiare accessori impone variazioni di sezione (spallamenti, cave per chiavette) che agiscono come intagli. L'introduzione dei fattori di concentrazione delle tensioni ($K_t$, $K_f$) rende obbligatoria la riverifica a fatica nelle sezioni critiche.

// [DA AUDIO]
In particolare, la presenza dei fattori di intaglio $K_t$ e $K_f$ può spostare la localizzazione del punto più pericoloso dell'albero: una sezione intagliata (ad esempio in corrispondenza di uno spallamento a raggio stretto, di una cava per linguetta o di una filettatura), pur essendo soggetta a valori nominali di momento flettente $M_f$ e torcente $M_t$ *inferiori* rispetto alla sezione di picco dei diagrammi delle sollecitazioni, può sviluppare tensioni locali amplificate molto più gravose, diventando a tutti gli effetti la vera sezione critica governante il dimensionamento. Per tale ragione la verifica a fatica va estesa sistematicamente a tutte le sezioni che presentano discontinuità geometriche.

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