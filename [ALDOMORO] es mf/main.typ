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

= Esercizio 1
1) Determinare linee di corrente e traiettorie del seguente campo di moto:
$ cases(
  u_x = a sin(omega t),
  u_y = a cos(omega t),
  u_z = 0
) $
dove $a$ e $omega$ sono costanti positive.

2) Cosa succede per $omega = 0$?

1a) $t = text("cost.") ==> arrow(u) dot d arrow(x) = 0$
$ op("det") mat(delim: "|", arrow(i), arrow(j), arrow(k); u_x, u_y, u_z; d x, d y, d z) &= mat(delim: "|", arrow(i)(u_y d z - u_z d y); arrow(j)(u_z d x - u_x d z); arrow(k)(u_x d y - u_y d x)) 
&= mat(delim: "|", arrow(i)(u_y d z); arrow(j)(-u_x d z); arrow(k)(u_x d y - u_y d x)) = mat(delim: "|", 0; 0; 0) $

$ ==> underbrace(a sin(omega t), u_x) d y - underbrace(a cos(omega t), u_y) d x = 0 ==> z = beta $

integriamo $
y sin(omega t) - x cos(omega t) = alpha quad text("linee di corrente") $

Campo uniforme (!) e irrotazionale $arrow.r$ linee di corrente: rette

1b) Traiettorie: $(d arrow(x)) / (d t) = arrow(u)(arrow(x); t)$
$ cases(
  (d x)/(d t) &= u_x = a sin(omega t),
  (d y)/(d t) &= u_y = a cos(omega t),
  (d z)/(d t) &= u_z = 0
) ==> cases(
  x &= alpha - a/omega cos(omega t),
  y &= beta + a/omega sin(omega t),
  z &= gamma
) $

$alpha, beta, gamma$ - costanti di integrazione. Valutiamo il quadrato delle distanze dai punti $(x,y) = (alpha, beta)$:
$ R^2(t) &= [x(t) - alpha]^2 + [y(t) - beta]^2 \
         &= [- a/omega cos(omega t)]^2 + [a/omega sin(omega t)]^2 \
         &= a^2/omega^2 [cos^2(omega t) + sin^2(omega t)] = a^2/omega^2 $

Le traiettorie sono cerchi centrati in $(alpha, beta)$ e di raggio $R = a/omega$.

2) Se $omega = 0 arrow.r (partial)/(partial t) = 0$
$ cases(
  x &= alpha,
  y &= beta + a t,
  z &= mu
) $
linee di corrente $parallel$ all'asse y

#pagebreak()
= Esercizio 2
Consideriamo il campo di moto:
$ cases(
  u_x = -u(r) y/r,
  u_y = u(r) x/r,
  u_z = 0
) $
con $r = (x^2 + y^2)^(1/2)$

a) tracciare le linee di corrente $arrow(u) "suca" d arrow(x) = 0$
$ op("det") mat(delim: "|", arrow(i), arrow(j), arrow(k); u_x, u_y, u_z; d x, d y, d z) &= mat(delim: "|", u_y d z - u_z d y; -u_x d z + u_z d x; u_x d y - u_y d x) \
  &= mat(delim: "|", u_y d z; -u_x d z; u_x d y - u_y d x) = mat(delim: "|", 0; 0; 0) $

$ cases(
  d z = 0,
  -u y/r d y - u x/r d x = 0,
  z = beta,
  x^2 + y^2 = alpha^2
) $

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    Cerchi concentrici, paralleli al piano $x - y$
  ],
  [
    #canvas(length: 1cm, {
  import draw: *
  
  // Asse verticale
  line((1.5, 0.2), (1.5, 3.0), stroke: 1pt)
  
  // Vettore r
  line((0.2, 0.35), (3.5, 2.0), mark: (end: ">"), stroke: 1pt)
  
  // Arco angolo theta
  arc((1.5, 1.0), start: 26.57deg, stop: 90deg, radius: 0.6, anchor: "origin", stroke: 1pt)
  
  // Etichette
  content((1.8, 1.6), [$theta$])
  content((3.8, 2.0), [$r$])
})
  ]
)
#v(1em)

