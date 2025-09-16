---
tags:
  - statistics
loca: en
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

1. $0\leq P(E)\leq_{1} \quad E \subset \Omega$
2. $P(\varnothing) = 0 \quad P(\Omega) = 1$
3. $E \cap F = \varnothing \implies P(E \cup F) = P(E) + P(F)$

> where $E$ and $F$ are events


