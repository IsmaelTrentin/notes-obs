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

$$
\int x^{-1}dx = \int \frac{1}{x}dx = \ln(|x|) + c \quad x \ne 0
$$

### Fractions

example:

$$
\int \frac{3x^2 + 2}{x}dx = \int \left( \frac{3x^2}{x} + \frac{2}{x} \right) dx = 3 \int x dx + 2 \int \frac{1}{x} dx = \frac{3}{2}x^2 + 2 \ln(|x|) + c
$$

### e

$$
\int e^{2x}dx = \int \frac{2}{2}e^{2x}dx = \frac{1}{2} \int 2e^{2x}dx = \frac{1}{2} e^{2x} + c
$$

> $(e^{2x})' = 2e^{2x}$

### Exp

remembering that:

$$
\begin{align}
(a^x)' = (e^{\ln a^x})' = (e^{x\ln a})' = e^{x\ln a}\cdot \ln a = e^{\ln a^x} \cdot \ln a = \ln a \cdot a^x
\end{align}
$$

we have:

$$
\int a^x dx = \int \frac{\ln a}{\ln a} \cdot a^x dx = \frac{1}{\ln a} \int \ln a \cdot a^x dx = \frac{1}{\ln a} \cdot (a^x + c)
$$

## Substitution 

$$
\int t'(x) \cdot f(t(x)) dx = \int f(t) dt
$$

just try to have $\int t'(x) \text{ something with t(x)...}$ and then use substitution theorem ......