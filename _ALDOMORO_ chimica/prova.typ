#set page(paper: "a4", margin: 2cm)
#set text(lang: "it", size: 11pt)
#set par(justify: true)
#set math.equation(numbering: "(1)")
#set heading(numbering: none)

#import "@preview/cetz:0.3.4": canvas, draw
#import "@preview/chemformula:0.1.3": ch

= Capitolo 2: I componenti della materia

*Corso:* Chimica \
*Docente:* Federico Bella (`federico.bella@polito.it`) \
*Anno Accademico:* 2019-2020

#v(1em)

== Elementi, composti e miscele

Dal punto di vista macroscopico e microscopico, tutta la materia che ci circonda può essere classificata in tre categorie fondamentali, distinte in base alla purezza della composizione e al modo in cui le unità submicroscopiche (atomi e molecole) sono legate o mescolate tra loro:

- *Elemento*: rappresenta la forma più semplice della materia, caratterizzata da proprietà chimiche e fisiche esclusive. Un elemento è costituito da una sola specie di _atomi_ e, proprio per questa sua natura fondamentale, non è possibile scomporlo o ottenere da esso un tipo di materia più semplice mediante gli ordinari mezzi chimici (ovvero tramite reazioni chimiche che non alterano i nuclei atomici). Un elemento appartiene alla categoria delle _sostanze pure_ (o semplicemente _sostanze_), ovvero porzioni di materia la cui composizione è fissa, costante e ben definita in ogni sua parte (ad esempio, un campione puro di silicio contiene esclusivamente atomi di silicio, #ch("Si")). In natura, la maggior parte degli elementi esiste sotto forma di vaste popolazioni di singoli atomi (elementi monoatomici, come il gas nobile neon, #ch("Ne")), mentre altri elementi esistono stabilmente in forma molecolare (ad esempio l'ossigeno gassoso, #ch("O2"), o l'azoto, #ch("N2")). Si definisce *molecola* un'unità strutturale elettricamente neutra e fisicamente indipendente, costituita da due o più atomi legati chimicamente tra loro in modo stabile.

- *Composto*: è un tipo di materia più complesso, costituito da due o più elementi diversi i cui atomi sono legati chimicamente tra loro in modo stabile. Caratteristica cruciale di ogni composto è che gli elementi costituenti sono sempre presenti in *parti fisse in massa*, poiché a livello microscopico il composto è formato da rapporti numerici fissi e ben definiti di atomi dei vari elementi (ad esempio, nell'acqua, #ch("H2O"), ci sono sempre esattamente due atomi di idrogeno per ogni atomo di ossigeno). In virtù di questa composizione invariabile, anche un composto è classificato come una *sostanza pura*. È fondamentale notare che le proprietà fisiche e chimiche di un composto sono radicalmente differenti da quelle dei singoli elementi che lo costituiscono. Inoltre, a differenza degli elementi, un composto può essere scomposto in sostanze più semplici (fino ad arrivare agli elementi costituenti) mediante opportune trasformazioni chimiche (come l'elettrolisi o la decomposizione termica).

- *Miscela*: è un insieme eterogeneo o omogeneo costituito da due o più sostanze pure (elementi e/o composti) che sono semplicemente mescolate fisicamente tra loro, senza che siano intervenuti legami chimici a formare nuove specie. Di conseguenza, in una miscela le rispettive parti in massa dei componenti non sono fisse, ma possono variare con continuità entro ampi intervalli. Una miscela (come ad esempio l'acqua salata, formata da acqua #ch("H2O") e cloruro di sodio #ch("NaCl")) conserva molte delle proprietà chimico-fisiche individuali dei suoi componenti; proprio perché l'unione è solo di natura fisica, i singoli componenti possono essere separati e recuperati mediante semplici trasformazioni fisiche (quali evaporazione, filtrazione, distillazione).

#v(1em)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    La rappresentazione particellare a lato illustra chiaramente la differenza microscopica tra le tre categorie:
    - *A (Atomi di un elemento):* singole sfere identiche e separate che si muovono indipendentemente (es. un gas nobile come #ch("Ne") o #ch("Ar")).
    - *B (Molecole di un elemento):* coppie di atomi identici legati chimicamente a formare unità biatomiche indipendenti (es. #ch("O2"), #ch("N2"), #ch("H2")).
    - *C (Molecole di un composto):* unità strutturali identiche tra loro, ma ciascuna formata da atomi di elementi diversi legati in rapporto fisso (es. #ch("H2O")).
    - *D (Miscela):* coesistenza fisica nello stesso volume di specie chimiche diverse (atomi singoli, molecole di elementi e molecole di composti) non legate tra loro.
  ],
  [
    #canvas(length: 0.8cm, {
      import draw: *
      // A: Atomi di un elemento
      circle((-2.5, 2.5), radius: 2.0, fill: rgb(30, 30, 30), stroke: 1pt)
      for pos in ((-3.5, 3.2), (-2.0, 3.6), (-1.5, 2.2), (-2.8, 1.5), (-3.6, 1.8), (-2.2, 2.6)) {
        circle(pos, radius: 0.25, fill: rgb(180, 60, 180), stroke: none)
      }
      content((-2.5, 0.1), text(size: 8pt)[*A* Atomi di un elemento])

      // B: Molecole di un elemento
      circle((2.5, 2.5), radius: 2.0, fill: rgb(30, 30, 30), stroke: 1pt)
      for (p1, p2) in (((1.5, 3.3), (1.8, 3.5)), ((2.5, 3.7), (2.9, 3.6)), ((3.3, 2.5), (3.5, 2.1)), ((1.8, 1.6), (2.2, 1.5)), ((2.4, 2.6), (2.8, 2.4))) {
        circle(p1, radius: 0.22, fill: rgb(220, 180, 40), stroke: none)
        circle(p2, radius: 0.22, fill: rgb(220, 180, 40), stroke: none)
      }
      content((2.5, 0.1), text(size: 8pt)[*B* Molecole di un elemento])

      // C: Molecole di un composto
      circle((-2.5, -2.5), radius: 2.0, fill: rgb(30, 30, 30), stroke: 1pt)
      for pos in ((-3.3, -1.7), (-1.8, -1.6), (-2.5, -2.6), (-3.4, -3.2), (-1.6, -3.3)) {
        let (x, y) = pos
        circle((x, y), radius: 0.24, fill: rgb(70, 130, 200), stroke: none)
        circle((x - 0.2, y - 0.18), radius: 0.15, fill: rgb(230, 230, 230), stroke: none)
        circle((x + 0.2, y - 0.18), radius: 0.15, fill: rgb(230, 230, 230), stroke: none)
      }
      content((-2.5, -4.9), text(size: 8pt)[*C* Molecole di un composto])

      // D: Miscela
      circle((2.5, -2.5), radius: 2.0, fill: rgb(30, 30, 30), stroke: 1pt)
      // Atomi viola
      circle((1.4, -2.0), radius: 0.25, fill: rgb(180, 60, 180), stroke: none)
      circle((3.4, -1.6), radius: 0.25, fill: rgb(180, 60, 180), stroke: none)
      circle((2.2, -3.6), radius: 0.25, fill: rgb(180, 60, 180), stroke: none)
      // Molecole gialle
      circle((2.2, -1.6), radius: 0.22, fill: rgb(220, 180, 40), stroke: none)
      circle((2.5, -1.8), radius: 0.22, fill: rgb(220, 180, 40), stroke: none)
      circle((3.2, -3.2), radius: 0.22, fill: rgb(220, 180, 40), stroke: none)
      circle((3.5, -3.0), radius: 0.22, fill: rgb(220, 180, 40), stroke: none)
      // Composto
      circle((2.5, -2.7), radius: 0.24, fill: rgb(70, 130, 200), stroke: none)
      circle((2.3, -2.88), radius: 0.15, fill: rgb(230, 230, 230), stroke: none)
      circle((2.7, -2.88), radius: 0.15, fill: rgb(230, 230, 230), stroke: none)
      content((2.5, -5.0), align(center, text(size: 8pt)[*D* Miscela di due elementi\ e un composto]))
    })
  ]
)

#v(1em)

Per comprendere come le proprietà di un composto siano completamente diverse da quelle degli elementi costituenti, si osservi la seguente tabella comparativa relativa alla formazione del cloruro di sodio (#ch("NaCl"), il comune sale da cucina) a partire dal sodio metallico (#ch("Na")) e dal cloro gassoso (#ch("Cl2")):

#align(center)[
  #table(
    columns: (auto, auto, auto, auto),
    inset: 8pt,
    align: (left, center, center, center),
    stroke: (x, y) => if y == 0 { (bottom: 1.5pt + black, top: 1.5pt + black) } else if y == 5 { (bottom: 1.5pt + black) } else { none },
    [*Proprietà*], [*Sodio* (#ch("Na"))], [*Cloro* (#ch("Cl2"))], [*Cloruro di sodio* (#ch("NaCl"))],
    [Temperatura (punto) di fusione], [$97.8 thin degree"C"$], [$-101 thin degree"C"$], [$801 thin degree"C"$],
    [Temperatura (punto) di ebollizione], [$881.4 thin degree"C"$], [$-234 thin degree"C"$], [$1413 thin degree"C"$],
    [Colore], [Argenteo], [Giallo-verde], [Incolore (bianco)],
    [Densità], [$0.97 thin "g/cm"^3$], [$0.0032 thin "g/cm"^3$], [$2.16 thin "g/cm"^3$],
    [Comportamento in acqua], [Reattivo], [Lievemente solubile], [Solubile]
  )
]

Il sodio è un metallo tenero, argenteo, talmente reattivo con l'acqua da sviluppare idrogeno gassoso infiammabile; il cloro è un gas giallo-verde altamente tossico e soffocante. Quando reagiscono chimicamente tra loro, formano il cloruro di sodio, un solido cristallino bianco ad altissimo punto di fusione, perfettamente commestibile e indispensabile per la vita, che si scioglie tranquillamente in acqua senza dar luogo a reazioni violente.

#pagebreak()

== Arti chimiche e origini della chimica moderna

La chimica come scienza esatta ha le sue radici storiche in un lungo passato prescientifico, il quale comprendeva tre grandi tradizioni pratiche e filosofiche parzialmente sovrapposte tra loro:

- *Tradizione alchemica*: nata come studio occulto, mistico e filosofico della natura, si fondava sulla convinzione che la materia possedesse una tendenza naturale intrinseca ad evolvere verso la "perfezione". Gli alchimisti cercavano pertanto procedimenti segreti (come la ricerca della _pietra filosofale_) per trasmutare sostanze di minore valore (metalli vili come il piombo) in altre di maggiore valore e nobiltà (come l'oro). Sebbene i loro presupposti teorici fossero errati, nel corso di secoli di incessanti indagini pratiche di laboratorio gli alchimisti progettarono apparecchiature fondamentali e inventarono tecniche operative tuttora indispensabili, quali la *distillazione*, la *filtrazione* e l'*estrazione*.

- *Tradizione medica (iatrochimica)*: gli alchimisti esercitarono una notevole influenza anche sulla pratica medica e farmacologica (basti pensare a figure come Paracelso). In questa visione, il corpo umano veniva considerato come un vero e proprio sistema chimico dinamico, il cui stato di salute dipendeva dal corretto bilancio di specifiche sostanze; in caso di malattia, tale equilibrio poteva essere ripristinato mediante la somministrazione di preparati chimici e minerali ottenuti in laboratorio (il trattamento medico).

- *Tradizione tecnologica*: arti applicate antichissime come la lavorazione della ceramica e del vetro, la tintura dei tessuti e soprattutto la metallurgia (estrazione e lavorazione dei metalli dai minerali) diedero enormi contributi pratici alla sperimentazione e alla conoscenza empirica delle proprietà delle sostanze. Tuttavia, in questo ambito le nuove tecniche venivano scoperte, affinate e tramandate per tentativi ed errori; i testi scritti dell'epoca erano ricettari tecnici che mostravano uno scarso interesse teorico per l'indagine sul *perché* una sostanza si trasformasse in un'altra e su come prevedere razionalmente il comportamento della materia.

L'indagine chimica nel senso moderno e scientifico del termine cominciò a delinearsi alla fine del XVII secolo, ma per circa un secolo la corretta comprensione dei fenomeni chimici fu gravemente ostacolata da una teoria errata della *combustione*, ovvero il comune processo in cui una sostanza brucia. All'epoca, infatti, nessuno era in grado di spiegare rigorosamente perché alcune sostanze (come il legno o il carbone) bruciassero facilmente ed altre (come la pietra o la cenere) no, e cosa accadesse esattamente a livello materiale durante il processo. La maggior parte degli scienziati dell'epoca abbracciò la cosiddetta *teoria del flogisto* (proposta da Georg Ernst Stahl), secondo la quale tutte le sostanze combustibili contengono al loro interno un principio infiammabile chiamato _flogisto_, ossia una sostanza fluida, sottile e imponderabile (o addirittura dotata di peso negativo) che si libera nell'aria disperdendosi durante la combustione, lasciando dietro di sé la "calce" o cenere (priva di flogisto e quindi non più combustibile).

Fu lo scienziato francese *Antoine-Laurent de Lavoisier*, intorno alla metà del XVIII secolo, a demolire definitivamente la teoria del flogisto e a svelare la reale natura della combustione, grazie a una serie di rivoluzionarie e *accurate misurazioni quantitative* eseguite con la bilancia, che posero finalmente in primo piano l'importanza fondamentale della *massa*. Conducendo le reazioni all'interno di recipienti rigorosamente chiusi, Lavoisier dimostrò che nei suoi esperimenti la massa complessiva dei prodotti formati era esattamente uguale a quella dei reagenti iniziali; egli evidenziò inoltre il ruolo cruciale rivestito dall'aria (e in particolare da un suo componente, che chiamò _ossigeno_) nel processo di combustione: bruciare non significa perdere flogisto, bensì combinarsi chimicamente con l'ossigeno dell'aria. Questo approccio quantitativo rigoroso si estese rapidamente a tutti gli altri tipi di reazioni chimiche, segnando la nascita della chimica moderna.

#v(1em)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    L'esperimento illustrato mostra visivamente il principio scoperto da Lavoisier applicato a una reazione in soluzione acquosa:
    - *Prima della reazione:* sulla bilancia a due piatti si pesano separatamente una beuta contenente una soluzione incolore di nitrato di piombo, #ch("Pb(NO3)2"), e un cilindro graduato contenente una soluzione gialla di cromato di sodio, #ch("Na2CrO4").
    - *Dopo la reazione:* versando una soluzione nell'altra avviene una reazione chimica istantanea che forma un precipitato giallo intenso di cromato di piombo solido, #ch("PbCrO4"), immerso in una soluzione di nitrato di sodio, #ch("NaNO3"). Nonostante la evidente trasformazione chimica, il piatto della bilancia rimane perfettamente in equilibrio: la massa totale non è cambiata.
  ],
  [
    // TODO: inserire figura della slide 5, "Arti chimiche e origini della chimica moderna/2"
    // didascalia suggerita: Verifica sperimentale della conservazione della massa su una bilancia analitica prima e dopo la reazione tra nitrato di piombo e cromato di sodio.
    // #image("placeholder_fig_5.png", width: 90%)
    #rect(width: 90%, height: 4.5cm, stroke: 0.5pt + gray, fill: luma(245))[
      #align(center + horizon)[
        #text(size: 9pt, style: "italic")[
          [Immagine: Bilancia a piatti in equilibrio prima e dopo la reazione di precipitazione tra soluzione di nitrato di piombo e soluzione di cromato di sodio per formare cromato di piombo solido in soluzione di nitrato di sodio.]
        ]
      ]
    ]
  ]
)

#pagebreak()

== Leggi fondamentali della chimica

L'approccio quantitativo inaugurato nel XVIII secolo permise di formulare tre leggi ponderali fondamentali che costituiscono la base sperimentale dell'intera chimica:

=== 1. Legge di conservazione della massa (Lavoisier)
La più importante osservazione chimica del XVIII secolo fu la *legge di conservazione della massa*, enunciata da *Antoine-Laurent de Lavoisier* (1789):
#quote(block: true)[
  _Durante una qualsiasi reazione chimica, la massa totale delle sostanze partecipanti (reagenti e prodotti) rimane rigorosamente invariata._
]
Dal punto di vista filosofico e fisico, la conservazione della massa significa che, nelle trasformazioni chimiche, *la materia non può essere né creata dal nulla, né distrutta*, ma solo trasformata riorganizzando i suoi componenti:

$ m_("reagenti") = m_("prodotti") $

=== 2. Legge della composizione definita e costante (Proust)
Una seconda osservazione chimica fondamentale è espressa dalla *legge della composizione definita e costante* (nota anche come _legge delle proporzioni definite_), elaborata dal chimico francese *Joseph-Louis Proust* (1799):
#quote(block: true)[
  _In un dato composto chimico puro, gli elementi costituenti sono sempre combinati tra loro secondo rapporti in massa costanti e ben definiti, indipendentemente dall'origine del composto o dal metodo con cui è stato preparato._
]
In virtù di questa legge, è possibile esprimere in modo univoco, per ciascun composto, la *percentuale in massa* (spesso indicata con la sigla $"wt%"$, dall'inglese _weight percent_) di ciascun elemento presente. Operativamente, la percentuale in massa di un elemento si calcola dividendo la massa di quell'elemento presente in un campione per la massa totale dell'intero campione di composto, e moltiplicando il rapporto per $100$:

$ "Percentuale in massa dell'elemento X" ("wt%") = frac(m_("elemento X"), m_("composto")) times 100 $

#v(0.5em)
#rect(width: 100%, fill: rgb(240, 248, 255), stroke: 1pt + rgb(70, 130, 180), inset: 10pt)[
  *ES. 2.1* — La pechblenda è il minerale e composto dell'uranio più importante a livello industriale. L'analisi chimica di un campione indica che $84.2 thin "g"$ di pechblenda pura contengono $71.4 thin "g"$ di uranio, mentre il resto della massa è costituito da ossigeno. Calcolare la massa di uranio ottenibile teoricamente a partire da $102 thin "kg"$ di pechblenda. #[*Risultato:* $8.65 times 10^4 thin "g"$]

  *Svolgimento:* \
  Per la legge delle proporzioni definite di Proust, il rapporto in massa tra l'uranio e la pechblenda è costante in qualsiasi campione, indipendentemente dalla sua dimensione. Possiamo calcolare la frazione (o percentuale) in massa di uranio nel campione analizzato e applicarla alla quantità industriale di $102 thin "kg" = 1.02 times 10^5 thin "g"$:
  $ m_("uranio") = m_("pechblenda, tot") times frac(m_("uranio, campione"), m_("pechblenda, campione")) = (102 times 10^3 thin "g") times frac(71.4 thin "g", 84.2 thin "g") = 86.494 times 10^3 thin "g" approx 8.65 times 10^4 thin "g" $
  (Nota: la massa di ossigeno nel campione iniziale è pari a $84.2 thin "g" - 71.4 thin "g" = 12.8 thin "g"$, ma tale dato non è necessario per determinare direttamente la massa di uranio).
]
#v(0.5em)

=== 3. Legge delle proporzioni multiple (Dalton)
Lo scienziato inglese *John Dalton* osservò un particolare e intrigante fenomeno quantitativo che si verificava quando due stessi elementi erano in grado di combinarsi tra loro in modi diversi per formare più di un composto. Egli formulò così la *legge delle proporzioni multiple* (1804):
#quote(block: true)[
  _Se due elementi $A$ e $B$ reagiscono tra loro per formare (a seconda delle condizioni sperimentali) due o più composti diversi, le differenti masse dell'elemento $B$ che si combinano con una stessa massa fissa dell'elemento $A$ stanno tra loro in rapporti esprimibili mediante numeri interi, generalmente piccoli._
]

