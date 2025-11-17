---
tags:
  - calculus2
locale: en
---

## Definition

A multivariable function is a function that

$$
f : D \mapsto \mathbb{R}, \quad x = \{ x_{1}, \dots, x_{m} \} \mapsto f(x) = f(x_{1}, \dots, x_{m}), \quad \text{with }~ D \subseteq \mathbb{R}^{m}
$$

an example of a multivariable function is the flow of current $I$ through a resistor:

$$
I(v, r) = \frac{v}{r}
$$

## Two Variables Functions

### Domain

Let $f$ be a multivariable function where:

$$
f(x, y) = \ln(1 + x^{2} - y)
$$

Its natural domain is the set of all couples of $x$ and $y$ such that $1 + x^{2} - y > 0$, else the logarithm is not defined. Therefore the natural domain of $f$ is the entire set of points "under" the curve defined previously.

### Level Curves

Contour Lines describe the change in height of $f$  where each point $x, y$ of $f$ gets mapped to $k$:

$$
f(x, y) = k
$$

#### Example

Given $f$:

$$
f(x, y) = \ln(1 + x^{2} - y)
$$

Contour line:

$$
\begin{align}
1 + x^{2} - y = k
y = x^{2} + e^{k} - 1
\end{align}
$$
