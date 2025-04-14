---
tags:
  - discrete
lang:
  - en
---

## Definition

$$
(a + b)^n = \sum_{k=0}^n ~ \begin{pmatrix}
n \\
k
\end{pmatrix} a^kb^{n - k}
$$

$$
(a + b + c + d)^n = \sum_{k_1 + \dots + k = n} ~ \frac{n!}{k_{1}!k_{2}! \dots k_{4}!}
$$

## Properties

For a fixed $n$ the binomial coefficients for $\begin{pmatrix} n \\ k \end{pmatrix}$ are $n + 1$.

$$
\begin{pmatrix} n \\ 0 \end{pmatrix} = \begin{pmatrix} n \\ n \end{pmatrix} = 1
$$

$$
\begin{pmatrix} n \\ 1 \end{pmatrix} = \begin{pmatrix} n \\ n - 1 \end{pmatrix} = n
$$

$$
\begin{pmatrix}
n \\ k
\end{pmatrix}
=
\begin{pmatrix}
n \\ n - k
\end{pmatrix}
$$

$$
\begin{align}
\begin{pmatrix}
n \\ k
\end{pmatrix}
&= 
\begin{pmatrix}
n - 1 \\
k - 1
\end{pmatrix}
+ 
\begin{pmatrix}
n - 1 \\
k
\end{pmatrix}
&\forall ~ n,k ~ > 0
\end{align}
$$

## Pascal Triangle

$n$ row of pascal triangle:

$$
\begin{pmatrix}
n \\
0
\end{pmatrix}
\begin{pmatrix}
n \\
1
\end{pmatrix}
\begin{pmatrix}
n \\
2
\end{pmatrix}
\begin{pmatrix}
n \\
3
\end{pmatrix}
\dots
\begin{pmatrix}
n \\
n
\end{pmatrix}
$$

The sum of the row $n \in N$ is equal to $2^n$:

$$
\sum_{k=0}^{n} \begin{pmatrix}
n \\ k
\end{pmatrix}
= 2^n
$$


