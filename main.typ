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
= *Cuscinetti a corpi volventi *

== Introduzione e Funzione dei Cuscinetti
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Un elemento fondamentale nella trasmissione di potenza e nel supporto degli alberi di trasmissione è il cuscinetto a corpi volventi. A differenza di altri organi di macchine che vengono progettati ad hoc per specifiche applicazioni, i cuscinetti sono prodotti commerciali standardizzati. Vengono realizzati dai costruttori in diverse taglie e architetture, e il progettista li seleziona direttamente da catalogo in base ai parametri di progetto, ai calcoli di durata e alle prestazioni richieste.

],[
#image("Albero e cuscinetti.png",width:80%)
])
Lo scopo principale del cuscinetto è quello di permettere la rotazione relativa di un componente (generalmente un albero, ovvero il rotore) rispetto ad un altro (l'alloggiamento o statore), evitando l'attrito di strisciamento. Nelle bronzine, ad esempio, l'interposizione di un materiale soggetto a frizione genera una notevole dissipazione di energia e un'usura rapida. Nei cuscinetti volventi, invece, il moto relativo avviene tramite il libero rotolamento di appositi corpi volventi all'interno di piste dedicate. Questa condizione offre una resistenza alla rotazione nettamente inferiore, paragonabile concettualmente all'attrito di puro rotolamento che si instaura tra lo pneumatico di un autoveicolo e il manto stradale.
=== Componenti e Geometria
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, right + horizon),[Un cuscinetto a corpi volventi è un sistema composto da elementi ben precisi:
- #strong[Anello interno:] è solitamente solidale alla parte in rotazione (l'albero). La superficie rivolta verso l'esterno funge da pista di rotolamento.
- #strong[Anello esterno:] è generalmente solidale alla parte fissa (l'alloggiamento o statore). La sua superficie interna costituisce la pista esterna.
- #strong[Corpi volventi:] possono essere sfere, rulli o rullini. Costituiscono una o più corone e hanno il compito di trasmettere le sollecitazioni meccaniche (forze e momenti) rotolando sulle piste.
],[
//#image("sezione cuscinetto.png")
])
- #strong[Gabbia rotante:] è una struttura che ha la funzione fondamentale di mantenere i corpi volventi equidistanziati lungo la direzione circonferenziale. Evita che i corpi volventi entrino in contatto reciproco sfregando tra loro e garantisce che il carico si distribuisca uniformemente, impedendo l'addensamento degli elementi in una singola porzione della circonferenza. La gabbia è solidale al set di corpi volventi e ruota con essi.
- #strong[Schermi e Guarnizioni:] elementi laterali che servono a trattenere il lubrificante (olio o, più frequentemente, grasso) nella regione di contatto e a proteggere i meccanismi interni dalla contaminazione di sporco e detriti provenienti dall'ambiente di lavoro.
Le superfici di contatto tra piste e corpi volventi possiedono curvature specifiche. La curvatura della pista avvolge il corpo volvente (soprattutto nel caso delle sfere) ma presenta un raggio leggermente superiore rispetto a quello del corpo volvente stesso. Le superfici non aderiscono completamente in tutti i punti, sebbene la differenza tra i raggi di curvatura sia contenuta.

=== Fasi di Assemblaggio
Il processo di assemblaggio di un classico cuscinetto radiale a sfere sfrutta la deformabilità elastica dei materiali. Inizialmente, l'anello interno viene posizionato concentricamente all'interno dell'anello esterno. I corpi volventi vengono inseriti uno ad uno nello spazio compreso tra le due piste e raggruppati da un solo lato della circonferenza. 
Per inserire le ultime sfere e chiudere il sistema, si applica una forza che deforma e ovalizza moderatamente l'anello esterno, senza oltrepassare il limite elastico del materiale. Questa deformazione crea il gioco necessario per permettere all'anello interno di sfilare leggermente e accogliere i corpi restanti. Successivamente, le sfere vengono distribuite in modo uniforme lungo l'intera circonferenza. Infine, le due semiparti della gabbia vengono accostate dai lati opposti e vincolate tra loro (ad esempio tramite rivettatura), imprigionando le sfere e fissandone la distanza relativa.

== Criteri di Scelta e Tipologie di Carico
La scelta del tipo di cuscinetto è dettata da fattori spaziali, dalle velocità massime di rotazione e, soprattutto, dalla direzione del carico applicato. I carichi si dividono in:
- #strong[Radiale:] forza diretta perpendicolarmente all'asse di rotazione.
- #strong[Assiale:] forza diretta parallelamente all'asse di rotazione.
- #strong[Combinato:] azione simultanea di forze radiali e assiali.
- #strong[Momenti flettenti:] sollecitazioni che tendono a far ruotare e disassare l'anello interno rispetto a quello esterno (ribaltamento).

=== Cuscinetti per Carichi Radiali
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Il cuscinetto radiale a sfere è simmetrico rispetto al piano diametrale e nasce per sopportare spinte radiali. Tuttavia, grazie alla curvatura avvolgente delle piste, è in grado di gestire carichi assiali moderati. Se, ad esempio, l'albero subisce una dilatazione termica, si genera una spinta laterale. La sfera viene premuta contro un lato della pista interna e trasferisce la pressione sul lato opposto della pista esterna, creando una reazione inclinata senza smontare il sistema, purché il carico resti moderato.

],[

#image("radiale.png")
])
Per carichi radiali molto elevati, si utilizzano i #strong[cuscinetti a rulli cilindrici]. In questo caso il contatto è di tipo lineare (lungo una generatrice del cilindro), permettendo di distribuire pressioni molto superiori rispetto al contatto puntuale della sfera. Il comportamento assiale di questi cuscinetti dipende dai bordini degli anelli:
- Se l'anello esterno possiede i bordini e l'anello interno ne è privo, il cuscinetto permette lo scorrimento assiale relativo. Questo è utilissimo per assecondare le dilatazioni termiche dell'albero senza generare tensioni assiali parassite.
- Se entrambi gli anelli presentano bordini, il rullo è vincolato e il cuscinetto non consente spostamenti assiali liberi.

