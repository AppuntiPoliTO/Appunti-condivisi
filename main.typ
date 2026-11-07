#import "@preview/cetz:0.3.4": canvas, draw
#set page(paper: "a4", margin: 2cm)
#set text(lang: "it", size: 11pt)
#set par(justify: true)

#set heading(numbering: none)
#set page(margin: 1.2cm)
#let immagine-originale = image
#let image(nome-file, ..args) =immagine-originale("images/" + nome-file, ..args)
#let circ = sym.degree
#let varphi = $phi$

= Esercitazione 1

== Equazione fondamentale della statica dei fluidi e spinte su superfici piane

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    *Richiami di teoria per l'equilibrio idrostatico:*
    $ partial P / partial x = 0 $
    $ partial P / partial y = 0 $
    $ partial P / partial z = -rho g $
    $ abs(integral_(P_1)^(P_2) dif P = - rho g integral_(Z_1)^(Z_2) dif z) $
    $ P_2 - P_1 = - rho g (z_2 - z_1) $
    $ P_1 = P_2 + rho g (z_2 - z_1) $
    $ rho g = gamma quad ("PESO SPECIFICO DEL FLUIDO") $
    $ P_1 / gamma + z_1 = P_2 / gamma + z_2 ==> h = P / gamma + z = "cost" $
    Dove $h$ è l'altezza piezometrica (carico).
  ],
  [
    #image("page_1_image_0.jpg", width: 70%)
  ]
)
#v(1em)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    $ tan alpha = rho g = gamma arrow.r alpha = arctan(gamma) $
  ],
  [
    #image("page_1_chart_10.jpg", width: 70%)
  ]
)
#v(1em)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    PCI (Piano dei Carichi Idrostatici) è il piano dove $P = 0$.
    $ P = P_"REL" = P_"TOT" - P_"ATM" $
    $ P_"TOT" = P_"ATM" arrow.r P = 0 $
  ],
  [
    #image("257563FF-31F6-47B8-918E-CC7AD7EB977C.png", width: 70%)
  ]
)
#v(1em)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    In un gas:
    $ partial P / partial z = - rho g approx 0 $
  ],
  [
    #image("page_2_chart_0.jpg", width: 70%)
  ]
)
#v(1em)

#align(center)[
  #image("page_2_chart_3.jpg", width: 50%)
]
#v(1em)

== Spinte su superfici piane

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    $ G &= "BARICENTRO" \
      C &= "CENTRO DI SPINTA" \
      F &= "RISULTANTE FORZE DI PRESSIONE" $
    $ abs(arrow(F)) = P_G A_"sup" = P_G (b dot l) $
    $ arrow(F) perp "sup." quad arrow(F) " in " G arrow.r y_C - y_G = I_(x, G) / (y_G A) $
  ],
  [
    #image("page_2_image_5.jpg", width: 70%)
  ]
)
#v(1em)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    Momenti di inerzia notevoli:
    $ "RETTANGOLO: " I_(x, G) = (l^3 b) / 12 $
  ],
  [
    #image("page_3_image_5.jpg", width: 70%)
  ]
)
#v(1em)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    $ "ELLISSE: " I_(x, G) = pi / 4 b l^3 $
    $ "CERCHIO: " b = l $
  ],
  [
    #image("page_3_image_6.jpg", width: 70%)
  ]
)
#v(1em)

== Esercizio 1

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    Il recipiente chiuso schematizzato in figura contiene acqua per un'altezza H dal fondo e superiormente aria. L'indicazione del manometro a mercurio, con la presa nella parte occupata dall'aria, è $Delta$. Individuare l'altezza $x$ dal fondo a cui si porta il menisco del piezometro e tracciare il diagramma delle pressioni lungo una parete laterale del serbatoio.

    *Dati:*
    $ gamma &= 9800 " N/m"^3 \
      gamma_m &= 133300 " N/m"^3 \
      H &= 2 " m" \
      Delta &= 6 " cm" $

    *Risultati:*
    $ x = 1.184 " m" $
  ],
  [
    #image("page_0_image_12.jpg", width: 70%)
  ]
)
#v(1em)

Innanzitutto, guardando il manometro a mercurio, osserviamo che l'atmosfera spinge di più rispetto all'aria all'interno del serbatoio, di conseguenza il serbatoio sarà in depressione. †

