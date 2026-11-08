#set page(paper: "a4", margin: (x: 2cm, y: 2cm))
#set text(font: "New Computer Modern", size: 10.5pt, lang: "it")
#set par(justify: true, leading: 0.65em)
#set heading(numbering: "1.1")

#import "@preview/chemformula:0.1.3": ch
#import "@preview/cetz:0.3.4": canvas, draw

#align(center)[
  #text(size: 18pt, weight: "bold")[Capitolo 3: La stechiometria]
  #v(0.5em)
  #text(size: 11pt)[Corso di Chimica — Politecnico di Torino (Prof. Federico Bella, A.A. 2019-2020)]
]
#v(1em)
= I componenti della materia

== Classificazione della materia: elementi, composti e miscele

La materia si suddivide operativamente in tre classi fondamentali:

- *Elemento:* sostanza pura costituita da un'unica specie di atomi, non scindibile in sostanze più semplici mediante ordinarie reazioni chimiche. La composizione è intrinsecamente invariabile. Si presenta sotto forma atomica monoatomica (gas nobili, es. Ne) o molecolare omonucleare (es. #ch("O2")). Una *molecola* è un'unità strutturale indipendente formata da due o più atomi legati chimicamente.
- *Composto:* sostanza pura formata da due o più elementi diversi combinati chimicamente in rapporti di massa rigorosamente definiti e costanti (stechiometria fissa). Le proprietà chimico-fisiche differiscono radicalmente da quelle dei singoli costituenti elementari. È scindibile nei suoi elementi solo per mezzo di reazioni chimiche.
- *Miscela:* combinazione fisica di due o più sostanze pure in rapporti ponderali variabili. Ciascun componente preserva la propria identità chimica; i componenti sono separabili mediante tecniche fisiche (es. distillazione, filtrazione, centrifugazione).

#v(0.5em)

