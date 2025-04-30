---
tags:
  - linear-algebra
locale: en
---

REFAC

transposition -> swap rows with columns

dimension: 2rows 3columns
m righe
n colonne

$$
\begin{bmatrix}
2 & 1 & 1 \\
4 & -6 & 0
\end{bmatrix}
$$

$A_{12} = A[1][2]$ `A[0][1]`

se m=n la matrixe e' quadrata di ordine n

matrix e' simmetrica quando m e m^T sono identiche

diagonale principale -> A11, A22, A33

### operazioni

#### somma:

dimensione deve essere uguale
comp + comp
elemento neutro: matrice nulla (all zeros)
matrice opposta: tutti i segni flippati

#### mult:

termine.eachcomp

#### prodotto di matrici:

NON COMMUTATIVO A.B != B.A
righe per colonne (element x elemtn)
numero elementi uguale per ogni riga e colonna o simmetrici (3,3 con 3,3 o 2,3 con 3,2)
regola=> numero colonne prima = numero righe seconda

##### proprieta':

✅ ASSOCIATIVA
❌ COMMUTATIVO
✅ DISTRIBUTIVA

elemento neutro: id matrix

$$
\begin{bmatrix}
1 & 0 & 0 & \dots \\
0 & 1 & 0 & \dots \\
0 & 0 & 1 & \dots \\
\vdots & \vdots & \vdots & \ddots
\end{bmatrix}
$$

#### inversa:

sistema eq: con abcd dove righe scalar colonne = 0 | 1

es:
(1, 2, 3) riga 2
(4,2, 1) colonna 3
riga 2 scalar colonna 3
3x1 dot 1x3 -> 3x3
1x3 dot 3x1 -> 1x1

si puo fare'?: 2x`3` dot `3`x3
output? `2`x3 dot 3x`3`

output max columns e max rows

#### potenza di una matrice:

deve essere quadrata
prodotto matrice per se stessa. NO ELEVATO

matrix xan be used as functin to transmutate vectors

### Mat identita

100
010
001

### Matrice inversa