Prendiamo un punto A (a contatto con l'atmosfera) e un punto B sui menischi del manometro: per la legge di Stevino abbiamo: †
$ z_A + P_A / gamma_m = z_B + P_B / gamma_m ==> z_A - z_B = P_B / gamma_m $ †
Poiché $P_A = 0$ (pressione atmosferica) e $z_A - z_B = -Delta$, otteniamo: †
$ -Delta = P_B / gamma_m ==> P_B = -gamma_m Delta $ †
La pressione in B è quindi negativa. †

Se consideriamo un punto C sul pelo libero dell'acqua, avremo $P_C approx P_B$. Questo perché il peso specifico dell'aria ($gamma_"aria"$) è molto piccolo, e allora: †
$ z_C + P_C / gamma_"aria" = z_B + P_B / gamma_"aria" ==> P_C - P_B = gamma_"aria"(z_B - z_C) approx 0 $ †
Essendo il termine a destra trascurabile, si ha $P_C approx P_B$. †

Considerando poi il punto C come appartenente al liquido e prendendo un punto D sul menisco del piezometro (aperto all'atmosfera, quindi $P_D = 0$): †
$ z_C + P_C / gamma = z_D + P_D / gamma ==> H - gamma_m / gamma Delta = x $ †
$ x = 2 - 133300 / 9800 dot 0.06 = 1.184 " m" $ †

---

== Esercizio 2

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    Ad un serbatoio contenente due liquidi stratificati, di pesi specifici $gamma_1$ e $gamma_2$, sono collegati un manometro metallico, un manometro a mercurio ed un piezometro, come indicato in figura. Assegnati: la quota $z_B$ della superficie di separazione fra i due liquidi, la quota $z_C$ del menisco inferiore del mercurio, la quota $h_2$ del menisco del piezometro e la quota $z_M$ del centro del manometro metallico, determinare lo spessore $a$ del liquido 1, l'indicazione $Delta$ del manometro a mercurio e l'indicazione $n$ (in $"Kgp/cm"^2$) del manometro metallico. Tracciare il diagramma delle pressioni lungo una parete laterale del serbatoio e sul fondo.

    *Dati:*
    $ gamma_1 &= 7800 " N/m"^3 \
      gamma_2 &= 9800 " N/m"^3 \
      gamma_m &= 133300 " N/m"^3 \
      z_B &= 2.0 " m" \
      z_C &= 0.50 " m" \
      h_2 &= 2.80 " m" \
      z_M &= 1.80 " m" $

    *Risultati:*
    $ a &= 1 " m" \
      Delta &= 0.169 " m" \
      n &= 0.096 " Kgp/cm"^2 $
  ],
  [
    #image("page_0_image_23.jpg", width: 70%)
  ]
)
#v(1em)

*Svolgimento Esercizio 2:*

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    Incognite: $a, Delta, n$

    Per calcolare $a$ e $n$ abbiamo bisogno della pressione in B. Vediamo il punto B come appartenente al fluido di peso specifico $gamma_1$ e applichiamo Stevino tra il pelo libero (punto A, dove $P_A = 0$) e l'interfaccia B: †
    $ A - B $
    $ P_A / gamma_1 + z_A = P_B / gamma_1 + z_B arrow.r (z_A - z_B) = a = P_B / gamma_1 $
  ],
  [
    #image("page_3_image_7.jpg", width: 70%)
  ]
)
#v(1em)

Per trovare $P_B$, applichiamo Stevino nel liquido 2, tra il menisco del piezometro (punto D a quota $h_2$, dove $P_D = 0$) e il punto B: †
$ D - B $
$ P_D / gamma_2 + h_2 = P_B / gamma_2 + z_B arrow.r P_B = (h_2 - z_B) gamma_2 $
Da cui ricaviamo $P_B = 7840 " Pa"$ e, sostituendo nell'equazione precedente, $a = 1 " m"$. †

Per calcolare $Delta$ ci serve sapere la pressione in C, che possiamo calcolare applicando Stevino tra i punti C e D (pelo libero del piezometro): †
$ B - C quad ("o meglio, " D - C) $
$ P_D / gamma_2 + h_2 = P_C / gamma_2 + z_C arrow.r P_C = gamma_2(h_2 - z_C) = 22540 " Pa" $ †

