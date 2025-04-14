---
tags:
  - discrete
lang:
  - en
---

## Modular Arithmetics 

### Euclid Theorem

$$
\begin{cases}
a = qn + r \\
0 \leq r \leq n - 1
\end{cases}
$$

example:

$$
\begin{align}
&17 \div 7 = 7 \cdot 2 + 3 \\
&\text{quotient} = 2 \\
&\text{remainder} = 3
\end{align}
$$

### Congruency 

$$
\begin{gather}
13 \equiv 1 \mod 12 \\
-8 \equiv 2 \mod 10 \text{ true because } -8 - 2 = -10 \quad (r=0)
\end{gather}
$$

## Remainder Classes

$$
\mathbb{Z}_{n} = \{0, 1, 2, n - 1\}
$$

[[#Congruency]] means same Remainder Class

meaning that:

$$
\begin{gather}
7 + 5 = 0 \implies (-7)=5
\end{gather}
$$

### Operations 

In $\mathbb{Z}_{n}$:

module applied to results of operations

#### somma inverso:

in generale:

$$
n-a
$$

#### moltiplicativo inverso:

puo' non esistere, se esiste e' difficile da trovare. con i numeri primi tutti hanno un inverso moltiplicativo 

example:

$$
\begin{gather}
\mathbb{Z}_{7} = \{0, 1, 2, 3, 4, 5, 6\} \\
2x = 1 \implies x = 4 = 2^{-1} \\
3x = 1 \implies x = 5 = 3^{-1} \\
4x = 1 \implies x = 2 = 4^{-1} \\
5x = 1 \implies x = 3 = 5^{-1} \\
6x = 1 \implies x = 6 = 6^{-1}
\end{gather}
$$

> IN Z7 !!!

in generale:

$$
\varnothing
$$

## Cifrario cesare

to decypher: remainder class n - key