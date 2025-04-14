---
tags:
  - discrete
lang:
  - en
---

## Basic Combinations

Having 3 of a, 4 of b and 2 of c, what are alle the possible combinations?

$$
3\cdot 4 \cdot 2
$$

and what are the unique combinations?

$$
3 \cdot (4 - 1) \cdot (2 - 1) = 3 \cdot 3 \cdot 1
$$

> $-1$ accounts for that combination's usage


## Number of Divisors of n

To find the # of divisors of $n$ we firstly factor $n$. Then calculate the [[#Basic Combinations|combinations]] adding $1$ to each prime power. 

### Example

$$
n = 55000 = 5 \cdot 11 \cdot 10 \cdot 10 \cdot 10 = 5^4 \cdot 2^3 \cdot 11
$$

$$
\#d = 5 \cdot 4 \cdot 2 = 40
$$

## Permutations

Non unique perms. of a word of length $n$:

$$
n!
$$

Unique:

$$
\frac{n!}{k_{1}!k_{2}!\dots k_{n}!}
$$

### Alphabet example

Having the alphabet $\Omega =\text{[A, F, G, J, L, S, U, W]}$:

- Quante parole diverse di $k$ lettere si possono scrivere? $|\Omega|^k$
- Quante parole diverse di $k$ lettere diverse si possono scrivere? $\prod_{0}^{k - 1} |\Omega| - k$

## Subset Permutations

$$
\frac{n!}{k! (n - k)!} = \begin{pmatrix}
n \\
k
\end{pmatrix}
$$

This is the [[Binomial Coefficient]].

## One into another

$n$ obj in $k$ boxes:

no empty boxes:

$$
\begin{pmatrix}
n -1 \\ k - 1
\end{pmatrix}
$$

empty boxes:

$$
\begin{pmatrix}
n + k - 1 \\ k - 1
\end{pmatrix}
$$