A questo punto consideriamo il punto C come giacente sul menisco di mercurio e applichiamo Stevino tra i due rami del manometro a U (punto C e punto E aperto all'atmosfera, $P_E = 0$): †
$ C - E $
$ P_C / gamma_M + z_C = P_E / gamma_M + z_E arrow.r Delta = z_E - z_C = P_C / gamma_M $
Da cui $Delta = 0.169 " m"$. †

Infine, per trovare l'indicazione $n$ del manometro metallico, applichiamo Stevino tra il pelo libero del liquido 1 (punto A) e il centro del manometro (punto M): †
$ A - M $
$ P_A / gamma_1 + z_A = P_N / gamma_1 + z_M arrow.r P_N = [(z_B + a) - z_M] dot gamma_1 = 9400 " Pa" $ †

Per esprimere $P_N$ in $"Kgp/cm"^2$, ricordiamo la conversione: †
$ [m] = "Kg" / "cm"^2 dot (10^4 " cm"^2) / "m"^2 dot 9.81 "m" / "s"^2 = "Kg" / ("m" dot "s"^2) = ["Pa"] $
$ n arrow.r P_N quad P_N = n dot g dot 10^4 $
$ n = [(z_B + a) - z_M] gamma_1 / (g dot 10^4) = 0.096 " Kgp/cm"^2 $

---

== Esercizio 3

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    Determinare la minima forza verticale P, da applicarsi nel baricentro G, per assicurare l'equilibrio della paratoia piana di traccia AB, incernierata in A ed appoggiata in B, noti il battente a, l'inclinazione $alpha$ e le dimensioni della paratoia (profondità unitaria normalmente al disegno). Se la cerniera fosse in B e l'appoggio in A, quale valore avrebbe la forza?

    *Dati:*
    $ gamma &= 9800 " N/m"^3 \
      a &= 0.10 " m" \
      alpha &= 45^circ \
      l &= 2.00 " m" $

    *Risultati:*
    $ P(A) &= 28905 " N" \
      P(B) &= 15839 " N" $
  ],
  [
    #image("page_5_image_10.jpg", width: 70%)
  ]
)
#v(1em)

Dobbiamo imporre l'equilibrio alla rotazione in A: $arrow(b)_G times arrow(P) = arrow(b)_C times arrow(F)$. Questo perché P agisce nel baricentro G, mentre la forza di pressione F agisce nel centro di spinta C. †
Calcoliamo il modulo della spinta $abs(arrow(F))$ e la posizione del centro di spinta $C$:
$ abs(arrow(F)) = P_G dot A_"SUP" $
Applichiamo l'equazione globale tra il baricentro G e il pelo libero (punto 0):
$ G - 0 $
$ P_G / gamma + z_G = cancel(P_0 / gamma) + z_0 $
$ P_G = (z_0 - z_G) dot gamma $
$ P_G = (a + l/2 sin alpha) gamma $
La spinta vale quindi $abs(arrow(F)) = gamma(a + l/2 sin alpha) dot (l dot 1) = 15819 " N"$. †

Calcoliamo la coordinata del punto di applicazione rispetto alla linea di sponda (distanza dal baricentro): †
$ Y_C - Y_G = I_(X, G) / (Y_G dot A) = (l^3 dot b / 12) / (l (l/2 + a / sin alpha)) = 0.29 " m" $
Il braccio della spinta rispetto alla cerniera A è:
$ overline(A C) = l/2 + (Y_C - Y_G) = 1.29 " m" $
Il momento generato dalla forza di pressione rispetto ad A è:
$ M_F = abs(arrow(F)) dot overline(A C) = 20406.5 " Nm" $

Il momento generato dalla forza incognita $P$ è:
$ M_P = P_perp dot overline(A G) $
Dove $overline(A G) = l/2$. Imponendo l'equilibrio dei momenti $M_P = M_F$:
$ P_perp = M_F / overline(A G) arrow.r P = P_perp / cos alpha = 28905 " N" $

Se invece la paratoia fosse incernierata in B, l'equilibrio dei momenti si calcolerebbe rispetto a B:
$ abs(arrow(F)) dot overline(B C) = P_perp dot overline(B G) $
Il braccio della spinta rispetto a B è $overline(B C) = l/2 - (Y_C - Y_G)$, mentre il braccio di $P$ rimane $overline(B G) = l/2$. †
$ P = P_perp / cos alpha = 15839 " N" $

---

== Esercizio 4

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    Nel serbatoio parallelepipedo in figura è inserito un setto verticale che separa il liquido 1 dal liquido 2, lasciando una fessura sul fondo. La distanza fra la superficie libera del liquido 2 e quella del liquido 1 è $delta$. Trovare la spinta risultante sulla porzione di superficie verticale quadrata (di lato l) e traccia AB il cui lato superiore, orizzontale, è affondato di a sotto la superficie libera del liquido 1.

    *Dati:*
    $ gamma_1 &= 9800 " N/m"^3 \
      gamma_2 &= 8830 " N/m"^3 \
      delta &= 0.30 " m" \
      a &= 0.20 " m" \
      l &= 1.00 " m" $

    *Risultati:*
    $ R " (da dx)" &= 1970 " N" \
      X " (sopra G)" &= 41 " mm" $
  ],
  [
    #image("page_5_image_22.jpg", width: 70%)
  ]
)
#v(1em)