I #strong[cuscinetti a rullini] impiegano corpi volventi cilindrici di piccolo diametro ma notevole lunghezza. Si utilizzano quando lo spazio radiale a disposizione è estremamente ridotto (alberi di grande diametro in alloggiamenti stretti) o quando si opera a velocità tali da rendere problematica la forza centrifuga delle masse volventi; il rullino, essendo di massa ridotta, mitiga questo fenomeno.

I #strong[cuscinetti a rulli orientabili a botte] presentano rulli con un profilo leggermente bombato e una pista dell'anello esterno sferica. Questa geometria garantisce un'elevata capacità di carico radiale (grazie all'estesa linea di contatto) e permette un autoadattamento in presenza di momenti flettenti o errori di allineamento dell'albero, consentendo all'anello interno di basculare senza sovraccaricare i bordi dei rulli.
#pagebreak()
=== Cuscinetti per Carichi Assiali
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Quando l'azione è unicamente assiale, l'architettura deve essere disposta perpendicolarmente all'asse del rotore. I due anelli sono montati in sequenza lungo la linea d'asse, con i corpi volventi interposti.
Se si posiziona un anello solidale al rotore e l'altro solidale allo statore, il sistema è in grado di sviluppare una reazione vincolare in un'unica direzione. ],[#image("assiale.png")])
Per gestire carichi assiali bidirezionali si ricorre a un sistema multiplo a tre anelli: un anello centrale collegato forzatamente all'albero e due anelli laterali (superiore e inferiore) vincolati allo statore. In base al verso di applicazione del carico, l'anello centrale andrà a comprimere la corona di sfere superiore o quella inferiore.

=== Cuscinetti per Carichi Combinati (Obliqui)
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Per sopportare carichi cospicui che presentano simultaneamente componenti assiali e radiali, si usano i cuscinetti obliqui. Le piste sono sagomate in modo asimmetrico: su un lato presentano uno spallamento pronunciato, mentre sull'altro risultano più libere. La retta d'azione della forza di contatto tra sfere e piste risulta perciò inclinata rispetto al piano radiale.],[
#image("obliqui.png")
])
Data la loro geometria, questi cuscinetti reagiscono al carico assiale in un solo verso; un carico opposto comporterebbe lo sfilamento dell'anello privo di bordino di ritegno.
Per ottenere una reazione bidirezionale e bloccare eventuali momenti di ribaltamento, si ricorre a soluzioni a doppia corona di sfere (integrate nello stesso anello) oppure al montaggio in coppia di due cuscinetti obliqui singoli (configurazioni a "O" o ad "X").
=== Montaggio e Precarico
I cuscinetti obliqui lavorano al meglio quando sottoposti a un precarico assiale. Questo precarico forza gli anelli a chiudersi sui corpi volventi, annullando i giochi interni, distribuendo uniformemente le tensioni sulle superfici di contatto e garantendo la massima precisione meccanica della retta di azione inclinata.
Durante l'accoppiamento dei cuscinetti, il calibramento del precarico viene effettuato serrando oppurtunatamente delle ghiere filettate, le quali spingono in direzione assiale. 
Esiste una regola aurea nel montaggio (e smontaggio) dei cuscinetti: la forza di piantaggio (tramite martello e distanziali o presse) deve essere applicata esclusivamente sull'anello che va accoppiato con interferenza. Ad esempio, se si monta il cuscinetto nell'alloggiamento, si batte sull'anello esterno; se si pianta sull'albero, si batte sull'anello interno. Scaricare la forza di montaggio passando attraverso i corpi volventi genera la punzonatura delle piste, innescando precocemente fenomeni di fatica e rottura.

== Cuscinetti a Corpi Volventi - Danneggiamento
Per effettuare il calcolo di durata dei cuscinetti a corpi volventi è fondamentale analizzare le forme di cedimento e danneggiamento a cui vanno incontro durante l'esercizio. Comprendere queste fenomenologie permette di calcolare la durata in funzione dei carichi dinamici e di verificare il coefficiente di sicurezza statico.
=== Cedimento per fatica
Il cedimento principale e più tipico nei cuscinetti è il cedimento per fatica (Rolling Contact Fatigue). I corpi volventi e le piste, durante il funzionamento, sono soggetti a tensioni di contatto fortemente variabili nel tempo, poiché i punti di contatto cambiano costantemente al variare della posizione degli elementi.

Queste tensioni di contatto sono particolarmente attive nella zona subsuperficiale. L'affaticamento si manifesta con i seguenti passaggi:
- Si formano micro-cricche nel "sottopelle" delle piste (subsuperficie).
- Tali cricche propagano gradualmente verso l'esterno fino ad affiorare, causando il distacco e l'asportazione di piccole zolle di materiale dalla superficie. Questo fenomeno prende il nome di sfaldamento o #emph[flaking].
- Una volta che la regolarità della superficie è compromessa, il passaggio del corpo volvente sulla zona danneggiata provoca urti e sussulti. Ciò induce un'apprezzabile e anomala rumorosità del cuscinetto, sintomo di un incremento notevole delle vibrazioni.
- Il lubrificante, trovandosi in pressione durante il rotolamento, si insinua all'interno di queste cricche, agendo da cuneo idraulico e facilitando la rimozione di ulteriore materiale, originando il fenomeno dei crateri (#emph[pitting]).
- I detriti metallici asportati possono inserirsi nella zona di contatto tra corpi volventi e piste, portando a danni severi fino a provocare il grippaggio dei materiali.