#grid(
  columns: (1.1fr, 0.9fr),
  column-gutter: 1.5em,
  align: (top + left, top + center),
  [
    *Confronto proprietà: formazione del composto* \
    La sintesi di #ch("NaCl") da elementi evidenzia la discontinuità netta tra elementi reagenti e composto risultante:
    - *Sodio (#ch("Na")):* metallo solido argenteo tenero, $T_f = 97.8 degree "C"$, $T_e = 881.4 degree "C"$, densità $rho = 0.97 "g/cm"^3$, violenta reattività con acqua.
    - *Cloro (#ch("Cl2")):* gas biatomico giallo-verde, $T_f = -101 degree "C"$, $T_e = -34 degree "C"$, $rho = 0.0032 "g/cm"^3$, ossidante e tossico.
    - *Cloruro di sodio (#ch("NaCl")):* reticolo ionico cristallino incolore/bianco, $T_f = 801 degree "C"$, $T_e = 1413 degree "C"$, $rho = 2.16 "g/cm"^3$, inerte in acqua e solubile.
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

== Cenni storici e origini prescientifiche

La chimica moderna si è sviluppata a partire da tre filoni empirici principali:
- *Alchimia:* ricerca della trasmutazione e purificazione della materia; ha introdotto apparati e tecniche operative quali distillazione, estrazione e filtrazione.
- *Iatrochimica (medicina):* visione dell'organismo vivente come equilibrio di sostanze reattive ripristinabili chimicamente.
- *Tecnologia applicata:* pratiche empiriche di metallurgia, ceramica e tintoria prive di un modello interpretativo unificato.

Il superamento della transitoria *teoria del flogisto* (sostanza imponderabile ipotizzata come principio della combustione) avvenne nel tardo XVIII secolo con gli esperimenti quantitativi di Antoine Lavoisier, il quale dimostrò il ruolo attivo dell'aria (ossigeno) nei bilanci ponderali di combustione e calcinazione.

== Leggi ponderali classiche

=== Legge di conservazione della massa (Lavoisier, 1789)
In una reazione chimica all'interno di un sistema chiuso, la massa totale si conserva: la somma delle masse dei reagenti è identica alla somma delle masse dei prodotti.
$ sum m_("reagenti") = sum m_("prodotti") $
La materia non viene né creata né distrutta, ma unicamente riorganizzata.

=== Legge delle proporzioni definite (Proust, 1799)
Un composto chimico puro presenta un rapporto fisso e invariabile tra le masse degli elementi costituenti, indipendentemente dalla sorgente o dalla modalità di preparazione. La composizione è quantificata dalla *frazione in massa* o *percentuale in massa* (wt):
$ w_i = frac(m_i, m_("composto")) times 100 $

#line(length: 100%, stroke: 0.4pt + gray)
*Esercizio 2.1:* Un campione di pechblenda di massa $m_0 = 84.2 "g"$ contiene $m_(U,0) = 71.4 "g"$ di uranio (il residuo è ossigeno). Calcolare la massa di uranio ricavabile da $m_("tot") = 102 "kg"$ di pechblenda.

*Risoluzione:* Per la legge di Proust, il rapporto di composizione è costante:
$ frac(m_(U,0), m_0) = frac(71.4 "g", 84.2 "g") approx 0.84798 ==> "wt"%_U = 84.80% $
Applicando la frazione alla massa su scala industriale:
$ m_U = m_("tot") times frac(m_(U,0), m_0) = 102 times 10^3 "g" times frac(71.4, 84.2) = 8.649 times 10^4 "g" approx 8.65 times 10^4 "g" $
#line(length: 100%, stroke: 0.4pt + gray)

=== Legge delle proporzioni multiple (Dalton, 1804)
Quando due elementi reagiscono formando composti diversi, le differenti masse di un elemento che si combinano con una massa fissa dell'altro stanno tra loro in rapporti espressi da numeri interi e piccoli.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1.5em,
  align: (top + left, top + left),
  [
    *Confronto ossidi di carbonio:*
    - *Composto 1 (#ch("CO")):*
      $"wt"%_O = 57.1%$, $"wt"%_C = 42.9%$
      $ (m_O / m_C)_1 = 57.1 / 42.9 = 1.33 $
    - *Composto 2 (#ch("CO2")):*
      $"wt"%_O = 72.7%$, $"wt"%_C = 27.3%$
      $ (m_O / m_C)_2 = 72.7 / 27.3 = 2.66 $
  ],
  [
    *Rapporto fra i rapporti:*
    $ frac((m_O / m_C)_2, (m_O / m_C)_1) = frac(2.66, 1.33) = frac(2, 1) $
    A parità di massa di carbonio, #ch("CO2") impegna una quantità di ossigeno esattamente doppia rispetto a #ch("CO").
  ]
)

== Teoria atomica di Dalton e sua revisione

Nel 1808 Dalton formalizzò i seguenti postulati fondamentali:
+ Tutta la materia è costituita da particelle microscopiche indivisibili dette atomi, indistruttibili e inalterabili.
+ Gli atomi di un dato elemento sono chimicamente inconvertibili in atomi di specie diversa.
+ Tutti gli atomi del medesimo elemento presentano identica massa e medesime proprietà chimiche.
+ I composti derivano dalla combinazione di atomi di elementi distinti secondo rapporti numerici interi definiti.

*Limiti storici e correzioni della teoria moderna:*
- Gli atomi non sono indivisibili: possiedono una struttura interna subatomica (elettroni, protoni, neutroni). L'atomo resta comunque la minima entità che preserva le proprietà chimiche dell'elemento.
- La trasmutazione tra elementi è possibile mediante processi nucleari (decadimenti radioattivi, fissione, fusione).
- La massa non è univoca per tutti gli atomi di un elemento a causa della presenza di *isotopi*; si impiegano pertanto masse atomiche medie ponderate.
- Esistono composti non stechiometrici (bertollidi) caratterizzati da rapporti reticolari lievemente variabili.

== Scoperta della struttura subatomica

=== Raggi catodici e rapporto $e/m_e$ (Thomson, 1897)
Sottoponendo due elettrodi metallici in tubo a vuoto spinto ad alta tensione, si generano raggi catodici. La loro deflessione mediante campi elettrostatici e magnetici trasversi dimostrò che il fascio è composto da particelle cariche negativamente (elettroni, $e^-$), universali e comuni a tutti i metalli usati come catodo.
Misurando simultaneamente la deviazione elettrica e magnetica, Thomson determinò il rapporto carica/massa:
$ e / m_e approx -1.76 times 10^11 "C/kg" $
Dato che tale valore risultava superiore di tre ordini di grandezza rispetto a quello dello ione idrogeno, si dedusse che la massa dell'elettrone doveva essere inferiore a $1/1000$ della massa dell'idrogeno.

=== Esperimento della goccia d'olio (Millikan, 1909)
#grid(
  columns: (1fr, 1fr),
  column-gutter: 1.5em,
  align: (top + left, horizon + center),
  [
    Goccioline nebulizzate di olio venivano ionizzate per irraggiamento e sospese tra due armature di un condensatore piano. All'equilibrio stazionario, la forza gravitazionale eguaglia la forza elettrostatica agente sulla carica $q$:
    $ F_e = F_g ==> q E = m g ==> q = frac(m g, E) $
    La carica $q$ risultava quantizzata in multipli interi di una carica minima elementare:
    $ q = n e quad (n in ZZ) $
    - *Carica elementare:* $e = -1.602 times 10^(-19) "C"$
    - *Massa dell'elettrone:*
      $ m_e = frac(e, (e / m_e)) = 9.109 times 10^(-31) "kg" $
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

=== Scattering alfa e modello nucleare (Rutherford, 1910)
Per verificare il modello atomico a "panettone" di Thomson (carica positiva diffusa e continua), Rutherford bombardò lamine sottili d'oro e platino con particelle $alpha$ (nuclei di elio #ch("He^2+")):
- Risultato atteso (Thomson): deviazioni angolari quasi nulle.
- Evidenza sperimentale: la quasi totalità delle particelle attraversa la lamina indisturbata, ma circa $1$ su $20000$ subisce forti deflessioni ($theta > 90 degree$) o rimbalzi all'indietro.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1.5em,
  align: (top + left, top + center),
  [
    *Conclusioni di Rutherford:*
    - L'atomo è prevalentemente vuoto (diametro atomico $d_("atomo") approx 10^(-10) "m"$).
    - La carica positiva e la quasi totalità della massa ($gt.eq 99.97%$) sono concentrate in un nocciolo centrale compatto: il *nucleo* ($d_("nucleo") approx 10^(-15) "m" - 10^(-14) "m"$).
    - Gli elettroni occupano lo spazio periferico esterno compensando la carica nucleare.
  ],
  [
    #canvas(length: 1cm, {
      import draw: *
      // Nucleo
      circle((0, 0), radius: 0.35, fill: red.lighten(40%), stroke: 1pt + red)
      content((0, 0), text(size: 6pt, [Nucleo]))
      // Raggi alfa
      // Traiettoria 1: passa lontana
      line((-2, 1.2), (2, 1.2), stroke: 0.8pt + blue, mark: (end: ">"))
      // Traiettoria 2: deviazione
      bezier((-2, 0.4), (1.5, 1.5), (-0.3, 0.4), (0.2, 0.8), stroke: 0.8pt + blue)
      line((1.5, 1.5), (1.9, 1.8), stroke: 0.8pt + blue, mark: (end: ">"))
      // Traiettoria 3: retrodiffusione
      bezier((-2, 0.05), (-1.5, -1.2), (-0.2, 0.05), (-0.1, -0.6), stroke: 0.8pt + blue)
      line((-1.5, -1.2), (-1.8, -1.5), stroke: 0.8pt + blue, mark: (end: ">"))
      content((-1.5, 1.4), text(size: 7pt, fill: blue, [Fascio $alpha$]))
    })
  ]
)

== Proprietà dei costituenti subatomici fondamentali

La carica e la massa a riposo delle particelle costituenti l'atomo sono così riassunte:

#align(center)[
#table(
  columns: (2fr, 1.2fr, 2fr, 1.5fr, 2fr, 2fr),
  align: (left, center, center, center, center, left),
  stroke: 0.5pt,
  [*Particella*], [*Carica rel.*], [*Carica assoluta (C)*], [*Massa rel. (u)*], [*Massa ass. (g)*], [*Collocazione*],
  [Protone ($p^+$)], [$+1$], [$+1.6022 times 10^(-19)$], [$1.00728$], [$1.6726 times 10^(-24)$], [Nucleo],
  [Neutrone ($n^0$)], [$0$], [$0$], [$1.00866$], [$1.6749 times 10^(-24)$], [Nucleo],
  [Elettrone ($e^-$)], [$-1$], [$-1.6022 times 10^(-19)$], [$0.00055$], [$9.1094 times 10^(-28)$], [Extra-nucleare]
)
]

== Numero atomico, numero di massa e isotopi

- *Numero atomico ($Z$):* numero totale di protoni nel nucleo; identifica univocamente la specie chimica. In un atomo neutro, il numero di elettroni è esattamente pari a $Z$. Storicamente determinato da Henry Moseley misurando la frequenza delle linee caratteristiche nei raggi X emessi da vari anodi bombardati da elettroni.
- *Numero di massa ($A$):* somma complessiva del numero di nucleoni (protoni e neutroni):
  $ A = Z + N ==> N = A - Z $
- *Notazione standard del nuclide:*
  $ ""_Z^A "X" $
- *Isotopi:* atomi aventi il medesimo numero atomico $Z$, ma differente numero di massa $A$ (ossia diverso numero di neutroni $N$).
  - Condividono la medesima struttura elettronica periferica $==>$ proprietà chimiche pressoché identiche.
  - Differiscono per massa $==>$ lievi variazioni nelle proprietà fisiche (effetto isotopico, significativo per elementi leggeri).

#line(length: 100%, stroke: 0.4pt + gray)
*Esercizio 2.2:* Determinare il numero di protoni, neutroni ed elettroni presenti nell'isotopo neutro del silicio:
$ ""_14^29 "Si" $

*Risoluzione:*
- Dal pedice: $Z = 14 ==> "numero di protoni" = 14$.
- Poiché l'atomo è neutro: $"numero di elettroni" = Z = 14$.
- Dall'apice: $A = 29$, da cui:
  $ N = A - Z = 29 - 14 = 15 ==> "numero di neutroni" = 15 $
#line(length: 100%, stroke: 0.4pt + gray)

== Spettrometria di massa e masse atomiche

=== Principio di funzionamento
Nello spettrometro di massa le molecole/atomi in fase vapore vengono ionizzati per impatto elettronico, accelerati tramite una d.d.p. $V$ e successivamente deviati in traiettorie circolari da un campo magnetico $B$:
$ r = frac(m v, q B) = frac(1, B) sqrt(frac(2 m V, q)) $
La traiettoria dipende dal rapporto massa/carica ($m/q$); variando $B$ o $V$, specie a masse distinte collidono sul rivelatore producendo picchi di corrente proporzionali alla loro abbondanza percentuale.

=== Unità di massa atomica e massa atomica media
L'*unità di massa atomica unificata* ($"u"$ o Da) è definita per convenzione internazionale come $1/12$ della massa a riposo di un singolo atomo di carbonio-12 ($""_6^12 "C"$):
$ 1 "u" = 1 "Da" = frac(m(""_6^12 "C"), 12) approx 1.66054 times 10^(-24) "g" = 1.66054 times 10^(-27) "kg" $

La massa atomica relativa tabulata di un elemento chimico corrisponde alla media ponderata delle masse isotopiche ($m_i$) calcolata sulle rispettive abbondanze percentuali naturali ($x_i$):
$ overline(m)_"at" = sum_i frac(x_i, 100) dot m_i $

#line(length: 100%, stroke: 0.4pt + gray)
*Esercizio 2.3:* L'argento presente in natura è composto da due isotopi:
- $""^107 "Ag"$: massa $m_1 = 106.90509 "Da"$, abbondanza $x_1 = 51.84%$
- $""^109 "Ag"$: massa $m_2 = 108.90476 "Da"$, abbondanza $x_2 = 48.16%$
Calcolare la massa atomica media dell'argento esprimendo il risultato con 5 cifre significative.

*Risoluzione:*
$ overline(m)_"Ag" &= frac(51.84, 100) times 106.90509 "Da" + frac(48.16, 100) times 108.90476 "Da" \
&= 55.4196 "Da" + 52.4485 "Da" = 107.8681 "Da" $
Arrotondando a 5 cifre significative:
$ overline(m)_"Ag" = 107.87 "Da" $
#line(length: 100%, stroke: 0.4pt + gray)


= Tavola periodica degli elementi

Nel 1871 *Dmitrij Mendeleev* ordinò gli elementi per massa atomica crescente, disponendo nella stessa colonna quelli con proprietà chimiche simili. L'attuale *tavola periodica degli elementi* è così organizzata:
- Ogni casella riporta numero atomico ($Z$), simbolo e massa atomica. Le caselle sono ordinate per $Z$ crescente da sinistra a destra.
- Il reticolato è diviso in *periodi* (righe orizzontali, numerate da $1$ a $7$) e *gruppi* (colonne verticali, numerate da $1$ a $18$).
- I gruppi $1$, $2$ e $13$-$18$ contengono gli *elementi dei gruppi principali*, mentre i gruppi $3$-$12$ contengono gli *elementi di transizione*. Sotto il corpo principale sono poste due serie di *elementi di transizione interna* (lantanidi e attinidi), inserite tra i gruppi $3$ e $4$.

#v(0.5em)
#align(center)[#canvas(length: 0.72cm, {
    import draw: *
    // Schema strutturale completo della Tavola Periodica
    let cw = 0.95
    let ch_box = 0.95

    // Legenda colori in alto
    rect((2, 8.2), (2.8, 8.55), fill: rgb(140, 175, 215), stroke: 0.4pt)
    content((3.0, 8.37), text(size: 7pt)[metalli (gruppi principali)], anchor: "west")
    rect((2, 7.75), (2.8, 8.1), fill: rgb(165, 200, 225), stroke: 0.4pt)
    content((3.0, 7.92), text(size: 7pt)[metalli (transizione)], anchor: "west")
    rect((2, 7.3), (2.8, 7.65), fill: rgb(185, 220, 225), stroke: 0.4pt)
    content((3.0, 7.47), text(size: 7pt)[metalli (transizione interna)], anchor: "west")
    rect((2, 6.85), (2.8, 7.2), fill: rgb(155, 205, 155), stroke: 0.4pt)
    content((3.0, 7.02), text(size: 7pt)[metalloidi (semimetalli)], anchor: "west")
    rect((2, 6.4), (2.8, 6.75), fill: rgb(245, 235, 140), stroke: 0.4pt)
    content((3.0, 6.57), text(size: 7pt)[non metalli], anchor: "west")

    // Funzione helper per disegnare una casella
    let draw_el(col, row, z, sym, col_fill) = {
      let x = (col - 1) * cw
      let y = (7 - row) * ch_box
      rect((x, y), (x + cw, y + ch_box), fill: col_fill, stroke: 0.4pt + black)
      content((x + cw/2, y + 0.72 * ch_box), text(size: 5.5pt)[#z])
      content((x + cw/2, y + 0.35 * ch_box), text(size: 7.5pt, weight: "bold")[#sym])
    }

    let c_mm = rgb(140, 175, 215)
    let c_mt = rgb(165, 200, 225)
    let c_mi = rgb(185, 220, 225)
    let c_sm = rgb(155, 205, 155)
    let c_nm = rgb(245, 235, 140)

    // Numeri dei periodi
    for p in range(1, 8) {
      content((-0.35, (7 - p) * ch_box + ch_box/2), text(size: 7pt, weight: "bold")[#p])
    }
    content((-0.8, 3.5 * ch_box), angle: 90deg, text(size: 7pt)[periodo])

    // Numeri dei gruppi
    let g_labels = ("1\n1A", "2\n2A", "3\n3B", "4\n4B", "5\n5B", "6\n6B", "7\n7B", "8\n8B", "9\n8B", "10\n8B", "11\n1B", "12\n2B", "13\n3A", "14\n4A", "15\n5A", "16\n6A", "17\n7A", "18\n8A")
    for g in range(1, 19) {
      let y_top = if g == 1 or g == 18 { 7 * ch_box } else if g == 2 or g >= 13 { 6 * ch_box } else { 4 * ch_box }
      content(((g - 0.5) * cw, y_top + 0.35), align(center, text(size: 5.5pt)[#g_labels.at(g - 1)]))
    }

    // Periodo 1
    draw_el(1, 1, "1", "H", c_nm)
    draw_el(18, 1, "2", "He", c_nm)

    // Periodo 2
    draw_el(1, 2, "3", "Li", c_mm); draw_el(2, 2, "4", "Be", c_mm)
    draw_el(13, 2, "5", "B", c_sm); draw_el(14, 2, "6", "C", c_nm); draw_el(15, 2, "7", "N", c_nm); draw_el(16, 2, "8", "O", c_nm); draw_el(17, 2, "9", "F", c_nm); draw_el(18, 2, "10", "Ne", c_nm)

    // Periodo 3
    draw_el(1, 3, "11", "Na", c_mm); draw_el(2, 3, "12", "Mg", c_mm)
    draw_el(13, 3, "13", "Al", c_mm); draw_el(14, 3, "14", "Si", c_sm); draw_el(15, 3, "15", "P", c_nm); draw_el(16, 3, "16", "S", c_nm); draw_el(17, 3, "17", "Cl", c_nm); draw_el(18, 3, "18", "Ar", c_nm)

    // Periodo 4
    let p4 = ("K", "Ca", "Sc", "Ti", "V", "Cr", "Mn", "Fe", "Co", "Ni", "Cu", "Zn", "Ga", "Ge", "As", "Se", "Br", "Kr")
    for i in range(0, 18) {
      let col = i + 1
      let c = if col <= 2 or col == 13 { c_mm } else if col <= 12 { c_mt } else if col == 14 or col == 15 { c_sm } else { c_nm }
      draw_el(col, 4, str(19 + i), p4.at(i), c)
    }

    // Periodo 5
    let p5 = ("Rb", "Sr", "Y", "Zr", "Nb", "Mo", "Tc", "Ru", "Rh", "Pd", "Ag", "Cd", "In", "Sn", "Sb", "Te", "I", "Xe")
    for i in range(0, 18) {
      let col = i + 1
      let c = if col <= 2 or col == 13 or col == 14 { c_mm } else if col <= 12 { c_mt } else if col == 15 or col == 16 { c_sm } else { c_nm }
      draw_el(col, 5, str(37 + i), p5.at(i), c)
    }

    // Periodo 6
    let p6 = ("Cs", "Ba", "La", "Hf", "Ta", "W", "Re", "Os", "Ir", "Pt", "Au", "Hg", "Tl", "Pb", "Bi", "Po", "At", "Rn")
    let z6 = (55, 56, 57, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86)
    for i in range(0, 18) {
      let col = i + 1
      let c = if col <= 2 or (col >= 13 and col <= 16) { c_mm } else if col <= 12 { c_mt } else { c_nm }
      draw_el(col, 6, str(z6.at(i)), p6.at(i), c)
    }

    // Periodo 7
    let p7 = ("Fr", "Ra", "Ac", "Rf", "Db", "Sg", "Bh", "Hs", "Mt", "Ds", "Rg", "Cn", "Nh", "Fl", "Mc", "Lv", "Ts", "Og")
    let z7 = (87, 88, 89, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118)
    for i in range(0, 18) {
      let col = i + 1
      let c = if col <= 2 or (col >= 13 and col <= 16) { c_mm } else if col <= 12 { c_mt } else { c_nm }
      draw_el(col, 7, str(z7.at(i)), p7.at(i), c)
    }

    // Lantanidi e Attinidi
    content((8.5 * cw, -0.5), text(size: 6.5pt, weight: "bold")[ELEMENTI DI TRANSIZIONE INTERNA])
    let lant = ("Ce", "Pr", "Nd", "Pm", "Sm", "Eu", "Gd", "Tb", "Dy", "Ho", "Er", "Tm", "Yb", "Lu")
    let att = ("Th", "Pa", "U", "Np", "Pu", "Am", "Cm", "Bk", "Cf", "Es", "Fm", "Md", "No", "Lr")
    content((1.8 * cw, -1.35 * ch_box), text(size: 6.5pt)[6   lantanidi])
    content((1.8 * cw, -2.35 * ch_box), text(size: 6.5pt)[7   attinidi])
    for i in range(0, 14) {
      draw_el(i + 4, 8.8, str(58 + i), lant.at(i), c_mi)
      draw_el(i + 4, 9.8, str(90 + i), att.at(i), c_mi)
    }
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
I composti ionici sono *elettricamente neutri* (carica netta nulla: totale cariche positive $=$ totale cariche negative).
    
    I metalli cedono elettroni e i non metalli ne acquistano per raggiungere la configurazione elettronica stabile (bassa reattività) del *gas nobile più vicino* nella tavola periodica (es. #ch("Cl") acquista $1"e"^-$ diventando isoelettronico con #ch("Ar")). In generale:
    - *Gruppo 1:* cedono $1"e"^-$ $==>$ cationi $M^+$.
    - *Gruppo 2:* cedono $2"e"^-$ $==>$ cationi $M^(2+)$.
    - *Gruppo 17:* acquistano $1"e"^-$ $==>$ anioni $X^-$.
    - #ch("Al") cede $3"e"^-$ (#ch("Al^3+")); #ch("O") e #ch("S") acquistano $2"e"^-$ (#ch("O^2-"), #ch("S^2-")); #ch("N") acquista $3"e"^-$ (#ch("N^3-")).


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
    #canvas(length: 0.88cm, {
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
#pagebreak()
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
    [
      #stack(
        dir: ttb,
        spacing: 2pt,
        stack(dir: ltr, spacing: 1.2em, text(size: 0.75em, fill: black)[+3], text(size: 0.75em, fill: red)[-2]),
        ch("Fe2O3")
      )
    ], [Triossido di diferro], [Siccome #ch("Fe") ha N.O. $(+2, +3)$:\ *Ossido ferrico*]
  )
]

*Esercizio 2.5:* Assegnare le nomenclature a #ch("Cu2O") e #ch("CaO").
- #ch("Cu2O") ($"N.O."_("Cu") = +1$, tra $+1$ e $+2$): *Monossido di dirame* (IUPAC); *ossido rameoso* (tradizionale).
- #ch("CaO") ($"N.O."_("Ca") = +2$, unico): *Ossido di calcio* (IUPAC); *ossido di calcio* (tradizionale).
#pagebreak()
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
    [
      #stack(
        dir: ttb,
        spacing: 2pt,
        stack(dir: ltr, spacing: 1.2em, text(size: 0.75em, fill: black)[+7], text(size: 0.75em, fill: red)[-2]),
        ch("Cl2O7")
      )
    ], [Eptaossido di dicloro], [Siccome #ch("Cl") ha N.O. $(+1, +3, +5, +7)$:\ *Anidride perclorica*]
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
#pagebreak()


== 4. Ossiacidi

Composti ternari ottenuti dalla reazione di un ossido acido (anidride) con acqua:
$ "Ossido acido" + ch("H2O") arrow.r "H"_h "NM"_n "O"_o $
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
    [
      #stack(
        dir: ttb,
        spacing: 2pt,
        text(size: 0.75em, fill: purple)[+5],
        ch("HNO3")
      )
    ], [Acido triossonitrico (V)], [Siccome #ch("N") dà ossiacidi con $(+3, +5)$:\ *Acido nitrico*]
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
    [
      #stack(
        dir: ttb,
        spacing: 2pt,
        text(size: 0.75em, fill: purple)[+3],
        ch("H4As2O5")
      )
    ], [Acido pentaossodiarsenico (III)], [Contiene $2 ch("H2O")$ ($ch("As2O3 + 2 H2O")$) con #ch("As")$(+3)$ dispari:\ *Acido piroarsenioso*]
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
== 3. Idrossidi

Composti ternari formati per reazione di un ossido basico con acqua:
$ "Ossido basico" + ch("H2O") arrow.r "M(OH)"_x $
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
    [
      #stack(
        dir: ttb,
        spacing: 2pt,
        stack(dir: ltr, spacing: 1.4em, text(size: 0.75em, fill: black)[+2], text(size: 0.75em, fill: red)[-1]),
        ch("Sr(OH)2")
      )
    ], [Diidrossido di stronzio], [Siccome #ch("Sr") ha solo N.O. $(+2)$:\ *Idrossido di stronzio*]
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
    [
      #stack(
        dir: ttb,
        spacing: 2pt,
        stack(dir: ltr, spacing: 1.2em, text(size: 0.75em, fill: black)[+1], text(size: 0.75em, fill: red)[-1]),
        ch("K2O2")
      )
    ], [Diossido di dipotassio], [*Perossido di potassio*]
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
    [
      #stack(
        dir: ttb,
        spacing: 2pt,
        stack(dir: ltr, spacing: 0.8em, text(size: 0.75em, fill: black)[+1], text(size: 0.75em, fill: red)[-1]),
        ch("HCl")
      )
    ], [Cloruro di idrogeno], [*Acido cloridrico*]
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
    [
      #stack(
        dir: ttb,
        spacing: 2pt,
        stack(dir: ltr, spacing: 1.1em, text(size: 0.75em, fill: black)[+2], text(size: 0.75em, fill: red)[-1]),
        ch("CuH2")
      )
    ], [Diidruro di rame], [Siccome #ch("Cu") ha N.O. $(+1, +2)$:\ *Idruro rameico*]
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
    [
      #stack(
        dir: ttb,
        spacing: 2pt,
        stack(dir: ltr, spacing: 1.1em, text(size: 0.75em, fill: black)[+2], text(size: 0.75em, fill: red)[-1]),
        ch("SnF2")
      )
    ], [Difluoruro di stagno], [Siccome #ch("Sn") ha N.O. $(+2, +4)$:\ *Fluoruro stannoso*]
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
    [
      #stack(
        dir: ttb,
        spacing: 2pt,
        stack(dir: ltr, spacing: 1.4em, text(size: 0.75em, fill: black)[+2], text(size: 0.75em, fill: purple)[+5]),
        ch("Pb(ClO3)2")
      )
    ], [Di-triossoclorato (V) di piombo (II)], [Siccome #ch("Pb")$(+2, +4)$ e #ch("Cl")$(+1, +3, +5, +7)$:\ *Clorato piomboso*]
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
    [
      #stack(
        dir: ttb,
        spacing: 2pt,
        stack(dir: ltr, spacing: 2.2em, text(size: 0.75em, fill: black)[+3], text(size: 0.75em, fill: purple)[+5]),
        ch("Fe(H2PO4)3")
      )
    ], [Tri-diidrogenofosfato (V) di ferro (III)], [Siccome #ch("Fe")$(+2, +3)$ e #ch("P")$(+3, +5)$:\ *Ortofosfato biacido ferrico*]
  )
]

*Esercizio 2.14:* Assegnare le nomenclature a #ch("Ba(HCO3)2").
- #ch("Ba(HCO3)2"): *Di-monoidrogenocarbonato di bario* (IUPAC); *bicarbonato di bario* (tradizionale).

== Note finali su nomenclatura e composti

- *Nomenclatura di Stock:* precursore della IUPAC tuttora in uso nella letteratura scientifica; indica il N.O. del metallo tra parentesi in numeri romani senza prefissi stechiometrici (es. #ch("FeCl3") è il _cloruro di ferro (III)_).
- *Unità formula:* poiché i composti ionici sono reticoli continui di ioni di segno opposto e non molecole separate, la loro formula chimica rappresenta un'*unità formula* (ossia una formula minima che esprime il rapporto stechiometrico tra cationi e anioni). Non esiste la molecola #ch("NaCl"), ma l'unità formula #ch("NaCl").
- *Composti idrati:* composti ionici che inglobano nel reticolo cristallino uno specifico numero di molecole d'acqua (*acqua d'idratazione*) per ciascuna unità formula. Nella formula si separano con un punto centrato ($dot$) e il nome termina con `n-idrato` (_monoidrato_, _diidrato_, ...).
  - _Esempio:_ il gesso da lavagna ha formula $ch("CaSO4") dot 2 ch("H2O")$ e prende il nome di *solfato di calcio diidrato*.
- *Massa molecolare ($M M$) e massa formula:* si calcolano sommando le masse atomiche di tutti gli elementi moltiplicate per i rispettivi pedici nella formula:
  $ M M = sum_i n_i dot m_("a", i) $
  Per i composti molecolari si parla propriamente di *massa molecolare*, mentre per i composti ionici si parla di *massa formula*.

*Esercizio 2.15:* Calcolare la massa molecolare (massa formula) di #ch("Fe2O3") ed esprimerla con $4$ cifre significative (C.S.).
$ M M (ch("Fe2O3")) = 2 dot m_("a")(ch("Fe")) + 3 dot m_("a")(ch("O")) = 2 dot 55.85 "Da" + 3 dot 16.00 "Da" = 159.7 "Da" $

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
    //polygon((sx - 0.2, 4.9), (sx + 0.2, 4.9), (sx + 0.15, 4.4), (sx - 0.15, 4.4), fill: rgb(235, 242, 248), stroke: 0.9pt)
    
    // Corpo conico a pera dell'imbuto
    bezier((sx - 0.15, 4.4), (sx - 1.35, 3.0), (sx - 0.8, 4.2), (sx - 1.35, 3.6), stroke: 1.1pt)
    bezier((sx + 0.15, 4.4), (sx + 1.35, 3.0), (sx + 0.8, 4.2), (sx + 1.35, 3.6), stroke: 1.1pt)
    line((sx - 1.35, 3.0), (sx - 0.12, 0.8), stroke: 1.1pt)
    line((sx + 1.35, 3.0), (sx + 0.12, 0.8), stroke: 1.1pt)
    
    // Strato organico superiore (Etere)
    //polygon((sx - 1.24, 2.8), (sx + 1.24, 2.8), (sx + 0.68, 1.8), (sx - 0.68, 1.8), fill: rgb(245, 235, 175, 160), stroke: (paint: rgb(180, 160, 80), dash: "dashed", thickness: 0.7pt))
    // Strato acquoso inferiore (Acqua + impurezze)
    //polygon((sx - 0.68, 1.8), (sx + 0.68, 1.8), (sx + 0.12, 0.8), (sx - 0.12, 0.8), fill: rgb(110, 140, 210, 200), stroke: none)
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
    //polygon((dx + 0.65, 3.1), (dx + 2.35, 2.12), (dx + 2.15, 1.65), (dx + 0.45, 2.63), fill: rgb(180, 225, 250, 140), stroke: 0.9pt + rgb(70, 140, 190))
    // Frecce acqua
    line((dx + 2.15, 1.2), (dx + 2.15, 1.75), stroke: 0.8pt + blue, mark: (end: ">"))
    content((dx + 2.15, 1.0), text(size: 6pt, fill: blue)[Entrata #ch("H2O")])
    line((dx + 0.65, 2.95), (dx + 0.65, 3.5), stroke: 0.8pt + blue, mark: (end: ">"))
    content((dx + 0.65, 3.7), text(size: 6pt, fill: blue)[Uscita #ch("H2O")])

    // Matraccio di raccolta (distillato)
    //polygon((dx + 2.7, 1.6), (dx + 2.9, 1.6), (dx + 3.3, 0.5), (dx + 2.3, 0.5), fill: rgb(235, 245, 255), stroke: 1.1pt)
    //polygon((dx + 2.42, 0.8), (dx + 3.18, 0.8), (dx + 3.3, 0.5), (dx + 2.3, 0.5), fill: rgb(190, 230, 250), stroke: none)
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

*ES. 3.1* Si considerino $41.6 "g"$ di carbonato di ammonio: calcolare a quante moli corrispondono e quanti ioni carbonato sono presenti. $[0.433 "mol"; thin 2.61 times 10^23]$

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

*ES. 3.2* Calcolare la percentuale in massa (con 3 C.S.) di idrogeno nel carbonato di ammonio. $[8.41 %]$

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

*ES. 3.3* Un composto ionico contiene $2.82 "g"$ di sodio, $4.35 "g"$ di cloro e $7.83 "g"$ di ossigeno. Determinare la formula minima. $[#ch("NaClO4")]$

*ES. 3.4* Il benzopirene ($"MM" = 252.30 "g" dot "mol"^(-1)$) ha la seguente composizione in massa: $95.21 %$ di carbonio e $4.79 %$ di idrogeno. Determinare la formula molecolare. $[#ch("C20H12")]$

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

*ES. 3.5* $0.250 "g"$ di un composto incognito ($"MM" = 149.99 "g" dot "mol"^(-1)$) a base di carbonio, idrogeno e cloro formano, dopo combustione, $0.451 "g"$ di #ch("CO2") e $0.0617 "g"$ di #ch("H2O"). Determinare la formula molecolare. $[#ch("C6H4Cl2")]$

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

*ES. 3.6* Bilanciare la reazione $ch("C8H18 + O2 -> CO2 + H2O")$. $[2 / 25 / 16 / 18]$

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

*ES. 3.7* L'ossido ferrico reagisce con l'alluminio per produrre ossido di alluminio e ferro. Calcolare la massa di ferro prodotta a partire da $135 "g"$ di alluminio. $[279 "g"]$

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

*ES. 3.8* Calcolare la massa di solfuro di alluminio preparabile a partire da $10.0 "g"$ di alluminio e $15.0 "g"$ di zolfo atomico. $[27.8 "g"]$

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

*ES. 3.9* Il carbonato di calcio reagisce con acido cloridrico per formare cloruro di calcio, acqua e diossido di carbonio. Calcolare la resa della reazione sapendo che a partire da $10.0 "g"$ di carbonato di calcio si ottengono $3.65 "g"$ di anidride carbonica. $[83.0 %]$