Calcoliamo prima la spinta dovuta al fluido di peso specifico $gamma_1$ (da sinistra): †
$ S_1 = P_("G1") dot "Area" $ †
$ "Area" = l dot 1, quad P_("""G1""") = gamma_1(a + l/2) ==> S_1 = 6860 " N" $ †
La posizione del centro di spinta per il fluido 1 è: †
$ x_("C1") = x_("G1") + overline(G C)_1, quad x_("G1") = a + l/2, quad overline(G C)_1 = (l^3/12) / (x_("G1") dot "Area") $ †

Calcoliamo poi la spinta dovuta al fluido di peso specifico $gamma_2$ (da destra): †
$ S_2 = P_("G2") dot "Area" $ †
$ P_("G2") = gamma_2(delta + a + l/2) ==> S_2 = 8830 " N" $ †
La posizione del centro di spinta per il fluido 2 è: †
$ x_("C2") = x_("G2") + overline(G C)_2, quad x_("G2") = delta + a + l/2, quad overline(G C)_2 = (l^3/12) / (x_("G2") dot "Area") $ †

La spinta totale risultante è la differenza tra le due: †
$ S_"TOT" = S_2 - S_1 = 1970 " N" quad ("diretta da dx verso sx") $ †

Per trovare il punto di applicazione $C_"TOT"$, eguagliamo i momenti attorno al baricentro G: †
$ arrow(b)_"CTOT" times arrow(S)_"TOT" = arrow(b)_("C1") times arrow(S)_1 + arrow(b)_("C2") times arrow(S)_2 $ †
I bracci rispetto a G sono: †
$ abs(arrow(b)_("C1")) = x_("C1") - x_("G1") = 0.1190 " m" $ †
$ abs(arrow(b)_("C2")) = x_("C2") - x_("G2") = 0.0833 " m" $ †
Considerando $arrow(b)_("C1")$ e $arrow(b)_("C2")$ positivi (verso il basso), l'equilibrio diventa: †
$ b_"CTOT" dot S_"TOT" = -b_("C1") S_1 + b_("C2") S_2 ==> b_"CTOT" = (-b_("C1") S_1 + b_("C2") S_2) / S_"TOT" = -0.041 " m" $ †
Il segno negativo indica che il punto di applicazione si trova $41 " mm"$ _sopra_ il baricentro G. †

= Esercitazione 2

== Statica dei fluidi: spinte su superfici curve

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    $ arrow(G) + arrow(Pi) = 0 $
    $ arrow(G) + arrow(Pi)_1 + arrow(Pi)_2 + arrow(Pi)_3 = 0 $
  ],
  [
    #image("page_8_image_2.jpg", width: 70%)
    #image("page_8_image_4.jpg", width: 70%)
  ]
)
#v(1em)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    $ arrow(Pi)_1 + arrow(Pi)_2 + arrow(Pi)_3 + arrow(G) = 0 $
    $ S = -Pi_3 $
  ],
  [
    #image("page_8_image_5.jpg", width: 70%)
    #image("page_8_image_6.jpg", width: 70%)
  ]
)
#v(1em)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    $ arrow(Pi)_1 + arrow(Pi)_2 + arrow(G) = 0 $
    $ arrow(Pi)_2 = arrow(S) $
  ],
  [
    #image("page_8_image_9.jpg", width: 70%)
    #image("page_8_image_10.jpg", width: 70%)
  ]
)
#v(1em)

== Esercizio 1

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    Calcolare la spinta che agisce su una galleria sottomarina di lunghezza unitaria che poggia su un fondale alla profondità h e ha sezione semicircolare di raggio R.

    *Dati:*
    $ gamma &= 9800 " N/m"^3 \
      h &= 100 " m" \
      R &= 8 " m" $

    *Risultati:*
    $ S = 14695 " kN" $
  ],
  [
    #image("page_7_image_11.jpg", width: 70%)
  ]
)
#v(1em)