La durata del cuscinetto, in definite condizioni di funzionamento, è definita e valutata proprio in termini di numero di giri al quale compaiono le prime cricche che affiorano in superficie. Quando la durata a fatica viene raggiunta o superata e si presentano questi sintomi, l'unico rimedio è sostituire l'intero cuscinetto, eventualmente installandone uno con una capacità di carico maggiore.

=== Cedimento per sovraccarico statico
#grid(
  columns: (1.2fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + top),[Un'altra forma di danneggiamento deriva da carichi eccessivi che agiscono quando il cuscinetto è fermo o in condizioni di bassissima velocità. Un sovraccarico statico elevato può essere dovuto a urti in esercizio, inceppamenti della linea di trasmissione, impuntamenti, carichi eccessivi allo spunto o semplicemente al peso eccessivo dell'albero in fase di montaggio. L'effetto principale di questo sovraccarico è un'indentazione o improntatura: i corpi volventi vengono premuti contro il materiale della pista causando deformazioni permanenti (plastiche), localizzate o distribuite.],[
#image("cedimento statico.png",width:55%)
])

 Tali deformazioni alterano la regolarità della geometria di rotolamento, provocando vibrazioni, rumorosità, maggiore attrito e una sensibile diminuzione della durata utile del componente.

Un minimo livello di deformazione è fisicamente inevitabile quando elementi elastici sono premuti tra loro, pertanto esiste una soglia di tolleranza. La deformazione plastica ammissibile è fissata a circa $1/10000$ della dimensione del corpo volvente. A titolo di esempio, per una sfera con diametro $D_w = 10 quad [m m]$, la deformazione plastica massima tollerata equivale a $1 quad [mu m]$.

#grid(
  columns: (1.2fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[L'analisi visiva delle piste permette di diagnosticare l'origine del sovraccarico:
- Se il sovraccarico è fortemente radiale e insistente in una specifica direzione, l'improntatura sull'anello statorico sarà più ampia e severa nella regione direttamente soggetta alla forza, disperdendosi gradualmente ai lati.
- Se si applicano carichi eccessivi e opposti lungo un diametro, il cuscinetto patisce un'ovalizzazione. I segni di cedimento e le impronte si concentreranno specularmente sui due lati opposti dello stesso diametro.],[
#image("sovraccarico.png", width:70%)
])

=== Cedimento per disallineamento e Cuscinetti Orientabili


#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[È molto frequente, specialmente su rotori lunghi (come nelle turbine idroelettriche), che i piani di appoggio dei supporti non siano perfettamente allineati e orizzontali. In altri casi, la snellezza dell'albero può comportare una linea elastica molto flessa. Questo genera errori di posizionamento, come il disassamento dei supporti o la flessione dell'albero stesso. Sotto l'azione di questi carichi, la rotazione (a flessione) relativa fra l'anello interno e l'anello esterno può superare il limite previsto dalla geometria del cuscinetto. La condizione di contatto si altera drasticamente: l'usura diventa asimmetrica e diagonale rispetto alle piste, si innescano rumorosità, sollecitazioni eccessive e si può arrivare allo "sgabbiamento", situazione in cui il cuscinetto perde spontaneamente la configurazione di assemblaggio.],[
#image("disassamento e flessione.png")
])

Per prevenire questo collasso, si impone una rigorosa verifica della rotazione flessionale degli alberi e, come rimedio costruttivo, l'utilizzo di cuscinetti orientabili, capaci di auto-adattarsi.

Le soluzioni geometriche per permettere l'orientamento compensano il momento di ribaltamento senza generare reazioni vincolari concentrate anomale. Esempi tipici includono:
- #strong[Cuscinetti a rulli a botte:] Hanno la superficie laterale bombata e operano in anelli con piste a superficie sferica. L'anello interno può ruotare rispetto a quello esterno, adattandosi alla deformata dell'albero pur garantendo un rotolamento corretto.
- #strong[Cuscinetti orientabili a doppia corona (sfere o rulli):] Simili ai precedenti, offrono un adattamento sferico complessivo.
- #strong[Cuscinetti assiali con piastra di orientabilità:] Utilizzano piste tradizionali e rullini che sfruttano direttamente la superficie dell'albero, ma appoggiano su anelli di contenimento o piastre di supporto sagomate sfericamente. Questo permette all'intero gruppo di ruotare e allinearsi alle condizioni di carico.