*Esempio:* Il carbonio (#ch("C")) e l'ossigeno (#ch("O")) reagiscono tra loro in condizioni diverse (ad esempio in carenza o in eccesso d'aria) producendo due composti gassosi differenti, che oggi sappiamo essere il monossido di carbonio (#ch("CO")) e il diossido di carbonio (#ch("CO2")):
- *Composto I (#ch("CO")):* l'analisi elementare mostra che esso è costituito dal $57.1 thin "wt%"$ di ossigeno e dal $42.9 thin "wt%"$ di carbonio. Da questi dati deriva che la massa di ossigeno combinata con $1.00 thin "g"$ (massa fissa) di carbonio è data dal rapporto:
  $ frac(m_("O"), m_("C"))_("Composto I") = frac(57.1, 42.9) = 1.33 $
- *Composto II (#ch("CO2")):* l'analisi mostra che esso possiede il $72.7 thin "wt%"$ di ossigeno e il $27.3 thin "wt%"$ di carbonio. Il rapporto tra la massa di ossigeno e $1.00 thin "g"$ di carbonio è pertanto:
  $ frac(m_("O"), m_("C"))_("Composto II") = frac(72.7, 27.3) = 2.66 $

Mettendo ora a confronto il rapporto ossigeno/carbonio nei due composti (ossia confrontando le masse di ossigeno che si legano alla medesima massa unitaria di carbonio), si ottiene:

$ frac((m_("O") / m_("C"))_("Composto II"), (m_("O") / m_("C"))_("Composto I")) = frac(2.66, 1.33) = frac(2, 1) $

Il risultato è un rapporto di numeri interi piccoli ($2:1$): ciò significa che, a parità di quantità di carbonio considerata, il secondo composto contiene esattamente il doppio della massa di ossigeno rispetto al primo composto.

#pagebreak()

== Teoria atomica di Dalton

Nel 1808, cercando una spiegazione teorica unificante per le tre leggi ponderali appena viste (conservazione della massa, proporzioni definite e proporzioni multiple), *John Dalton* studiò dal punto di vista quantitativo come gli elementi si combinavano tra loro e formulò i celebri *postulati della teoria atomica di Dalton*:

+ Tutta la materia è costituita da *atomi*, piccolissime particelle elementari indivisibili di un elemento, che non possono essere né creati né distrutti.
+ Gli atomi di un dato elemento non possono essere convertiti (trasmutati) in atomi di un altro elemento durante le reazioni chimiche.
+ Tutti gli atomi di uno stesso elemento sono identici tra loro nella massa e in tutte le altre proprietà chimiche e fisiche, e sono invece diversi dagli atomi di ogni altro elemento.
+ Un composto chimico è il risultato di una specifica combinazione di numeri interi semplici di atomi appartenenti a più di un elemento.

_Significato fisico dei postulati:_ La teoria di Dalton spiega immediatamente le leggi ponderali. Poiché gli atomi sono indivisibili e indistruttibili (postulato 1) e si limitano a riarrangiarsi senza cambiare natura (postulato 2), la massa totale deve conservarsi (legge di Lavoisier). Poiché un composto ha un rapporto numerico fisso di atomi (postulato 4) e ogni tipo di atomo ha una sua massa fissa e invariabile (postulato 3), il composto avrà necessariamente una composizione in massa costante (legge di Proust). Infine, se due elementi formano due composti diversi (es. $A B$ e $A B_2$), poiché gli atomi sono indivisibili, il secondo composto dovrà contenere un numero intero multiplo di atomi di $B$ rispetto al primo, giustificando il rapporto tra numeri interi piccoli (legge di Dalton).

=== Il problema delle masse atomiche relative
Subito dopo la pubblicazione della teoria atomica, gli scienziati cercarono di determinare sperimentalmente le masse dei singoli atomi ricavandole dalle frazioni in massa degli elementi misurate nei composti. Tuttavia, un singolo atomo è un'entità talmente minuscola che risultava (e risulta tuttora) impossibile pesarne uno direttamente su una bilancia; ciò rese necessario far ricorso a *misure relative* alla massa di un atomo preso come riferimento.

Dalton scelse e assegnò arbitrariamente, come base della sua scala, il valore di *massa relativa $1$ all'atomo di idrogeno* (l'elemento più leggero conosciuto). Poiché le analisi di Lavoisier avevano mostrato che l'acqua contiene circa $8 thin "g"$ di ossigeno per ogni grammo di idrogeno, Dalton assegnò conseguentemente una massa relativa pari a $8$ all'atomo di ossigeno. Tuttavia, questa deduzione logica sarebbe stata corretta *solo se* la molecola d'acqua avesse avuto formula #ch("HO"), ovvero fosse stata costituita da un solo atomo di ossigeno per ogni atomo di idrogeno!

Successivamente, altri scienziati (tra cui Gay-Lussac, Avogadro e infine Cannizzaro) riscontrarono, studiando i volumi di combinazione dei gas, che una molecola d'acqua doveva necessariamente possedere un atomo di ossigeno legato a *due* atomi di idrogeno (formula #ch("H2O")): pertanto, se $8 thin "g"$ di ossigeno si legano a $1 thin "g"$ di idrogeno (che corrisponde a due atomi nella molecola), un singolo atomo di ossigeno deve pesare $16$ volte un singolo atomo di idrogeno ($2 times 8 = 16$). La massa relativa corretta dell'ossigeno era dunque pari a $16$. Soltanto nel 1860 (al celebre Congresso di Karlsruhe, grazie all'opera di Stanislao Cannizzaro) la comunità scientifica internazionale concordò definitivamente nell'assegnare massa relativa $16$ all'ossigeno.

Nonostante il suo immenso successo, nel corso del XIX secolo il modello atomico di Dalton fu criticato e mostrò alcuni *limiti oggettivi*: in primis, considerando l'atomo come una sfera rigida, piena e indivisibile, esso non era assolutamente in grado di spiegare *perché* gli elementi si combinassero tra loro e perché lo facessero soltanto secondo certi specifici rapporti numerici (concetto di valenza) e non altri.

#pagebreak()

== Modello nucleare dell'atomo

La scoperta che l'atomo di Dalton non è affatto indivisibile, ma possiede una complessa struttura interna formata da particelle subatomiche, avvenne a cavallo tra la fine del XIX e l'inizio del XX secolo attraverso una serie di esperimenti fisici fondamentali.

=== 1. La scoperta dell'elettrone: i raggi catodici (J. J. Thomson, 1897)

#grid(
  columns: (1.1fr, 0.9fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    La prima prova sperimentale diretta della struttura interna degli atomi è datata *1897*, anno in cui il fisico inglese *Joseph John Thomson* stava studiando la natura dei cosiddetti *raggi catodici*. Si tratta di particolari radiazioni luminose che vengono emesse quando si applica un'elevata differenza di potenziale elettrico (alto voltaggio) tra due elettrodi metallici saldati dentro un tubo di vetro posto sotto vuoto spinto.

    Osservando quantitativamente la direzione e l'entità con cui questo raggio veniva deflesso (deviato) a causa dell'applicazione simultanea di un campo elettrico (tramite piastre cariche) e di un campo magnetico esterno, Thomson dimostrò che i raggi catodici non erano onde elettromagnetiche, bensì *fasci di particelle materiali dotate di carica elettrica negativa*, provenienti direttamente dall'interno degli atomi costituenti l'elettrodo metallico negativo (detto *catodo*) e dirette verso l'elettrodo positivo (*anodo*).

    Thomson constatò inoltre un fatto cruciale: tali particelle cariche negativamente (in seguito chiamate *elettroni*, indicati con $e^-$) erano *assolutamente identiche* per proprietà, qualunque fosse il metallo adoperato per costruire il catodo o il gas residuo nel tubo. Egli ne concluse che gli elettroni dovevano essere costituenti universali e far parte degli atomi di tutta la materia.
  ],
  [
    #canvas(length: 0.75cm, {
      import draw: *
      // Tubo di vetro
      line((-3.5, -1), (2.5, -1), stroke: 1.2pt + rgb(100, 140, 180))
      line((-3.5, 1), (2.5, 1), stroke: 1.2pt + rgb(100, 140, 180))
      arc((-3.5, 1), start: 90deg, stop: 270deg, radius: 1, stroke: 1.2pt + rgb(100, 140, 180))
      // Parte finale allargata (schermo)
      line((2.5, 1), (4.0, 1.5), stroke: 1.2pt + rgb(100, 140, 180))
      line((2.5, -1), (4.0, -1.5), stroke: 1.2pt + rgb(100, 140, 180))
      arc((4.0, -1.5), start: -90deg, stop: 90deg, radius: (0.4, 1.5), stroke: 1.2pt + rgb(100, 140, 180))

      // Pompa a vuoto
      line((-2.0, -1), (-2.0, -1.8), stroke: 1pt + rgb(100, 140, 180))
      line((-1.7, -1), (-1.7, -1.8), stroke: 1pt + rgb(100, 140, 180))
      content((-2.0, -2.2), text(size: 7pt)[collegamento\ alla pompa a vuoto], anchor: "north")

      // Catodo (-) e Anodo (+) con fenditura
      rect((-3.3, -0.6), (-3.1, 0.6), fill: gray, stroke: 0.5pt)
      content((-3.4, -0.9), text(size: 7pt)[$(-)$ catodo], anchor: "east")

      rect((-1.3, 0.15), (-1.1, 0.7), fill: gray, stroke: 0.5pt)
      rect((-1.3, -0.7), (-1.1, -0.15), fill: gray, stroke: 0.5pt)
      content((-1.2, -1.2), text(size: 7pt)[fenditura], anchor: "north")
      content((2.6, -0.5), text(size: 7pt)[$(+)$ anodo], anchor: "west")

      // Alto voltaggio
      rect((-2.8, 1.6), (-1.6, 2.4), fill: luma(220), stroke: 0.5pt)
      content((-2.2, 2.7), text(size: 7pt)[alto voltaggio])
      line((-3.2, 0.6), (-3.2, 2.0), (-2.8, 2.0), stroke: 0.7pt)
      line((-1.2, 0.7), (-1.2, 2.0), (-1.6, 2.0), stroke: 0.7pt)

      // Piastre deflettrici
      rect((0.5, 0.8), (1.8, 0.95), fill: luma(160), stroke: 0.5pt)
      content((1.15, 1.3), text(size: 7pt)[$-$ piastra\ negativa], anchor: "south")

      rect((0.5, -0.95), (1.8, -0.8), fill: luma(160), stroke: 0.5pt)
      content((1.15, -1.3), text(size: 7pt)[$+$ piastra\ positiva], anchor: "north")

      // Raggio catodico (fascio verde/giallo deflesso verso il basso)
      line((-3.1, 0), (0.5, 0), stroke: 2pt + rgb(150, 200, 50))
      bezier((0.5, 0), (4.1, -0.9), (1.8, -0.1), (3.0, -0.5), stroke: 2pt + rgb(150, 200, 50))
      line((0.5, 0), (4.3, 0), stroke: (paint: gray, thickness: 0.7pt, dash: "dashed"))

      // Elettroni lungo il fascio
      for pos in ((-2.2, 0), (-0.4, 0), (1.0, -0.05), (2.5, -0.38), (3.6, -0.72)) {
        circle(pos, radius: 0.18, fill: rgb(120, 190, 80), stroke: 0.4pt)
        content(pos, text(size: 5pt)[$e^-$])
      }
    })
  ]
)

#v(0.5em)

=== 2. Il rapporto carica/massa e l'esperimento di Millikan (1909)

#grid(
  columns: (1.1fr, 0.9fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Bilanciando le deflessioni elettriche e magnetiche, Thomson riuscì a misurare sperimentalmente il valore del rapporto carica/massa dell'elettrone:
    $ frac(e, m_e) $
    dove $e$ rappresenta la quantità di carica elettrica dell'elettrone e $m_e$ la sua massa. Confrontando questo dato con quello noto per gli ioni idrogeno, Thomson si accorse che le particelle dei raggi catodici avevano una massa *minore di $1/1000$* di quella dell'atomo di idrogeno (l'atomo più leggero): contrariamente a quanto postulato dalla teoria di Dalton, *gli atomi potevano quindi essere divisi in particelle subatomiche ancora più piccole*.

    I singoli valori assoluti di $m_e$ ed $e$ vennero determinati pochi anni dopo (1909) dal fisico statunitense *Robert Millikan* tramite il celebre esperimento della goccia d'olio. Egli fabbricò un ingegnoso dispositivo che permetteva di osservare, attraverso un microscopio, il moto di minuscole gocce di olio nebulizzate (spruzzate in una camera) e caricate elettricamente mediante irradiazione con raggi X (olio ionizzato). Regolando la tensione tra due piastre metalliche orizzontali forate, Millikan misurò l'intensità della forza del campo elettrico ($F_"elettrica" = q E$, diretta verso l'alto) esattamente necessaria a compensare ed equilibrare l'attrazione della forza di gravità ($F_"gravità" = m g$, diretta verso il basso) sulle goccioline, facendole rimanere immobili a mezz'aria.
  ],
  [
    #canvas(length: 0.75cm, {
      import draw: *
      // Camera cilindrica
      rect((-2.5, -2.5), (2.5, 2.0), fill: rgb(235, 240, 235), stroke: 1pt + gray)
      // Nebulizzatore / imbuto superiore
      line((-0.4, 3.5), (-0.4, 2.8), (-2.0, 2.0), (2.0, 2.0), (0.4, 2.8), (0.4, 3.5), close: true, fill: luma(180), stroke: 0.7pt)
      content((0.6, 3.2), text(size: 8pt)[Olio ionizzato], anchor: "west")

      // Piastra superiore (+)
      rect((-2.4, 0.8), (2.4, 1.0), fill: rgb(180, 190, 140), stroke: 0.7pt)
      line((-2.4, 0.9), (-3.2, 0.9), stroke: 1.2pt + red)
      content((-3.2, 1.2), text(size: 10pt, fill: red)[$+$])
      // Foro centrale
      rect((-0.15, 0.8), (0.15, 1.0), fill: white, stroke: none)

      // Piastra inferiore (-)
      rect((-2.4, -1.2), (2.4, -1.0), fill: rgb(180, 190, 140), stroke: 0.7pt)
      line((-2.4, -1.1), (-3.2, -1.1), stroke: 1.2pt + blue)
      content((-3.2, -0.8), text(size: 10pt, fill: blue)[$-$])

      // Gocciolina d'olio tra le piastre
      circle((0, -0.1), radius: 0.12, fill: rgb(200, 160, 0), stroke: 0.5pt)

      // Microscopio a destra
      rect((2.2, -0.4), (3.6, 0.2), fill: luma(150), stroke: 0.7pt)
      content((3.0, -0.8), text(size: 8pt)[Microscopio])

      // Riquadro ingrandimento forze
      rect((-0.5, -4.8), (3.5, -2.0), radius: 0.3, fill: white, stroke: 0.8pt)
      line((0, -0.25), (0.5, -2.0), stroke: (paint: black, thickness: 0.6pt), mark: (end: ">"))

      // Goccia ingrandita e frecce forze
      circle((0.5, -3.4), radius: 0.2, fill: rgb(180, 40, 40))
      line((0.5, -3.2), (0.5, -2.2), stroke: 4pt + rgb(180, 30, 30), mark: (end: ">"))
      content((1.0, -2.7), text(size: 8pt)[Forza\ elettrica], anchor: "west")

      line((0.5, -3.6), (0.5, -4.6), stroke: 4pt + rgb(120, 170, 60), mark: (end: ">"))
      content((1.0, -4.1), text(size: 8pt)[Forza di\ gravità], anchor: "west")
    })
  ]
)

Dall'equilibrio delle forze egli ricavò con estrema precisione il valore della carica elettrica totale $q$ presente sulle singole particelle d'olio. Millikan osservò che differenti gocce d'olio catturavano un diverso numero di elettroni liberi nell'aria, ma le varie cariche totali misurate $q$ erano *sempre un multiplo intero esatto di una carica elementare minima* ($q = n e$, con $n in NN$). Egli dedusse correttamente che questa carica minima fondamentale doveva essere proprio quella di un singolo elettrone. Combinando il valore di $e$ con il rapporto $e/m_e$ di Thomson, Millikan ottenne i valori fondamentali:

$ e = -1.6 times 10^(-19) thin "C" wide "e" wide m_e = 9.1 times 10^(-31) thin "kg" $

#pagebreak()

=== 3. Il modello a panettone e l'esperimento di Rutherford (1910)

Sebbene gli elettroni rechino una carica elettrica negativa, è un fatto sperimentale evidente che gli atomi, nel loro insieme ordinario, risultano *elettricamente neutri*. Gli scienziati intuirono pertanto che ogni atomo doveva necessariamente contenere al suo interno anche una certa quantità di *carica positiva*, esattamente sufficiente a bilanciare quella negativa degli elettroni.

Sulla base di questa deduzione, *J. J. Thomson* ipotizzò un primo modello strutturale dell'atomo (noto come *modello a panettone*, o _plum pudding model_ in inglese), in cui l'atomo veniva immaginato come una sfera fluida e diffusa, simile all'impasto di un panettone, costituita da un ammasso continuo di materiale carico positivamente nel quale gli elettroni puntiformi si trovavano disseminati e sospesi (come i canditi o l'uvetta).

#v(0.5em)

#grid(
  columns: (1.1fr, 0.9fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Questa ipotesi fu clamorosamente smentita dal fisico neozelandese *Ernest Rutherford* nel *1910* (assieme ai suoi collaboratori Geiger e Marsden). Il suo celebre esperimento consisteva nel bombardare una sottilissima lamina metallica di oro o di platino (spessa appena poche migliaia di strati atomici) con un fascio collimato di particelle pesanti e cariche positivamente: le *particelle $alpha$* (nuclei di elio, #ch("He^2+"), aventi massa oltre $7000$ volte superiore a quella dell'elettrone, emesse ad alta velocità da un campione gassoso di radon radioattivo) e nell'osservare le scintillazioni prodotte dal loro impatto su uno schermo circolare fluorescente (ricoperto di solfuro di zinco).

    *La previsione contro l'osservazione:* Qualora gli atomi della lamina fossero stati davvero costituiti come ipotizzato dal modello a panettone di Thomson, la carica positiva e la massa sarebbero state distribuite in modo talmente uniforme e rarefatto in tutto il volume atomico che tutte le pesanti e veloci particelle $alpha$ (veri e propri proiettili subatomici) avrebbero dovuto attraversare facilmente la carica positiva diffusa della lamina, deviando solo di tanto in tanto e di frazioni di grado il loro percorso rettilineo.

    *Al contrario*, i risultati sperimentali furono sbalorditivi: sebbene le particelle $alpha$ passassero *quasi tutte inalterate* attraverso la lamina (come se questa fosse vuota), circa *una particella su $20 thin 000$* subiva una deflessione violenta, deviando di oltre $90 degree$ o, addirittura, *rimbalzava all'indietro* in direzione opposta verso la sorgente!
  ],
  [
    #canvas(length: 0.7cm, {
      import draw: *
      // Modello a panettone in alto a destra
      circle((2.5, 4.2), radius: 1.3, fill: rgb(240, 150, 170), stroke: 1pt + rgb(200, 100, 120))
      content((2.5, 4.2), text(size: 16pt, fill: rgb(220, 80, 100))[*$+$*])
      for pos in ((1.8, 4.7), (2.8, 4.9), (3.3, 4.1), (2.0, 3.8), (2.7, 3.4), (1.6, 4.0), (2.4, 4.4)) {
        circle(pos, radius: 0.16, fill: rgb(230, 200, 60), stroke: 0.4pt)
        content(pos, text(size: 5pt)[$e^-$])
      }
      content((2.5, 2.6), text(size: 7pt, style: "italic")[Modello di Thomson])

      // Dispositivo di Rutherford
      // Schermo fluorescente circolare
      arc((0, -1.5), start: -150deg, stop: 160deg, radius: (3.5, 1.5), stroke: 4pt + luma(160))
      arc((0, -1.2), start: -150deg, stop: 160deg, radius: (3.5, 1.5), stroke: 1.5pt + rgb(230, 190, 40))

      // Lamina d'oro/platino al centro
      line((-0.4, -0.8), (0.4, -1.6), (0.4, -0.4), (-0.4, 0.4), close: true, fill: rgb(240, 200, 30), stroke: 0.6pt)
      content((1.2, 0.8), text(size: 8pt)[Lamina di platino], anchor: "west")
      line((1.1, 0.8), (0.1, 0.0), stroke: 0.5pt)

      // Fascio di particelle alfa incidente
      line((-4.0, -2.5), (0, -1.0), stroke: 2pt + rgb(200, 30, 30), mark: (end: ">"))
      content((-3.2, -1.2), text(size: 8pt)[Particelle $alpha$])

      // Fasci trasmessi e deviati
      line((0, -1.0), (3.2, 0.2), stroke: 2pt + rgb(200, 30, 30), mark: (end: ">"))
      line((0, -1.0), (3.4, -0.5), stroke: 0.8pt + rgb(200, 30, 30), mark: (end: ">"))
      line((0, -1.0), (2.8, 0.8), stroke: 0.8pt + rgb(200, 30, 30), mark: (end: ">"))
      // Fascio rimbalzato (1 su 20000)
      line((0, -1.0), (-2.2, -2.3), stroke: 0.8pt + rgb(200, 30, 30), mark: (end: ">"))
      content((1.8, -0.2), text(size: 7pt)[1 su $20 thin 000$], anchor: "west")

      content((3.6, -1.2), text(size: 8pt)[Schermo\ fluorescente], anchor: "west")
      content((3.0, -2.4), text(size: 8pt)[Scintillazioni], anchor: "west")
    })
  ]
)

=== 4. Il modello nucleare, i protoni e il numero atomico

#grid(
  columns: (1.1fr, 0.9fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    L'esperimento di diffusione di Rutherford condusse direttamente alla formulazione dell'attuale *modello nucleare dell'atomo*, in base al quale l'atomo possiede un centro puntiforme ed estremamente denso dotato di carica elettrica positiva, chiamato *nucleo*, in cui si concentra essenzialmente *tutta la massa* dell'atomo. Questo minuscolo nucleo centrale è attorniato da un grandissimo volume di spazio *pressoché interamente vuoto*, nel quale si distribuiscono e si muovono rapidamente gli elettroni leggeri.

    Per comprendere le proporzioni geometriche dell'atomo vuoto, si consideri che il diametro tipico di un nucleo atomico è pari a circa $10^(-14) thin "m"$, mentre lo spazio complessivo occupato dalla nube degli elettroni ha un diametro dell'ordine di $10^(-9) - 10^(-10) thin "m"$ (ovvero un diametro da $10 thin 000$ a $100 thin 000$ volte maggiore!). È proprio perché l'atomo è quasi totalmente vuoto che la stragrande maggioranza delle particelle $alpha$ attraversa la lamina indisturbata; solo quando una particella $alpha$ (positiva) capita sulla traiettoria diretta di un nucleo (anch'esso positivo e pesantissimo) subisce una fortissima repulsione coulombiana che la fa deviare a grandi angoli o rimbalzare indietro.
  ],
  [
    #canvas(length: 0.75cm, {
      import draw: *
      // Ingrandimento circolare degli atomi di platino
      circle((0, 0), radius: 2.4, fill: luma(230), stroke: 1pt + gray)

      // Disegno di una griglia di atomi sferici (nubi elettroniche grigie) con nuclei puntiformi neri
      for (x, y) in ((-1.2, 1.2), (0, 1.5), (1.2, 1.0), (-1.4, -0.2), (-0.2, 0.1), (1.0, -0.3), (-1.0, -1.5), (0.2, -1.3), (1.4, -1.5)) {
        circle((x, y), radius: 0.65, fill: rgb(190, 190, 195), stroke: 0.3pt + white)
        circle((x, y), radius: 0.07, fill: black)
      }

      // Fasci di particelle alfa che attraversano gli atomi
      line((-3.0, -0.2), (2.6, 1.8), stroke: 1pt + rgb(200, 30, 30), mark: (end: ">"))
      line((-3.0, -1.2), (2.6, 0.8), stroke: 1pt + rgb(200, 30, 30), mark: (end: ">"))
      // Raggio deflesso vicino a un nucleo
      line((-3.0, -0.6), (-0.25, 0.05), stroke: 1pt + rgb(200, 30, 30))
      line((-0.25, 0.05), (2.2, 2.2), stroke: 1pt + rgb(200, 30, 30), mark: (end: ">"))
      // Raggio che colpisce il nucleo e rimbalza indietro
      line((-3.0, -1.6), (0.15, -1.3), stroke: 1pt + rgb(200, 30, 30))
      line((0.15, -1.3), (-2.6, -2.4), stroke: 1pt + rgb(200, 30, 30), mark: (end: ">"))

      content((-2.2, 1.2), text(size: 8pt)[Nucleo], anchor: "east")
      line((-2.1, 1.2), (-1.25, 1.2), stroke: 0.5pt)

      content((2.2, -1.2), text(size: 8pt)[Atomi di\ platino], anchor: "west")
      content((-2.0, 2.4), text(size: 8pt)[Particelle $alpha$])
    })
  ]
)

#v(0.5em)

In un atomo isolato, la carica negativa complessiva degli elettroni compensa ed elide esattamente quella positiva del nucleo centrale; di conseguenza, l'atomo nel suo complesso è elettricamente neutro. Le particelle fondamentali dotate di carica positiva presenti all'interno del nucleo atomico si chiamano *protoni* (indicati con $p^+$): essi possiedono una carica elettrica in valore assoluto *uguale ed opposta* a quella degli elettroni ($+1.6 times 10^(-19) thin "C"$), mentre la loro massa è enormemente più grande, pari a circa:

$ m_p = 1.7 times 10^(-27) thin "kg" $

(circa $1836$ volte la massa di un elettrone).

Il numero di protoni presenti nel nucleo atomico è la grandezza fondamentale che identifica univocamente ciascun elemento chimico: esso varia da un elemento all'altro e prende il nome di *numero atomico*, indicato universalmente con la lettera maiuscola $Z$.

La determinazione sperimentale sistematica dei numeri atomici degli elementi fu condotta poco dopo (1913) dal giovane fisico inglese *Henry Moseley*: egli bombardò campioni dei vari elementi chimici con fasci di raggi catodici ad alta energia, osservò la conseguente emissione di raggi X caratteristici e scoprì una legge matematica lineare che correlava la frequenza dei raggi X emessi direttamente al numero di protoni ($Z$) presenti nei nuclei atomici dei vari elementi.

