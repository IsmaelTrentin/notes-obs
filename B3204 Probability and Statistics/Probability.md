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