*Soluzione:*
Scegliamo un volume di controllo per applicare l'equazione globale della statica. † Consideriamo un volume di controllo fittizio: all'interno della galleria non c'è fluido, ma la spinta che agisce sulla galleria dovuta al fluido reale sarà uguale ed opposta alla spinta dovuta al fluido virtuale (per il principio di azione e reazione di Newton). †

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    L'equazione globale della statica per il volume di controllo è:
    $ arrow(P) + arrow(Pi)_0 + arrow(Pi)_1 = 0 $ †

    Il vettore $arrow(Pi)_0$ è la forza che la parete esercita sul fluido, ed è quindi pari e opposta alla spinta $arrow(S)$ che agisce sulla parete a causa del fluido reale. †
    $ arrow(S) = arrow(Pi)_0 = -(arrow(P) + arrow(Pi)_1) $ †
  ],
  [
    //#image("schema_volume_controllo_fittizio_mezza_galleria", width: 70%)
  ]
)
#v(1em)

Calcoliamo il peso del volume di fluido (diretto verso il basso):
$ P = gamma W = 9800 dot (1/2 pi R^2 l) = 985200 " N" $ †

Calcoliamo la spinta sulla superficie piana di base (diretta verso l'alto):
$ Pi_1 = p_a A_11 = (gamma h) dot (2R dot l) = 15680000 " N" $ †

Essendo i vettori collineari e di verso opposto, il modulo della spinta risultante è:
$ abs(arrow(S)) = abs(arrow(Pi)_1) - abs(arrow(P)) = 14695 " kN" $ †

== Esercizio 2

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    Calcolare la spinta sulla paratoia di superficie curva, che ha per direttrice l'equazione $y = x^2$ e larghezza di un metro, dovuta ad un liquido di peso specifico $gamma$ con battente h.

    *Dati:*
    $ gamma &= 9800 " N/m"^3 \
      h &= 1.5 " m" $

    *Risultati:*
    $ S &= 16298 " N" \
      alpha &= -47.4^circ $
  ],
  [
    #image("page_7_image_20.jpg", width: 70%)
  ]
)
#v(1em)

*Soluzione:*
Applichiamo l'equazione globale della statica al volume di controllo racchiuso tra la superficie curva, il pelo libero e la proiezione verticale: †

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    $ arrow(P) + arrow(Pi)_0 + arrow(Pi)_1 + arrow(Pi)_2 = 0 $ †
    $ arrow(S) = -arrow(Pi)_0 = arrow(P) + arrow(Pi)_1 $ †

    Per calcolare il volume $W$, sottraiamo l'area sottesa dalla curva all'area del rettangolo circoscritto: †
    $ W = l [A_"rettangolo" - A_"curva"] = l [h sqrt(h) - integral_0^(sqrt(h)) x^2 dif x] = l [h sqrt(h) - 1/3 h sqrt(h)] = l 2/3 h sqrt(h) $ †
  ],
  [
    //#image("schema_volume_controllo_paratoia_curva_diagramma_pressioni", width: 70%)
  ]
)
#v(1em)

Il peso del fluido è quindi:
$ P = gamma l 2/3 h sqrt(h) = 12002 " N" $ †

La spinta sulla superficie piana verticale $Pi_1$ è data dalla pressione nel baricentro per l'area:
$ Pi_1 = P_G A = (gamma h/2) h l = 11025 " N" $ †

Calcoliamo anche il punto in cui agisce la spinta $Pi_1$: †
$ g_a = h/2 $ †
$ g_c = g_G + I_0 / M = g_G + (1/12 l h^3) / (A_1 g_G) = 1 " m" $ †

Per la forza peso, il punto di applicazione (baricentro del volume) è: †
$ x_G = 3/8 sqrt(h), quad y_G = 3/5 sqrt(h) $ †

Il modulo della spinta totale è:
$ abs(arrow(S)) = sqrt(abs(arrow(P))^2 + abs(arrow(Pi)_1)^2) = 16298 " N" $ †

L'angolo di inclinazione della spinta è:
$ alpha = arctan(-P / Pi_1) = -47.4^circ $ †

== Esercizio 3

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    Calcolare la spinta risultante dall'azione di due liquidi stratificati (come indicato in figura) sulla superficie cilindrica che ha per direttrice il semicerchio ABC e larghezza di un metro.

    *Dati:*
    $ gamma_1 &= 9800 " N/m"^3 \
      gamma_2 &= 11760 " N/m"^3 \
      R &= 1.0 " m" $

    *Risultati:*
    $ S &= 26651 " N" \
      alpha &= -39.4^circ $
  ],
  [
    #image("page_7_image_30.jpg", width: 70%)
  ]
)
#v(1em)