=== Usura sede/anello: Fretting Corrosion
L'usura delle superfici di contatto tra il cuscinetto e le sue sedi di montaggio (interfaccia albero-anello o sede-anello) rappresenta un difetto catastrofico. Questo fenomeno nasce quando il forzamento (interferenza) delle parti non è in grado di garantire un vincolamento stabile. Anche in presenza di interferenza nominale, l'azione di carichi elevati, forze centrifughe o variazioni di temperatura tra materiali dissimili può generare microscorrimenti relativi tra le superfici accoppiate. Questo continuo strisciamento microscopico, se combinato con la rugosità superficiale, provoca una vera e propria abrasione del materiale (#emph[fretting]). Se l'ambiente presenta agenti aggressivi, l'abrasione si aggrava dando origine a ruggine di contatto e degradazione chimico-meccanica estrema, portando al fenomeno completo noto come #emph[fretting corrosion]. Il danneggiamento si presenta sotto forma di superfici gravemente degradate, ampie usure scure e cricche diffuse sull'anello.


Per prevenire la #emph[fretting corrosion] è essenziale stabilire quale tra gli anelli debba avere l'interferenza più stretta (forzamento maggiore), analizzando la cinematica dei carichi:

1. #strong[Carico Rotante:] Si verifica quando il carico è fisso nello spazio ma l'anello ruota, oppure quando l'anello è fisso ma la direzione del carico ruota nel tempo. In questo scenario, tutti i punti dell'anello si trovano, a turno, sottoposti all'intensità massima del carico nel corso di una rotazione completa. Questa condizione sollecita fortemente lo scorrimento relativo dell'anello sulla sua sede. L'anello soggetto a carico rotante tende a ruotare sulla propria sede e necessita inderogabilmente di un'opportuna e garantita interferenza forte.
2. #strong[Carico Fisso:] Si verifica quando l'anello e il carico ruotano alla stessa velocità angolare o sono entrambi del tutto stazionari. Questa condizione non innesca particolari moti relativi all'interfaccia e risulta meno critica.
3. #strong[Direzione indeterminata:] Si presenta in configurazioni cinematiche incerte, ove il carico ha oscillazioni deboli ma prive di una rotazione completa; richiede cautela ingegneristica nella tolleranza dell'accoppiamento.

#strong[Esempi schematici di applicazione:]
- #emph[Assale fisso e ruota rotante:] (es. la ruota non motrice di un veicolo). Il peso del veicolo è un carico fisso verso il basso. L'anello interno è stazionario assieme all'assale, mentre l'anello esterno ruota solidale alla ruota. L'anello interno subisce il carico sempre nello stesso punto inferiore (carico fisso). L'anello esterno, ruotando sotto una forza stazionaria verticale, vede il carico spostarsi lungo tutta la sua circonferenza: è quindi l'anello esterno a essere soggetto a carico rotante e a necessitare dell'interferenza critica rispetto alla ruota.
- #emph[Assale rotante e supporto fisso:] (es. un albero di trasmissione supportato al telaio). Il carico (es. peso) è fisso verticalmente. L'anello esterno è bloccato nella sede statorica e sente il carico sempre nello stesso punto (carico fisso). L'anello interno gira con l'albero attraversando ciclicamente la zona di massima reazione del peso: è l'anello interno a subire il carico rotante e a dover essere forzato rigidamente sull'albero per evitare la #emph[fretting corrosion].

Il concetto per limitare questo danno si estende a tutta la meccanica (es. sistemi di connettori in microelettronica): qualora sia presente un'azione vibratoria o dinamica all'interfaccia, è necessario rendere sufficientemente flessibile l'elemento di vincolo in sé, affinché il sistema deformato segua le traslazioni o rotazioni senza originare scorrimento (attrito radente locale) all'interfaccia di contatto vera e propria.

== Cuscinetti a Corpi Volventi - Calcoli e prestazioni in esercizio
=== Calcolo della durata dei cuscinetti: Formula base (ISO)
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[L'analisi del comportamento del cuscinetto comporta l'utilizzo di curve di durata che correlano il carico applicato a un certo numero di cicli, espresso in milioni di cicli (indicato con $L$). Tali curve $S-N-P$ possono essere interpretate in analogia alla curva di Wöhler per lo studio a fatica. Assumendo che tali curve siano rette in una rappresentazione logaritmica (log-log) con inclinazione $p$, la curva presa in considerazione è solitamente la $B_10$, la quale garantisce un livello di affidabilità del 90%.],[
#image("Calcolo durata dei cuscinetti.png", width:70%)
])

La relazione teorica è definita dalla Formula base (ISO), che impone la costanza del prodotto tra il numero di cicli e il carico elevato a potenza:
$ P^p dot.op N = "cost" = C^p dot.op 10^6 $

Da cui si ricava la durata in milioni di cicli $L_10$:
$ L_10 = frac(N, 10^6) = ( frac(C, P) )^p $

Dove:
- $P$ è il carico dinamico equivalente.
- $C$ è il coefficiente di carico dinamico, ovvero il carico tollerato per $10^6$ cicli, fornito dai cataloghi.
- $p$ è un esponente legato alla tipologia di corpo volvente: vale $3$ per i cuscinetti a sfere e $10/3$ per i cuscinetti a rulli.

