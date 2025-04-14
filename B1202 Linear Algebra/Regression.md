---
tags:
  - linear-algebra
lang:
  - en
---

## Example

Given $A=(1,1), B=(2,2), C=(3,4), D=(5,8)$:

find:

$$
a_{0}+a_{1}x = y
$$

build the system of equations:

$$
\begin{cases}
a_{0} + a_{1} = 1 \\
a_{0} + 2a_{1} = 2 \\
a_{0} + 3a_{1} = 4 \\
a_{0} + 5a_{1} = 8
\end{cases}
$$


we can directly solve (if we do not need $\hat{P}$ and $\hat{b'}$):

$$
\begin{bmatrix}
a_{0} \\
a_{1}
\end{bmatrix}
=
\hat{A}^+\vec{b'}
$$

or go through the work of finding $\hat{P}$ and $\vec{b'}$. put everything into Ax=b:

$$
\begin{bmatrix}
1&1 \\
1&2 \\
1&3 \\
1&5
\end{bmatrix}
\begin{bmatrix}
a_{0} \\
a_{1}
\end{bmatrix}
=
\begin{bmatrix}
1 \\
2 \\
4 \\
8
\end{bmatrix}
$$

this system has 0 solutions $(rank(\hat{A})=2 \quad rank(\hat{A|b})=3)$ because no line can contain 3+ non aligned points. We have to find the best approximation using the [[Matrixes#Projection Matrix]].

the system then becomes:

$$
\begin{gather}
\begin{bmatrix}
1&1 \\
1&2 \\
1&3 \\
1&5
\end{bmatrix}
\begin{bmatrix}
a_{0} \\
a_{1}
\end{bmatrix}
=
\vec{b'} \\
\begin{bmatrix}
a_{0} \\
a_{1}
\end{bmatrix}
=
\hat{A}^+\vec{b'}
\end{gather}
$$

## Multiple Regression

$$
y = ax_{1} + bx_{2} + cx_{3} + \dots + k
$$