*Soluzione:*
Dato che i due liquidi sono stratificati, dobbiamo considerare due volumi di controllo separati per applicare l'equazione globale di equilibrio. † ‡

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    SPINTA SU SUPERFICIE ABC:
    $ arrow(S_"TOT")_"ABC" = arrow(S)_1 + arrow(S)_2 $
  ],
  [
    #image("page_9_image_0.jpg", width: 70%)
  ]
)
#v(1em)

*Volume 1 (Superiore, fluido $gamma_1$):*

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    $ arrow(S)_1 = -arrow(Pi)_3 $
    $ arrow(W)_1 + arrow(Pi)_1 + arrow(Pi)_2 + arrow(Pi)_3 = 0 $
    Scomponendo lungo gli assi:
    $ X: Pi_1 - Pi_(3,X) = 0 $
    $ Y: -W_1 + Pi_2 - Pi_(3,Y) = 0 $

    Calcolo delle componenti:
    $ W_1 = gamma_1 dot (pi R^2) / 4 $
    $ Pi_1 = P_("G1") A_1 = (gamma_1 R/2) dot R = gamma_1 R^2 / 2 $
    $ Pi_2 = P_("G2") A_2 = gamma_1 R dot R = gamma_1 R^2 $

    Da cui si ricavano le componenti della spinta 3:
    $ Pi_(3,X) = gamma_1 R^2 / 2 $
    $ Pi_(3,Y) = gamma_1 R^2 - gamma_1 (pi R^2) / 4 $
  ],
  [
    #image("page_9_image_4.jpg", width: 70%)
  ]
)
#v(1em)

*Volume 2 (Inferiore, fluido $gamma_2$):*

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    $ arrow(S)_2 = -arrow(Pi)_6 $
    $ arrow(W)_2 + arrow(Pi)_4 + arrow(Pi)_5 + arrow(Pi)_6 = 0 $
    Scomponendo lungo gli assi:
    $ X: Pi_4 - Pi_(6,X) = 0 $
    $ Y: -W_2 - Pi_5 + Pi_(6,Y) = 0 $

    Calcolo delle componenti:
    $ W_2 = gamma_2 dot (pi R^2) / 4 $
    $ Pi_4 = P_("G4") A = (gamma_1 R + gamma_2 R/2) R $
  ],
  [
    #image("page_9_image_14.jpg", width: 70%)
  ]
)
#v(1em)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    $ Pi_5 = P_"GS" A = (gamma_1 R) R $

    Da cui si ricavano le componenti della spinta 6:
    $ Pi_(6,X) = Pi_4 = (gamma_1 R + gamma_2 R/2) R $
    $ Pi_(6,Y) = W_2 + Pi_5 = gamma_2 (pi R^2) / 4 + gamma_1 R^2 $
  ],
  [
    #image("page_10_image_0.jpg", width: 70%)
  ]
)
#v(1em)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    *Spinta Totale:*
    Sommando le componenti orizzontali e verticali:
    $ Pi_"TOT,X" = -Pi_(3,X) - Pi_(6,X) = -20580 " N" $
    $ Pi_"TOT,Y" = -Pi_(3,Y) + Pi_(6,Y) = +16933 " N" $
  ],
  [
    #image("page_10_image_7.jpg", width: 70%)
  ]
)
#v(1em)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    $ abs(arrow(S_"TOT")) = sqrt(Pi_"TOT,X"^2 + Pi_"TOT,Y"^2) $
    $ tan alpha = Pi_"TOT,Y" / Pi_"TOT,X" $
  ],
  [
    #image("page_10_image_10.jpg", width: 70%)
  ]
)
#v(1em)

== Esercizio 4

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    Nella parete superiore di un serbatoio chiuso, pieno di acqua, è praticata una luce circolare in cui è inserita una valvola conica. Note la geometria del sistema e l'indicazione n del manometro metallico, determinare la minima forza S che deve agire sulla valvola per garantirne la chiusura.

    *Dati:*
    $ gamma &= 9800 " N/m"^3 \
      n &= 0.07 " Kgp/cm"^2 \
      b &= 0.30 " m" \
      H &= 0.10 " m" \
      alpha &= 60^circ $

    *Risultati:*
    $ S = 44.5 " N" $
  ],
  [
    #image("page_11_image_10.jpg", width: 70%)
  ]
)
#v(1em)

*Soluzione:*

Calcoliamo innanzitutto la pressione indicata dal manometro in Pascal:
$ P_M = n dot g dot 10^4 = 0.07 dot 98000 = 6860 " Pa" = 6.86 " kN/m"^2 $ †