Se la velocità di rotazione $n$ (espressa in giri/min o rpm) è costante, la durata può essere espressa in ore di funzionamento $L_(10 h)$:
$ L_(10 h) = frac(10^6, 60 dot.op n) ( frac(C, P) )^p $

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[In applicazioni in cui il cuscinetto non compie rotazioni complete ma oscilla di un angolo $plus.minus gamma$ (in gradi), la durata viene determinata valutando le singole oscillazioni:
$ L_(10 "osc") = frac(180, 2 gamma) ( frac(C, P) )^p $],[#image("cerchio 2 gamma.png", width:60%)])

=== Durata di base corretta
La formula teorica di base non tiene conto delle reali condizioni operative del cuscinetto. Vengono pertanto introdotti dei fattori correttivi per calcolare la durata corretta $L_(n m)$:
$ L_(n m) = a_1 a_(x y z) ( frac(C, P) )^p $

Il fattore $a_1$ è il coefficiente correttivo per i livelli di affidabilità richiesti superiori al 90%. All'aumentare dell'affidabilità richiesta (es. 95%, 99%), la resistenza stimata per una popolazione di campioni diminuisce, riducendo di conseguenza la durata calcolata.

Il fattore $a_(x y z)$ (denominato $a_("SKF")$ o con altre sigle ISO a seconda del costruttore) tiene conto degli aspetti pratici del contatto tra corpi volventi e piste. Esso è funzione del limite di fatica del materiale ($P_u$), del rapporto di viscosità $k$ e del livello di contaminazione e pulizia dell'ambiente in cui opera il lubrificante ($eta_c$):
$ a_("SKF") = f( eta_c frac(P_u, P) ; k ) $

=== Viscosità e lubrificazione
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Il corretto comportamento del cuscinetto è fortemente vincolato alla lubrificazione. Si definisce in primo luogo una viscosità cinematica necessaria $nu_1$ (in $m m^2 / s$), dipendente dalla dimensione caratteristica del cuscinetto e dalla sua velocità di rotazione. Nei cuscinetti veloci si limita la viscosità per non generare un eccessivo sviluppo di calore a causa della resistenza viscosa, mentre nei cuscinetti lenti e maggiormente caricati si cerca una viscosità più alta per sostenere i carichi ed evitare la rottura del meato di lubrificante.],[#image("grafico viscosità necessaria.png", width:70%)])

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[
Si introduce poi la viscosità cinematica effettiva $nu$ (in $m m^2 / s$) dell'olio nelle reali condizioni di funzionamento, fortemente dipendente dalla temperatura di esercizio. Il rapporto tra la viscosità operativa e quella necessaria definisce il parametro $k$:
$ k = frac(nu, nu_1) $

Di norma si seleziona un lubrificante tale per cui si abbia $1 < k < 4$. Il valore di $k$ definisce fisicamente la natura del contatto nel meato:
- #strong[$k = 0.1$:] Condizione di meato esiguo in cui le asperità superficiali del corpo volvente e della pista entrano diffusamente in contatto solido. Si garantisce un'ottima stabilità e aderenza, ma la dissipazione energetica e l'usura superficiale risultano elevate.
- #strong[$k = 1$:] Condizione mista in cui le asperità entrano in contatto locale, ma la maggior parte della regione è riempita dal lubrificante che inizia ad esercitare un'azione di sostentamento in pressione.
- #strong[$k = 4$:] Condizione in cui le asperità sembrano non toccarsi e la pressione è trasferita esclusivamente dal meato fluido (il corpo volvente "flotta" sul letto del lubrificante). Questo riduce drasticamente l'usura e favorisce lo smaltimento del calore, ma introduce componenti non lineari di smorzamento fluido che possono rendere meno prevedibile la dinamica del sistema. In presenza di valori troppo elevati di $k$ si ha separazione completa, eccessivo attrito interno al fluido e forte sviluppo di calore.],[#image("altro grafico viscosità.png")])



=== Contaminazione e determinazione di $a_("SKF")$
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[L'influenza dell'ambiente e della pulizia del lubrificante è riassunta dal fattore $eta_c$. Per una condizione di massima pulizia (es. laboratorio), questo valore è unitario. Degradando le condizioni ambientali verso contaminazioni più pesanti, il fattore decresce; l'impatto è proporzionalmente più gravoso nei cuscinetti di dimensioni inferiori, dove lo spazio ristretto rende l'azione abrasiva del contaminante più severa. Il calcolo finale del coefficiente $a_("SKF")$ avviene tramite un apposito diagramma in cui le ascisse sono costituite dal parametro $eta_c frac(P_u, P)$, combinando l'effetto della pulizia e del carico rispetto al limite di fatica.],[])


=== Tipologie di lubrificante
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Per garantire affidabilità e continuità di esercizio, il cuscinetto necessita di una minima quantità di lubrificante; un quantitativo eccessivo altererebbe il meccanismo di contatto e ostacolerebbe la regolarità operativa. Il lubrificante, soggetto a usura, va periodicamente ripristinato (nel caso dei grassi) o filtrato (per gli oli), tranne nei casi di cuscinetti dotati di protezioni incorporate (schermati) pre-lubrificati a vita.

- #strong[Lubrificazione a grasso:] Particolarmente indicata per mantenere il sistema confinato. Trattiene gli agenti contaminanti e protegge da umidità e acqua. Ha uno spettro di temperature operative limitato tra una minima (LTL, oltre la quale vi è difficoltà di avviamento) e una massima (HTL, oltre la quale perde consistenza). Un eccesso di velocità produce un aumento termico severo del grasso.
- #strong[Lubrificazione a olio:] Indicata dove le alte velocità o l'ambiente precludono l'uso del grasso, oppure quando le parti adiacenti del carter (es. ingranaggi) richiedono già una lubrificazione ad olio. Si distingue in #emph[bagno d'olio] (immersione parziale dei corpi volventi nella coppa) o #emph[a ricircolo] (pompe e iniettori con filtrazione costante, ideali per asportare calore ad alte velocità per prevenire l'invecchiamento del fluido).],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Due disegni tecnici in sezione. A sinistra "Lubrificazione con grasso" con camera per l'espulsione del grasso esausto. A destra "Lubrificazione a olio" per un cuscinetto oscillante a rulli operante a sbattimento.]])

=== Carico dinamico equivalente (costante nel tempo)
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Quando il cuscinetto è sottoposto a carichi combinati (forza radiale $F_r$ e forza assiale $F_a$), si fa riferimento a un carico dinamico equivalente $P$, tale per cui la risultante sia considerabile costante nel tempo:
$ P = X dot.op F_r + Y dot.op F_a $
I coefficienti $X$ e $Y$ sono tabulati a catalogo in funzione del parametro $f_0 dot.op frac(F_a, C_0)$ e del gioco del cuscinetto (dove $C_0$ è il coefficiente di carico statico e $f_0$ è a sua volta un fattore tabulato). 
Qualora il carico assiale sia trascurabile o al di sotto di un limite definito empiricamente ($F_a / F_r lt.eq e$, con $e = f(f_0 dot.op F_a / C_0)$), il termine assiale viene omesso e si pone direttamente $P = F_r$.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Illustrazione di due cuscinetti radiali. Nel primo è indicata la componente combinata delle forze assiali e radiali P in funzione del raggio, nel secondo uno schema per l'azione assiale Fa applicata centralmente all'albero e Fr applicata al mantello esterno.]])

