---
tags:
  - statistics
locale: en
---

## Definitions

$$
\Omega = \text{sample space}
$$

where

$$
P : \Omega \mapsto [0; 1]
$$

### Coin Flip Experiment

$$
\Omega = \{ \text{H}, \text{T} \}
$$
let's then define $P$:

$$
\begin{align}
P : \Omega \mapsto [0; 1] \\
P(\text{H}) = 0.5\\
P(\text{T}) = 0.5
\end{align}
$$

## Kolmogorov's Axioms

Given a sample space $\Omega$ and a probability function $P$:

1. $0\leq P(E)\leq 1 \quad E \subset \Omega$
2. $P(\varnothing) = 0 \quad P(\Omega) = 1$
3. $E \cap F = \varnothing \implies P(E \cup F) = P(E) + P(F)$

> where $E$ and $F$ are events


## Conditional Probability


$$
P(E | F) = \frac{P(E \cap F)}{P(F)} \iff P(E \cap F) = P(E | F) \cdot P(F))
$$

## Event Factorization

![[event_factorization.excalidraw]]

$$
\begin{align}
& F_{i} \cap F_{j} = \varnothing \quad i \neq j \\
& F_{1} \cup F_{2} \dots F_{n} = \Omega
\end{align}
$$

$$
\begin{align}
P(MA) = P(MA \cap I) + \dots + P(MA \cap M)
\end{align}$$

knowing that:

$$
P(MA \cap F) = P(MA | F) \cdot P(F)
$$

we can achieve the following equation:

$$
P(MA) = P(MA | F_{1}) \cdot P(F_{1}) + \dots + P(MA | F_{n}) \cdot P(F_{n})
$$

## Bayes

Given $P(MA | I)$ we can obtain $P(I | MA)$ using Bayes' theorem as follows:

$$
P(I | MA) = P(MA | I) \cdot \frac{P(I)}{P(MA)}
$$

## Random Variable

Let $(\Omega, P)$ a probability space where $\Omega = \{ \omega_{1}, \dots, \omega_{n} \}$. A random variable is a function that:

$$
X : \Omega \mapsto \mathbb{R}
$$

Random variables are divided in two categories: **Discrete** and **Continuous**.

### Discrete

$$
X \in \{ x_{1}, \dots, x_{k} \}
$$

where the funzione di ripartizione is:

$$
F(x) = P(X \leq x) = \begin{cases}
0 &\quad x < x_{1} \\
p_{1} &\quad x_{1} \leq x \leq x_{2} \\
p_{1} + p_{2} &\quad x_{2} \leq x \leq x_{3} \\
\dots \\
p_{1}+\dots+p_{n} &\quad x_{n-1} \leq x \leq x_{n} \\
1 &\quad x \geq x_{n}
\end{cases}
$$

and the expected value is:

$$
E[X] = \sum_{i=1}^n x_{i} \cdot P(X=x_{i})
$$

### Continuous

$$
X \subseteq \mathbb{R}
$$

### Example

Flip 3 coins back to back:

$$
\Omega = \{ (T,T,T), \dots, (C,C,C) \} \quad |\Omega| = 2^3 = 8
$$

Let's define $X = \text{ \# of heads}$ having $X : \Omega \mapsto \mathbb{R}$, meaning that for an input of $\omega = (T,C,T)$ the function behaves like $X(\omega) = 2$.

First off, lets define what values $X$ can have: 

$$
X \in \{ 0,1,2,3 \}
$$

> meaning that $x_{0}=0, x_{1}=1, \dots$

When can then calculate the single probabilities:

$$
\begin{align}
P(x = 0) = \frac{1}{8} &\quad P(X = 2) = \frac{3}{8} \\
P(x = 1) = \frac{3}{8} &\quad P(X = 3) = \frac{1}{8}
\end{align}
$$

where

$$
\sum_{i=1}^n P(X = x_{i}) = 1
$$