Possiamo calcolare l'affondamento $h_M$ del manometro rispetto al Piano dei Carichi Idrostatici (PCI): †
$ h_M = P_M / gamma = 0.7 " m" $ †
Dalla geometria del cono ricaviamo il raggio di base $R$:
$ R / H = tan(alpha / 2) $
$ R = 0.058 " m" $

Ora scegliamo il volume di controllo: consideriamo il volume di fluido racchiuso nel tronco di cilindro che circonda il cono. † ‡

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    L'equazione globale della statica è:
    $ arrow(Pi)_1 + arrow(Pi)_2 + arrow(W) = 0 $

    Scomponendo lungo gli assi:
    $ X: Pi_(2,X) = 0 $
    $ Y: -W - Pi_1 + Pi_(2,Y) = 0 $
  ],
  [
    //#image("schema_volume_controllo_tronco_cono_rovesciato", width: 70%)
    #image("page_12_image_3.jpg", width: 70%)
  ]
)
#v(1em)

Il peso del volume di controllo (cono) è:
$ W = gamma V_"vol" = gamma (pi R^2 H) / 3 $

La spinta sulla base superiore $Pi_1$ si calcola dalla pressione nel baricentro $G_1$:
$ Pi_1 = P_("G1") A = (n g 10^4 - H gamma) pi R^2 $

Infatti, applicando la legge di Stevino tra il manometro e la base del cono:
$ P_N / gamma + z_N = P_("G1") / gamma + z_("G1") ==> P_("G1") = P_N - H gamma $
$ P_("G1") = n g 10^4 - H gamma $


== Esercizio 5

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    E' dato un serbatoio cilindrico chiuso da due calotte sferiche e pieno di due liquidi di peso specifico $gamma_1$ e $gamma_2$. Note la geometria dello stesso, la posizione del piano di separazione dei due liquidi e quella dei menischi del manometro a mercurio, determinare:

    + le spinte sulle due calotte sferiche;
    + il piano dei carichi idrostatici assoluti per il liquido con peso specifico $gamma_1$.

    *Dati:*
    $ gamma_1 &= 7800 " N/m"^3 \
      gamma_2 &= 9800 " N/m"^3 \
      gamma_m &= 133300 " N/m"^3 \
      D &= 3.0 " m" \
      R' &= 2.5 " m" \
      L &= 7.0 " m" \
      Delta &= 0.2 " m" \
      z_A &= 0.75 " m" \
      z_B &= 4.0 " m" \
      z_0 &= 2.2 " m" \
      alpha &= 30^circ $

    *Risultati:*
    $ S_1 &= 280345 " KN", quad alpha_1 = 26.8^circ \
      S_2 &= 514608 " KN", quad alpha_2 = 31.4^circ \
      h_"ass", 1 &= 9.48 " m" $
  ],
  [
    #image("page_11_image_32.jpg", width: 70%)
  ]
)
#v(1em)

*Soluzione:*
Notiamo subito che il serbatoio è in depressione. †

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    Calcoliamo la pressione nel punto A tramite il manometro: †
    $ z_A + P_A / gamma_m = (z_A - Delta) + P_"atm" / gamma_m ==> P_A = gamma_m (-Delta) = -26660 " Pa" $ †

    L'affondamento rispetto al piano dei carichi idrostatici (relativo al fluido 2) del punto A è: †
    $ h_A = z_A + P_A / gamma_2 = -1.97 " m" $ †
  ],
  [
    //#image("schema_serbatoio_cilindrico_inclinato_calotte_sferiche_manometro", width: 70%)
  ]
)
#v(1em)

*Calcoliamo la spinta sulla calotta sferica di sinistra (A):* †
In questo caso le forze della superficie sul fluido sono rivolte verso l'esterno! Le componenti si invertono e quindi le superfici "tirano" il fluido. †

Per l'equazione globale della statica: †
$ arrow(P_A) + arrow(Pi)_(0A) + arrow(Pi)_(1A) = 0 $ †

La spinta del fluido sulla parete è $arrow(S_A) = -arrow(Pi)_(0A) = arrow(P_A) + arrow(Pi)_(1A)$, rivolta verso l'interno. †