=== Condizioni di lavoro variabili (Regola di Miner)
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Poiché in molti contesti reali il carico di esercizio varia durante la missione operativa del componente, la durata viene valutata tramite un calcolo di accumulo del danno equivalente alla regola di Palmgren-Miner.
Data una scomposizione del funzionamento utile in intervalli caratterizzati ciascuno da un carico $P_1, P_2, dots.h$ e da una frazione temporale $U_1, U_2, dots.h$, la condizione di cedimento è posta come:
$ sum frac(U_i, L_(10 m i)) = 1 $
La durata in milioni di cicli totale risulta quindi pari al reciproco della sommatoria:
$ L_(10 m) = frac(1, sum frac(U_i, L_(10 m i))) $
Dove $L_(10 m i)$ sono le durate SKF (corrette tramite i vari fattori) calcolate per ogni singola condizione di carico $P_i$.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Grafico dell'intervallo di lavoro utile. Asse delle ordinate: carichi P1, P2, P3, P4 applicati a step costanti. Asse delle ascisse: tempo e frazioni Ui associate a ciascun livello di carico. Sono presenti i rimandi alle formule di Miner delle tensioni (sigma) e alle sommatorie.]])

=== Calcolo statico ed equivalente statico
Il dimensionamento in base al coefficiente di carico statico $C_0$ è obbligatorio quando il cuscinetto:
- Non ruota ($omega = 0$).
- Compie movimenti lenti di allineamento o di oscillazione.
- Raggiunge velocità limitate richiedendo una durata modesta.
- Opera in condizioni di carico stazionario ma con severi urti/sovraccarichi transitori.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Si procede determinando un carico statico equivalente $P_0$:
$ P_0 = X_0 dot.op F_r + Y_0 dot.op F_a $
La verifica statica esige che il rapporto tra il coefficiente statico a catalogo e il carico effettivo risulti superiore a un fattore di sicurezza $s_0$:
$ frac(C_0, P_0) gt.eq s_0 $
ovvero $C_0 gt.eq s_0 dot.op P_0$. Il parametro $s_0$ tiene conto dell'accettabilità di piccole deformazioni permanenti sulle piste e del grado di certezza sul calcolo delle sollecitazioni gravitazionali e inerziali. In scenari in cui la deformazione è tollerata e la certezza di carico è elevata, $s_0$ può assumere valori persino inferiori a 1 (es. $0.4$).],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Tabella 7 SKF "Valori di riferimento per il fattore di sicurezza statico s0 - per carichi continui e/o occasionali". Incolonna diverse condizioni di esercizio (Elevata certezza, Bassa certezza) intersecandole con le richieste di movimento continuo (si o no) e accettabilità della deformazione, restituendo i valori per s0 (es. 0.5, 1, 2, 0.4).]])

=== Limitazioni operative: carico minimo, velocità massima e momento di attrito
Durante la rotazione del cuscinetto deve essere garantita la presenza di un #strong[carico minimo] che vincoli il sistema; la mancanza di carico sufficiente permetterebbe alle forze di inerzia dei corpi volventi e della gabbia di innescare scorrimenti dannosi (strisciamento tra sfere e piste). Empiricamente questo limite è fissato a:
- $P_("min") = 0.01 dot.op C$ (per i cuscinetti a sfere)
- $P_("min") = 0.02 dot.op C$ (per i cuscinetti a rulli)
La richiesta è superiore nei rulli in quanto l'estensione dell'area di contatto richiede pressioni minime maggiori per superare la dissipazione.

La #strong[velocità di rotazione massima] è invece imposta dalle temperature operative del lubrificante e dal calore prodotto dall'attrito. Superato questo limite, la temperatura compromette sia il materiale dell'anello che la struttura chimica del fluido. I cataloghi permettono di dedurre tale asintoto cinematico in funzione delle proprietà di scambio termico della geometria installata.

In fase di dimensionamento dell'attuazione motrice, è indispensabile stimare la resistenza all'avviamento. Utilizzando come approssimazione il caso di carico modesto ($P < 0.1 C$), si calcola il #strong[momento di attrito]:
$ M_("attrito") = 0.5 mu F d $
Dove $mu$ varia tra $0.0015$ e $0.0050$ in base alla geometria del componente, $F$ è il carico dinamico equivalente e $d$ è il diametro del foro interno. Tale momento, sommato a quello dissipato da eventuali guarnizioni striscianti, si somma alla coppia inerziale che l'utenza e la motrice devono superare per avviare l'albero dallo stato di quiete.
== Cuscinetti a corpi volventi - Criteri di montaggio
=== Principi Generali di Montaggio
La selezione dei cuscinetti e la definizione delle loro configurazioni di montaggio rispondono a specifiche esigenze di vincolamento del rotore rispetto allo statore. Durante il funzionamento, l'albero è solitamente soggetto a sollecitazioni in direzione assiale e a variazioni dimensionali (come le dilatazioni termiche). Di conseguenza, il montaggio deve essere valutato attentamente: da un lato può essere richiesta un'elevata precisione e rigidezza, dall'altro può essere necessario permettere un grado di libertà per l'adattamento assiale, evitando così sovraccarichi che degraderebbero la durata dei componenti.