#pagebreak()

== Spettrometro di massa e neutroni

=== Il funzionamento dello spettrometro di massa

#grid(
  columns: (1.1fr, 0.9fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    I progressi tecnici nella manipolazione di fasci di particelle cariche nel vuoto consentirono di realizzare lo *spettrometro di massa* (sviluppato inizialmente da Francis Aston, allievo di Thomson), uno strumento analitico estremamente preciso atto a determinare sperimentalmente la massa atomica (e molecolare).

    Il principio fisico di funzionamento dello strumento si articola nelle seguenti fasi:
    + *Ionizzazione:* il campione gassoso della specie in esame viene introdotto nella camera da vuoto, dove viene bombardato da un fascio di elettroni ad alta energia che escono da un filamento riscaldato (*cannone elettronico*). Gli elettroni impattano violentemente sugli atomi (o molecole) del campione strappando loro uno o più elettroni; la specie in esame acquista così carica elettrica positiva, diventando uno *ione positivo* (catione, es. #ch("M+")).
    + *Accelerazione:* il fascio di ioni positivi generato viene collimato e accelerato attraverso piastre metalliche sottoposte a un'elevata differenza di potenziale elettrico ($+$ e $-$), sempre in condizioni di alto vuoto per evitare urti con l'aria.
    + *Deflessione magnetica:* il fascio veloce di ioni passa quindi attraverso i poli di un potente *elettromagnete*. Per effetto della forza di Lorentz, il campo magnetico curva la traiettoria degli ioni lungo un arco di circonferenza. A parità di carica elettrica e di velocità di ingresso, *gli ioni più leggeri vengono deflessi maggiormente* (raggio di curvatura minore, traiettoria C), mentre *gli ioni più pesanti*, avendo maggiore inerzia, *vengono deflessi meno* (raggio di curvatura maggiore, traiettoria A).
    + *Rilevazione:* variando con continuità l'intensità del campo magnetico generato dall'elettromagnete, gli ioni di diversa massa cambiano progressivamente la loro traiettoria fino a riuscire ad attraversare la fenditura d'uscita e colpire un *rilevatore di ioni*. Pertanto, *la massa di ogni ione è direttamente proporzionale all'intensità del campo magnetico necessario a fargli raggiungere il rilevatore*.
  ],
  [
    #canvas(length: 0.75cm, {
      import draw: *
      // Camera di ionizzazione e tubo curvo
      rect((-3.0, -2.0), (-1.2, 0.5), fill: luma(210), stroke: 0.8pt)
      // Tubo curvo nel magnete
      bezier((-1.2, 0.2), (1.8, 2.2), (0.2, 0.2), (1.0, 1.2), stroke: 12pt + luma(200))
      bezier((-1.2, -0.8), (2.4, 1.6), (0.4, -0.8), (1.4, 0.4), stroke: 12pt + luma(200))

      // Cannone elettronico
      rect((-2.6, 0.5), (-2.0, 1.2), fill: rgb(220, 150, 50), stroke: 0.6pt)
      line((-2.3, 0.5), (-2.3, -1.2), stroke: 1.5pt + rgb(220, 100, 30))
      content((-2.3, 1.8), text(size: 7pt)[Cannone\ elettronico], anchor: "south")

      // Piastre acceleratrici (+ e -)
      line((-1.8, -1.8), (-1.8, 0.2), stroke: 2pt + red)
      content((-1.8, -2.2), text(size: 8pt, fill: red)[$+$])
      line((-1.4, -1.8), (-1.4, 0.2), stroke: 2pt + blue)
      content((-1.4, -2.2), text(size: 8pt, fill: blue)[$-$])
      content((-1.8, -2.7), text(size: 7pt)[Alto voltaggio])

      // Ingresso campione e pompa
      line((-2.3, -2.0), (-2.3, -2.5), stroke: 1pt)
      content((-0.6, -2.2), text(size: 7pt)[Campione], anchor: "west")
      line((-0.7, -2.2), (-2.2, -0.6), stroke: 0.5pt)

      circle((-0.6, 0.8), radius: 0.4, fill: luma(220), stroke: 0.6pt)
      content((-0.6, 1.5), text(size: 7pt)[Pompa])

      // Elettromagnete (cerchio grigio scuro attorno alla curva)
      circle((0.5, -0.2), radius: 1.3, fill: rgb(150, 150, 160), stroke: 1pt)
      content((1.5, -2.0), text(size: 7pt)[Elettromagnete], anchor: "west")
      line((1.4, -2.0), (0.8, -1.2), stroke: 0.5pt)

      // Traiettorie degli ioni A, B, C
      // C (più leggero, curva di più)
      bezier((-2.3, -0.4), (1.3, 1.8), (0.0, -0.4), (0.6, 0.8), stroke: 0.8pt + black)
      content((1.1, 1.6), text(size: 7pt)[*C*])
      // B (a fuoco sul rilevatore)
      bezier((-2.3, -0.4), (2.2, 1.9), (0.2, -0.4), (1.2, 0.6), stroke: 1.2pt + black)
      content((1.8, 1.1), text(size: 7pt)[*B*])
      // A (più pesante, curva meno)
      bezier((-2.3, -0.4), (2.3, 1.1), (0.4, -0.4), (1.5, 0.2), stroke: 0.8pt + black)
      content((2.3, 0.8), text(size: 7pt)[*A*])

      // Rilevatore di ioni e grafico
      rect((2.0, 1.6), (2.6, 2.2), fill: rgb(220, 140, 60), stroke: 0.7pt)
      content((2.2, 2.8), text(size: 7pt)[Rilevatore\ di ioni], anchor: "west")

      // Schermo grafico picchi
      rect((-0.2, 1.8), (1.8, 3.3), fill: rgb(245, 245, 210), stroke: 0.6pt)
      line((0.0, 2.0), (1.6, 2.0), stroke: 0.6pt)
      line((0.9, 2.0), (0.9, 3.1), stroke: 1.2pt + rgb(180, 60, 40))
      line((1.2, 2.0), (1.2, 2.2), stroke: 1pt + rgb(180, 60, 40))
      line((1.5, 2.0), (1.5, 2.4), stroke: 1pt + rgb(180, 60, 40))
    })
  ]
)

#v(1em)

=== La scoperta dei neutroni e il numero di massa

#grid(
  columns: (1.15fr, 0.85fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Usando gli spettrometri di massa per analizzare elementi chimici purissimi, gli scienziati si resero conto con sorpresa che *non tutti gli atomi di uno stesso elemento possedevano la stessa identica massa* (smentendo così il terzo postulato di Dalton).

    *Esempio:* Analizzando un campione di gas neon (#ch("Ne")) chimicamente puro, lo spettro di massa mostra tre picchi distinti: la stragrande maggioranza degli atomi di neon ha una massa circa $20$ volte maggiore di quella dell'idrogeno atomico, mentre frazioni minori di altri atomi di neon risultano essere esattamente $21$ o $22$ volte più pesanti di quest'ultimo.

    Ciò consentì di affinare ulteriormente e completare il modello nucleare dell'atomo: poiché tutti gli atomi di neon devono avere lo stesso numero di protoni ($Z = 10$, altrimenti non sarebbero neon!), gli scienziati si resero conto che il nucleo atomico doveva necessariamente contenere anche altre particelle subatomiche *elettricamente neutre*, successivamente scoperte sperimentalmente da James Chadwick (1932) e chiamate *neutroni* (indicati con $n^0$).

    I neutroni non hanno carica elettrica, ma *hanno circa la stessa massa dei protoni* ($m_n approx 1.675 times 10^(-27) thin "kg"$) e quindi contribuiscono ad aumentare in modo consistente la massa atomica. Pertanto, la presenza di un diverso numero di neutroni all'interno del nucleo dà origine ad atomi di massa diversa, anche nel caso in cui si tratti di atomi appartenenti allo stesso elemento chimico (stesso numero di protoni $Z$).

    Le particelle che risiedono nel nucleo, ovvero *protoni e neutroni*, vengono denominate nel loro insieme *nucleoni*, e il loro numero totale all'interno di un nucleo è detto *numero di massa*, indicato con la lettera maiuscola $A$:
    $ A = Z + N = "numero di protoni" + "numero di neutroni" $
    Poiché elettroni hanno massa trascurabile e protoni e neutroni hanno massa quasi identica, un nucleo atomico che abbia numero di massa $A$ è approssimativamente $A$ volte più pesante dell'atomo di idrogeno comune, il cui nucleo è costituito da un solo protone ($Z = 1, A = 1$).
  ],
  [
    #canvas(length: 0.85cm, {
      import draw: *
      // Assi cartesiani dello spettro di massa del Neon
      line((0, 0), (5.5, 0), stroke: 1.2pt + black)
      line((0, 0), (0, 5.5), stroke: 1.2pt + black)

      content((2.75, -0.7), text(size: 9pt)[Massa, $m / m_u$])
      content((-0.6, 2.75), angle: 90deg, text(size: 9pt)[Segnale al rilevatore])

      // Linea di base arancione e picchi a 20, 21, 22
      line((0.3, 0.2), (1.8, 0.2), stroke: 1.2pt + rgb(210, 90, 40))
      // Picco 20 (90.48%)
      line((1.8, 0.2), (1.85, 4.8), (1.9, 0.2), stroke: 1.2pt + rgb(210, 90, 40))
      content((1.45, 0.6), text(size: 9pt)[$20$])

      line((1.9, 0.2), (2.25, 0.2), stroke: 1.2pt + rgb(210, 90, 40))
      // Picco 21 (0.27%)
      line((2.25, 0.2), (2.3, 0.4), (2.35, 0.2), stroke: 1.2pt + rgb(210, 90, 40))
      content((2.3, 0.65), text(size: 9pt)[$21$])

      line((2.35, 0.2), (2.7, 0.2), stroke: 1.2pt + rgb(210, 90, 40))
      // Picco 22 (9.25%)
      line((2.7, 0.2), (2.75, 0.75), (2.8, 0.2), stroke: 1.2pt + rgb(210, 90, 40))
      content((3.1, 0.6), text(size: 9pt)[$22$])

      line((2.8, 0.2), (5.2, 0.2), stroke: 1.2pt + rgb(210, 90, 40))
    })
  ]
)

#pagebreak()

== Teoria atomica odierna

=== Struttura generale dell'atomo e particelle subatomiche

Alla luce delle scoperte fisiche del XX secolo, possiamo riassumere il modello atomico moderno nei seguenti punti fondamentali:

#grid(
  columns: (1.1fr, 0.9fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),
  [
    Un *atomo* è un'entità submicroscopica sostanzialmente sferica, elettricamente neutra, costituita da un minuscolo *nucleo* centrale carico positivamente, circondato da uno o più *elettroni* carichi negativamente. Gli elettroni si muovono incessantemente e rapidamente nel vasto volume atomico disponibile (formando una "nube elettronica" diffusa), ivi trattenuti dall'attrazione elettrostatica (coulombiana) esercitata su di essi dal nucleo positivo.

    Il *nucleo* è una regione estremamente densa e compatta, che contribuisce da sola a oltre il *$99.97%$ della massa atomica totale*. Esso è costituito da *protoni* (carichi positivamente) e da *neutroni* (privi di carica elettrica); l'unica eccezione in tutta la tavola periodica è rappresentata dall'isotopo più comune dell'idrogeno (#ch("^1H"), prozio), il cui nucleo è formato da un singolo protone e non possiede neutroni. Un atomo isolato è rigorosamente neutro dal punto di vista elettrico perché *il numero di protoni presenti nel nucleo è esattamente uguale al numero di elettroni che si muovono attorno al nucleo*.
  ],
  [
    #canvas(length: 0.75cm, {
      import draw: *
      // Sfondo scuro
      rect((-3.2, -2.2), (3.8, 2.5), fill: rgb(35, 30, 35), stroke: none)

      // Nube elettronica diffusa (A Atomo)
      for r in (1.6, 1.3, 1.0, 0.7, 0.4, 0.2) {
        circle((-1.0, 0.2), radius: r, fill: rgb(220, 80, 100, 45), stroke: none)
      }
      circle((-1.0, 0.2), radius: 0.05, fill: white, stroke: none)

      // Quote dimensionali
      line((-2.6, 1.8), (-2.6, 2.2), stroke: 0.5pt + white)
      line((0.6, 1.8), (0.6, 2.2), stroke: 0.5pt + white)
      line((-2.6, 2.0), (0.6, 2.0), stroke: 0.5pt + white, mark: (start: ">", end: ">"))
      content((-1.0, 2.25), text(size: 7pt, fill: white)[$approx 10^(-10) thin "m"$])

      // Nucleo ingrandito a destra (B Nucleo)
      let nuc_center = (2.6, 0.2)
      for (dx, dy, col) in ((-0.15, 0.1, rgb(210, 70, 90)), (0.15, 0.15, luma(180)), (0, -0.15, rgb(210, 70, 90)), (-0.2, -0.1, luma(180)), (0.2, -0.1, rgb(210, 70, 90)), (0, 0.2, rgb(210, 70, 90)), (0, 0, luma(180))) {
        circle((2.6 + dx, 0.2 + dy), radius: 0.18, fill: col, stroke: 0.3pt + black)
      }

      // Freccia di ingrandimento dal centro dell'atomo al nucleo
      bezier((-1.0, 0.2), (2.2, 0.3), (0.2, 1.2), (1.4, 1.2), stroke: 1.5pt + rgb(180, 210, 240), mark: (end: ">"))

      // Quota nucleo
      line((2.2, 1.8), (2.2, 2.2), stroke: 0.5pt + white)
      line((3.0, 1.8), (3.0, 2.2), stroke: 0.5pt + white)
      line((2.2, 2.0), (3.0, 2.0), stroke: 0.5pt + white, mark: (start: ">", end: ">"))
      content((2.6, 2.25), text(size: 7pt, fill: white)[$approx 10^(-14) thin "m"$])

      // Etichette
      content((-2.3, -0.8), text(size: 6.5pt, fill: white)[nucleo])
      line((-2.0, -0.7), (-1.05, 0.15), stroke: 0.4pt + white)

      content((-0.6, -1.0), text(size: 6.5pt, fill: white)[elettroni, $e^-$\ (carica negativa)])
      content((1.8, -0.6), text(size: 6.5pt, fill: white)[protone, $p^+$\ (carica positiva)])
      content((2.8, -1.2), text(size: 6.5pt, fill: white)[neutrone, $n^0$\ (neutro)])

      content((-1.0, -1.8), text(size: 7pt, fill: white)[*A Atomo*])
      content((2.6, -1.8), text(size: 7pt, fill: white)[*B Nucleo*])
    })
  ]
)

#v(1em)

Le proprietà fisiche quantitative delle tre particelle subatomiche fondamentali sono riassunte nella tabella seguente:

#align(center)[
  #table(
    columns: (auto, auto, auto, auto, auto, auto),
    inset: 7pt,
    align: (left, center, center, center, center, left),
    stroke: (x, y) => if y == 0 { (top: 1.5pt + black) } else if y == 1 { (bottom: 1pt + black) } else if y == 4 { (bottom: 1.5pt + black) } else { none },
    table.cell(rowspan: 2, align: horizon)[*Nome (simbolo)*],
    table.cell(colspan: 2)[*Carica*],
    table.cell(colspan: 2)[*Massa*],
    table.cell(rowspan: 2, align: horizon)[*Posizione nell'atomo*],
    [*Relativa*], [*Assoluta ($"C"$)\**], [*Relativa ($"u"$)\*\**], [*Assoluta ($"g"$)*],
    [Protone ($p^+$)], [$1+$], [$+1.60218 times 10^(-19)$], [$1.00727$], [$1.67262 times 10^(-24)$], [Nucleo],
    [Neutrone ($n^0$)], [$0$], [$0$], [$1.00866$], [$1.67493 times 10^(-24)$], [Nucleo],
    [Elettrone ($e^-$)], [$1-$], [$-1.60218 times 10^(-19)$], [$0.00054858$], [$9.10939 times 10^(-28)$], [All'esterno del nucleo]
  )
]
#text(size: 9pt)[
  *\* Il coulomb ($"C"$) è l'unità SI di carica elettrica. Per definizione, $1 thin "C"$ è la quantità di elettricità trasportata in $1 thin "s"$ da una corrente di intensità $1 thin "A"$ (ampere): $1 thin "C" = 1 thin "A" dot "s"$.* \
  *\*\* L'unità di massa atomica ($"u"$) è uguale a $1.660540 times 10^(-24) thin "g"$; è esaminata in dettaglio più avanti in questo paragrafo.*
]

#v(1em)

=== Isotopi e simboli nucleari

Gli atomi che possiedono lo *stesso numero atomico $Z$* (e che quindi appartengono allo stesso elemento chimico), ma che hanno un *numero di massa $A$ diverso* (in quanto contengono un diverso numero di neutroni nel nucleo) si dicono *isotopi* di quell'elemento.

Per rappresentare in modo univoco uno specifico isotopo (detto anche _nuclide_), si utilizza la notazione simbolica standard:
$ attach(upright("X"), tl: A, bl: Z) $
dove:
- $"X"$ è il *simbolo dell'elemento*, ovvero la notazione abbreviata (di una o due lettere, la prima sempre maiuscola) con cui si indica ciascun elemento chimico in base al suo nome in lingua moderna, in latino o in greco (es. #ch("C") per il carbonio, #ch("Fe") dal latino _ferrum_, #ch("Na") dal latino _natrium_);
- il *numero di massa $A$* si indica ad apice a sinistra del simbolo chimico dell'elemento (es. #ch("^20Ne"), #ch("^22Ne"), che si leggono "neon-20" e "neon-22");
- il *numero atomico $Z$* viene indicato a pedice in basso a sinistra del simbolo (es. $attach(upright("Ne"), tl: 20, bl: 10)$, $attach(upright("Ne"), tl: 22, bl: 10)$). Spesso $Z$ viene omesso perché è già implicito nel simbolo chimico stesso (ogni atomo di neon ha necessariamente $Z = 10$).