Calcoliamo il volume della calotta (uguale per entrambe le estremità): †
$ beta = arcsin((D/2) / R') $ †
$ h_c = R' - R' cos beta = 0.5 " m" $ †
$ W = pi h_c^2 (R' - h_c / 3) = 1.83 " m"^3 $ †

Il peso del fluido racchiuso nella calotta A (immersa nel fluido 2) è: †
$ P_A = gamma_2 W = 17.95 " kN" $ †

La spinta sulla superficie piana verticale di base della calotta è: †
$ Pi_(2A) = P_G A = pi (D/2)^2 gamma_2 (h_A - z_0) = -288.8 " kN" $ †

Il peso $P_A$ è verticale, mentre $Pi_(1A)$ forma un angolo di $alpha = 30^circ$ con l'orizzontale. †
Scomponendo le forze per trovare le componenti della spinta $S_A$: †
$ Pi_(1A,O) = Pi_(2A) cos alpha $ †
$ Pi_(1A,V) = Pi_(2A) sin alpha $ †

Sommando le componenti verticali e orizzontali: †
$ S_"AV" = P_A + Pi_(1A,V) = -126.1 " kN" $ †
$ S_"AO" = Pi_(1A,O) = -250.1 " kN" $ †

Il modulo della spinta sulla calotta A è: †
$ S_A = sqrt(S_"AV"^2 + S_"AO"^2) = 280.6 " kN" $ †
$ theta_A = "arccot"(S_"AV" / S_"AO") = 26.8^circ $ †

*Calcoliamo la spinta sulla calotta sferica di destra (B):* †
La seconda parte è analoga. Calcoliamo innanzitutto il carico $h_B$: †
$ z_B + P_B / gamma_1 = h_B ==> z_B + P_A / gamma_2 = h_A ==> P_B = gamma_1(h_A - z_B) = -53510 " Pa" $ †
$ h_B = -3.5 " m" $ †

Scegliamo il volume di controllo e applichiamo l'equazione globale: †
$ arrow(P_B) + arrow(Pi)_(0B) + arrow(Pi)_(1B) = 0 $ †
$ arrow(S_B) = -arrow(Pi)_(0B) = arrow(P_B) + arrow(Pi)_(1B) $ †

Il peso del fluido racchiuso nella calotta B (immersa nel fluido 1) è: †
$ P_B = gamma_1 W = 14.294 " kN" $ †

La spinta sulla superficie piana è: †
$ Pi_(1B) = P_"G0" A = gamma_1 (h_0 - (t_0 + L sin alpha)) pi (D/2)^2 = -507.31 " kN" $ †

Scomponendo le componenti: †
$ Pi_(1B,O) = Pi_(1B) cos alpha, quad Pi_(1B,V) = Pi_(1B) sin alpha $ †

Sommando le componenti: †
$ S_"BV" = P_B + Pi_(1B,V) = -239.36 " kN" $ †
$ S_"BO" = Pi_(1B,O) = -439.35 " kN" $ †

Il modulo della spinta sulla calotta B è: †
$ S_B = sqrt(S_"BO"^2 + S_"BV"^2) = 500.32 " kN" $ † ‡
$ theta_B = "arccot"(S_"BV" / S_"BO") = 31.4^circ $ †

*Piano dei carichi idrostatici assoluti per il liquido 1:* †
$ h_"ass",1 = h_B + P_"atm" / gamma_1 = 9.5 " m" $ † ‡

---

=== Note di revisione
- *Esercitazione 2, Esercizio 3 (‡):* Negli appunti del professore (Documento B) viene proposta una scomposizione in due volumi di controllo (A e B) con calcoli numerici e angoli (es. $alpha = 65^circ$) che differiscono radicalmente dai dati e dallo svolgimento vettoriale presente nel Documento A ($alpha = -39.4^circ$). Nel testo finale è stata mantenuta fedelmente l'impostazione analitica e vettoriale del Documento A, integrando solo la premessa logica iniziale del professore.
- *Esercitazione 2, Esercizio 4 (‡):* Per il calcolo del peso $W$, il Documento A utilizza direttamente il volume del cono ($W = gamma (pi R^2 H) / 3$), mentre il Documento B calcola il volume del fluido circostante sottraendo il cono al cilindro ($W = 2/3 pi R^2 H$). È stata mantenuta l'impostazione del Documento A per coerenza con le formule successive.
- *Esercitazione 2, Esercizio 5 (‡):* I risultati numerici intermedi calcolati negli appunti del professore portano a un valore finale della spinta $S_B = 500.32 " kN"$ e $h_"ass",1 = 9.5 " m"$, che si discostano lievemente dai risultati esatti riportati nella traccia del Documento A ($S_2 = 514608 " N"$ e $h_"ass",1 = 9.48 " m"$). I passaggi logici del professore sono stati comunque riportati integralmente.