cio che moltiplicato ad una matrice (A . A^-1 dove A^-1 e' mat inversa) ritorna la matrice identita

A^-1 . A = Id(A)

Id(A)=I

I . x = x

-> x = A^-1 . b
(Ax=b)

Ma quindi chi e' A^-1?

#### Es 2x2

$$
\begin{bmatrix}
5 & 3 \\
1 & 2
\end{bmatrix}
\begin{bmatrix}
x & y \\
z & w
\end{bmatrix}
=
\begin{bmatrix}
1 & 0 \\
0 & 1
\end{bmatrix}


$$

$$
\begin{cases}
5x &+& 3z &=& 1 \\
5y &+& 3w &=& 0 \\
x &+& 2z &=& 0 \\
y &+& 2w &=& 1
\end{cases}
$$

scambia elementi sulla main diagonale
li altri fermi ma cambiano segno
tutto per det^-1
dove det = cross tra diagonali (1 . 4 - 2 . 3)

$$
A^-1 = \frac{1}{ad-bc}
\begin{bmatrix}
d & -b \\
-c & a
\end{bmatrix}
$$

example 2:

having:

$$
\begin{cases}
x &+& 3y &=& 5 \\
4x &+& 7y &=& 10
\end{cases}
$$

solve using:

$$
\begin{bmatrix}
x \\
y
\end{bmatrix}
=
\begin{bmatrix}
1 & 3 \\
4 & 7
\end{bmatrix}^{-1}
\begin{bmatrix}
5 \\
10
\end{bmatrix}
$$

#### and when det=0?

infinite matrici che non ammettono inversa -> matrici singolari
implies that there is no other matrix that multiplied with this one gives an Id matrix

## Determinante

Per matrici quadrate $n \times n$

$$
ad - bc
$$

se `0` matrice e' singolare -> vettori colonna e riga sono LD
se `!0` matrice ha inversa e identita' -> vettori colonna sono LI

det e' l'area generata da due vettori sul piano (parlando di una 2x2). derivato da un cross con i vettori, aggiungendo un componente 0 per arrivare a R3. la norma del cross e' l'area che e' anche il determinante

create singular mat: prendi 3 numeri, l'ultimo e' bc - a = 0

## ALGO di LaPlace

signs of each element alternate like a chessboard starting from the + on the top left.
pick a random row or col

$$
-2\cdot \det[\text{matrice ottenuta rimuovendo riga e colonna del el 2}] + 7\cdot \det\dots -11\cdot \det\dots=\text{velore det}
$$

per flippare segno:

$$(-1)^{i + j}$$

> mat complementare (quando rimuovi riga e colonna dell elemnto e tieni quello che rimane)

quindi per riga `2`:

$$
\det(A) = \sum_{i=1}^{n} (-1)^{2 + i}A_{2i}\det(\overline{A_{1i}})
$$

brutta merda perche:

$$
O(n!)
$$

### mat triangolare

alta: zeri sotto main diagonale
bassa: zeri sopra main diagonale

praticamente quando i < j -> 0

---

#### having vectors w,u,v, find a LC of u and v for w:

the system eq now becomes a matrix

$$
\begin{bmatrix}
3 & 5 \\
1 & 2
\end{bmatrix}
\begin{bmatrix}
h \\
k
\end{bmatrix}
=
\begin{bmatrix}
-5 \\
0
\end{bmatrix}
$$

> $det \ne 0$

so the **solution** becomes:

$$
\vec{x} = A^{-1}b
$$

where A is the matrix built with the starting vectors and b is w and vec(x) is \[h, k]
then u.h and v.k, thats the LC

## punto in triangolo: rivisitato

creo $M$, matrice con i vettori AB AC e faccio M^-1.AP
[[Vectorial Geometry#Is P inside ABC?]]

## Gaussian Elimination

Gaussian elimination uses triangular matrices.

Complexity:

$$
O(\sim n^3)
$$

Picking any row and summing a multiple of another row does not alter the determinant. This operation is used to null the starting elements.

$$
R_{i} + kR_{j} \to R_{i} \implies \det(A') = \det(A)
$$

example:

$$
R_{3} + 2R_{4} \to R_{3} \implies \det(A')=\det(A)
$$

Repeat these steps until the matrix reaches a triangular form.

### [[🚨]] Exceptions

When swapping row, the determinant changes sign.

### mat inversa

A -> mat di determinanti delle mat complementari di ogni elemento -> cambio segno agli elementi con i+j dispari -> trasposta -> mult each elem per (det(A))^-1

### terza op riga

$$
kR_{i} \to R_{i} \implies \det \cdot ~k
$$

### gauss jordan

step 1

accosto ID mat a destra creando nuova matrice

step 2

k per annullare primo elem

step 3

k per annullare last elem della mat originale

step 4

mult riga 1 per 3 elem id modificata
mult riga 2 per 4 elem id modificata

## Rank

defines the max number of column vectors that are LI. or that you can extract a submat of n=rank that is not singular

same between norm and transposed

se A=mat\[m,n] -> 0 <= rank(A) <= min(m,n)

rank =0 -> matrice nulla

### mat quadrate

1 <= rank(A) <= n

se det=0 -> tutti vettori colonna LD -> rank != n
se det!=0 -> tutti vettori colonna LI -> rank = n

### mat rettangolari

det != 0 tra complementari determinara LI
e' max rank se e' al rango massimo che puo' avere

singolare => det = 0
non singolare => det != 0

rank->numero di colonne linearmente indipendenti

### submatrix

il rango di una matrice e' la massima dimensione di una submat quadata S di A non singolare

se rank(A)=r:
esiste una submat rxr non singolare
non esiste alcuna submat non singolare di dimensione maggiore di r

### come si calcola

con gaussian elimination e row echelon form

### row echelon form

righe nulle sono le ultime
in ogni riga il pivot (il primo elemento non nullo) e' a destra del pivot della riga precedente
tutti gli elementi sotto un pivot sono nulli
Colonne pivot = colonne linearmente indipendenti:
non e' unica!

### reduced REF

ogni pivot e' 1
tutti gli elementi sopra pivot sono 0
come?

- annullamento elementi
- sopra pivot a 0 sempre usando stessa tecnica
- pivot a uno utilizzando operazione riga (mult riga per k)

colonne libere esprimono LC di colonne pivot per generare la colonna corrente

## Sistemi lineari

Ax=b

$$
\begin{cases}
x_{1}+3x_{2}+5x_{3} = -1 \\
x_{1}+4x_{3}=2
\end{cases}
$$

building the matrix:

$$
\begin{align}
A = \begin{bmatrix}
1&3&5 \\
1&0&4
\end{bmatrix} \\
\\
x=\begin{bmatrix}
x_{1} \\
x_{2} \\
x_{3}
\end{bmatrix} \\
 \\
b=\begin{bmatrix}
-1 \\
2
\end{bmatrix}
\end{align}
$$

giving the following expression:

$$
x_{1}\begin{bmatrix}
1 \\
1
\end{bmatrix}
+
x_{2}\begin{bmatrix}
3 \\
0
\end{bmatrix}
+
x_{3}\begin{bmatrix}
5 \\
4
\end{bmatrix}
= \begin{bmatrix}
-1 \\
2
\end{bmatrix}
$$

augmented matrix:

$$
A~|~b = \begin{bmatrix}
1&3&5&-1 \\
1&0&4&2
\end{bmatrix}
$$

il sistema Ax=b ammette soluzioni solo e solo se rank(A)=rank(A | b)
quindi se rank di augmented aumenta -> no sol

Quando il rango della matrice A e della matrice Aaumentata sono uguali:
Se il rango coincide con il numero di incognite, il sistema ammette una soluzione unica.
Se il rango è inferiore al numero di incognite, il sistema ammette infinite soluzioni.

### sistema ammette soluzioni?

-> rref(A | b) => NON ammette soluzioni se ultima riga e' 0=1
=> analisi colonne non tengono conto della colonna dei risultati => se almeno una colonna libera allora infinite soluzioni , se 0 colonne libere allora 1 sola soluzione

quindi se rank=n 1 sola soluzione altrimenti n-r dove r e' numero parametri

### No solutions / Non invertible A

Use the [[#Projection Matrix]] to find a valid solution. Then use the [[#Pseudoinverse]] to solve:

$$
\begin{align}
\hat{A}\vec{x} &= \hat{P}\vec{b} \\
\vec{x} &= \hat{A}^+\vec{b}'
\end{align}
$$

where $\vec{b}'$ is the projection of the starting invalid solution, thus valid solution, obtained using the [[#Projection Matrix]].

If $rank(\hat{A}) = n$:

$$
\vec{x} = \hat{A}^+\vec{b}
$$

## Polynomial Interpolation

$$
\begin{align}
f(x) &= \sqrt{ x } \\
lx &= \begin{bmatrix}
4&9&16
\end{bmatrix} \\
ly &= map(\sqrt{ x }, lx) \\
y &= a_{0} + a_{1}x + a_{2}x^2 \\
\\
\begin{cases}
a_{0}+4a_{1}+16a_{2}=2 \\
a_{0}+9a_{1}+81a_{2}=3 \\
a_{0}+16a_{1}+256a_{2}=4
\end{cases}
\end{align}
$$

we then build the coefficients matrix:

$$
\begin{bmatrix}
1 & 4 & 16\\
1 & 9 & 81\\
1 & 16 & 256
\end{bmatrix}
\begin{bmatrix}
a_{0} \\
a_{1} \\
a_{2}
\end{bmatrix}
=
\begin{bmatrix}
2 \\
3 \\
4
\end{bmatrix}
$$

this coef mat can be defined as:

$$
\begin{bmatrix}
x_{0}^0 & x_{0} & x_{0}^2 & \dots & x_{0}^{n-1} \\
x_{1}^0 & x_{1} & x_{1}^2 & \dots & x_{1}^{n-1} \\
\dots & \dots & \dots & \dots & \dots \\
x_{n-1}^0 & x_{n-1}^1 & x_{n-1}^2 & \dots & x_{n-1}^{n-1} \\
\end{bmatrix}
$$

solving with $A^{-1} \cdot b$.

$$
\begin{bmatrix}
\frac{36}{35} & \frac{11}{42} & dadadasd
\end{bmatrix}
$$

se le ascisse sono tutte distinte la matrice e' per forza invertibile.

altrimenti usare RREF con matrice aumentata (| termini noti).

to get the error curve:

$$
e(x) = |f(x) - g(x)|
$$

## Column Space

$Im(A)$ or $C(A)$ is the set of the destination vectors that have an $x$. All the LC of the LI column vectors of $A$.
dimensione: $dim(Im(A)) = rank(A)$
base di $Im(A)$: vettori pivot di $rref(A)$

## Null Space

$Ker(A)$ returns the set of starting vectors $\mathbb{R}^n$ (their multiples are implied) $\vec{x}: A\vec{x} = \vec{0}$

To find $Ker(A)$ solve:

$$
f(\vec{x}) = \hat{A}\vec{x} = \vec{0}
$$

example:

$$
\begin{align}
rref(\hat{A}) &= \begin{bmatrix}
1&0&8&6 \\
0&1&-6&-5
\end{bmatrix}  \\ \\
&\text{To find Ker solve} \quad \hat{A}\vec{x} = \vec{0} \\
&\begin{cases}
a + 0b + 8s + 6t = 0 \\
0a + b -6s -5t = 0
\end{cases} \\
\iff & \begin{cases}
a = -8s -6t \\
b = 6s + 5t
\end{cases} \\ \\
Ker(\hat{A}) &= \begin{bmatrix}
-8s-6t \\
6s+5t \\
s \\
t
\end{bmatrix} = s\begin{bmatrix}
-8 \\ 6 \\ 1 \\ 0
\end{bmatrix}
+ t\begin{bmatrix}
-6 \\ 5 \\ 0 \\ 1
\end{bmatrix}
\end{align}
$$

dimension: $dim(Ker(\hat{A})) = n - rank(\hat{A})$
base: column vectors (s\[...], t\[...])

## Pseudoinverse

$$
\hat{A}^+ = (\hat{A}^T \hat{A})^{-1} \hat{A}^T
$$

usage: for linear systems $\hat{A}\vec{x}=\vec{b}$ where $\hat{A}$ is not a square matrix:

$$
\vec{x} = \hat{A}^+\vec{b}
$$

## Projection Matrix

A projection matrix is **always** singular (non invertible). This comes from the fact that it projects a given vector into its defined subspace thus making it impossible for the projection to go outside of the subspace.

$$
\vec{b'} = \vec{a} \frac{\vec{a} \cdot \vec{b}}{\vec{a} \cdot \vec{a}} = \vec{a} \frac{\vec{a}^T \cdot \vec{b}}{\vec{a}^T \cdot \vec{a}} = \frac{\vec{a} \cdot \vec{a}^T}{\vec{a}^T \cdot \vec{a}}\vec{b} = \hat{P}\vec{b}
$$

if $a=A$ and is matrix:

$$
\hat{P} = \hat{A}(\hat{A}^T\hat{A})^{-1}\hat{A}^T=\hat{A}\hat{A}^+
$$

Properties:

$$
\hat{P}^n = \hat{P} \iff \hat{P}^n - \hat{P} = 0
$$

If you subtract the projection from the original, you get the LC of the column vector of $\hat{A}$ for the projection:

$$
b - b' \implies \hat{A}^T \cdot (b - b') = \vec{0}
$$

## Derivation Matrix

Derives any polynomial.

$$
\begin{bmatrix}
1 & 0 & 0 & 0 \\
0 & 1 & 0 & 0 \\
0 & 0 & 1 & 0 \\
0 & 0 & 0 & 1
\end{bmatrix}
\mapsto
\begin{bmatrix}
0 & 1 & 0 & 0 \\
0 & 0 & 2 & 0 \\
0 & 0 & 0 & 3 \\
0 & 0 & 0 & 0
\end{bmatrix}
$$

---

## Use-cases

### Imposte

Una piccola azienda ha realizzato nel 2024 un profitto lordo $P = 668000$. Le imposte da pagare sono:

imposte cantonali $C$: 7% del profitto al netto delle imposte federali e delle imposte sui rifiuti
imposte federali $F$: 29% del profitto al netto delle imposte cantonali e delle imposte sui rifiuti
imposta sullo smaltimento dei rifiuti $S$: 11% del profitto al netto delle imposte cantonali e federali

1 definizione del problema

$$
\begin{align}
C = 0.07(P - F - S) \\
F = 0.29(P - C - S) \\
S = 0.11(P - C - F)
\end{align}
$$

2 mettere in sistema

$$
\begin{cases}
C &+& 0.07F &+& 0.07S &=& 0.07P \\
0.29C &+& F &+& 0.29S &=& 0.29P \\
0.11C &+& 0.11F &+& S &=& 0.11P \\
\end{cases}
$$

3 trasformare in forma $Ax = b$ creando $A, x, b$

$$
A = \begin{bmatrix}
1 & 0.07 & 0.07 \\
0.29 & 1 & 0.29 \\
0.11 & 0.11 & 1
\end{bmatrix}
$$

$$
x = \begin{bmatrix}
C \\
F \\
S
\end{bmatrix}
$$

$$
b = \begin{bmatrix}
0.07P \\
0.29P \\
0.11O
\end{bmatrix}
$$

**se e solo se** $\det(A) \ne 0$, allora si puo' risolvere utilizzando $x = A^{-1} \cdot b$
