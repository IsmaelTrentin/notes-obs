---
tags:
  - analysis
locale: en
---

## Observations

Integration is the opposite of integration (excluding $c$), meaning:

$$
f(x) \xmapsto{D} f' \xmapsto{\int} \int f'(x)dx = f(x)
$$

## Undefined Integrals

A function $F(x)$ is the **primitive** of $f(x)$ if:

$$
F'(x) = f(x) \quad \forall x \in [a, b]
$$

example:

$$
\begin{align}
f(x) &= 2x \\
F(x) &= x^2 \\
F'(x) &= 2x \\
\implies &F'(x) = f(x)
\end{align}
$$

since the derivation of constants is $0$:

$$
F(x) + c \quad c \in \mathbb{R}
$$

Let $G(x)$ be a primitive of $f(x)$ and $F(x)' = f(x)$:

$$
(F(x) - G(x))' = f(x) - f(x) = 0
$$

this produces a constant function, giving us:

$$
F(x) - G(x) = c
$$

Defining the undefined integral as:

$$
\int f(x)dx = \{F(x) + c : c \in \mathbb{R}\}
$$

it is the set of all and only the primitives of $f(x)$. 

## Linearity 

Integration is a linear operator.

Sum:

$$
\int (f(x) + g(x))dx = \int f(x)dx + \int g(x)dx
$$

demonstration:

$$
\begin{gather}
\int f(x)dx = F(x) + c_{1} \quad \int g(x)dx = G(x) + c_{2} \\
(F(x) + G(x) + c_{1} + c_{2})' = F'(x) + G'(x) = f(x) + g(x)
\end{gather}
$$

Coefficient multiplication:

$$
\int kf(x)dx = k \cdot \int f(x)dx \quad k \in \mathbb{R}
$$

All together:

$$
\int (af(x) + bg(x))dx = a \int f(x)dx + b \int g(x)dx
$$

## Integration Rules


$$
\begin{gather}
f(x) = x^\alpha \quad \alpha \in \mathbb{R} \setminus \{-1\} \\
\int x^\alpha dx = \frac{x^{\alpha + 1}}{\alpha + 1} + c
\end{gather}
$$

