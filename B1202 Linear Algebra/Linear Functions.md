---
tags:
  - linear-algebra
lang:
  - en
---

## Def

Funzione lineare affine:

$$
f(\vec{x}) = A\vec{x} + \vec{b}
$$

Domini: $f: \mathbb{R}^n \rightarrow \mathbb{R}^m$ 
A: mxn quindi x: nx1 e b: mx1

Example

![[linear_function_example.png]]

Esempio noleggio auto:

$f(\vec{x}) = A\vec{x}$

se voglio sapere la settimana $10$: $f(\vec{x_{0}}) = A^{10}\vec{x_{0}}$
perche': $x_{1} = Ax_{0}; x_{2} = Ax_{1} = (AA)x_{0}$

dato output voglio risultato: $\vec{x} = A^{-1}\cdot\text{output}$

$f(\begin{bmatrix}1\\0\end{bmatrix})$ selects the first column vector while $f(\begin{bmatrix}0\\1\end{bmatrix})$, in general:

$$
f(\begin{bmatrix}
c_{1} \\
c_{2} \\
\dots \\
c_{n}
\end{bmatrix})
$$

$1$ picks the column vector, $0$ does not.

Rotate $\frac{\pi}{2}$ matrix: $A=\begin{bmatrix}0 & -1 \\ 1 & 0\end{bmatrix}$

To change center of rotation:

$$
A(\vec{x} - \begin{bmatrix}
dx \\
dy
\end{bmatrix}) + \begin{bmatrix}
dx \\
dy
\end{bmatrix}
$$

where $dx$ and $dy$ are the points from the origin
basically just translate desired center of rotation to origin and then translate back

> che alla fine e' il $+ \vec{b}$

## Define Linearity 

1. $f(x + y) = f(x) + f(y)$
2. $f(kx) = kf(x)$

so having two LI vectors and knowing their output for $f$, we can find every possible output of $f$:

$$
\begin{alignat}{}
f(a=\begin{bmatrix}
1 \\
4
\end{bmatrix}) = \begin{bmatrix}
11 \\
17
\end{bmatrix}\\
f(b=\begin{bmatrix}
-2 \\
3
\end{bmatrix}) = \begin{bmatrix}
0 \\
10
\end{bmatrix} \\
f(\begin{bmatrix}
1 \\
15
\end{bmatrix}) = f(3a + 1b) = 3f(a) + 1f(b) = \begin{bmatrix}
33 \\
61
\end{bmatrix}
\end{alignat}
$$

-> find LC of given LI vectors and use linear properties of $f$.

## Iniettiva Suriettiva

iniettiva: se $x_{1} \ne x_{2} \rightarrow f(x_{1}) \ne f(x_{2})$ -- Ax=b ammette soluzione $\forall~\vec{b}~\in~\mathbb{R}^m$
suriettiva: se per ogni $y ~\in~ B$ esiste un $x ~\in~ A : f(x) = y$
biettiva: soddisfa tutte e due -- Ax=b se ammette soluzione e' unica?

$n \mapsto$ COLONNE
$m\mapsto$ RIGHE

### Iniettiva

$$
dim(Ker(\hat{A})) = 0
$$

meaning al column vector are LI, meaning:

$$
n - rank(\hat{A}) = 0 \Leftrightarrow rank(\hat{A}) = n
$$

putting it all together:

$$
Ker(\hat{A}) = \varnothing \Leftrightarrow dim(Ker(\hat{A})) = 0 \Leftrightarrow dim(Im(\hat{A})) = n \Leftrightarrow rank(\hat{A}) = n
$$

### Suriettiva

$$
dim(Im(A)) = rank(A) = m
$$

quindi se $\vec{b}$ **non** si puo' esprimere come LC dei vettori colonna, $b \notin Im(A)$. Quindi $b ~\in~ \mathrm{Im}(A)$ se e solo se:

$$
rank(A) = rank(A|b)
$$