Le regole essenziali per il montaggio di due cuscinetti radiali prevedono che:
- Un cuscinetto deve essere fissato assialmente per supportare i carichi assiali e definire la posizione dell'albero (a meno che tale funzione non sia svolta da un altro dispositivo).
- Un cuscinetto deve permettere gli spostamenti assiali dell'albero (es. per dilatazioni termiche). Questo spostamento può avvenire internamente al cuscinetto (es. rulli senza orletti) oppure esternamente, lasciando un accoppiamento libero tra l'anello e l'alloggiamento o l'albero.
- Per alberi corti è possibile prevedere un montaggio in opposizione, in cui ciascun cuscinetto provvede alla guida assiale in una sola direzione.
- Gli anelli soggetti a carico rotante devono essere montati con interferenza.
- I cuscinetti soggetti a carichi con direzione indeterminata devono avere entrambi gli anelli montati con interferenza.

=== Gestione del Movimento Assiale
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Per consentire l'adattamento assiale dell'albero senza generare spinte indesiderate sui cuscinetti, si può agire in due modi: sullo spostamento interno o sullo spostamento esterno.

Nel primo caso, si utilizzano cuscinetti a rulli cilindrici in cui l'anello interno (o esterno) è privo di bordini laterali. In presenza di una dilatazione termica dell'albero, lo scorrimento avviene direttamente tra il corpo volvente e la pista dell'anello, permettendo al sistema di autodefinirsi senza trasmettere forze assiali.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Schema di cuscinetto a rulli cilindrici che permette lo spostamento assiale interno tra rullo e anello senza orletti, e schema di cuscinetto a sfere dove lo spostamento avviene all'esterno, tra l'anello e l'alloggiamento.]])

Nel secondo caso, tipico dei cuscinetti a sfere o orientabili, i corpi volventi sono vincolati all'interno delle piste. Se si tenta uno spostamento assiale, la geometria del contatto vi si oppone. Per permettere l'adattamento, l'anello esterno viene lasciato libero di scorrere assialmente all'interno della sua sede nello statore. 

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[In configurazioni più complesse, si possono combinare diversi tipi di cuscinetti. Ad esempio, è possibile utilizzare un cuscinetto a sfere con contatto a quattro punti abbinato a un cuscinetto a rulli. Il cuscinetto a quattro punti, avendo l'anello interno diviso in due metà, è in grado di reggere carichi assiali in entrambe le direzioni. Per evitare che collabori all'azione radiale (che deve essere interamente sostenuta dal cuscinetto a rulli), viene montato con un gioco radiale.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Configurazioni di montaggio con albero supportato da un lato da cuscinetti vincolati (es. sfere o quattro punti di contatto) e dall'altro da cuscinetti liberi assialmente (rulli cilindrici senza orletti) per consentire la dilatazione.]])

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Per gestire i momenti di ribaltamento (flessione dell'albero), si possono impiegare cuscinetti orientabili a rulli (a botte). In questi cuscinetti, la pista dell'anello esterno ha forma sferica, permettendo all'albero di ruotare e inflettersi localmente senza generare sollecitazioni critiche sui corpi volventi, pur garantendo la reazione radiale e assiale.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Configurazione di cuscinetto orientabile a rulli a botte che permette la rotazione della sezione trasversale dell'albero per assecondare la flessione e resistere al momento di ribaltamento.]])

=== Sistemi di Bloccaggio Assiale
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Il bloccaggio degli anelli può essere realizzato attraverso diverse soluzioni costruttive, che ricalcano i principi del collegamento albero-mozzo. Sull'albero si utilizzano spallamenti, ghiere filettate, distanziali e anelli elastici. Sullo statore si impiegano coperchi terminali, piastre e anelli di ancoraggio.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Metodi di bloccaggio assiale: ghiera filettata, anello di ancoraggio, piastra terminale, coperchio terminale, collare di spallamento, bussola o collare distanziale.]])

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Un dettaglio critico nel bloccaggio assiale riguarda la zona di raccordo tra lo spallamento dell'albero e lo smusso dell'anello interno del cuscinetto. I due raggi devono essere dimensionati in modo tale che la superficie laterale dell'anello vada perfettamente in battuta contro lo spallamento, lasciando uno spazio vuoto in corrispondenza del raccordo. Una sovrapposizione in questa zona impedirebbe l'accostamento corretto, creando un posizionamento instabile.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Dettaglio dell'accoppiamento tra raggio di raccordo dello spallamento dell'albero e smusso dell'anello interno del cuscinetto, con evidenza dello spazio vuoto necessario per evitare interferenze geometriche.]])

===Bloccaggio Radiale e Tolleranze
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Gli accoppiamenti radiali sono determinati dalla necessità di gestire carichi rotanti. In presenza di un carico rotante, è indispensabile montare l'anello interessato con interferenza per evitare moti relativi (strisciamento) che causerebbero usura precoce (fretting). La scelta delle tolleranze agisce sulle dimensioni degli anelli secondo lo schema foro base - albero base.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Diagramma delle tolleranze secondo lo schema foro base - albero base, con le relative posizioni delle tolleranze per foro (lettere maiuscole) e albero (lettere minuscole).]])

