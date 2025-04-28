---
tags:
  - algos
lang:
  - en
---

## Antiderivative / Primitive

Using $F$:
$$
\int_{a}^b f'(x)dx = F(b) - F(a)
$$

where $F$ is the primitive function of $f$ such that:

$$
F'(x) = f(x)
$$

## Def

if $p(x) \sim f(x)$ su $[a, b]$, allora:

$$
\int_{a}^b p(x)dx \sim \int_{a}^b f(x)dx
$$

## Metodo trapezi

$$
A_{tot} = \frac{x_{n}-x_{0}}{n} \sum_{j=0}^{n-1} \frac{f(x_{j}) + f(x_{j+1})}{2}
$$