b) Calcolare le componenti delle velocità in coordinate cilindriche e descrivere il movimento del fluido

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    $(r, theta, t)$
    $ cases(
      x = r cos theta,
      y = r sin theta
    ) quad cases(
      U_r &= U_x cos theta + U_y sin theta,
      U_theta &= U_y cos theta - U_x sin theta
    ) $
  ],
  [
    #canvas(length: 0.8cm, {
  import draw: *

  // Circonferenze concentriche
  circle((0, 0), radius: 0.4, stroke: 1pt)
  circle((0, 0), radius: 1.2, stroke: 1pt)
  circle((0, 0), radius: 2.0, stroke: 1pt)
  circle((0, 0), radius: 3.0, stroke: 1pt)

  // Asse X
  line((-3.5, 0), (3.5, 0), mark: (end: ">"), stroke: 1pt)
  content((3.8, 0), [$x$], anchor: "west")

  // Asse Y
  line((0, -3.5), (0, 3.5), mark: (end: ">"), stroke: 1pt)
  content((0.4, 3.4), [$y$], anchor: "west")

  // Vettore radiale
  line((0, 0), (2.0, 1.5), mark: (end: ">"), stroke: 1pt)
  content((2., 1.6), [$r$], anchor: "south-west")
})
  ]
)
#v(1em)

ricordando che:
$ cases(
  u_x = -u y/r,
  u_y = u x/r
) arrow.r cases(
  u_r &= -u y/r x/r + u x/r y/r = 0,
  u_theta &= u x/r x/r + u y/r y/r = (x^2 + y^2)/r^2 u = u(r),
  u_z &= 0
) $
(Se $u = Omega r ==> text("rotazione solida")$)\
C'è una sola componente $eq.not 0$