_Proprietà degli isotopi:_ Dato che tutti gli isotopi di uno stesso elemento possiedono esattamente lo *stesso numero di protoni ed elettroni* (ed è la configurazione elettronica a governare la formazione dei legami chimici), *le loro proprietà chimiche sono essenzialmente identiche*; al contrario, le loro differenze di massa nucleare portano a *differenze apprezzabili nelle proprietà fisiche* che dipendono dalla massa (quali densità, velocità di diffusione gassosa, punti di fusione ed ebollizione), effetto che risulta particolarmente marcato relativamente agli elementi più leggeri (come gli isotopi dell'idrogeno, dove passando da $A=1$ ad $A=2$ la massa raddoppia).

#v(0.5em)

#grid(
  columns: (0.85fr, 1.15fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    #canvas(length: 0.7cm, {
      import draw: *
      // 3 Nuclei di Neon-20, Neon-21, Neon-22
      for (idx, label1, label2) in ((0, "Neon-20", $attach(upright("Ne"), tl: 20, bl: 10)$), (1, "Neon-21", $attach(upright("Ne"), tl: 21, bl: 10)$), (2, "Neon-22", $attach(upright("Ne"), tl: 22, bl: 10)$)) {
        let cx = (idx - 1) * 3.0
        circle((cx, 0), radius: 1.2, fill: rgb(220, 190, 100), stroke: 0.6pt)
        // Disegno sferette (protoni arancioni, neutroni grigi)
        for (dx, dy) in ((-0.4, 0.4), (0.3, 0.5), (-0.5, -0.3), (0.4, -0.4), (0, 0.1)) {
          circle((cx + dx, dy), radius: 0.28, fill: rgb(230, 110, 30), stroke: 0.3pt)
        }
        for (dx, dy) in ((0.0, 0.6), (-0.6, 0.1), (0.6, 0.1), (-0.1, -0.6), (0.2, -0.2)) {
          circle((cx + dx, dy), radius: 0.28, fill: luma(160), stroke: 0.3pt)
        }
        if idx >= 1 {
          circle((cx, 0), radius: 0.28, fill: luma(130), stroke: 0.4pt)
        }
        if idx == 2 {
          circle((cx + 0.3, 0.2), radius: 0.28, fill: luma(130), stroke: 0.4pt)
        }
        content((cx, -1.7), text(size: 8pt)[#label1])
        content((cx, -2.4), text(size: 8pt)[(#label2)])
      }
    })
  ],
  [
    #align(center)[
      #text(size: 8.5pt)[
        #table(
          columns: (auto, auto, auto, auto, auto),
          inset: 5pt,
          align: (left, center, center, center, right),
          stroke: (x, y) => if y == 0 { (top: 1.2pt + black, bottom: 0.8pt + black) } else if y == 1 { (bottom: 0.8pt + black) } else if y == 7 { (bottom: 1.2pt + black) } else { none },
          table.cell(colspan: 5, fill: rgb(210, 225, 240))[*Alcuni isotopi di elementi comuni*],
          [*Elemento*], [*Simbolo*], [*Numero\ atomico $Z$*], [*Numero di\ massa $A$*], [*Abbondanza\ %*],
          [Idrogeno], [#ch("^1H")], [$1$], [$1$], [$99.985$],
          [Deuterio], [#ch("^2H") o #ch("D")], [$1$], [$2$], [$0.015$],
          [Trizio], [#ch("^3H") o #ch("T")], [$1$], [$3$], [—\*],
          [Carbonio-12], [#ch("^12C")], [$6$], [$12$], [$98.90$],
          [Carbonio-13], [#ch("^13C")], [$6$], [$13$], [$1.10$],
          [Ossigeno-16], [#ch("^16O")], [$8$], [$16$], [$99.76$]
        )
      ]
      #align(left, text(size: 7.5pt)[\* Radioattivo, ha vita brevissima.])
    ]
  ]
)

#v(0.5em)
#rect(width: 100%, fill: rgb(240, 248, 255), stroke: 1pt + rgb(70, 130, 180), inset: 10pt)[
  *ES. 2.2* — Determinare il numero di protoni, elettroni e neutroni dell'isotopo $attach(upright("Si"), tl: 29, bl: 14)$. #[*Risultato:* $14$; $14$; $15$]

  *Svolgimento:* \
  Dalla notazione simbolica $attach(upright("Si"), tl: 29, bl: 14)$ leggiamo direttamente che:
  - Il numero atomico (in basso a sinistra) è $Z = 14$, pertanto il nucleo contiene *$14$ protoni*.
  - Poiché l'atomo è elettricamente neutro, il numero di elettroni è uguale a quello dei protoni: ci sono *$14$ elettroni*.
  - Il numero di massa (in alto a sinistra) è $A = 29$. Il numero di neutroni $N$ si ottiene per differenza:
    $ N = A - Z = 29 - 14 = 15 "neutroni" $
]

#pagebreak()

=== Unità di massa atomica e massa atomica media

Come già osservato, la massa di un singolo atomo è estremamente piccola ($10^(-24) - 10^(-22) thin "g"$) e viene pertanto misurata *relativamente* alla massa di un campione atomico (nuclide) prescelto come standard internazionale, che attualmente (dal 1961) è l'atomo di *carbonio-12* (#ch("^12C"), costituito da $6$ protoni e $6$ neutroni). Per definizione rigorosa, la massa di un singolo atomo di #ch("^12C") è posta pari *esattamente a $12$ unità di massa atomica*.

Si definisce quindi l'*unità di massa atomica* (indicata storicamente con la sigla $"u.m.a."$ e oggi con il simbolo $"u"$) come *la dodicesima parte ($1/12$) della massa di un singolo atomo neutro di carbonio-12*. Nella letteratura biochimica e chimica moderna, l'unità di massa atomica è anche chiamata *dalton* (simbolo $"Da"$), in onore di John Dalton, ed equivale sperimentalmente a una massa assoluta in grammi pari a:

$ 1 thin "u" = 1 thin "Da" = frac(1, 12) thin m(#ch("^12C")) = 1.660540 times 10^(-24) thin "g" approx 1.66 times 10^(-24) thin "g" $

La costituzione isotopica naturale di un elemento chimico viene determinata con grande accuratezza mediante la spettrometria di massa:
+ In primo luogo, lo strumento misura la *massa isotopica*, cioè la massa esatta (in $"u"$ o $"Da"$) di ciascun singolo isotopo stabile di un dato elemento.
+ Dopodiché, dall'altezza relativa dei picchi dello spettro, lo spettrometro di massa fornisce anche l'*abbondanza relativa* (o frazione percentuale) di ciascun isotopo dell'elemento presente nel campione naturale.

La conoscenza di questi due dati consente di pervenire al valore della *massa atomica* (o _peso atomico medio_) di un elemento (quello riportato nelle caselle della tavola periodica), ossia *la media delle masse dei suoi isotopi naturali ponderata secondo le rispettive abbondanze relative*:

$ "Massa atomica" = sum_i ("massa isotopica")_i times ("abbondanza frazionaria")_i $

#v(0.5em)
#rect(width: 100%, fill: rgb(240, 248, 255), stroke: 1pt + rgb(70, 130, 180), inset: 10pt)[
  *ES. 2.3* — L'argento (#ch("Ag")) esiste in natura come miscela di due isotopi stabili: #ch("107Ag") e #ch("109Ag"). I due isotopi hanno massa isotopica pari a $106.90509 thin "Da"$ e $108.90476 thin "Da"$, rispettivamente, e abbondanza naturale del $51.84%$ e $48.16%$. Calcolare la massa atomica dell'argento esprimendola con 5 cifre significative (C.S.). #[*Risultato:* $107.87 thin "Da"$]

  *Svolgimento:* \
  Convertiamo le abbondanze percentuali in abbondanze frazionarie (dividendo per $100$: $0.5184$ e $0.4816$) e calcoliamo la media ponderata delle masse isotopiche:
  $ m_("Ag") &= (106.90509 thin "Da" times 0.5184) + (108.90476 thin "Da" times 0.4816) \
  &= 55.41960 thin "Da" + 52.44853 thin "Da" = 107.86813 thin "Da" $
  Arrotondando il risultato a 5 cifre significative (in accordo con la precisione delle abbondanze percentuali, che hanno 4 C.S. nei prodotti parziali e portano il risultato della somma alla seconda cifra decimale), si ottiene:
  $ m_("Ag") = 107.87 thin "Da" $
]
#v(0.5em)

=== Riesame moderno della teoria di Dalton

Riesaminando criticamente la teoria atomica originaria di Dalton (1808) alla luce delle conoscenze scientifiche attuali, occorre precisare e riformulare alcuni dei suoi quattro postulati:

- _Tutta la materia è costituita da atomi:_ questo resta vero, ma oggi sappiamo che gli atomi *sono divisibili* e costituiti da particelle subatomiche più piccole (protoni, neutroni, elettroni); tuttavia, l'atomo resta comunque *la particella ultima di un elemento a mantenere inalterata la sua identità chimica* durante le reazioni chimiche.
- _Gli atomi di un elemento non possono essere convertiti in atomi di un altro elemento:_ ciò è rigorosamente vero nelle ordinarie trasformazioni chimiche; in realtà oggi sappiamo che la trasmutazione degli elementi *è possibile, ma occorre ricorrere a reazioni nucleari* (fissione, fusione, decadimenti radioattivi), che coinvolgono energie enormemente superiori.
- _Tutti gli atomi di un dato elemento hanno lo stesso numero di protoni ed elettroni, e ciò determina il comportamento chimico dell'elemento:_ la massa non è però identica per tutti gli atomi dello stesso elemento, poiché *esistono isotopi diversi* (diverso numero di neutroni) per quasi ciascun elemento; tuttavia, poiché la composizione isotopica naturale è pressoché costante sulla Terra, nei calcoli chimici un campione macroscopico di elemento viene trattato statisticamente come se tutti i suoi atomi avessero una *massa media* (la massa atomica).
- _Un composto è una specifica combinazione di numeri interi di atomi di più di un elemento:_ questa regola vale per la stragrande maggioranza dei composti molecolari e ionici (composti _daltonidi_ o stechiometrici); in realtà esistono nello stato solido alcuni particolari composti (detti _berthollidi_ o composti non stechiometrici, come certi ossidi o solfuri di metalli di transizione, es. $ch("Fe")_(1-x) ch("O")$) che possono presentare lievi variazioni continue dei rapporti numerici dei loro atomi a causa di difetti nel reticolo cristallino.

#pagebreak()

#set page(paper: "a4", margin: 2cm)
#set text(lang: "it", size: 11pt)
#set par(justify: true)
#set math.equation(numbering: "(1)")
#set heading(numbering: none)

#import "@preview/cetz:0.3.4": canvas, draw
#import "@preview/chemformula:0.1.3": ch

= Tavola periodica degli elementi

Nel 1871 *Dmitrij Mendeleev* ordinò gli elementi per massa atomica crescente, disponendo nella stessa colonna quelli con proprietà chimiche simili. L'attuale *tavola periodica degli elementi* è così organizzata:
- Ogni casella riporta numero atomico ($Z$), simbolo e massa atomica. Le caselle sono ordinate per $Z$ crescente da sinistra a destra.
- Il reticolato è diviso in *periodi* (righe orizzontali, numerate da $1$ a $7$) e *gruppi* (colonne verticali, numerate da $1$ a $18$).
- I gruppi $1$, $2$ e $13$-$18$ contengono gli *elementi dei gruppi principali*, mentre i gruppi $3$-$12$ contengono gli *elementi di transizione*. Sotto il corpo principale sono poste due serie di *elementi di transizione interna* (lantanidi e attinidi), inserite tra i gruppi $3$ e $4$.

#v(0.5em)
#align(center)[
  #canvas(length: 0.72cm, {
    import draw: *
    
    let c-main-m = rgb(140, 175, 215)
    let c-trans = rgb(155, 195, 225)
    let c-inner = rgb(175, 210, 235)
    let c-semi = rgb(165, 215, 165)
    let c-nonm = rgb(245, 235, 145)

    // Legenda
    let leg-x = 5.5
    let leg-y = 9.2
    rect((leg-x, leg-y), (leg-x + 0.8, leg-y + 0.35), fill: c-main-m, stroke: 0.5pt)
    content((leg-x + 1.0, leg-y + 0.175), text(size: 7.5pt)[metalli (gruppi principali)], anchor: "west")
    
    rect((leg-x, leg-y - 0.45), (leg-x + 0.8, leg-y - 0.1), fill: c-trans, stroke: 0.5pt)
    content((leg-x + 1.0, leg-y - 0.275), text(size: 7.5pt)[metalli (transizione)], anchor: "west")

    rect((leg-x, leg-y - 0.9), (leg-x + 0.8, leg-y - 0.55), fill: c-inner, stroke: 0.5pt)
    content((leg-x + 1.0, leg-y - 0.725), text(size: 7.5pt)[metalli (transizione interna)], anchor: "west")

    rect((leg-x, leg-y - 1.35), (leg-x + 0.8, leg-y - 1.0), fill: c-semi, stroke: 0.5pt)
    content((leg-x + 1.0, leg-y - 1.175), text(size: 7.5pt)[metalloidi], anchor: "west")

    rect((leg-x, leg-y - 1.8), (leg-x + 0.8, leg-y - 1.45), fill: c-nonm, stroke: 0.5pt)
    content((leg-x + 1.0, leg-y - 1.625), text(size: 7.5pt)[non metalli], anchor: "west")

    // Griglia principale (18 colonne, 7 periodi)
    for r in range(1, 8) {
      let y = 7 - r
      content((-0.4, y + 0.5), text(size: 8pt, weight: "bold")[#r])
    }
    content((-0.9, 3.5), text(size: 8pt, angle: 90deg)[periodo])

    // Funzione casella
    let cell(col, row, sym, z, fill-col) = {
      let x = col - 1
      let y = 7 - row
      rect((x, y), (x + 1, y + 1), fill: fill-col, stroke: 0.5pt + black)
      content((x + 0.5, y + 0.72), text(size: 6pt)[#z])
      content((x + 0.5, y + 0.35), text(size: 8pt, weight: "bold")[#sym])
    }

    // Periodo 1
    cell(1, 1, "H", 1, c-nonm)
    cell(18, 1, "He", 2, c-nonm)

    // Periodo 2
    cell(1, 2, "Li", 3, c-main-m)
    cell(2, 2, "Be", 4, c-main-m)
    cell(13, 2, "B", 5, c-semi)
    cell(14, 2, "C", 6, c-nonm)
    cell(15, 2, "N", 7, c-nonm)
    cell(16, 2, "O", 8, c-nonm)
    cell(17, 2, "F", 9, c-nonm)
    cell(18, 2, "Ne", 10, c-nonm)

    // Periodo 3
    cell(1, 3, "Na", 11, c-main-m)
    cell(2, 3, "Mg", 12, c-main-m)
    cell(13, 3, "Al", 13, c-main-m)
    cell(14, 3, "Si", 14, c-semi)
    cell(15, 3, "P", 15, c-nonm)
    cell(16, 3, "S", 16, c-nonm)
    cell(17, 3, "Cl", 17, c-nonm)
    cell(18, 3, "Ar", 18, c-nonm)

    // Periodo 4
    let p4 = ("K", "Ca", "Sc", "Ti", "V", "Cr", "Mn", "Fe", "Co", "Ni", "Cu", "Zn", "Ga", "Ge", "As", "Se", "Br", "Kr")
    for (i, s) in p4.enumerate() {
      let col = i + 1
      let fc = if col <= 2 or col == 13 { c-main-m } else if col <= 12 { c-trans } else if col in (14, 15) { c-semi } else { c-nonm }
      cell(col, 4, s, 19 + i, fc)
    }

    // Periodo 5
    let p5 = ("Rb", "Sr", "Y", "Zr", "Nb", "Mo", "Tc", "Ru", "Rh", "Pd", "Ag", "Cd", "In", "Sn", "Sb", "Te", "I", "Xe")
    for (i, s) in p5.enumerate() {
      let col = i + 1
      let fc = if col <= 2 or col in (13, 14) { c-main-m } else if col <= 12 { c-trans } else if col in (15, 16) { c-semi } else { c-nonm }
      cell(col, 5, s, 37 + i, fc)
    }

    // Periodo 6
    let p6 = ("Cs", "Ba", "La", "Hf", "Ta", "W", "Re", "Os", "Ir", "Pt", "Au", "Hg", "Tl", "Pb", "Bi", "Po", "At", "Rn")
    let z6 = (55, 56, 57, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86)
    for (i, s) in p6.enumerate() {
      let col = i + 1
      let fc = if col <= 2 or col in (13, 14, 15, 16) { c-main-m } else if col <= 12 { c-trans } else { c-nonm }
      cell(col, 6, s, z6.at(i), fc)
    }

    // Periodo 7
    let p7 = ("Fr", "Ra", "Ac", "Rf", "Db", "Sg", "Bh", "Hs", "Mt", "Ds", "Rg", "Cn", "Nh", "Fl", "Mc", "Lv", "Ts", "Og")
    let z7 = (87, 88, 89, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118)
    for (i, s) in p7.enumerate() {
      let col = i + 1
      let fc = if col <= 2 or col in (13, 14, 15, 16) { c-main-m } else if col <= 12 { c-trans } else { c-nonm }
      cell(col, 7, s, z7.at(i), fc)
    }

    // Linea a scalinata dei semimetalli
    line((12, 6), (12, 5), (13, 5), (13, 4), (14, 4), (14, 3), (15, 3), (15, 2), (16, 2), (16, 1), (17, 1), (17, 0), stroke: 1.8pt + rgb(80, 140, 80))

    // Intestazioni gruppi
    content((0.5, 7.45), text(size: 6.5pt, align(center)[1A\ (1)]))
    content((1.5, 6.45), text(size: 6.5pt, align(center)[2A\ (2)]))
    let tr-lbl = ("3B\n(3)", "4B\n(4)", "5B\n(5)", "6B\n(6)", "7B\n(7)", "8B\n(8)", "8B\n(9)", "8B\n(10)", "1B\n(11)", "2B\n(12)")
    for (i, l) in tr-lbl.enumerate() {
      content((2.5 + i, 4.45), text(size: 6pt, align(center)[#l]))
    }
    let p-lbl = ("3A\n(13)", "4A\n(14)", "5A\n(15)", "6A\n(16)", "7A\n(17)")
    for (i, l) in p-lbl.enumerate() {
      content((12.5 + i, 6.45), text(size: 6.5pt, align(center)[#l]))
    }
    content((17.5, 7.45), text(size: 6.5pt, align(center)[8A\ (18)]))

    // Etichette blocchi
    content((1.0, 8.6), text(size: 7.5pt, weight: "bold", align(center)[ELEMENTI DEI GRUPPI\ PRINCIPALI]))
    line((0, 8.2), (2, 8.2), (1, 8.2), (1, 8.0), stroke: 0.6pt)
    
    content((15.0, 8.6), text(size: 7.5pt, weight: "bold", align(center)[ELEMENTI DEI GRUPPI\ PRINCIPALI]))
    line((12, 8.2), (18, 8.2), stroke: 0.6pt)

    content((7.0, 5.25), text(size: 7.5pt, weight: "bold")[ELEMENTI DI TRANSIZIONE])
    line((2, 5.0), (12, 5.0), stroke: 0.6pt)

    // Transizione interna
    content((6.5, -0.75), text(size: 7.5pt, weight: "bold")[ELEMENTI DI TRANSIZIONE INTERNA])
    content((1.3, -1.5), text(size: 7pt)[6 #h(0.4em) lantanidi])
    content((1.3, -2.5), text(size: 7pt)[7 #h(0.4em) attinidi])

    let lant = ("Ce", "Pr", "Nd", "Pm", "Sm", "Eu", "Gd", "Tb", "Dy", "Ho", "Er", "Tm", "Yb", "Lu")
    let att = ("Th", "Pa", "U", "Np", "Pu", "Am", "Cm", "Bk", "Cf", "Es", "Fm", "Md", "No", "Lr")
    for i in range(0, 14) {
      let x = 2.5 + i * 0.95
      rect((x, -2.0), (x + 0.95, -1.0), fill: c-inner, stroke: 0.5pt)
      content((x + 0.475, -1.28), text(size: 6pt)[#(58 + i)])
      content((x + 0.475, -1.65), text(size: 7.5pt, weight: "bold")[#lant.at(i)])

      rect((x, -3.0), (x + 0.95, -2.0), fill: c-inner, stroke: 0.5pt)
      content((x + 0.475, -2.28), text(size: 6pt)[#(90 + i)])
      content((x + 0.475, -2.65), text(size: 7.5pt, weight: "bold")[#att.at(i)])
    }
    line((3.0, 0.0), (2.5, -1.0), stroke: (paint: gray, dash: "dashed", thickness: 0.6pt))
  })
]
#v(0.5em)

Gli elementi sono classificati in base alle loro proprietà fisiche e chimiche in:
- *Metalli:* molti elementi dei gruppi principali e tutti quelli di transizione e transizione interna. Solidi lucenti a temperatura ambiente (eccetto il mercurio, #ch("Hg")), buoni conduttori termici ed elettrici, *malleabili* (riducibili in lamine) e *duttili* (riducibili in fili). Es: cromo (#ch("Cr")), rame (#ch("Cu")), cadmio (#ch("Cd")), piombo (#ch("Pb")), bismuto (#ch("Bi")).
- *Non metalli:* situati in alto a destra nella tavola. Sono gas o solidi fragili, cattivi conduttori di calore ed elettricità. Es: carbonio (#ch("C"), grafite), zolfo (#ch("S")), cloro (#ch("Cl2")), bromo (#ch("Br2")), iodio (#ch("I2")).
- *Semimetalli (o metalloidi):* collocati lungo la linea a scalinata a destra nella tavola, presentano proprietà intermedie tra metalli e non metalli. Es: boro (#ch("B")), silicio (#ch("Si")), arsenico (#ch("As")), antimonio (#ch("Sb")), tellurio (#ch("Te")).

A livello di nomenclatura dei gruppi principali si distinguono:
- *Metalli alcalini:* gruppo $1$ (eccetto l'idrogeno, #ch("H")).
- *Metalli alcalino-terrosi:* gruppo $2$.
- *Alogeni:* gruppo $17$.
- *Gas nobili:* gruppo $18$.

Gli elementi appartenenti allo stesso *gruppo* possiedono proprietà chimiche simili, mentre quelli di uno stesso *periodo* hanno proprietà chimiche differenti.

= Composti: introduzione al legame chimico

La maggioranza degli elementi esiste in natura combinata chimicamente in composti:
- Solo i gas nobili (#ch("He"), #ch("Ne"), #ch("Ar"), #ch("Kr"), #ch("Xe"), #ch("Rn")) esistono esclusivamente come atomi isolati liberi.
- Alcuni elementi (es. #ch("O")) esistono sia nei composti che come molecole elementari non combinate (es. #ch("O2")).
- Altri esistono sia combinati che allo stato nativo elementare: #ch("C"), #ch("Cu"), #ch("Ag"), #ch("Au"), #ch("Pt").

Gli elettroni degli atomi interagenti formano i *legami chimici* (forze attrattive che uniscono gli atomi in un composto) secondo due meccanismi:
- *Trasferimento* di uno o più elettroni da un atomo a un altro $==>$ formazione di *composti ionici*.
- *Condivisione* di elettroni tra atomi differenti $==>$ formazione di *composti covalenti*.

== Composti ionici

I *composti ionici* sono costituiti da *ioni* (particelle cariche). Il caso più semplice è il composto ionico binario (formato da due soli elementi), generato dalla reazione tra un metallo e un non metallo:
- Il *metallo* cede elettroni trasformandosi in un *catione* (ione carico positivamente).
- Il *non metallo* acquista elettroni trasformandosi in un *anione* (ione carico negativamente).

Cationi e anioni si attraggono reciprocamente per forza elettrostatica formando un reticolo cristallino solido.

#grid(
  columns: (1.05fr, 1.15fr),
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),
  [
    La forza del legame ionico dipende dal bilancio complessivo tra attrazioni e repulsioni ed è governata dalla *legge di Coulomb*:
    $ F_"el" prop frac(abs(q_1 dot q_2), d^2) $
    Ne deriva che:
    - *Carica:* ioni con cariche maggiori ($abs(q)$ elevata) si attraggono o respingono più intensamente rispetto a ioni con cariche minori.
    - *Raggio ionico:* ioni più piccoli (minore distanza interionica $d$) si attraggono o respingono più intensamente rispetto a ioni più grandi.
  ],
  [
    #canvas(length: 0.85cm, {
      import draw: *
      
      // Atomo Na
      circle((-3.2, 2.2), radius: 0.85, fill: rgb(210, 200, 195), stroke: 0.8pt + rgb(130, 120, 115))
      circle((-3.2, 2.2), radius: 0.25, fill: rgb(140, 110, 100), stroke: none)
      content((-3.2, 2.2), text(size: 5.5pt, fill: white)[$11"p"^+\ 12"n"^0$])
      content((-3.2, 1.05), text(size: 6.5pt)[Atomo #ch("Na") ($11"e"^-$)])

      // Atomo Cl
      circle((-3.2, 4.4), radius: 0.75, fill: rgb(175, 220, 175), stroke: 0.8pt + rgb(90, 150, 90))
      circle((-3.2, 4.4), radius: 0.25, fill: rgb(80, 140, 80), stroke: none)
      content((-3.2, 4.4), text(size: 5.5pt, fill: white)[$17"p"^+\ 18"n"^0$])
      content((-3.2, 5.4), text(size: 6.5pt)[Atomo #ch("Cl") ($17"e"^-$)])

      // Freccia trasferimento e-
      bezier((-2.5, 2.6), (-2.5, 4.0), (-1.9, 3.0), (-1.9, 3.6), stroke: (paint: rgb(205, 65, 85), thickness: 1.1pt), mark: (end: ">"))
      content((-2.0, 3.3), text(size: 6.5pt, fill: rgb(205, 65, 85), weight: "bold")[$1"e"^-$], anchor: "west")

      // Frecce verso ioni
      line((-2.2, 2.2), (-0.9, 2.2), stroke: 0.8pt, mark: (end: ">"))
      line((-2.2, 4.4), (-1.1, 4.4), stroke: 0.8pt, mark: (end: ">"))

      // Catione Na+
      circle((-0.2, 2.2), radius: 0.55, fill: rgb(210, 200, 195), stroke: 0.9pt + rgb(130, 120, 115))
      circle((-0.2, 2.2), radius: 0.22, fill: rgb(140, 110, 100), stroke: none)
      content((-0.2, 2.2), text(size: 5pt, fill: white)[$11"p"^+\ 12"n"^0$])
      content((-0.2, 1.35), text(size: 6.5pt)[Catione #ch("Na+") ($10"e"^-$)])

      // Anione Cl-
      circle((-0.2, 4.4), radius: 1.0, fill: rgb(175, 220, 175), stroke: 0.9pt + rgb(90, 150, 90))
      circle((-0.2, 4.4), radius: 0.25, fill: rgb(80, 140, 80), stroke: none)
      content((-0.2, 4.4), text(size: 5.5pt, fill: white)[$17"p"^+\ 18"n"^0$])
      content((-0.2, 5.65), text(size: 6.5pt)[Anione #ch("Cl-") ($18"e"^-$)])

      // Reticolo cristallino 3D NaCl
      let rx = 2.0
      let ry = 2.5
      for z in range(0, 2) {
        let dz = z * 0.28
        for i in range(0, 3) {
          for j in range(0, 3) {
            let cx = rx + i * 0.65 + dz
            let cy = ry + j * 0.65 + dz * 0.7
            let is-cl = calc.rem(i + j + z, 2) == 0
            if is-cl {
              circle((cx, cy), radius: 0.34, fill: rgb(130, 200, 130), stroke: 0.4pt + rgb(60, 120, 60))
              circle((cx - 0.1, cy + 0.1), radius: 0.08, fill: rgb(210, 245, 210), stroke: none)
            } else {
              circle((cx, cy), radius: 0.22, fill: rgb(185, 175, 170), stroke: 0.4pt + rgb(100, 95, 90))
              circle((cx - 0.06, cy + 0.06), radius: 0.05, fill: rgb(235, 230, 225), stroke: none)
            }
          }
        }
      }
      content((2.8, 1.4), text(size: 6.5pt, align(center)[Reticolo cristallino\ #ch("Na+Cl-")]))
    })
  ]
)
#v(0.5em)

#grid(
  columns: (1.2fr, 0.8fr),
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),
  [
    I composti ionici sono *elettricamente neutri* (carica netta nulla: totale cariche positive $=$ totale cariche negative).
    
    I metalli cedono elettroni e i non metalli ne acquistano per raggiungere la configurazione elettronica stabile (bassa reattività) del *gas nobile più vicino* nella tavola periodica (es. #ch("Cl") acquista $1"e"^-$ diventando isoelettronico con #ch("Ar")). In generale:
    - *Gruppo 1:* cedono $1"e"^-$ $==>$ cationi $M^+$.
    - *Gruppo 2:* cedono $2"e"^-$ $==>$ cationi $M^(2+)$.
    - *Gruppo 17:* acquistano $1"e"^-$ $==>$ anioni $X^-$.
    - #ch("Al") cede $3"e"^-$ (#ch("Al^3+")); #ch("O") e #ch("S") acquistano $2"e"^-$ (#ch("O^2-"), #ch("S^2-")); #ch("N") acquista $3"e"^-$ (#ch("N^3-")).
  ],
  [
    #canvas(length: 0.72cm, {
      import draw: *
      
      let cols = ("5A\n(15)", "6A\n(16)", "7A\n(17)", "8A\n(18)", "1A\n(1)", "2A\n(2)", "3A\n(13)")
      for (i, c) in cols.enumerate() {
        let x = i * 1.05
        rect((x, 4.0), (x + 1.05, 4.8), fill: rgb(230, 225, 215), stroke: 0.5pt)
        content((x + 0.525, 4.4), text(size: 5.5pt, weight: "bold", align(center)[#c]))
      }

      let rows = (
        ("", "", ch("H-"), text(weight: "bold")[He], ch("Li+"), "", ""),
        (ch("N^3-"), ch("O^2-"), ch("F-"), text(weight: "bold")[Ne], ch("Na+"), ch("Mg^2+"), ch("Al^3+")),
        ("", ch("S^2-"), ch("Cl-"), text(weight: "bold")[Ar], ch("K+"), ch("Ca^2+"), ""),
        ("", "", ch("Br-"), text(weight: "bold")[Kr], ch("Rb+"), ch("Sr^2+"), ""),
        ("", "", ch("I-"), text(weight: "bold")[Xe], ch("Cs+"), ch("Ba^2+"), "")
      )

      for (r, row) in rows.enumerate() {
        let y = 3.2 - r * 0.8
        for (c, val) in row.enumerate() {
          let x = c * 1.05
          let fc = if c == 3 { rgb(240, 220, 120) } else if c < 3 { rgb(252, 245, 205) } else { rgb(195, 218, 240) }
          rect((x, y), (x + 1.05, y + 0.8), fill: fc, stroke: 0.5pt)
          content((x + 0.525, y + 0.4), text(size: 7pt)[#val])
        }
      }
    })
  ]
)
#v(0.5em)

== Composti covalenti e ioni poliatomici

#grid(
  columns: (1.15fr, 0.85fr),
  column-gutter: 1.2em,
  align: (left + horizon, center + horizon),
  [
    I *composti covalenti* si formano per condivisione di coppie di elettroni, tipicamente tra atomi di non metalli.

    Avvicinando due atomi di #ch("H") isolati, il nucleo di ciascuno attrae l'elettrone dell'altro. Alla distanza internucleare ottimale si instaura il *legame covalente*, dato dall'attrazione elettrostatica reciproca tra i due nuclei positivi e la coppia di elettroni condivisa: si forma la molecola biatomica #ch("H2").

    Lo stesso meccanismo porta alla formazione delle molecole omonucleari #ch("N2"), #ch("O2"), #ch("F2"), #ch("Cl2"), #ch("Br2"), #ch("I2"), #ch("P4"), #ch("S8"), #ch("Se8") e delle molecole eteronucleari dei composti covalenti (es. #ch("HF"), #ch("H2O")).
  ],
  [
    #canvas(length: 0.78cm, {
      import draw: *
      
      // A: Nessuna interazione
      circle((0, 4.8), radius: 0.65, fill: rgb(190, 215, 240, 120), stroke: (paint: rgb(120, 160, 200), dash: "dotted"))
      circle((0, 4.8), radius: 0.08, fill: black)
      content((-0.25, 4.8), text(size: 6.5pt)[$"p"^+$])
      content((0.2, 5.25), text(size: 6.5pt)[$"e"^-$])

      circle((2.6, 4.8), radius: 0.65, fill: rgb(190, 215, 240, 120), stroke: (paint: rgb(120, 160, 200), dash: "dotted"))
      circle((2.6, 4.8), radius: 0.08, fill: black)
      content((2.85, 4.8), text(size: 6.5pt)[$"p"^+$])
      content((2.4, 5.25), text(size: 6.5pt)[$"e"^-$])
      content((1.3, 3.95), text(size: 6.5pt, weight: "bold")[A. Nessuna interazione])

      // B: Comincia l'attrazione
      circle((0.4, 2.8), radius: 0.65, fill: rgb(175, 205, 235, 150), stroke: none)
      circle((2.2, 2.8), radius: 0.65, fill: rgb(175, 205, 235, 150), stroke: none)
      circle((0.4, 2.8), radius: 0.08, fill: black)
      circle((2.2, 2.8), radius: 0.08, fill: black)
      content((0.15, 2.8), text(size: 6.5pt)[$"p"^+$])
      content((2.45, 2.8), text(size: 6.5pt)[$"p"^+$])
      content((0.9, 3.1), text(size: 6.5pt)[$"e"^-$])
      content((1.7, 3.1), text(size: 6.5pt)[$"e"^-$])
      content((1.3, 1.95), text(size: 6.5pt, weight: "bold")[B. Inizio attrazione])

      // C: Legame covalente
      bezier((0.2, 0.8), (2.4, 0.8), (0.6, 1.5), (2.0, 1.5), fill: rgb(150, 190, 230, 180), stroke: none)
      bezier((0.2, 0.8), (2.4, 0.8), (0.6, 0.1), (2.0, 0.1), fill: rgb(150, 190, 230, 180), stroke: none)
      circle((0.75, 0.8), radius: 0.08, fill: black)
      circle((1.85, 0.8), radius: 0.08, fill: black)
      content((0.5, 0.8), text(size: 6.5pt)[$"p"^+$])
      content((2.1, 0.8), text(size: 6.5pt)[$"p"^+$])
      content((1.3, 1.1), text(size: 6.5pt)[$"e"^-$])
      content((1.3, 0.5), text(size: 6.5pt)[$"e"^-$])
      content((1.3, -0.05), text(size: 6.5pt, weight: "bold")[C. Legame covalente (#ch("H2"))])

      // D: Composizione delle forze
      circle((0.75, -1.2), radius: 0.08, fill: black)
      circle((1.85, -1.2), radius: 0.08, fill: black)
      circle((1.3, -0.75), radius: 0.06, fill: rgb(205, 65, 85))
      circle((1.3, -1.65), radius: 0.06, fill: rgb(205, 65, 85))
      line((0.75, -1.2), (1.3, -0.75), stroke: 0.7pt + blue, mark: (end: ">", start: ">"))
      line((1.85, -1.2), (1.3, -0.75), stroke: 0.7pt + blue, mark: (end: ">", start: ">"))
      line((0.75, -1.2), (1.3, -1.65), stroke: 0.7pt + blue, mark: (end: ">", start: ">"))
      line((1.85, -1.2), (1.3, -1.65), stroke: 0.7pt + blue, mark: (end: ">", start: ">"))
      line((0.75, -1.2), (1.85, -1.2), stroke: (paint: red, dash: "dashed", thickness: 0.7pt))
      line((1.3, -0.75), (1.3, -1.65), stroke: (paint: red, dash: "dashed", thickness: 0.7pt))
      content((0.45, -1.2), text(size: 6.5pt)[$"p"^+$])
      content((2.15, -1.2), text(size: 6.5pt)[$"p"^+$])
      content((1.3, -0.55), text(size: 6.5pt)[$"e"^-$])
      content((1.3, -1.85), text(size: 6.5pt)[$"e"^-$])
      content((1.3, -2.25), text(size: 6.5pt, weight: "bold")[D. Bilancio forze])
    })
  ]
)
#v(0.5em)

Occorre precisare due distinzioni strutturali:
- Mentre le sostanze covalenti sono costituite da singole molecole discrete, in condizioni ordinarie *non esistono molecole in un composto ionico* (che forma invece un reticolo continuo di ioni).
- Molti composti ionici contengono *ioni poliatomici*, costituiti da due o più atomi legati covalentemente tra loro e dotati di una carica complessiva netta positiva o negativa.
  - _Esempio:_ il carbonato di calcio (#ch("CaCO3")) è costituito da cationi monoatomici #ch("Ca^2+") e anioni poliatomici carbonato #ch("CO3^2-") (in cui un atomo di #ch("C") è legato covalentemente a tre atomi di #ch("O"), con $2"e"^-$ addizionali che conferiscono la carica $2-$).

= Formule chimiche e numero di ossidazione

In una *formula chimica*, i simboli degli elementi e i pedici numerici indicano le specie atomiche e il numero di atomi presenti nella più piccola unità della sostanza:
- *Formula minima (o empirica):* indica il rapporto numerico intero minimo tra gli atomi di ciascun elemento nel composto (es. per il perossido di idrogeno è #ch("HO")).
- *Formula molecolare:* indica il numero reale di atomi di ciascun elemento presenti in una singola molecola del composto (es. per il perossido di idrogeno è #ch("H2O2")).
- *Formula di struttura:* mostra le connessioni spaziali e i legami chimici tra gli atomi nella molecola (es. per il perossido di idrogeno è #ch("H-O-O-H")).

== Numero di ossidazione (N.O.)

Il *numero (o stato) di ossidazione (N.O.)* corrisponde alla carica ipotetica che un atomo assumerebbe in un composto se tutti gli elettroni di legame non fossero condivisi, ma trasferiti completamente all'atomo più elettronegativo. Il N.O. va sempre scritto preceduto dal *segno* ($+$ o $-$), salvo quando vale $0$.

*Regole per l'assegnazione del N.O.:*
+ *Sostanze elementari:* $"N.O." = 0$ (es. #ch("K"), #ch("Cl2")).
+ *Ossigeno (#ch("O")):* $"N.O." = -2$, tranne nei *perossidi* ($-1$), nei *superossidi* ($-1/2$) e in #ch("OF2") ($+2$).
+ *Idrogeno (#ch("H")):* $"N.O." = +1$, tranne quando è legato a un metallo o al boro (#ch("B")), dove assume $"N.O." = -1$ (idruri).
+ *Ioni monoatomici:* $"N.O." =$ carica dello ione (es. $+2$ per #ch("Ca^2+")).
+ *Elementi del gruppo 1:* $"N.O." = +1$.
+ *Elementi del gruppo 2:* $"N.O." = +2$.
+ *Elementi del gruppo 17 (alogeni):* $"N.O." = -1$, tranne quando sono legati a #ch("O") o ad alogeni superiori nel gruppo, dove assumono valori positivi ($+1, +3, +5, +7$).
+ *Elementi con N.O. fisso da ricordare:* #ch("F") ($-1$), #ch("Ag") ($+1$), #ch("Cd") ($+2$), #ch("Zn") ($+2$), #ch("Al") ($+3$), #ch("B") ($+3$), #ch("Si") ($+4$).
+ *Molecole neutre:* $sum "N.O." = 0$.
+ *Ioni poliatomici:* $sum "N.O." =$ carica netta dello ione.

*Esercizio 2.4:* Assegnare i N.O. in #ch("CsNO2") e #ch("HPO4^2-").
- In #ch("CsNO2") (molecola neutra, $sum "N.O." = 0$): #ch("Cs") è del gruppo 1 $==>$ $+1$; #ch("O") vale $-2$. Per #ch("N"): $(+1) + "N.O."_("N") + 2(-2) = 0 ==> "N.O."_("N") = +3$. Risultato: $[+1 / +3 / -2]$.
- In #ch("HPO4^2-") (ione con carica $-2$, $sum "N.O." = -2$): #ch("H") vale $+1$; #ch("O") vale $-2$. Per #ch("P"): $(+1) + "N.O."_("P") + 4(-2) = -2 ==> "N.O."_("P") = +5$. Risultato: $[+1 / +5 / -2]$.

= Nomenclature e classi di composti inorganici

La *nomenclatura chimica* identifica univocamente i composti a partire dalla loro formula:
- *Nomenclatura IUPAC* (_International Union of Pure and Applied Chemistry_): esplicita direttamente la stechiometria della formula tramite prefissi numerici greci (_mono-_, _di-_, _tri-_, _tetra-_, _penta-_, _esa-_, _epta-_).
- *Nomenclatura tradizionale:* si basa sulla distinzione tra metalli (M) e non metalli (NM) e individua il N.O. degli elementi tramite specifici prefissi e suffissi.

La chimica generale suddivide i composti inorganici in *10 classi*:

#align(center)[
  #table(
    columns: (1fr, auto, 1fr),
    align: (center + horizon, center + horizon, center + horizon),
    fill: (x, y) => if y == 0 { rgb(90, 145, 195) } else if calc.odd(y) { rgb(220, 230, 242) } else { rgb(238, 243, 249) },
    stroke: 0.6pt + white,
    inset: 6pt,
    text(fill: white, weight: "bold")[COMPOSTI BINARI], [], text(fill: white, weight: "bold")[COMPOSTI TERNARI],
    [Ossidi basici], [$+ ch("H2O") arrow.r$], [Idrossidi],
    [Ossidi acidi], [$+ ch("H2O") arrow.r$], [Ossiacidi],
    [Perossidi], [], [],
    [Idracidi], [], [],
    [Idruri metallici], [], [],
    [Idruri covalenti], [], [],
    [Sali binari], [], [],
    [], [], [Sali ternari]
  )
]

== 1. Ossidi basici

Composti binari formati da *metallo (M) + ossigeno (#ch("O"))*, in cui $"N.O."_("O") = -2$.
- *Nomenclatura IUPAC:* `prefisso-ossido` + `di` + `prefisso-M`. Il prefisso _mon-_ si usa solo davanti a «ossido» e solo se M possiede più N.O. possibili.
- *Nomenclatura tradizionale:* `Ossido` + `M-suffisso`:
  - $-"oso"$ per il N.O. minore ($arrow.b "N.O."$);
  - $-"ico"$ per il N.O. maggiore ($arrow.t "N.O."$).
  - Se M ha un unico N.O. possibile, non si usa suffisso ma si scrive `Ossido di M`.

#align(center)[
  #table(
    columns: (1fr, 1.5fr, 1.8fr),
    align: (center + horizon, center + horizon, center + horizon),
    fill: (x, y) => if y == 0 { rgb(90, 145, 195) } else { rgb(235, 242, 250) },
    stroke: 0.6pt + rgb(180, 200, 225),
    inset: 7pt,
    text(fill: white, weight: "bold")[Formula], text(fill: white, weight: "bold")[Nomenclatura IUPAC], text(fill: white, weight: "bold")[Nomenclatura tradizionale],
    [#stack(dir: ttb, spacing: 3pt, text(size: 9pt, weight: "bold")[+3 #text(fill: red)[-2]], text(weight: "bold")[#ch("Fe2O3")])], [Triossido di diferro], [Siccome #ch("Fe") ha N.O. $(+2, +3)$:\ *Ossido ferrico*]
  )
]

*Esercizio 2.5:* Assegnare le nomenclature a #ch("Cu2O") e #ch("CaO").
- #ch("Cu2O") ($"N.O."_("Cu") = +1$, tra $+1$ e $+2$): *Monossido di dirame* (IUPAC); *ossido rameoso* (tradizionale).
- #ch("CaO") ($"N.O."_("Ca") = +2$, unico): *Ossido di calcio* (IUPAC); *ossido di calcio* (tradizionale).

== 2. Ossidi acidi (Anidridi)

Composti binari formati da *non metallo (NM) + ossigeno (#ch("O"))*, in cui $"N.O."_("O") = -2$.
- *Nomenclatura IUPAC:* `prefisso-ossido` + `di` + `prefisso-NM` (il prefisso _mon-_ si mette solo davanti a «ossido»).
- *Nomenclatura tradizionale:* `Anidride` + `(prefisso)-NM-suffisso` in base ai N.O. crescenti del NM:
  - $"ipo-" dots "-osa"$ per $arrow.b arrow.b "N.O."$ (minimo tra 3 o 4 stati);
  - $-"osa"$ per $arrow.b "N.O."$;
  - $-"ica"$ per $arrow.t "N.O."$;
  - $"per-" dots "-ica"$ per $arrow.t arrow.t "N.O."$ (massimo su 4 stati).
  - Se il NM ha solo due N.O. possibili, si usano unicamente le opzioni centrali ($-"osa"$ e $-"ica"$).

#align(center)[
  #table(
    columns: (1fr, 1.5fr, 1.8fr),
    align: (center + horizon, center + horizon, center + horizon),
    fill: (x, y) => if y == 0 { rgb(90, 145, 195) } else { rgb(235, 242, 250) },
    stroke: 0.6pt + rgb(180, 200, 225),
    inset: 7pt,
    text(fill: white, weight: "bold")[Formula], text(fill: white, weight: "bold")[Nomenclatura IUPAC], text(fill: white, weight: "bold")[Nomenclatura tradizionale],
    [#stack(dir: ttb, spacing: 3pt, text(size: 9pt, weight: "bold")[+7 #text(fill: red)[-2]], text(weight: "bold")[#ch("Cl2O7")])], [Eptaossido di dicloro], [Siccome #ch("Cl") ha N.O. $(+1, +3, +5, +7)$:\ *Anidride perclorica*]
  )
]

*Esercizio 2.6:* Assegnare le nomenclature a #ch("P2O3") e #ch("SO2").
- #ch("P2O3") ($"N.O."_("P") = +3$, tra $+3$ e $+5$): *Triossido di difosforo* (IUPAC); *anidride fosforosa* (tradizionale).
- #ch("SO2") ($"N.O."_("S") = +4$, tra $+4$ e $+6$): *Diossido di zolfo* (IUPAC); *anidride solforosa* (tradizionale).

=== Eccezioni: ossidi di N e ossidi anfoteri di Cr e Mn

Fanno eccezione nella nomenclatura tradizionale gli *ossidi dell'azoto* (#ch("N"), con N.O. $+1, +2, +3, +4, +5$) e gli ossidi di *cromo* (#ch("Cr"), $Z=24$, N.O. $+2, +3, +6$) e *manganese* (#ch("Mn"), $Z=25$, N.O. $+2, +3, +4, +6, +7$), i quali hanno *comportamento anfotero*: formano ossidi basici (O.B.) a bassi N.O. e ossidi acidi (O.A.) ad alti N.O.

#align(center)[
  #table(
    columns: (auto, auto, auto, 1.4fr, 1.4fr, auto),
    align: (center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon),
    fill: (x, y) => if y == 0 { rgb(90, 145, 195) } else if x == 0 { rgb(250, 225, 120) } else { rgb(245, 248, 252) },
    stroke: 0.5pt + rgb(180, 195, 210),
    inset: 5pt,
    text(fill: white, weight: "bold")[Elemento], text(fill: white, weight: "bold")[N.O.], text(fill: white, weight: "bold")[Formula], text(fill: white, weight: "bold")[IUPAC], text(fill: white, weight: "bold")[Tradizionale], text(fill: white, weight: "bold")[Tipo],
    table.cell(rowspan: 5)[*N*\ ($+1, +2, +3,\ +4, +5$)], [$+1$], [#ch("N2O")], [Monossido di diazoto], [Protossido di azoto], [-],
    [$+2$], [#ch("NO")], [Monossido di azoto], [Ossido di azoto], [-],
    [$+3$], [#ch("N2O3")], [Triossido di diazoto], [Anidride nitrosa], [O.A.],
    [$+4$], [#ch("NO2")], [Diossido di azoto], [Anidride nitroso-nitrica], [O.A.],
    [$+5$], [#ch("N2O5")], [Pentossido di diazoto], [Anidride nitrica], [O.A.],
    table.cell(rowspan: 3)[*Cr* ($Z=24$)\ ($+2, +3, +6$)], [$+2$], [#ch("CrO")], [Monossido di cromo], [Ossido cromoso], [O.B.],
    [$+3$], [#ch("Cr2O3")], [Triossido di dicromo], [Ossido cromico], [O.B.],
    [$+6$], [#ch("CrO3")], [Triossido di cromo], [Anidride cromica], [O.A.],
    table.cell(rowspan: 5)[*Mn* ($Z=25$)\ ($+2, +3, +4,\ +6, +7$)], [$+2$], [#ch("MnO")], [Monossido di manganese], [Ossido manganoso], [O.B.],
    [$+3$], [#ch("Mn2O3")], [Triossido di dimanganese], [Ossido manganico], [O.B.],
    [$+4$], [#ch("MnO2")], [Diossido di manganese], [Diossido di manganese], [-],
    [$+6$], [#ch("MnO3")], [Triossido di manganese], [Anidride manganica], [O.A.],
    [$+7$], [#ch("Mn2O7")], [Eptaossido di dimanganese], [Anidride permanganica], [O.A.]
  )
]

== 3. Idrossidi

Composti ternari formati per reazione di un ossido basico con acqua:
$ "Ossido basico" + ch("H2O") arrow.r ch("M(OH)_x") $
Sono caratterizzati dal *gruppo ossidrile* (o idrossido) #ch("(OH)-"), che ha complessivamente carica/N.O. pari a $-1$ ($"N.O."_("O") = -2$, $"N.O."_("H") = +1$).
- *Nomenclatura IUPAC:* `prefisso-idrossido di` + `M` (prefissi: _di-_, _tri-_, ...).
- *Nomenclatura tradizionale:* `Idrossido` + `M-suffisso` ($-"oso"$ per $arrow.b "N.O."$, $-"ico"$ per $arrow.t "N.O."$; oppure `Idrossido di M` se M ha un solo N.O.).

#align(center)[
  #table(
    columns: (1fr, 1.5fr, 1.8fr),
    align: (center + horizon, center + horizon, center + horizon),
    fill: (x, y) => if y == 0 { rgb(90, 145, 195) } else { rgb(235, 242, 250) },
    stroke: 0.6pt + rgb(180, 200, 225),
    inset: 7pt,
    text(fill: white, weight: "bold")[Formula], text(fill: white, weight: "bold")[Nomenclatura IUPAC], text(fill: white, weight: "bold")[Nomenclatura tradizionale],
    [#stack(dir: ttb, spacing: 3pt, text(size: 9pt, weight: "bold")[+2 #h(4pt) #text(fill: red)[-1]], text(weight: "bold")[#ch("Sr(OH)2")])], [Diidrossido di stronzio], [Siccome #ch("Sr") ha solo N.O. $(+2)$:\ *Idrossido di stronzio*]
  )
]

*Esercizio 2.7:* Assegnare le nomenclature a #ch("Fe(OH)2") e #ch("RbOH").
- #ch("Fe(OH)2") ($"N.O."_("Fe") = +2$): *Diidrossido di ferro* (IUPAC); *idrossido ferroso* (tradizionale).
- #ch("RbOH") ($"N.O."_("Rb") = +1$, unico): *Idrossido di rubidio* (IUPAC); *idrossido di rubidio* (tradizionale).

== 4. Ossiacidi

Composti ternari ottenuti dalla reazione di un ossido acido (anidride) con acqua:
$ "Ossido acido" + ch("H2O") arrow.r ch("H_h NM_n O_o") $
- *Nomenclatura IUPAC:* `Acido` + `prefisso-osso-prefisso-NM-ico` + `(N.O. in numeri romani)`. Il prefisso _mon-_ si usa solo davanti a «osso».
- *Nomenclatura tradizionale:* `Acido` + `(prefisso)-NM-suffisso` sostituendo la parola «anidride» con «acido» e convertendo le desinenze femminili in maschili ($"ipo-" dots "-oso"$, $-"oso"$, $-"ico"$, $"per-" dots "-ico"$).

#align(center)[
  #table(
    columns: (1fr, 1.5fr, 1.8fr),
    align: (center + horizon, center + horizon, center + horizon),
    fill: (x, y) => if y == 0 { rgb(90, 145, 195) } else { rgb(235, 242, 250) },
    stroke: 0.6pt + rgb(180, 200, 225),
    inset: 7pt,
    text(fill: white, weight: "bold")[Formula], text(fill: white, weight: "bold")[Nomenclatura IUPAC], text(fill: white, weight: "bold")[Nomenclatura tradizionale],
    [#stack(dir: ttb, spacing: 3pt, text(size: 9pt, weight: "bold", fill: purple)[+5], text(weight: "bold")[#ch("HNO3")])], [Acido triossonitrico (V)], [Siccome #ch("N") dà ossiacidi con $(+3, +5)$:\ *Acido nitrico*]
  )
]

*Esercizio 2.8:* Assegnare le nomenclature a #ch("HClO4") e #ch("H2SO4").
- #ch("HClO4") ($"N.O."_("Cl") = +7$): *Acido tetraossoclorico (VII)* (IUPAC); *acido perclorico* (tradizionale).
- #ch("H2SO4") ($"N.O."_("S") = +6$): *Acido tetraossosolforico (VI)* (IUPAC); *acido solforico* (tradizionale).

=== Eccezioni: ossiacidi polidratati e anfoteri

- *Azoto (#ch("N")):* solo $"N.O." = +3$ e $+5$ formano ossiacidi (#ch("HNO2"), #ch("HNO3")).
- *Carbonio (#ch("C")):* solo $"N.O." = +4$ forma ossiacidi (#ch("H2CO3")).
- *Fosforo (#ch("P")), boro (#ch("B")), arsenico (#ch("As")) e silicio (#ch("Si")):* i loro ossidi acidi possono combinarsi con $1$, $2$ o $3$ molecole di #ch("H2O"), modificando la *nomenclatura tradizionale* mediante i prefissi *meta-*, *piro-* e *orto-*:
  - *Se il N.O. del NM è pari* (es. #ch("Si") con $+4$): può sommare $1$ o $2$ molecole di #ch("H2O") $==>$ prefissi *meta-* ($1 ch("H2O")$) e *orto-* ($2 ch("H2O")$).
  - *Se il N.O. del NM è dispari* (es. #ch("P"), #ch("As"), #ch("B") con $+3$ o $+5$): può sommare $1$, $2$ o $3$ molecole di #ch("H2O") $==>$ prefissi *meta-* ($1 ch("H2O")$), *piro-* ($2 ch("H2O")$) e *orto-* ($3 ch("H2O")$).

#align(center)[
  #table(
    columns: (1fr, 1.5fr, 1.8fr),
    align: (center + horizon, center + horizon, center + horizon),
    fill: (x, y) => if y == 0 { rgb(90, 145, 195) } else { rgb(235, 242, 250) },
    stroke: 0.6pt + rgb(180, 200, 225),
    inset: 7pt,
    text(fill: white, weight: "bold")[Formula], text(fill: white, weight: "bold")[Nomenclatura IUPAC], text(fill: white, weight: "bold")[Nomenclatura tradizionale],
    [#stack(dir: ttb, spacing: 3pt, text(size: 9pt, weight: "bold", fill: purple)[+3], text(weight: "bold")[#ch("H4As2O5")])], [Acido pentaossodiarsenico (III)], [Contiene $2 ch("H2O")$ ($ch("As2O3 + 2 H2O")$) con #ch("As")$(+3)$ dispari:\ *Acido piroarsenioso*]
  )
]

Per gli elementi anfoteri (*Cr* e *Mn*), la reazione dei rispettivi ossidi con #ch("H2O") genera idrossidi o ossiacidi a seconda del N.O.:

#align(center)[
  #table(
    columns: (auto, auto, auto, auto, 1.5fr, 1.4fr),
    align: (center + horizon, center + horizon, center + horizon, center + horizon, center + horizon, center + horizon),
    fill: (x, y) => if y == 0 { rgb(90, 145, 195) } else if x == 0 { rgb(250, 225, 120) } else { rgb(245, 248, 252) },
    stroke: 0.5pt + rgb(180, 195, 210),
    inset: 5pt,
    text(fill: white, weight: "bold")[Elem.], text(fill: white, weight: "bold")[N.O.], text(fill: white, weight: "bold")[Orig.], text(fill: white, weight: "bold")[Formula], text(fill: white, weight: "bold")[Nomenclatura IUPAC], text(fill: white, weight: "bold")[Nomenclatura tradizionale],
    table.cell(rowspan: 3)[*Cr*], [$+2$], [O.B.], [#ch("Cr(OH)2")], [Diidrossido di cromo], [Idrossido cromoso],
    [$+3$], [O.B.], [#ch("Cr(OH)3")], [Triidrossido di cromo], [Idrossido cromico],
    [$+6$], [O.A.], [#ch("H2CrO4")], [Acido tetraossocromico (VI)], [Acido cromico],
    table.cell(rowspan: 5)[*Mn*], [$+2$], [O.B.], [#ch("Mn(OH)2")], [Diidrossido di manganese], [Idrossido manganoso],
    [$+3$], [-], [-], [-], [-],
    [$+4$], [-], [-], [-], [-],
    [$+6$], [O.A.], [#ch("H2MnO4")], [Acido tetraossomanganico (VI)], [Acido manganico],
    [$+7$], [O.A.], [#ch("HMnO4")], [Acido tetraossomanganico (VII)], [Acido permanganico]
  )
]

== 5. Perossidi

Composti binari contenenti il gruppo perossido #ch("O2^2-"), in cui l'ossigeno ha $"N.O." = -1$ ed è legato a un altro elemento (E).
- *Nomenclatura IUPAC:* `prefisso-ossido` + `di` + `prefisso-E` (prefissi: _di-_, ...).
- *Nomenclatura tradizionale:* `Perossido di` + `E`.

#align(center)[
  #table(
    columns: (1fr, 1.5fr, 1.8fr),
    align: (center + horizon, center + horizon, center + horizon),
    fill: (x, y) => if y == 0 { rgb(90, 145, 195) } else { rgb(235, 242, 250) },
    stroke: 0.6pt + rgb(180, 200, 225),
    inset: 7pt,
    text(fill: white, weight: "bold")[Formula], text(fill: white, weight: "bold")[Nomenclatura IUPAC], text(fill: white, weight: "bold")[Nomenclatura tradizionale],
    [#stack(dir: ttb, spacing: 3pt, text(size: 9pt, weight: "bold")[+1 #text(fill: red)[-1]], text(weight: "bold")[#ch("K2O2")])], [Diossido di dipotassio], [*Perossido di potassio*]
  )
]

*Esercizio 2.9:* Assegnare le nomenclature a #ch("MgO2").
- #ch("MgO2"): *Diossido di magnesio* (IUPAC); *perossido di magnesio* (tradizionale).

== 6. Idracidi

Composti binari a carattere acido in cui l'idrogeno ($"N.O." = +1$) è legato a un elemento elettronegativo $"E" in {"alogeno" (#ch("F, Cl, Br, I")), #ch("S"), #ch("Se")}$ oppure al *gruppo ciano* #ch("(CN)-") (ione pseudogeno con carica complessiva $-1$).
- *Nomenclatura IUPAC (usata per la fase gassosa):* `E-uro` + `di (prefisso)-idrogeno` (se c'è più di un atomo di #ch("H") si usa _di-_, ... davanti a «idrogeno»).
- *Nomenclatura tradizionale (usata per la soluzione acquosa/fase liquida):* `Acido` + `E-idrico`.

#align(center)[
  #table(
    columns: (1fr, 1.5fr, 1.8fr),
    align: (center + horizon, center + horizon, center + horizon),
    fill: (x, y) => if y == 0 { rgb(90, 145, 195) } else { rgb(235, 242, 250) },
    stroke: 0.6pt + rgb(180, 200, 225),
    inset: 7pt,
    text(fill: white, weight: "bold")[Formula], text(fill: white, weight: "bold")[Nomenclatura IUPAC], text(fill: white, weight: "bold")[Nomenclatura tradizionale],
    [#stack(dir: ttb, spacing: 3pt, text(size: 9pt, weight: "bold")[+1 #text(fill: red)[-1]], text(weight: "bold")[#ch("HCl")])], [Cloruro di idrogeno], [*Acido cloridrico*]
  )
]

*Esercizio 2.10:* Assegnare le nomenclature a #ch("H2Se").
- #ch("H2Se"): *Seleniuro di diidrogeno* (IUPAC); *acido selenidrico* (tradizionale).

== 7-8. Idruri (metallici e covalenti)

Composti binari in cui #ch("H") è legato a un altro elemento (E). Si dividono in due classi:
- *Idruri metallici (ionici o salini):* $"M" + ch("H")$, dove #ch("H") è più elettronegativo del metallo e assume $"N.O." = -1$.
- *Idruri covalenti:* $"NM (o semimetallo)" + ch("H")$, dove #ch("H") assume $"N.O." = +1$.

Regole di nomenclatura:
- *Nomenclatura IUPAC:* `prefisso-idruro` + `di` + `E` (il prefisso _mono-_ si usa solo davanti a «idruro» qualora M abbia più N.O.).
- *Nomenclatura tradizionale:*
  - Per gli idruri metallici: `Idruro` + `M-suffisso` ($-"oso"$ per $arrow.b "N.O."$, $-"ico"$ per $arrow.t "N.O."$; oppure `Idruro di M` se M ha un solo N.O.).
  - Per gli idruri covalenti: si utilizzano i *nomi comuni* storici (es. #ch("NH3") ammoniaca, #ch("PH3") fosfina, #ch("AsH3") arsina, #ch("CH4") metano, #ch("B2H6") diborano).

#align(center)[
  #table(
    columns: (1fr, 1.5fr, 1.8fr),
    align: (center + horizon, center + horizon, center + horizon),
    fill: (x, y) => if y == 0 { rgb(90, 145, 195) } else { rgb(235, 242, 250) },
    stroke: 0.6pt + rgb(180, 200, 225),
    inset: 7pt,
    text(fill: white, weight: "bold")[Formula], text(fill: white, weight: "bold")[Nomenclatura IUPAC], text(fill: white, weight: "bold")[Nomenclatura tradizionale],
    [#stack(dir: ttb, spacing: 3pt, text(size: 9pt, weight: "bold")[+2 #text(fill: red)[-1]], text(weight: "bold")[#ch("CuH2")])], [Diidruro di rame], [Siccome #ch("Cu") ha N.O. $(+1, +2)$:\ *Idruro rameico*]
  )
]

*Esercizio 2.11:* Assegnare le nomenclature a #ch("SrH2") e #ch("PH3").
- #ch("SrH2"): *Diidruro di stronzio* (IUPAC); *idruro di stronzio* (tradizionale).
- #ch("PH3"): *Triidruro di fosforo* (IUPAC); *fosfina* (tradizionale/nome comune).

== 9. Sali binari

Composti binari ionici formati da un *metallo (M)* ($"N.O." > 0$) e un *non metallo (NM)* ($"N.O." < 0$), derivati formalmente dalla sostituzione degli idrogeni di un idracido con un metallo.
- *Nomenclatura IUPAC:* `prefisso-NM-uro` + `di` + `prefisso-M` (il prefisso _mono-_ si mette solo davanti al NM qualora M abbia più N.O.).
- *Nomenclatura tradizionale:* `NM-uro` + `M-suffisso` ($-"oso"$ per $arrow.b "N.O."$, $-"ico"$ per $arrow.t "N.O."$; oppure `di M` se M ha un solo N.O.).

#align(center)[
  #table(
    columns: (1fr, 1.5fr, 1.8fr),
    align: (center + horizon, center + horizon, center + horizon),
    fill: (x, y) => if y == 0 { rgb(90, 145, 195) } else { rgb(235, 242, 250) },
    stroke: 0.6pt + rgb(180, 200, 225),
    inset: 7pt,
    text(fill: white, weight: "bold")[Formula], text(fill: white, weight: "bold")[Nomenclatura IUPAC], text(fill: white, weight: "bold")[Nomenclatura tradizionale],
    [#stack(dir: ttb, spacing: 3pt, text(size: 9pt, weight: "bold")[+2 #text(fill: red)[-1]], text(weight: "bold")[#ch("SnF2")])], [Difluoruro di stagno], [Siccome #ch("Sn") ha N.O. $(+2, +4)$:\ *Fluoruro stannoso*]
  )
]

*Esercizio 2.12:* Assegnare le nomenclature a #ch("AlBr3") e #ch("Ag2S").
- #ch("AlBr3") ($"N.O."_("Al") = +3$, unico): *Tribromuro di alluminio* (IUPAC); *bromuro di alluminio* (tradizionale).
- #ch("Ag2S") ($"N.O."_("Ag") = +1$, unico): *Solfuro di diargento* (IUPAC); *solfuro di argento* (tradizionale).

== 10. Sali ternari (neutri e acidi)

Composti ternari ottenuti per sostituzione totale (*sali neutri*) o parziale (*sali acidi*) degli atomi di idrogeno di un ossiacido con un metallo M.

=== Sali ternari neutri
- *Nomenclatura IUPAC:* `(Prefisso)-Prefisso-osso-NM-ato` + `(N.O. di NM)` + `di` + `M` + `(N.O. di M)`. Se M o NM hanno un solo N.O. possibile, il relativo numero romano non si esplicita.
- *Nomenclatura tradizionale:* `(prefisso)-NM-suffisso` + `M-suffisso`:
  - *Suffissi per il NM* (conversione delle desinenze dell'ossiacido):
    - $-"oso" arrow.r -"ito"$ (con eventuali prefissi $"ipo-"$, $"meta-"$, $"piro-"$, $"orto-"$);
    - $-"ico" arrow.r -"ato"$ (con eventuali prefissi $"per-"$, $"meta-"$, $"piro-"$, $"orto-"$).
  - *Suffissi per il M:* $-"oso"$ per $arrow.b "N.O."$, $-"ico"$ per $arrow.t "N.O."$ (oppure `di M` se M ha un solo N.O.).

#align(center)[
  #table(
    columns: (1fr, 1.5fr, 1.8fr),
    align: (center + horizon, center + horizon, center + horizon),
    fill: (x, y) => if y == 0 { rgb(90, 145, 195) } else { rgb(235, 242, 250) },
    stroke: 0.6pt + rgb(180, 200, 225),
    inset: 7pt,
    text(fill: white, weight: "bold")[Formula], text(fill: white, weight: "bold")[Nomenclatura IUPAC], text(fill: white, weight: "bold")[Nomenclatura tradizionale],
    [#stack(dir: ttb, spacing: 3pt, text(size: 9pt, weight: "bold")[+2 #h(2pt) #text(fill: purple)[+5] #h(6pt)], text(weight: "bold")[#ch("Pb(ClO3)2")])], [Di-triossoclorato (V) di piombo (II)], [Siccome #ch("Pb")$(+2, +4)$ e #ch("Cl")$(+1, +3, +5, +7)$:\ *Clorato piomboso*]
  )
]

*Esercizio 2.13:* Assegnare le nomenclature a #ch("Sn(CO3)2") e #ch("Cs3PO4").
- #ch("Sn(CO3)2") ($"N.O."_("Sn") = +4$, $"N.O."_("C") = +4$ unico): *Di-triossocarbonato di stagno (IV)* (IUPAC); *carbonato stannico* (tradizionale).
- #ch("Cs3PO4") ($"N.O."_("Cs") = +1$ unico, $"N.O."_("P") = +5$ da acido ortofosforico #ch("H3PO4")): *Tetraossofosfato (V) di cesio* (IUPAC); *ortofosfato di cesio* (tradizionale).

=== Sali ternari acidi (idrogenosali)
Derivano da una sostituzione parziale degli atomi di #ch("H") di un ossiacido poliprotico:
- *Nomenclatura IUPAC:* rispetto ai sali neutri, il blocco «(Prefisso)-Prefisso-osso» viene sostituito da `n-idrogeno` (dove _n_ è il prefisso _mono-_, _di-_, ... che indica il numero di atomi di #ch("H") residui nello ione).
- *Nomenclatura tradizionale:* tra il nome dell'anione (NM) e quello del metallo (M) si inserisce il termine `n-acido` (*monoacido* o *biacido*).
  - _Eccezione:_ per i sali acidi di #ch("H2CO3"), #ch("H2SO3") e #ch("H2SO4") si antepone direttamente il prefisso *bi-* al nome dell'anione (es. *bicarbonato*, *bisolfito*, *bisolfato*), omettendo il termine «monoacido».

#align(center)[
  #table(
    columns: (1fr, 1.5fr, 1.8fr),
    align: (center + horizon, center + horizon, center + horizon),
    fill: (x, y) => if y == 0 { rgb(90, 145, 195) } else { rgb(235, 242, 250) },
    stroke: 0.6pt + rgb(180, 200, 225),
    inset: 7pt,
    text(fill: white, weight: "bold")[Formula], text(fill: white, weight: "bold")[Nomenclatura IUPAC], text(fill: white, weight: "bold")[Nomenclatura tradizionale],
    [#stack(dir: ttb, spacing: 3pt, text(size: 9pt, weight: "bold")[+3 #h(10pt) #text(fill: blue)[+5] #h(6pt)], text(weight: "bold")[#ch("Fe(H2PO4)3")])], [Diidrogenofosfato (V) di ferro (III)], [Siccome #ch("Fe")$(+2, +3)$ e #ch("P")$(+3, +5)$:\ *Ortofosfato biacido ferrico*]
  )
]

*Esercizio 2.14:* Assegnare le nomenclature a #ch("Ba(HCO3)2").
- #ch("Ba(HCO3)2"): *Monoidrogenocarbonato di bario* (IUPAC); *bicarbonato di bario* (tradizionale).

== Note finali su nomenclatura e composti

- *Nomenclatura di Stock:* precursore della IUPAC tuttora in uso nella letteratura scientifica; indica il N.O. del metallo tra parentesi in numeri romani senza prefissi stechiometrici (es. #ch("FeCl3") è il _cloruro di ferro (III)_).
- *Unità formula:* poiché i composti ionici sono reticoli continui di ioni di segno opposto e non molecole separate, la loro formula chimica rappresenta un'*unità formula* (ossia una formula minima che esprime il rapporto stechiometrico tra cationi e anioni). Non esiste la molecola #ch("NaCl"), ma l'unità formula #ch("NaCl").
- *Composti idrati:* composti ionici che inglobano nel reticolo cristallino uno specifico numero di molecole d'acqua (*acqua d'idratazione*) per ciascuna unità formula. Nella formula si separano con un punto centrato ($dot$) e il nome termina con `n-idrato` (_monoidrato_, _diidrato_, ...).
  - _Esempio:_ il gesso da lavagna ha formula $"CaSO"_4 dot 2 ch("H2O")$ e prende il nome di *solfato di calcio diidrato*.
- *Massa molecolare ($M M$) e massa formula:* si calcolano sommando le masse atomiche di tutti gli elementi moltiplicate per i rispettivi pedici nella formula:
  $ M M = sum_i n_i dot m_("a", i) $
  Per i composti molecolari si parla propriamente di *massa molecolare*, mentre per i composti ionici si parla di *massa formula*.

*Esercizio 2.15:* Calcolare la massa molecolare (massa formula) di #ch("Fe2O3") ed esprimerla con $4$ cifre significative (C.S.).
$ M M (#ch("Fe2O3")) = 2 dot m_("a")(#ch("Fe")) + 3 dot m_("a")(#ch("O")) = 2 dot 55.85 "Da" + 3 dot 16.00 "Da" = 159.7 "Da" $

= Miscele: classificazione e separazione

In natura la materia si presenta quasi sempre sotto forma di *miscele* (insiemi fisici di due o più sostanze pure):
- *Miscele eterogenee:* presentano una o più superfici di separazione fisicamente visibili tra i componenti (fasi distinte) $==>$ composizione *non uniforme* da punto a punto. Es: rocce granitiche, latte, sangue, sabbia in acqua.
- *Miscele omogenee (o soluzioni):* non presentano superfici di separazione visibili perché i componenti sono intimamente miscelati a livello di singoli atomi, ioni o molecole (una sola fase) $==>$ composizione *uniforme*. Possono essere *liquide* (es. zucchero in acqua), *gassose* (es. aria) o *solide* (es. cera, leghe metalliche).

== Tecniche fisiche di separazione delle miscele

Per isolare gli elementi e i composti puri che costituiscono una miscela si sfruttano le differenze nelle loro proprietà fisiche:

1. *Filtrazione:* separa un solido insolubile da un liquido sfruttando le *differenze nelle dimensioni delle particelle* attraverso un mezzo poroso (carta da filtro). Può essere condotta per gravità o *sotto vuoto* (riducendo la pressione nel recipiente di raccolta per accelerare il flusso del liquido).
2. *Cristallizzazione:* si basa sulle *differenze di solubilità* (massima quantità di soluto che si scioglie in un volume fisso di solvente a una data temperatura $T$). Poiché la solubilità della maggior parte dei solidi cresce con $T$, raffreddando una soluzione satura calda il composto puro precipita sotto forma di cristalli separandosi dalle impurezze.
3. *Distillazione:* separa i componenti liquidi di una soluzione sfruttando le *differenze di volatilità* (tendenza a passare in fase vapore, legata alla temperatura di ebollizione $T_"eb"$). Facendo bollire la miscela, il vapore si arricchisce del componente più volatile (a minor $T_"eb"$), viene convogliato in un refrigerante ad acqua dove condensa, ed è raccolto separatamente come *distillato* puro.
4. *Estrazione con solvente:* si basa sulle *differenze di solubilità* in solventi diversi. Un materiale solido frantumato viene trattato con un primo solvente per sciogliere i composti d'interesse; l'estratto viene poi posto in un *imbuto separatore* con un secondo solvente *immiscibile* col primo (es. etere dietilico e acqua). Agitando e lasciando stratificare le due fasi per densità, i composti organici si ripartiscono selettivamente nel nuovo solvente e vengono separati aprendo il rubinetto inferiore.
5. *Cromatografia (es. su colonna):* separa i componenti in base alla *diversa velocità di migrazione* quando vengono trasportati da un fluido (*fase mobile* o eluente) attraverso un supporto solido poroso impaccato (*fase stazionaria*).
   - Componente con *deboli interazioni* chimico-fisiche con la fase stazionaria $==>$ avanza *più velocemente* ed eluisce per primo.
   - Componente con *forti interazioni* con la fase stazionaria $==>$ viene trattenuto e avanza *più lentamente*.

#v(0.8em)
#align(center)[
  #canvas(length: 0.85cm, {
    import draw: *
    
    // --- 1. IMBUTO SEPARATORE (Estrazione) ---
    let sx = 0.0
    content((sx, 5.8), text(size: 8.5pt, weight: "bold")[Estrazione (Imbuto separatore)])
    
    // Tappo (Stopper)
    rect((sx - 0.35, 4.9), (sx + 0.35, 5.1), fill: rgb(220, 230, 240), stroke: 0.9pt)
    polygon((sx - 0.2, 4.9), (sx + 0.2, 4.9), (sx + 0.15, 4.4), (sx - 0.15, 4.4), fill: rgb(235, 242, 248), stroke: 0.9pt)
    
    // Corpo conico a pera dell'imbuto
    bezier((sx - 0.15, 4.4), (sx - 1.35, 3.0), (sx - 0.8, 4.2), (sx - 1.35, 3.6), stroke: 1.1pt)
    bezier((sx + 0.15, 4.4), (sx + 1.35, 3.0), (sx + 0.8, 4.2), (sx + 1.35, 3.6), stroke: 1.1pt)
    line((sx - 1.35, 3.0), (sx - 0.12, 0.8), stroke: 1.1pt)
    line((sx + 1.35, 3.0), (sx + 0.12, 0.8), stroke: 1.1pt)
    
    // Strato organico superiore (Etere)
    polygon((sx - 1.24, 2.8), (sx + 1.24, 2.8), (sx + 0.68, 1.8), (sx - 0.68, 1.8), fill: rgb(245, 235, 175, 160), stroke: (paint: rgb(180, 160, 80), dash: "dashed", thickness: 0.7pt))
    // Strato acquoso inferiore (Acqua + impurezze)
    polygon((sx - 0.68, 1.8), (sx + 0.68, 1.8), (sx + 0.12, 0.8), (sx - 0.12, 0.8), fill: rgb(110, 140, 210, 200), stroke: none)
    line((sx - 0.68, 1.8), (sx + 0.68, 1.8), stroke: 0.9pt + rgb(60, 90, 160))

    // Stelo e rubinetto (Tap)
    rect((sx - 0.12, 0.0), (sx + 0.12, 0.8), stroke: 1.1pt)
    rect((sx - 0.4, 0.35), (sx + 0.4, 0.55), fill: rgb(200, 200, 200), stroke: 0.8pt)
    circle((sx, 0.45), radius: 0.15, fill: white, stroke: 0.8pt)

    // Etichette imbuto
    line((sx + 0.35, 5.0), (sx + 1.5, 5.0), stroke: 0.5pt)
    content((sx + 1.6, 5.0), text(size: 7pt)[Tappo], anchor: "west")
    line((sx + 0.95, 2.3), (sx + 1.5, 2.3), stroke: 0.5pt)
    content((sx + 1.6, 2.3), text(size: 7pt, align(left)[Fase organica\ (es. etere etilico)]), anchor: "west")
    line((sx + 0.4, 1.3), (sx + 1.5, 1.3), stroke: 0.5pt)
    content((sx + 1.6, 1.3), text(size: 7pt, align(left)[Fase acquosa\ (più densa)]), anchor: "west")
    line((sx + 0.4, 0.45), (sx + 1.5, 0.45), stroke: 0.5pt)
    content((sx + 1.6, 0.45), text(size: 7pt)[Rubinetto], anchor: "west")

    // --- 2. DISTILLAZIONE SEMPLICE ---
    let dx = 6.2
    content((dx + 1.2, 5.8), text(size: 8.5pt, weight: "bold")[Apparato di distillazione])

    // Pallone di distillazione
    circle((dx, 1.3), radius: 0.85, fill: rgb(235, 245, 255), stroke: 1.1pt)
    arc((dx - 0.82, 1.1), start: 195deg, stop: 345deg, radius: 0.85, mode: "CLOSE", fill: rgb(245, 180, 90, 190), stroke: none)
    rect((dx - 0.18, 2.1), (dx + 0.18, 3.8), fill: rgb(235, 245, 255), stroke: 1.1pt)
    
    // Termometro
    line((dx, 4.5), (dx, 2.5), stroke: 1.2pt + rgb(180, 40, 40))
    circle((dx, 2.5), radius: 0.08, fill: rgb(180, 40, 40), stroke: none)
    content((dx - 0.25, 4.3), text(size: 6.5pt)[Termometro], anchor: "east")

    // Braccio laterale e condensatore Liebig
    line((dx + 0.18, 3.2), (dx + 2.8, 1.7), stroke: 1.1pt)
    line((dx + 0.18, 2.95), (dx + 2.8, 1.45), stroke: 1.1pt)
    
    // Camicia ad acqua refrigerante
    polygon((dx + 0.65, 3.1), (dx + 2.35, 2.12), (dx + 2.15, 1.65), (dx + 0.45, 2.63), fill: rgb(180, 225, 250, 140), stroke: 0.9pt + rgb(70, 140, 190))
    // Frecce acqua
    line((dx + 2.15, 1.2), (dx + 2.15, 1.75), stroke: 0.8pt + blue, mark: (end: ">"))
    content((dx + 2.15, 1.0), text(size: 6pt, fill: blue)[Entrata #ch("H2O")])
    line((dx + 0.65, 2.95), (dx + 0.65, 3.5), stroke: 0.8pt + blue, mark: (end: ">"))
    content((dx + 0.65, 3.7), text(size: 6pt, fill: blue)[Uscita #ch("H2O")])

    // Matraccio di raccolta (distillato)
    polygon((dx + 2.7, 1.6), (dx + 2.9, 1.6), (dx + 3.3, 0.5), (dx + 2.3, 0.5), fill: rgb(235, 245, 255), stroke: 1.1pt)
    polygon((dx + 2.42, 0.8), (dx + 3.18, 0.8), (dx + 3.3, 0.5), (dx + 2.3, 0.5), fill: rgb(190, 230, 250), stroke: none)
    content((dx, 0.15), text(size: 6.5pt)[Pallone riscaldato])
    content((dx + 2.8, 0.15), text(size: 6.5pt)[Distillato puro])

    // --- 3. CROMATOGRAFIA SU COLONNA ---
    let cx = 11.8
    content((cx + 0.9, 5.8), text(size: 8.5pt, weight: "bold")[Cromatografia su colonna])

    // Colonna 1 (Inizio separazione)
    rect((cx, 1.4), (cx + 0.5, 4.6), stroke: 1.0pt)
    line((cx, 1.4), (cx + 0.25, 0.9), (cx + 0.5, 1.4), stroke: 1.0pt)
    // Fase stazionaria
    rect((cx + 0.02, 1.45), (cx + 0.48, 3.8), fill: rgb(235, 230, 215), stroke: none)
    // Fase mobile (solvente)
    rect((cx + 0.02, 3.8), (cx + 0.48, 4.4), fill: rgb(200, 230, 250, 150), stroke: none)
    // Bande in separazione
    rect((cx + 0.02, 3.2), (cx + 0.48, 3.45), fill: rgb(210, 70, 70), stroke: none)
    rect((cx + 0.02, 2.5), (cx + 0.48, 2.8), fill: rgb(140, 90, 180), stroke: none)
    content((cx + 0.25, 0.5), text(size: 6.5pt)[$t_1$])

    // Freccia tempo
    line((cx + 0.7, 2.8), (cx + 1.2, 2.8), stroke: 0.9pt, mark: (end: ">"))

    // Colonna 2 (Separazione avanzata)
    let cx2 = cx + 1.4
    rect((cx2, 1.4), (cx2 + 0.5, 4.6), stroke: 1.0pt)
    line((cx2, 1.4), (cx2 + 0.25, 0.9), (cx2 + 0.5, 1.4), stroke: 1.0pt)
    rect((cx2 + 0.02, 1.45), (cx2 + 0.48, 3.8), fill: rgb(235, 230, 215), stroke: none)
    rect((cx2 + 0.02, 3.8), (cx2 + 0.48, 4.4), fill: rgb(200, 230, 250, 150), stroke: none)
    // Banda lenta (rossa) e banda veloce (viola/blu)
    rect((cx2 + 0.02, 2.7), (cx2 + 0.48, 2.95), fill: rgb(210, 70, 70), stroke: none)
    rect((cx2 + 0.02, 1.6), (cx2 + 0.48, 1.9), fill: rgb(80, 130, 210), stroke: none)
    content((cx2 + 0.25, 0.5), text(size: 6.5pt)[$t_2 > t_1$])

    // Etichette cromatografia
    content((cx2 + 0.65, 4.1), text(size: 6.5pt)[Fase mobile], anchor: "west")
    content((cx2 + 0.65, 2.8), text(size: 6.5pt)[Più affine], anchor: "west")
    content((cx2 + 0.65, 1.75), text(size: 6.5pt)[Meno affine], anchor: "west")
  })
]

= La Mole e la Massa Molare

La *stechiometria* è lo studio degli aspetti quantitativi delle formule e delle reazioni chimiche. Poiché atomi, molecole e unità formula hanno dimensioni submicroscopiche e non possono essere contati singolarmente in modo diretto, si introduce l'unità di misura della quantità di sostanza: la *mole* ($n$).

- *Definizione classica:* quantità di sostanza di un sistema che contiene tante entità elementari quanti sono gli atomi presenti in $12 "g"$ di #ch("^12C"), pari a $6.022 times 10^23$ entità elementari.
- *Ridefinizione (dal 2019):* quantità di sostanza che contiene esattamente $6.022 times 10^23$ entità elementari (svincolata dalla definizione di massa grazie alla determinazione del valore numerico della costante di Avogadro con incertezza accettabile).

Una mole di qualsiasi sostanza contiene sempre un numero fisso di entità chimiche e possiede una massa fissa. La relazione fondamentale tra scala atomica e scala macroscopica stabilisce che la *massa atomica* ($"MA"$, espressa in $"Da"$ o $"u"$) di un elemento è numericamente uguale alla massa di $1 "mol"$ di atomi dello stesso elemento espressa in grammi ($"g"$). 
Ad esempio, $1$ atomo di #ch("S") ha $"MA" = 32.07 "Da"$, mentre $1 "mol"$ di atomi di #ch("S") ha massa pari a $32.07 "g"$.

Occorre distinguere formalmente due grandezze spesso usate come sinonimi:
- *Costante di Avogadro ($N_A$):* numero di particelle contenute in una mole; ha dimensione fisica dell'inverso di una quantità di sostanza:
  $ N_A = 6.022 times 10^23 "mol"^(-1) $
- *Numero di Avogadro:* grandezza adimensionale avente il medesimo valore numerico di $N_A$, definita come il numero puro di atomi di #ch("^12C") in $12 "g"$ di tale isotopo.

== Massa molare ($"MM"$)

La *massa molare* ($"MM"$) di una sostanza è la massa di una mole delle sue entità elementari; la sua unità di misura è $"g" dot "mol"^(-1)$.
- *Elementi:* se l'elemento esiste in natura in forma monoatomica (es. #ch("Au")), la $"MM"$ coincide numericamente con la $"MA"$. Nel caso di elementi molecolari (es. #ch("S8")), la $"MM"$ si ottiene moltiplicando la $"MA"$ dell'elemento per il numero di atomi che costituiscono la molecola.
- *Composti (molecolari o ionici):* la $"MM"$ è pari alla somma delle masse molari di tutti gli atomi degli elementi presenti nella formula chimica, moltiplicati per i rispettivi pedici. Ad esempio, per #ch("SO2"):
  $ "MM"_(ch("SO2")) = "MM"_(ch("S")) + 2 dot "MM"_(ch("O")) = 32.07 + (2 dot 16.00) = 64.07 "g" dot "mol"^(-1) $

All'interno di una formula chimica, i pedici indicano sia il numero di atomi presenti in una singola molecola (o unità formula), sia il numero di moli di atomi contenuti in $1 "mol"$ di composto.

== Fattori di conversione stechiometrici

La massa molare $"MM"$ costituisce il fattore di conversione tra la massa $m$ (in $"g"$) e la quantità di sostanza $n$ (in $"mol"$):
$ n = m / "MM" quad ==> quad ["mol"] = ["g"] / ["g" dot "mol"^(-1)] $

Analogamente, la costante di Avogadro $N_A$ permette di calcolare il numero totale di specifiche entità elementari contenute in un dato numero di moli $n$ di composto:
$ "n° di entità" = a dot n dot N_A $
dove $a$ rappresenta l'indice stechiometrico (pedice) che indica quante volte l'entità considerata compare nella formula del composto.

#block(fill: luma(245), inset: 10pt, radius: 4pt, width: 100%)[
  *Esempio svolto 1 — Conversione moli-massa:* Calcolare la massa di argento contenuta in $0.0342 "mol"$ di questo elemento.
  - Dati: $n_(ch("Ag")) = 0.0342 "mol"$; dalla tavola periodica $"MM"_(ch("Ag")) = 107.87 "g" dot "mol"^(-1)$.
  - Svolgimento:
    $ n = m / "MM" ==> m_(ch("Ag")) = n_(ch("Ag")) dot "MM"_(ch("Ag")) = 0.0342 "mol" dot 107.87 "g" dot "mol"^(-1) = 3.69 "g" $

  #v(0.5em)
  *Esempio svolto 2 — Calcolo del numero di atomi:* Calcolare il numero di atomi di idrogeno presenti in $2.33 "mol"$ di acqua (#ch("H2O")).
  - Dati: $n_(ch("H2O")) = 2.33 "mol"$; nella formula #ch("H2O") l'idrogeno compare con pedice $a = 2$.
  - Svolgimento:
    $ "n° atomi di" ch("H") = a dot n_(ch("H2O")) dot N_A = 2 dot 2.33 "mol" dot 6.022 times 10^23 "mol"^(-1) = 2.81 times 10^24 $
]

ES. 3.1 Si considerino $41.6 "g"$ di carbonato di ammonio: calcolare a quante moli corrispondono e quanti ioni carbonato sono presenti. $[0.433 "mol"; thin 2.61 times 10^23]$

= Percentuale in Massa

La massa di ciascun elemento all'interno di un composto rappresenta una frazione costante della massa totale del composto stesso. La *percentuale in massa* ($% E$) di un generico elemento $E$ presente in un composto noto si calcola come rapporto tra la massa dell'elemento in una mole di composto e la massa molare dell'intero composto:
$ % E = (a dot "MA"_E) / "MM"_"composto" dot 100 $
dove $a$ è il pedice dell'elemento $E$ nella formula del composto e $"MA"_E$ la sua massa atomica (numericamente pari alla sua massa molare in $"g" dot "mol"^(-1)$).

#block(fill: luma(245), inset: 10pt, radius: 4pt, width: 100%)[
  *Esempio svolto — Percentuale in massa:* Calcolare la percentuale in massa (con 3 C.S.) di idrogeno nella molecola #ch("C6H12O6").
  - Massa molare del composto:
    $ "MM"_(ch("C6H12O6")) = 6 dot 12.01 + 12 dot 1.01 + 6 dot 16.00 = 180.18 "g" dot "mol"^(-1) $
  - Percentuale di idrogeno ($a = 12$, $"MA"_(ch("H")) = 1.01 "g" dot "mol"^(-1)$):
    $ % ch("H") = (a dot "MA"_(ch("H"))) / "MM"_(ch("C6H12O6")) dot 100 = (12 dot 1.01) / 180.18 dot 100 = 6.73 % $
]

ES. 3.2 Calcolare la percentuale in massa (con 3 C.S.) di idrogeno nel carbonato di ammonio. $[8.41 %]$

= Formula Minima e Formula Molecolare

Decomponendo chimicamente un composto nelle sue sostanze più semplici è possibile determinare la massa di ciascun elemento costituente, convertirla in moli e ricavare i rapporti numerici tra gli atomi.

- *Formula minima (o empirica):* esprime il rapporto di numeri interi più semplici di moli di ciascun elemento presente nel composto.
- *Formula molecolare:* esprime il numero effettivo di moli di ciascun elemento contenute in $1 "mol"$ di composto. In alcuni casi coincide con la formula minima (es. #ch("H2O")), mentre in generale è un multiplo intero della formula minima (determinabile solo se è nota la $"MM"$ del composto).

== Determinazione dalle moli o dalla composizione percentuale

#block(fill: luma(245), inset: 10pt, radius: 4pt, width: 100%)[
  *Esempio svolto 1 — Formula minima dalle moli:* Calcolare la formula minima di un composto contenente $0.21 "mol"$ di zinco, $0.14 "mol"$ di fosforo e $0.56 "mol"$ di ossigeno.
  1. Si scrive una formula preliminare usando le moli come pedici provvisori: $"Zn"_(0.21) "P"_(0.14) "O"_(0.56)$.
  2. Si divide ciascun pedice per il valore più piccolo ($0.14 "mol"$) per normalizzare i rapporti:
     $ "Pedice"_(ch("Zn")) = 0.21 / 0.14 = 1.5, quad "Pedice"_(ch("P")) = 0.14 / 0.14 = 1, quad "Pedice"_(ch("O")) = 0.56 / 0.14 = 4.0 $
  3. Poiché permane un pedice frazionario ($1.5$), si moltiplicano tutti i pedici per il più piccolo numero intero che li rende tutti interi (in questo caso $2$):
     $ ==> "Formula minima:" thin #ch("Zn3P2O8") $

  #v(0.5em)
  *Esempio svolto 2 — Formula molecolare dalle percentuali in massa:* L'acido lattico ($"MM" = 90.08 "g" dot "mol"^(-1)$) ha la seguente composizione in massa: $40.0 %$ di carbonio, $6.71 %$ di idrogeno e $53.3 %$ di ossigeno. Determinare la formula molecolare.
  1. Poiché la composizione percentuale è indipendente dalla quantità totale di campione, si assume come base di calcolo $100 "g"$ di acido lattico, convertendo direttamente le percentuali in grammi ($40.0 "g"$ di #ch("C"), $6.71 "g"$ di #ch("H"), $53.3 "g"$ di #ch("O")).
  2. Calcolo delle moli dei tre elementi costituenti:
     $ n_(ch("C")) = 40.0 / 12.01 = 3.33 "mol", quad n_(ch("H")) = 6.71 / 1.01 = 6.64 "mol", quad n_(ch("O")) = 53.3 / 16.00 = 3.33 "mol" $
  3. Calcolo dei pedici dividendo per il numero di moli inferiore ($3.33 "mol"$):
     $ "Pedice"_(ch("C")) = 3.33 / 3.33 = 1, quad "Pedice"_(ch("H")) = 6.64 / 3.33 = 1.99 approx 2, quad "Pedice"_(ch("O")) = 3.33 / 3.33 = 1 $
  4. Si ottiene la formula minima #ch("CH2O"), la cui massa molare empirica vale:
     $ "MM"_(ch("CH2O")) = 12.01 + 2 dot 1.01 + 16.00 = 30.03 "g" dot "mol"^(-1) $
  5. Confrontando la massa molare reale dell'acido lattico con quella della formula minima ($90.08 / 30.03 approx 3$), si triplicano i pedici:
     $ ==> "Formula molecolare:" thin #ch("C3H6O3") $
]

ES. 3.3 Un composto ionico contiene $2.82 "g"$ di sodio, $4.35 "g"$ di cloro e $7.83 "g"$ di ossigeno. Determinare la formula minima. $[#ch("NaClO4")]$

ES. 3.4 Il benzopirene ($"MM" = 252.30 "g" dot "mol"^(-1)$) ha la seguente composizione in massa: $95.21 %$ di carbonio e $4.79 %$ di idrogeno. Determinare la formula molecolare. $[#ch("C20H12")]$

== Analisi per combustione

Un metodo sperimentale per determinare la formula chimica di composti organici o incogniti è l'*analisi per combustione*.

#grid(
  columns: (1fr, 1.2fr),
  column-gutter: 1.5em,
  align: (left + horizon, center + horizon),
  [
    Il campione incognito viene bruciato in corrente di ossigeno puro (#ch("O2")) all'interno di un forno. I gas prodotti attraversano in sequenza due camere di assorbimento selettivo:
    - *Assorbitore di #ch("H2O"):* trattiene il vapore acqueo prodotto, convertendo tutto l'idrogeno del campione iniziale.
    - *Assorbitore di #ch("CO2"):* trattiene l'anidride carbonica prodotta, convertendo tutto il carbonio del campione iniziale.
    
    Dall'incremento di massa dei due assorbitori si ricavano le moli (e le masse) di #ch("C") e #ch("H") nel campione di partenza; se il composto contiene un terzo elemento (es. #ch("O") o #ch("Cl")), la sua massa si ottiene per differenza rispetto alla massa iniziale del campione.
  ],
  [
    #canvas(length: 0.78cm, {
      import draw: *
      // Forno
      rect((0, 0), (3.2, 2.2), fill: rgb(235, 210, 210), stroke: 1.2pt + rgb(140, 50, 50))
      content((1.6, 2.45), text(size: 8pt, weight: "bold")[Forno])
      // Camera di combustione interna e navicella campione
      rect((0.3, 0.4), (2.9, 1.6), fill: rgb(250, 230, 230), stroke: 0.6pt + gray)
      line((1.1, 0.4), (2.1, 0.4), (1.9, 0.8), (1.3, 0.8), close: true, fill: rgb(180, 80, 80), stroke: none)
      line((1.6, 0.6), (1.2, -0.5), stroke: 0.5pt)
      content((1.2, -0.8), text(size: 7pt)[Campione (#ch("C"), #ch("H"), altri)])

      // Ingresso O2
      line((-1.4, 1.0), (0.3, 1.0), mark: (end: ">"), stroke: 1.5pt + red)
      content((-0.6, 1.45), text(size: 7.5pt)[Corrente di #ch("O2")])

      // Tubo collegamento 1
      line((2.9, 1.0), (3.7, 1.0), mark: (end: ">"), stroke: 1.2pt + red)

      // Assorbitore H2O
      rect((3.7, 0.3), (5.5, 1.7), radius: 0.2, fill: rgb(215, 225, 190), stroke: 1pt + rgb(100, 120, 60))
      content((4.6, 1.0), text(size: 7.5pt)[#ch("H2O")])
      content((4.6, -0.05), text(size: 7pt)[Assorbitore #ch("H2O")])

      // Tubo collegamento 2
      line((5.5, 1.0), (6.2, 1.0), mark: (end: ">"), stroke: 1.2pt + red)

      // Assorbitore CO2
      rect((6.2, 0.3), (8.0, 1.7), radius: 0.2, fill: rgb(225, 215, 185), stroke: 1pt + rgb(130, 110, 60))
      content((7.1, 1.0), text(size: 7.5pt)[#ch("CO2")])
      content((7.1, -0.05), text(size: 7pt)[Assorbitore #ch("CO2")])

      // Uscita gas non assorbiti
      line((8.0, 1.0), (9.0, 1.0), mark: (end: ">"), stroke: 1pt + gray)
      content((8.6, 0.4), text(size: 6.5pt)[Altre sostanze\ non assorbite])
    })
  ]
)
#v(0.5em)

#block(fill: luma(245), inset: 10pt, radius: 4pt, width: 100%)[
  *Esempio svolto — Analisi per combustione:* $1.000 "g"$ di vitamina C ($"MM" = 176.12 "g" dot "mol"^(-1)$) viene bruciato e si ottiene un aumento di $1.50 "g"$ dell'assorbitore di #ch("CO2") e di $0.410 "g"$ dell'assorbitore di #ch("H2O"). Determinare la formula molecolare.
  1. Calcolo delle moli di #ch("CO2") e #ch("H2O") e relazione stechiometrica con le moli di #ch("C") ($a=1$) e #ch("H") ($a=2$):
     $ n_(ch("CO2")) = 1.50 / 44.01 = 3.40 times 10^(-2) "mol" = n_(ch("C")) $
     $ n_(ch("H2O")) = 0.410 / 18.02 = 2.28 times 10^(-2) "mol" ==> n_(ch("H")) = 2 dot n_(ch("H2O")) = 4.55 times 10^(-2) "mol" $
  2. Calcolo delle masse di #ch("C") e #ch("H") per ricavare per differenza la massa di ossigeno presente nel campione da $1.000 "g"$:
     $ m_(ch("C")) = 3.40 times 10^(-2) "mol" dot 12.01 "g" dot "mol"^(-1) = 0.408 "g" $
     $ m_(ch("H")) = 4.55 times 10^(-2) "mol" dot 1.01 "g" dot "mol"^(-1) = 4.60 times 10^(-2) "g" $
     $ m_(ch("O")) = m_"tot" - m_(ch("C")) - m_(ch("H")) = 1.000 - 0.408 - 4.60 times 10^(-2) = 0.546 "g" $
  3. Conversione della massa di ossigeno in moli e calcolo dei pedici della formula minima:
     $ n_(ch("O")) = 0.546 / 16.00 = 3.41 times 10^(-2) "mol" $
     $ "Pedice"_(ch("C")) = (3.40 times 10^(-2)) / (3.40 times 10^(-2)) = 1, quad "Pedice"_(ch("H")) = (4.55 times 10^(-2)) / (3.40 times 10^(-2)) = 1.34, quad "Pedice"_(ch("O")) = (3.41 times 10^(-2)) / (3.40 times 10^(-2)) = 1 $
  4. Poiché $1.34 approx 4/3$, si moltiplicano tutti i pedici per $3$, ottenendo la formula minima #ch("C3H4O3"), per la quale $"MM" = 88.07 "g" dot "mol"^(-1)$.
  5. Essendo $"MM"_"vitamina C" = 176.12 "g" dot "mol"^(-1)$ (il doppio di $88.07 "g" dot "mol"^(-1)$), si raddoppia la formula minima:
     $ ==> "Formula molecolare:" thin #ch("C6H8O6") $
]

ES. 3.5 $0.250 "g"$ di un composto incognito ($"MM" = 149.99 "g" dot "mol"^(-1)$) a base di carbonio, idrogeno e cloro formano, dopo combustione, $0.451 "g"$ di #ch("CO2") e $0.0617 "g"$ di #ch("H2O"). Determinare la formula molecolare. $[#ch("C6H4Cl2")]$

== Formule chimiche e strutture delle molecole

- Composti chimicamente diversi possono condividere la *stessa formula minima* (avendo identica composizione percentuale in massa).
- Anche la *formula molecolare*, pur indicando il numero effettivo di atomi di ciascuna specie, non individua univocamente un composto: gli stessi atomi possono infatti legarsi secondo diverse disposizioni spaziali, ossia con diverse *formule di struttura* (isomeri). Soltanto conoscendo la struttura molecolare (posizioni relative degli atomi, distanze e angoli di legame) è possibile prevedere il comportamento chimico-fisico della sostanza.

#v(0.3em)
#align(center)[
  *Tabella 1:* Alcuni composti con formula empirica #ch("CH2O") (composizione in massa: $40.0 %$ #ch("C"), $6.71 %$ #ch("H"), $53.3 %$ #ch("O")).
  #table(
    columns: (auto, auto, auto, auto, 1fr),
    align: (left, center, center, right, left),
    stroke: 0.5pt + gray,
    inset: 5pt,
    [*Nome*], [*Formula molecolare*], [*Multiplo intero*], [*$"MM"$ ($"g/mol"$)*], [*Impiego o funzione*],
    [Formaldeide], [#ch("CH2O")], [$1$], [$30.03$], [Disinfettante; conservante di preparati biologici],
    [Acido acetico], [#ch("C2H4O2")], [$2$], [$60.05$], [Polimeri acetati; aceto (soluzione al $5 %$)],
    [Acido lattico], [#ch("C3H6O3")], [$3$], [$90.08$], [Causa l'inacidimento del latte; si forma nei muscoli durante l'esercizio fisico],
    [Eritrosio], [#ch("C4H8O4")], [$4$], [$120.10$], [Si forma durante il metabolismo degli zuccheri],
    [Ribosio], [#ch("C5H10O5")], [$5$], [$150.13$], [Componente di molti acidi nucleici e della vitamina $"B"_2$],
    [Glucosio], [#ch("C6H12O6")], [$6$], [$180.16$], [Importante nutriente per l'apporto di energia alle cellule],
  )
]

#v(0.3em)
#align(center)[
  *Tabella 2:* Confronto tra due composti con la stessa formula molecolare #ch("C2H6O") (isomeri di struttura).
  #table(
    columns: (1.2fr, 1.4fr, 1.4fr),
    align: (left + horizon, center + horizon, center + horizon),
    stroke: 0.5pt + gray,
    inset: 5pt,
    [*Proprietà*], [*Etanolo*], [*Dimetiletere*],
    [$"MM"$ ($"g/mol"$)], [$46.07$], [$46.07$],
    [Colore], [Incolore], [Incolore],
    [Temperatura di fusione], [$-117 degree "C"$], [$-138.5 degree "C"$],
    [Temperatura di ebollizione], [$78.5 degree "C"$], [$-25 degree "C"$],
    [Densità (a $20 degree "C"$)], [$0.789 "g/mL"$ (liquido)], [$0.00195 "g/mL"$ (gas)],
    [Impiego], [Inebriante nelle bevande alcoliche], [Nella refrigerazione],
    [Formula di struttura],
    [
      #canvas(length: 0.55cm, {
        import draw: *
        content((0,0), [#ch("C")])
        content((1.2,0), [#ch("C")])
        content((2.4,0), [#ch("O")])
        content((3.6,0), [#ch("H")])
        content((-1.2,0), [#ch("H")])
        content((0,1.1), [#ch("H")])
        content((0,-1.1), [#ch("H")])
        content((1.2,1.1), [#ch("H")])
        content((1.2,-1.1), [#ch("H")])
        line((-0.8,0), (-0.3,0))
        line((0.3,0), (0.9,0))
        line((1.5,0), (2.1,0))
        line((2.7,0), (3.3,0))
        line((0,0.35), (0,0.75))
        line((0,-0.35), (0,-0.75))
        line((1.2,0.35), (1.2,0.75))
        line((1.2,-0.35), (1.2,-0.75))
      })
    ],
    [
      #canvas(length: 0.55cm, {
        import draw: *
        content((0,0), [#ch("C")])
        content((1.2,0), [#ch("O")])
        content((2.4,0), [#ch("C")])
        content((-1.2,0), [#ch("H")])
        content((3.6,0), [#ch("H")])
        content((0,1.1), [#ch("H")])
        content((0,-1.1), [#ch("H")])
        content((2.4,1.1), [#ch("H")])
        content((2.4,-1.1), [#ch("H")])
        line((-0.8,0), (-0.3,0))
        line((0.3,0), (0.9,0))
        line((1.5,0), (2.1,0))
        line((2.7,0), (3.3,0))
        line((0,0.35), (0,0.75))
        line((0,-0.35), (0,-0.75))
        line((2.4,0.35), (2.4,0.75))
        line((2.4,-0.35), (2.4,-0.75))
      })
    ]
  )
]

= Scrittura e Bilanciamento di Equazioni Chimiche

Ragionare in termini di moli consente di esprimere direttamente i rapporti quantitativi tra le specie che partecipano a una reazione chimica (non deducibili dal semplice confronto tra le masse).
Un'*equazione chimica* è un enunciato in formule che indica le identità e le quantità relative delle sostanze coinvolte in una trasformazione chimica:
- *Primo membro (sinistra):* riporta i *reagenti* (sostanze presenti prima della trasformazione).
- *Secondo membro (destra):* riporta i *prodotti* (sostanze ottenute dopo la trasformazione).
- *Condizione di bilanciamento:* per la legge di conservazione della massa, nei due membri dell'equazione deve comparire esattamente lo stesso numero di atomi di ciascuna specie chimica.

#align(center)[
  #table(
    columns: (auto, auto, auto, auto, auto),
    align: center + horizon,
    stroke: none,
    inset: 6pt,
    [#rect(fill: rgb(210, 230, 235), inset: 6pt)[$1 "mol"$ #ch("H2")\ $2.016 "g"$]], [$+$],
    [#rect(fill: rgb(225, 230, 210), inset: 6pt)[$1 "mol"$ #ch("F2")\ $38.00 "g"$]], [$arrow.r$],
    [#rect(fill: rgb(210, 235, 215), inset: 6pt)[$2 "mol"$ #ch("HF")\ $40.02 "g"$]],
    [$arrow.b$ _diviso $N_A$_], [], [$arrow.b$ _diviso $N_A$_], [], [$arrow.b$ _diviso $N_A$_],
    [$1$ molecola #ch("H2")\ $2.016 "u"$], [$+$], [$1$ molecola #ch("F2")\ $38.00 "u"$], [$arrow.r$], [$2$ molecole #ch("HF")\ $40.02 "u"$],
    [#ch("H2(g)")], [$+$], [#ch("F2(g)")], [$arrow.r$], [#ch("2 HF(g)")]
  )
]

== Procedimento di bilanciamento

Si consideri come esempio la reazione tra magnesio e ossigeno per produrre ossido di magnesio:
1. *Traduzione dell'enunciato:* si scrivono le formule dei reagenti a primo membro e dei prodotti a secondo membro:
   $ ch("Mg + O2 -> MgO") $
2. *Bilanciamento degli atomi:* si antepone ad ogni formula un *coefficiente stechiometrico* (moltiplicatore di tutti gli atomi della formula a cui è anteposto) per uguagliare gli atomi di ciascuna specie nei due membri. Si bilanciano per primi gli atomi diversi da #ch("H") e #ch("O"), lasciando questi ultimi come verifica finale:
   $ ch("1 Mg + O2 -> 1 MgO") quad ==> quad ch("1 Mg + 1/2 O2 -> 1 MgO") $
3. *Aggiustamento dei coefficienti:* i coefficienti devono essere numeri interi minimi (non ulteriormente semplificabili). Si moltiplica l'intera equazione per $2$ e si omette il coefficiente $1$ nella forma finale:
   $ ch("2 Mg + 1 O2 -> 2 MgO") quad ==> quad ch("2 Mg + O2 -> 2 MgO") $
4. *Specificazione degli stati di aggregazione:* laddove richiesto, si indica tra parentesi lo stato fisico di ciascuna specie: solido $(s)$, liquido $(l)$, gas $(g)$, soluzione acquosa $(a q)$:
   $ ch("2 Mg(s) + O2(g) -> 2 MgO(s)") $

*Regole fondamentali sul bilanciamento:*
- I coefficienti stechiometrici si riferiscono sia a singole entità chimiche (molecole/unità formula), sia a moli di entità chimiche.
- Un coefficiente stechiometrico moltiplica tutti gli atomi nella formula (es. $2 #ch("Ca(NO3)2")$ corrisponde a $2$ atomi di #ch("Ca"), $4$ di #ch("N") e $12$ di #ch("O")).
- Nel bilanciamento *non* si possono mai modificare i pedici delle formule chimiche, né aggiungere altri reagenti o prodotti (ciò altererebbe la natura chimica della reazione).
- La forma corretta di un'equazione bilanciata prevede sempre coefficienti interi *non semplificabili tra loro*.

ES. 3.6 Bilanciare la reazione $ch("C8H18 + O2 -> CO2 + H2O")$. $[2 / 25 / 16 / 18]$

= Calcolo della Quantità di Reagenti e Prodotti

In un'equazione chimica bilanciata, i coefficienti stechiometrici definiscono il *rapporto molare* di reazione tra tutte le sostanze coinvolte. Conoscendo le moli di una specie, è quindi possibile determinare le moli di qualsiasi altra specie partecipante.

#align(center)[
  *Tabella 3:* Informazioni quantitative contenute nell'equazione bilanciata della combustione del propano.
  #table(
    columns: (auto, 1fr, auto, 1fr),
    align: (left, center, center, center),
    stroke: 0.5pt + gray,
    inset: 5pt,
    [*Livello di lettura*], [*Reagenti:* #ch("C3H8(g) + 5 O2(g)")], [$arrow.r$], [*Prodotti:* #ch("3 CO2(g) + 4 H2O(g)")],
    [Molecole], [$1$ molecola #ch("C3H8") $+$ $5$ molecole #ch("O2")], [$arrow.r$], [$3$ molecole #ch("CO2") $+$ $4$ molecole #ch("H2O")],
    [Quantità ($"mol"$)], [$1 "mol"$ #ch("C3H8") $+$ $5 "mol"$ #ch("O2")], [$arrow.r$], [$3 "mol"$ #ch("CO2") $+$ $4 "mol"$ #ch("H2O")],
    [Massa ($"u"$)], [$44.09 "u"$ #ch("C3H8") $+$ $160.00 "u"$ #ch("O2")], [$arrow.r$], [$132.03 "u"$ #ch("CO2") $+$ $72.06 "u"$ #ch("H2O")],
    [Massa ($"g"$)], [$44.09 "g"$ #ch("C3H8") $+$ $160.00 "g"$ #ch("O2")], [$arrow.r$], [$132.03 "g"$ #ch("CO2") $+$ $72.06 "g"$ #ch("H2O")],
    [Massa totale ($"g"$)], [$204.09 "g"$], [$=$], [$204.09 "g"$]
  )
]

Un generico *problema stechiometrico* si risolve attraverso quattro passaggi sequenziali:
+ Si scrive e si bilancia correttamente l'equazione chimica.
+ Si converte la massa della sostanza nota (fornita dal problema) in numero di moli ($n = m / "MM"$).
+ Si utilizzano i coefficienti stechiometrici per calcolare le moli della sostanza incognita a partire dalle moli della sostanza nota.
+ Si convertono le moli della sostanza incognita nella corrispondente massa in grammi ($m = n dot "MM"$).

#block(fill: luma(245), inset: 10pt, radius: 4pt, width: 100%)[
  *Esempio svolto — Stechiometria di reazione:* Il solfuro rameoso reagisce con l'ossigeno per produrre ossido rameoso e diossido di zolfo. Calcolare la massa di ossigeno necessaria per reagire con $1.59 "kg"$ di solfuro rameoso.
  1. Scrittura e bilanciamento della reazione:
     $ ch("2 Cu2S + 3 O2 -> 2 Cu2O + 2 SO2") $
  2. Calcolo delle moli di #ch("Cu2S") ($m = 1.59 times 10^3 "g"$, $"MM"_(ch("Cu2S")) = 159.14 "g" dot "mol"^(-1)$):
     $ n_(ch("Cu2S")) = (1.59 times 10^3 "g") / (159.14 "g" dot "mol"^(-1)) = 9.99 "mol" $
  3. Rapporto stechiometrico tra #ch("O2") (coeff. $3$) e #ch("Cu2S") (coeff. $2$):
     $ n_(ch("O2")) = 3 / 2 dot n_(ch("Cu2S")) = 3 / 2 dot 9.99 "mol" = 15.0 "mol" $
  4. Calcolo della massa di #ch("O2") ($"MM"_(ch("O2")) = 32.00 "g" dot "mol"^(-1)$):
     $ m_(ch("O2")) = n_(ch("O2")) dot "MM"_(ch("O2")) = 15.0 "mol" dot 32.00 "g" dot "mol"^(-1) = 480 "g" $
]

*ES. 3.7)* L'ossido ferrico reagisce con l'alluminio per produrre ossido di alluminio e ferro. Calcolare la massa di ferro prodotta a partire da $135 "g"$ di alluminio. $[279 "g"]$

= Reagente Limitante

Quando in un sistema di reazione vengono mescolate quantità arbitrarie di due o più reagenti, raramente essi si trovano nell'esatto rapporto stechiometrico. Si definisce *reagente limitante* il reagente che si esaurisce per primo, determinando l'arresto della reazione e fissando la quantità massima di prodotti che si possono formare.

- *Criterio di individuazione:* il reagente limitante *non* è necessariamente quello presente col minor numero assoluto di moli, ma quello che presenta il minor rapporto tra le moli disponibili $n_i$ e il proprio coefficiente stechiometrico $nu_i$:
  $ "Reagente limitante" <==> min ( n_i / nu_i ) $
  Una volta identificato il reagente limitante, le sue moli iniziali vengono utilizzate nei rapporti stechiometrici per calcolare le quantità dei prodotti formati.

#block(fill: luma(245), inset: 10pt, radius: 4pt, width: 100%)[
  *Esempio svolto — Reagente limitante:* $6.4 "mol"$ di tetraidruro di diidrogeno (idrazina, #ch("N2H4")) reagiscono con $5.2 "mol"$ di tetraossido di diazoto (#ch("N2O4")), producendo azoto e acqua. Calcolare le moli di azoto prodotte.
  1. Equazione chimica bilanciata:
     $ ch("2 N2H4 + N2O4 -> 3 N2 + 4 H2O") $
  2. Individuazione del reagente limitante dividendo le moli iniziali per i rispettivi coefficienti stechiometrici:
     $ "Per" ch("N2H4"): quad 6.4 / 2 = 3.2 "mol" wide | wide "Per" ch("N2O4"): quad 5.2 / 1 = 5.2 "mol" $
     Poiché $3.2 < 5.2$, #ch("N2H4") è il *reagente limitante*.
  3. Calcolo delle moli di #ch("N2") prodotte a partire dalle moli iniziali del reagente limitante (#ch("N2H4")):
     $ n_(ch("N2")) = 3 / 2 dot n_(ch("N2H4")) = 3 / 2 dot 6.4 "mol" = 9.6 "mol" $
]

*ES. 3.8)* Calcolare la massa di solfuro di alluminio preparabile a partire da $10.0 "g"$ di alluminio e $15.0 "g"$ di zolfo atomico. $[27.8 "g"]$

= Resa di Reazione

#grid(
  columns: (1.3fr, 0.7fr),
  column-gutter: 1.5em,
  align: (left + horizon, center + horizon),
  [
    - *Resa teorica:* quantità massima di prodotto ottenibile assumendo che il $100 %$ del reagente limitante si converta in prodotto secondo i rapporti stechiometrici dell'equazione bilanciata, con recupero e purificazione perfetti.
    - *Resa reale (o effettiva):* quantità di prodotto che si ottiene effettivamente al termine dell'operazione sperimentale.
    
    La resa reale è sempre inferiore alla resa teorica per tre ragioni principali:
    1. *Reazioni collaterali:* i reagenti possono seguire cammini reattivi secondari formando sottoprodotti indesiderati.
    2. *Equilibrio chimico:* molte reazioni si arrestano prima del completamento, lasciando non reagita una frazione di reagente limitante.
    3. *Perdite di recupero:* parte del prodotto principale viene inevitabilmente persa durante i processi fisici di separazione e purificazione dalla miscela di reazione.
  ],
  [
    #canvas(length: 0.8cm, {
      import draw: *
      content((0, 1.5), text(size: 8.5pt, weight: "bold")[#ch("A + B")\ #(text(size: 7.5pt, weight: "regular")[(reagenti)])])
      // Freccia principale
      line((0.9, 1.5), (3.4, 1.5), stroke: 5pt + rgb(180, 140, 200))
      line((3.3, 1.5), (3.8, 1.5), mark: (end: ">"), stroke: 3pt + rgb(220, 180, 60))
      content((4.7, 1.5), text(size: 8pt)[*#ch("C")*\ (prodotto\ principale)])
      // Diramazione collaterale
      bezier((2.0, 1.4), (3.2, 0.3), (2.5, 1.4), (2.7, 0.3), stroke: 2.5pt + rgb(110, 170, 130), mark: (end: ">"))
      content((3.4, -0.2), text(size: 8pt)[*#ch("D")*\ (prodotto collaterale)])
    })
  ]
)

La *resa di una reazione* ($eta$) è espressa in percentuale come rapporto tra resa reale e resa teorica (valutate entrambe in massa oppure entrambe in moli):
$ eta = "resa reale" / "resa teorica" dot 100 $

#block(fill: luma(245), inset: 10pt, radius: 4pt, width: 100%)[
  *Esempio svolto — Calcolo della resa di reazione:* $100.0 "kg"$ di silice (diossido di silicio, #ch("SiO2")) reagiscono con carbonio in eccesso per produrre $51.4 "kg"$ di carburo di silicio (#ch("SiC")) e monossido di carbonio (#ch("CO")). Calcolare la resa di reazione.
  1. Equazione bilanciata:
     $ ch("SiO2 + 3 C -> SiC + 2 CO") $
  2. Calcolo delle moli di reagente limitante (#ch("SiO2"), $"MM" = 60.09 "g" dot "mol"^(-1)$) e delle moli teoriche di #ch("SiC") (rapporto $1:1$):
     $ n_(ch("SiO2")) = (100.0 times 10^3 "g") / (60.09 "g" dot "mol"^(-1)) = 1.66 times 10^3 "mol" ==> n_(ch("SiC"), "teoriche") = 1.66 times 10^3 "mol" $
  3. Calcolo delle moli reali di #ch("SiC") effettivamente ottenute ($m_"reale" = 51.4 times 10^3 "g"$, $"MM"_(ch("SiC")) = 40.10 "g" dot "mol"^(-1)$):
     $ n_(ch("SiC"), "reali") = (51.4 times 10^3 "g") / (40.10 "g" dot "mol"^(-1)) = 1.28 times 10^3 "mol" $
  4. Determinazione della resa percentuale $eta$:
     $ eta = "resa reale" / "resa teorica" dot 100 = (1.28 times 10^3 "mol") / (1.66 times 10^3 "mol") dot 100 = 77.0 % $
]

*ES. 3.9)* Il carbonato di calcio reagisce con acido cloridrico per formare cloruro di calcio, acqua e diossido di carbonio. Calcolare la resa della reazione sapendo che a partire da $10.0 "g"$ di carbonato di calcio si ottengono $3.65 "g"$ di anidride carbonica. $[83.0 %]$