L'interferenza teorica deve essere verificata in condizioni di esercizio, tenendo conto delle perdite causate dallo schiacciamento delle rugosità superficiali, dalle dilatazioni termiche e dall'effetto centrifugo ad alte velocità (assimilando l'anello interno a un disco sottile rotante). 

L'interferenza effettiva si calcola come:
$ i_("effettivo") = i_("min") - Delta i^R - Delta i^T - Delta i^omega $

La perdita di interferenza dovuta alla rugosità è:
$ Delta i^R = 2 dot.op 0.4 dot.op (R_a^("albero") + R_a^("anello")) quad R_a^("anello") = 0.4 quad [mu m] $

La perdita per dilatazione termica (assumendo materiali diversi) è:
$ Delta i^T = D_c (alpha_m - alpha_a) Delta T $
Se l'albero è in acciaio, si considera $Delta i^T = 0$.

La perdita per centrifugazione (considerando l'albero indeformabile) è:
$ Delta i^omega = frac(d dot.op rho dot.op omega^2 dot.op d_("e anello")^2, 4 dot.op E) $

Da cui si ricava la velocità limite di "scalettamento" (perdita totale di calettamento):
$ omega^2 = frac(4 dot.op E dot.op (i_("min") - Delta i^R - Delta i^T), d dot.op rho dot.op d_("e anello")^2) $

=== Esecuzione del Montaggio
Il montaggio dei cuscinetti può avvenire a freddo (mediante l'uso di presse) o a caldo. Nel montaggio a caldo, si sfrutta la dilatazione termica per facilitare l'inserimento, calcolando il salto termico necessario $Delta T$:
$ Delta T = frac(i_("max") + s, alpha dot.op d dot.op 10^3) $
dove $i_("max")$ è l'interferenza massima in $mu m$ e $s$ è il gioco desiderato per il montaggio (ulteriori $30 div 100 quad [mu m]$).

È fondamentale rispettare precisi limiti termici per non degradare le proprietà metallurgiche degli anelli o alterare le caratteristiche chimico-fisiche dei lubrificanti. I cuscinetti non devono essere riscaldati oltre i $120 degree C$; se sono schermati e lubrificati a vita, il limite scende a $80 degree C$.

=== Cuscinetti Obliqui: Configurazioni e Precarico
I cuscinetti obliqui (a sfere o a rulli conici) sopportano carichi radiali e assiali. A causa dell'inclinazione delle piste, un carico radiale genera inevitabilmente una componente assiale indotta che deve essere equilibrata da un altro cuscinetto. Per questo, vengono montati in coppia (gruppi). Le disposizioni possibili sono:

1. #strong[Configurazione in Tandem:] Le rette d'azione sono parallele. I cuscinetti collaborano per sopportare carichi assiali elevati in un'unica direzione.
2. #strong[Configurazione ad "O":] Le rette d'azione sono divergenti e intersecano l'asse di rotazione in due punti (fuochi) distanti tra loro. Resiste a carichi assiali in entrambi i sensi.
3. #strong[Configurazione a "X":] Le rette d'azione sono convergenti verso l'asse del rotore. Resiste anch'essa a carichi assiali in ambo i sensi.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Disposizioni di cuscinetti obliqui: Tandem con rette di azione parallele, disposizione ad O con rette di azione divergenti (fuochi lontani), disposizione a X con rette di azione convergenti (fuochi vicini).]])

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Schema del calcolo della forza assiale interna indotta da un carico radiale nei cuscinetti obliqui, con evidenza dei centri di pressione distanti H.]])

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[Nella valutazione della capacità di resistere a un momento flettente (momento di ribaltamento), si deve porre attenzione esclusivamente alle #emph[rette d'azione] e non agli assi di rotazione dei singoli corpi volventi. 
La configurazione ad "O" risulta molto più rigida rispetto a quella a "X" nei confronti dei momenti flettenti. Questo avviene perché il braccio della coppia di reazione (la distanza tra i punti di intersezione delle rette d'azione sull'asse del rotore) è molto maggiore ($h_2 > h_1$). A parità di momento esterno $M_f$, le forze di reazione richieste sui corpi volventi sono minori nel caso ad "O". La disposizione a "X", pur essendo più compatta, non è adatta a sopportare forti momenti di ribaltamento o richiede, a parità di sollecitazione, reazioni vincolari molto più intense.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Confronto del braccio di reazione al momento flettente tra configurazione ad O (braccio maggiore h2) e configurazione a X (braccio minore h1). Le rette d'azione mostrano la maggiore capacità anti-ribaltamento della disposizione ad O.]])

Questi gruppi vengono spesso montati con un #strong[precarico] assiale iniziale, ovvero eliminando totalmente i giochi interni. Gli effetti di un opportuno precarico sono:
- Aumento della rigidezza del sistema.
- Maggiore precisione di guida dell'albero (il rotore è vincolato in una posizione univoca).
- Riduzione della rumorosità e limitazione dell'usura (evita micro-spostamenti relativi o urti tra corpi e piste in condizioni dinamiche).
- Compensazione di usure e assestamenti, con conseguente maggiore durata.

Tuttavia, un precarico eccessivo causa un aumento dell'attrito, innalzamento delle temperature di esercizio e riduzione drastica della durata. Al contrario, un gioco eccessivo non sfrutta appieno la capacità di carico, aumenta la rumorosità e introduce non-linearità nella risposta dinamica del sistema.

=== Cuscinetti Assiali
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (left + horizon, center + horizon),[I cuscinetti assiali (reggispinta) sono progettati per sopportare esclusivamente carichi paralleli all'asse di rotazione e non ammettono carichi radiali. Volendo realizzare un vincolo di tipo cerniera (che permetta la libera rotazione e l'orientamento sotto flessione), si può ricorrere a un cuscinetto assiale dotato di una contro-ralla con sede sferica, accoppiato a un cuscinetto orientabile radiale, avendo cura di far coincidere i rispettivi centri di oscillazione geometrici.],[#rect(width: 100%, inset: 8pt, stroke: 0.5pt + red)[*DA INSERIRE – IMMAGINE*: Cuscinetti assiali a semplice e doppio effetto. Configurazione con sede sferica accoppiata a cuscinetto orientabile a rulli per realizzare un vincolo a cerniera che asseconda le flessioni del rotore.]])