= Esercizio 3
Scrivere in coordinate cartesiane:
$ (partial arrow(u)')/(partial t) &= (partial arrow(u))/(partial t) + arrow(u) dot nabla arrow(u) \
  &= (partial u_i)/(partial t) + u_j (partial u_i)/(partial x_j) \
  &= (partial u_i)/(partial t) + u_1 (partial u_i)/(partial x_1) + u_2 (partial u_i)/(partial x_2) + u_3 (partial u_i)/(partial x_3) $
per $i=1,2,3$
$ cases(
  (partial u_1)/(partial t) + u_1 (partial u_1)/(partial x_1) + u_2 (partial u_1)/(partial x_2) + u_3 (partial u_1)/(partial x_3),
  (partial u_2)/(partial t) + u_1 (partial u_2)/(partial x_1) + u_2 (partial u_2)/(partial x_2) + u_3 (partial u_2)/(partial x_3),
  (partial u_3)/(partial t) + u_1 (partial u_3)/(partial x_1) + u_2 (partial u_3)/(partial x_2) + u_3 (partial u_3)/(partial x_3)
) $

Calcolare l'accelerazione $arrow(gamma) = (D arrow(u))/(D t)$ del campo di moto dell'e sercizio precedente:
$ cases(
  u_x = -u(r) y/r,
  u_y = u(r) x/r,
  u_z = 0
) ==> cases(
  gamma_x = u_x (partial u_x)/(partial x) + u_y (partial u_x)/(partial y),
  gamma_y = u_x (partial u_y)/(partial x) + u_y (partial u_y)/(partial y),
  gamma_z = 0
) $

Nel calcolo, tenere a mente che:
$ (partial u)/(partial x) = (partial r)/(partial x) (partial)/(partial r)(u_x) $

e che:
$ r^2 = x^2 + y^2 arrow.r.long cases(
  (partial r)/(partial x) &= (partial)/(partial x)(x^2 + y^2)^(1/2) = 1/2 (x^2 + y^2)^(-1/2) dot 2x = x/r,
  (partial r)/(partial y) &= y/r
) $

$ gamma_x &= u_x (partial u_x)/(partial x) + u_y (partial u_x)/(partial y) \
  u_x (partial u_x)/(partial x) &= (- (u y)/r) (partial r)/(partial x) (partial)/(partial r)(- (u y)/r) = (u y^2)/r x/r (partial)/(partial r)(u/r) $

$ u_y (partial u_x)/(partial y) &= ( (u x)/r) dot (partial)/(partial y)(- (u y)/r) \
  &= - (u x)/r [u/r + y (partial)/(partial y)(u/r)] \
  &= - (u x)/r [u/r + y (partial r)/(partial y) (partial)/(partial r)(u/r)] \
  &= - (u x)/r [u/r + y y/r (partial)/(partial r)(u/r)] $

Quindi:
$ gamma_x &= (u x y^2)/r^2 (partial)/(partial r)(u/r) - (u^2 x)/r^2 - (u x y^2)/r^2 (partial)/(partial r)(u/r) \
      &= -u^2/r^2 x $

Risolvendo anche per $gamma_y$ ottengo:
$ arrow(gamma) = -u^2/r^2 mat(delim: "[", x; y; 0) $

= Esercizio 4
Calcolare la divergenza dei campi di moto dell'es. 1 e dell'es. 2.

$arrow.r$ Per l'es. 1 è banale, nulla dipende da $arrow(x)$.

$arrow.r$ Es. 2. $nabla dot arrow(u) = (partial u_x)/(partial x) + (partial u_y)/(partial y) + (partial u_z)/(partial z)$

$ (partial)/(partial x)(-u(r) y/r) + (partial)/(partial y)(u(r) x/r) + (partial u_z)/(partial z) &= -y/r (partial u)/(partial x) - u (partial)/(partial x)(y/r) + x/r (partial u)/(partial y) + u (partial)/(partial y)(x/r) \
  &= -y/r (partial r)/(partial x) (partial u)/(partial r) + (u y)/r^2 (partial r)/(partial x) + x/r (partial r)/(partial y) (partial u)/(partial r) - (u x)/r^2 (partial r)/(partial y) \
  &= -(y x)/r^2 (partial u)/(partial r) + (u y x)/r^3 + (x y)/r^2 (partial u)/(partial r) - (u x y)/r^3 = 0 $

  == Conclusione esercizio di cinematica: verifica di incomprimibilità
Per completare il calcolo della divergenza del campo di velocità in coordinate polari/cartesiane, esplicitiamo le derivate della coordinata radiale $r = (x^2 + y^2)^(1/2)$ rispetto a $x$ e $y$:
$ (partial r) / (partial x) = 1/2 (x^2 + y^2)^(-1/2) dot.op 2 x = x / r , quad (partial r) / (partial y) = 1/2 (x^2 + y^2)^(-1/2) dot.op 2 y = y / r $
Sostituendo $(partial r)/(partial x) = x/r$ e $(partial r)/(partial y) = y/r$ nei termini dello sviluppo della divergenza:
$ -y / r (partial r) / (partial x) (partial u) / (partial r) - 1 / r^2 (partial r) / (partial x) u + dots.h = - (x y) / r^2 (partial u) / (partial r) - (x y) / r^3 u + (x y) / r^2 (partial u) / (partial r) + (x y) / r^3 u = 0 $
I termini misti in $(x y)/r^2 (partial u)/(partial r)$ e $(x y)/r^3 u$ risultano uguali e di segno opposto e si elidono a coppie, confermando che:
$ nabla dot.op bold(u) = 0 $
Il campo di velocità assegnato è dunque fisicamente consistente con il moto di un fluido incomprimibile (a densità costante). In generale, quando viene fornita una soluzione per il campo di velocità, verificare che soddisfi la condizione di divergenza nulla rappresenta il primo controllo di coerenza fisica da effettuare.

#v(1em)

// [RIORDINATO DA AUDIO]
Riscrivo dunque il Th. di Reynolds:

$ d/(d t) integral_D rho x dif V &= integral_D rho (D x)/(D t) dif V - integral_D nabla dot (rho x arrow(u)) dif V + integral_S rho x arrow(u)_s dot arrow(n) dif S \
&= integral_D rho (D x)/(D t) dif V + integral_S rho x [arrow(u)_s - arrow(u)] dot arrow(n) dif S $

Se $arrow(u)_s = arrow(u)$:

$ d/(d t) integral_(D(t)) rho x dif V = integral_D rho (D x)/(D t) dif V $

Se $x = arrow(u)$:

$ d/(d t) integral_D rho arrow(u) dif V = integral_D rho (D arrow(u))/(D t) dif V $

Variazione della quantità di moto del volume MATERIALE di fluido.
Per $V -> 0$, considero particella fluida:
// [DA AUDIO]
Nella formulazione differenziale, la derivata materiale $(D arrow(u))/(D t)$ rappresenta l'accelerazione della particella fluida e $rho$ è la massa per unità di volume: integrando il termine $rho (D arrow(u))/(D t)$ su un volume materiale $D$, si ottiene l'equivalente del termine $m arrow(a)$ del secondo principio della dinamica.

$ rho (D arrow(u))/(D t) &= arrow(F)_V + arrow(F)_S \
&= integral_D rho arrow(g) dif V + integral_S bold(sigma) dot arrow(n) dif S $

- $sigma_(i j)$ - tensore simmetrico implica due contributi:

$ sigma_(i j) = underbrace((sigma_(i j))_"eq", "statico o" arrow(u) "uniforme") + underbrace((sigma_(i j))_"din", "i.e." arrow(u)(arrow(x))) $

$ (sigma_(i j))_"eq" = mat(-p, 0, 0; 0, -p, 0; 0, 0, -p) = -p delta_(i j) $

$ integral_D rho (D arrow(u))/(D t) dif V &= integral_D rho arrow(g) dif V + integral_S bold(sigma) dot arrow(n) dif S \
&= integral_D rho arrow(g) dif V + integral_D nabla dot bold(sigma) dif V $
// [DA AUDIO]
Il primo termine a secondo membro rappresenta la risultante delle forze di volume $arrow(F)_V$, mentre il secondo termine rappresenta la risultante delle forze di superficie $arrow(F)_S$, riscritta come integrale di volume della divergenza del tensore degli sforzi $nabla dot.op bold(sigma)$ grazie al teorema della divergenza di Gauss.

$ rho (D u_i)/(D t) &= rho g_i + (partial)/(partial x_j) sigma_(i j) \
&= rho g_i - (partial)/(partial x_j) (p delta_(i j)) ==> $

$ rho (D u_i)/(D t) = rho g_i - (partial p)/(partial x_i) $

Eq. di Eulero.
// [DA AUDIO]
Nel ricavare l'equazione di Eulero abbiamo assunto che, anche quando il fluido è in movimento, il tensore degli sforzi mantenga la stessa forma isotropa del caso statico, ovvero $sigma_(i j) = -p delta_(i j)$, trascurando il contributo dinamico viscoso $(sigma_(i j))_"din"$.

Perché $-p delta_(i j) = sigma_(i j)$?

$ T_i = sigma_(i j) n_j &= mat(-p, 0, 0; 0, -p, 0; 0, 0, -p) mat(0; 0; 1) \
&= (0, 0, -p) $

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    Sforzo esercitato dal fluido sulla parete.
  ],
  [
    
  ]
)
#v(1em)

