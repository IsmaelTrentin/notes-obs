---
tags:
  - advanced_maths
locale: en
---

## Heaviside Step Function

$$
u(t) = 
\begin{cases}
0 &\quad t < 0 \\
1 &\quad t > 0 \\
\infty &\quad t = 0
\end{cases}
$$

## Dirac's Delta

It's not defined as a function in the classical sense but as a distribution.

$$
\delta(t) = 
\begin{cases}
0 &\quad t \neq  0 \\
\infty &\quad t = 0
\end{cases}
$$

with the condition:

$$
\int_{-\infty}^{+\infty} \delta(t)dt = 1
$$

### Properties

#### Sampling

$$
\int_{-\infty}^{+\infty} f(t)\delta(t)dt = f(0)
$$

#### Translation

$$
\int_{-\infty}^{+\infty} f(t)\delta(t - t_{0})dt = f(t_{0})
$$

#### Scaling

Given that $a \neq 0$, then:

$$
\delta(at) = \frac{1}{|a|}\delta(t)
$$

### Derivative

$$
\int_{-\infty}^{+\infty} f(t)\delta'(t)dt = -f'(0)
$$

## Integral Transform

An integral transform associates a function $f(t)$, defined inside a specific interval, to another function $F(s)$ through an integral of the following form:

$$
F(s) = \int_{a}^{b} K(t, s) f(t) dt
$$
where $K(t, s)$ is the nucleus of the transformation.

[[👁️]] Such transformations are **linear**.

## Laplace's Transform

Let $f(t)$ be defined $\forall t \geq 0$, the Laplace transform is defined as following:

$$
\bbox[14pt, border: 1px solid black]{
F(s) = \mathcal{L}(f(t))(s) = \int_{0}^{+\infty} e^{-st}f(t)dt
}
$$

with condition that the limit for $s$ exists, being the complex frequency parameter.

[[🚨]] The Laplace's transform therefore also benefits of the **linear** properties!

### Of Dirac's Delta

$$
\bbox[14pt, border: 1px solid black]{
\mathcal{L}(\delta(t))(s) = \int_{0}^{+\infty} \delta(t) e^{-st} dt = e^{0} = 1
}
$$

> using the [[#Dirac's Delta#Sampling]] property

This integral converges for all $s$.

### Of Heaviside's Step Function

Assuming that $\mathrm{Re}(s) > 0$:

$$
\bbox[14pt, border: 1px solid black]{
\mathcal{L}(u(t))(s) = \int_{0}^{+\infty} e^{-st}dt = \lim_{ T \to +\infty } \left. -\frac{1}{s}(e^{-st}) \right|_{0}^{T} = \frac{1}{s}
}
$$

with $t$ as coefficient (or $t \cdot u(t) = t \cdot 1 = t$):

$$
\mathcal{L}(f(t))(s) = \int_{0}^{+\infty} te^{-st}dt
$$

integrating by parts and assuming that $\mathrm{Re}(s) > 0$:

$$
\bbox[14pt, border: 1px solid black]{
= \lim_{ T \to +\infty } \left( -\frac{T}{s}e^{-sT} -\frac{1}{s^{2}}e^{-sT} + \frac{1}{s^{2}} \right) = \frac{1}{s^{2}}
}
$$

### Of Exponential Function

Let $f(t) = e^{at}u(t)$ assuming that $\mathrm{Re}(s) > a$:

$$
\bbox[14pt, border: 1px solid black]{
\mathcal{L}(e^{at}u(t)) = \int_{0}^{+\infty} e^{at}e^{-st}dt = \int_{0}^{+\infty} e^{(a-s)t}dt = \lim_{ T \to +\infty } \frac{1}{a-s}e^{(a-s)T} - \frac{1}{a-s} = \frac{1}{s-a}
}
$$
