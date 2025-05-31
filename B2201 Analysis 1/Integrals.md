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

### Per Part Substitution

$$
\int f(x)g'(x) dx = f(x)g(x) - \int f'(x)g(x) dx
$$

used to demonstrate the integral of $ln$:

$$
\begin{gather}
\int \ln x dx = \int 1 \cdot \ln x dx = \ln x \cdot x - \int x \cdot \frac{1}{x} dx = x \cdot \ln x - x + c \quad c \in \mathbb{R} \\
\text{therefore} \\
\int \ln x dx = x \cdot (\ln x - 1) + c \quad c \in \mathbb{R}
\end{gather}
$$

and for trig functions:

$$
\begin{gather}
\int e^x\sin x dx = e^x\sin x - \int e^x\cos x dx = e^x\sin x - e^x\cos x - \int e^x\sin x dx \\
\implies \int e^x\sin x dx = e^x\sin x - e^x\cos x - \int e^x\sin x dx \\
= 2\int e^x\sin x dx = e^x\sin x - e^x\cos x \\
\implies \int e^x\sin x dx = \frac{e^x(\sin x - \cos x)}{2}
\end{gather}
$$

Remember:

$$
\begin{gather}
\left( \frac{1}{x} \right)' = -\frac{1}{x^2} \\
\left( \frac{1}{(x + 1)} \right)' = -\frac{1}{(x + 1)^2}
\end{gather}
$$

## Rational Functions

check photo gallery

## Defined Integrals

Let $f$ be a continuous function in a range $f:[a,b] \mapsto \mathbb{R}$, a defined integral is defined as:

$$
\int_{a}^b f(x)dx
$$

using the "bins" method we can say that the upper and lower sums of $f$ are:

$$
\lim_{ n \to \infty } \underline{S}_{n} = \lim_{ n \to \infty } \overline{S}_{n} = \int_{a}^b f(x)dx 
$$

also know as the Riemann Sum:

$$
\begin{gather}
\lim_{ n \to \infty } R_{n} \\
R_{n} = \sum_{i = 1}^n f(c_{i}) \Delta x_{i} \quad c_{i} \in [x_{i}, x_{i + 1}]

\end{gather}
$$

where

$$
\underline{S}_{n} \leq R_{n} \leq \overline{S}_{n}
$$

Lets introduce negative function, if the area "under" the curve of $f$ in the range $[a,b]$ is:

$$
\int_{a}^b f(x)dx
$$

the area "over" the curve is:

$$
|\int_{a}^b f(x)dx|
$$

giving us the following rules:

$$
\begin{gather}
\int_{a}^a f(x)dx = 0 \\
\int_{b}^a f(x)dx = -\int_{a}^b f(x)dx
\end{gather}
$$

### Properties

Defined integrals are [[Linear Functions|linear]] meaning the following is true:

$$
\int_{a}^b (\alpha f(x) + \beta g(x))dx = \alpha \int_{a}^b f(x)dx + \beta \int_{a}^b g(x)dx
$$

We can split segments over sign change:

$$
\int_{a}^b f(x)dx = \int_{a}^c f(x)dx + \int_{c}^b f(x)dx
$$

If $f(x)\leq g(x)$ then:

$$
\int_{a}^b f(x)dx \leq \int_{a}^b g(x)dx
$$

If $f$ is constant where $f(x) = k$:

$$
\int_{a}^b f(x)dx = (b - a) \cdot k
$$

Triangular inequality 

$$
|\int_{a}^b f(x)dx| \leq \int_{a}^b |f(x)|dx
$$

If $f$ is even:

$$
\int_{-a}^a f(x)dx = 2\int_{0}^a f(x)dx
$$

if $f$ is odd:

$$
\int_{-a}^a f(x)dx = 0
$$

### Average Value Theorem

If $f:[a,b] \mapsto \mathbb{R}$ is continuous then $\exists c \in [a,b]$ such that:

$$
\int_{a}^b f(x)dx = f(c) \cdot (b - a)
$$

so let $m$ be the local minimum and $M$ the local maximum in the range $[a,b]$:

$$
\begin{gather}
m \leq f(x) \leq M \\
\int_{a}^b mdx \leq \int_{a}^b f(x)dx \leq \int_{a}^b Mdx \\
m(b-a) \leq \int_{a}^b f(x)dx \leq M(b-a) \\
m \leq \int_{a}^b \frac{f(x)dx}{(b-a)} \leq M
\end{gather}
$$

meaning:

$$
y = f(c) = \frac{\int_{a}^b f(x)dx}{b-a} \quad c \in [a,b]
$$

## Fundamental Theorem Of Integral Calculus

Let $f$ be a continuous function $f : [a,b] \mapsto \mathbb{R}$,

$$
\phi(x) = \int_{a}^x f(t)dt
$$

where

$$
\phi'(x) = f(x)
$$

meaning that $\phi$ **is a primitive** of $f$.

To define $\phi'(x)$, lets use the [[Derivatives#Point Derivatives]]:

$$
\phi'(x) = \lim_{ h \to 0 } \frac{\phi(x + h) - f(x)}{h} = \lim_{ h \to 0 } \frac{\int_{a}^{x + h} f(t)dt - \int_{a}^x f(t)dt}{h}
$$

simplifying:

$$
\lim_{ h \to 0 } \frac{\int_{a}^x f(t)dt + \int_{x}^{x + h} f(t)dt - \int_{a}^x f(t)dt}{h} = \lim_{ h \to 0 }  \frac{\int_{x}^{x+h} f(t)dt}{h}
$$

we can then spot that this is in the form of the [[#Average Value Theorem]]:

$$
\lim_{ h \to 0 } \frac{\int_{x}^{x+h}f(t)dt}{(x+h)-x} = \lim_{ h \to 0 } f(c_{h}) \quad \text{where} \lim_{ h \to 0 } c_{h} = x
$$

meaning that:

$$
\lim_{ h \to 0 } f(c_{h}) = f(x)
$$

### Direct Consequence

$$
\int_{a}^b f(t)dt = F(b) - F(a) = [F(x)]_{a}^b
$$

since $F$ is a primitive of $f$, this implies that:

$$
F(x) = \phi(x) + c \quad c \in \mathbb{R}
$$

> remember, $\phi$ is a primitive of $f$

therefore:

$$
F(b) - F(a) = \phi(b) + c -(\phi(a) + c) = \phi(b) - \phi(a)
$$

therefore, using $\phi$'s definition:

$$
\int_{a}^b f(t)dt - \int_{a}^a f(t)dt = \int_{a}^b
f(t)dt$$