// [RIORDINATO DA AUDIO]
Se considero un fluido a densità costante $rho = "cost."$:

$ cases(
  (partial u_j)/(partial x_j) = 0,
  (D u_i)/(D t) = -1/rho (partial p)/(partial x_i) + g_i
) $

$ cases(
  nabla dot arrow(u) = 0,
  (D arrow(u))/(D t) = -1/rho nabla p + arrow(g)
) $

4 equazioni $<==>$ 4 incognite:

$ (arrow(u), p) $

Il sistema va completato con delle condizioni al bordo. In caso di parete solida, si impone la condizione di impermeabilità:

$ arrow(u) dot arrow(n) = 0 $

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: (center + horizon, center + horizon),
  [
    $arrow(u)$ non deve avere una componente perpendicolare alla parete.
  ],
  [
    
  ]
)
#v(1em)
// [DA AUDIO]
Adottando il modello di fluido ideale (Eulero), in cui sono assenti i termini viscosi del tensore degli sforzi, sulla parete solida è possibile imporre unicamente la condizione di impermeabilità $arrow(u) dot.op arrow(n) = 0$, mentre non è possibile imporre la condizione di aderenza (_no-slip_, ossia velocità tangenziale nulla a parete). Questo costituisce un vantaggio dal punto di vista della semplificazione analitica, ma rappresenta un forte limite fisico che conduce a paradossi (come il paradosso di D'Alembert).
