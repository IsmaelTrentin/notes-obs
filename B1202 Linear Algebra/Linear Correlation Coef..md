---
tags:
  - linear-algebra
lang:
  - en
---

# Def

Pearson coeff.

piu y = x piu' la correlazione e' maggiore (minore errore = migliore corr.)

$\rho \in [-1, 1]$

$-1$ has a negative slope
$1$ has a positive slope
$0$ has no linear correlation (ie. triangle)

if all points are in a vertical line $\rho$ is undefined because $x1-x2=0$ (cant calc $m$)
if all points are in a horizontal line $\rho$ is undefined -> why?

`X=[x_0, x_1, x_2` `Y=[y_0, y_1, y_2]`
to get $\rho$ we need to translate the vectors such that the best correlation line passes through the origin.
that is achieved by traslating by the center of mass $m$:
$\vec{X} = \vec{X} - m_{X}$
$\vec{Y} = \vec{Y} - m_{Y}$
[[👁️]] where $M$ is the `avg` of all the vector components 
then we calculate the cosine using [[Vectors#Dot Product]]

$$
\rho(\vec{X},\vec{Y}) = \cos(\vec{X} - m_{X}, \vec{Y} - m_{Y}) = \frac{\vec{u} \cdot \vec{v}}{||\vec{u}|| \cdot ||\vec{v}||}
$$

multiple params:

matrice correlazione

$$
\begin{bmatrix}
\rho_{AA} & \rho_{AB} & \rho_{AC} \\
\rho_{BA} & \rho_{BB} & \rho_{BC} \\
\rho_{CA} & \rho_{CB} & \rho_{CC} \\
\end{bmatrix}
$$

where the params are $P \in {A, B, C}$.
main diag is all 1s
$\rho_{BA} = \rho_{AB}$ -> simmetrico

per privacy clienti si usa $A^T A$ quindi se mat clienti e' 10x3 -> $A^T$ e' 3x10 -> output 3x3

quindi la moltiplicazione degli elementi della main diag sono il dot dei vettori.....????????

quindi:

$$
\rho = \frac{M_{ij}}{\sqrt{M_{ii} M_{jj}}}
$$