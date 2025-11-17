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

![[event_factorization.excalidraw|center]]

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

The expected value is a **linear** operator.

The variance is a **quadratic** operator, therefore if we extract values they will need to be squared.

### Discrete

$$
X \in \{ x_{1}, \dots, x_{k} \}
$$

where the partition function is:

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

#### Expected Value

$$
E[X] = \sum_{i=1}^n x_{i} \cdot P(X=x_{i})
$$

#### Variance

$$
Var(X) = E[(X - E[X])^2] = E[X^2] - E[X]^2 \quad \in [0, +\infty]
$$

where 

$$
E[X^2] = \sum_{i=1}^n x_{i}^2 \cdot P(X = x_{i})
$$

#### Standard Deviation

$$
\sigma = \sqrt{ Var(X) }
$$

> [[👁️]] on average

### Continuous

$$
X : \Omega \mapsto I \subseteq R \quad x \in I
$$

Given a continuous random variable, there will always be a density function $f$:

$$
f = \begin{cases}
f(x) \geq 0 \\[6pt]
\int_{-\infty}^{+\infty} f(x) dx = 1
\end{cases}
$$

following:

$$
P(a \leq X \leq b) = \int_{a}^b f(x) dx
$$

and given the previous conditions with can safely say that:

$$
0 \leq P(a \leq X \leq b) \leq 1
$$

while

$$
P(X \geq b) = \int_{b}^{max} f(x)dx
$$

Uniform distribution of $x$:

$$
\begin{align}
X \sim U([0,1])\\[6pt]
f(x) = \begin{cases}
1, &0 \leq x \leq 1 \\
0, &\text{ else}
\end{cases}
\end{align}
$$

#### Expected Value

While the expected value is:

$$
E[X] = \int_{-\infty}^{+\infty} x\cdot f(x)dx
$$

where $f(x)$ is the distribution.

#### Variance

$Var$ and $\sigma$ remain [[#Variance|unchanged]] but to calculate $E[X^2]$ we apply the following:

$$
E[X^2] = \int_{-\infty}^{+\infty} x^2\cdot f(x)dx
$$

### Bernoulli Distribution

Bernoulli distribution is a [[#Random Variable#Discrete|discrete random variable]] with value that are either $0$ or $1$.

$$
X \in \{ 0, 1 \}
$$

where the probabilities can be calculated as follows:

$$
\begin{align}
P(X = 0) = 1 - p \\
P(X = 1) = p
\end{align}
$$

where $0\leq p \leq 1$, giving us:

$$
X \sim B(1, p)
$$

that is, $X$ is distributed according to a Bernoulli distribution with parameter $p$.

#### Expected Value

$$
\begin{alignat}{}
E[X] = 0\cdot(1-p) + 1\cdot p = p\\
E[X^2] = 0^2 \cdot (1-p) + 1^2\cdot p = p
\end{alignat}
$$

#### Variance

$$
Var(X) = p - p^2 = p(1-p)
$$

### Binomial Distribution

Sum of multiple [[#Bernoulli Distribution]]s.

$$
X = X_{1} + X_{2} + \dots + X_{n}
$$

$$
X \sim B(n, p)
$$

where $n$ is the number of experiments and $p$ the probability.

where $X_{i} \sim B(1, p),~~ n \in \mathbb{N}$ and are independent.

$X$ can be of the following values:

$$
X \in \{ 0, 1, 2, \dots, n \}
$$

Therefore the probability, using the [[Binomial Coefficient]], is:

$$
\bbox[14pt, border: 1px solid black]{
P(X = K) = \binom{n}{K} \cdot p^K \cdot (1 - p)^{n-K}
} \quad\quad 0 \leq K \leq n

$$

> let's take for example a batch of matches that you can either win or lose:
> $\binom{n}{K}$ combine $K$ victories on $n$ matches
> $p^K$ victories
> $(1-p)^{n-K}$ defeats


#### Expected Value

$$
E[X] = n\cdot p
$$

#### Variance

$$
Var(X) = n \cdot p \cdot (1 - p)
$$


### Poisson Distribution

This distribution is a specific case of the [[#Binomial Distribution]] with the following limits:

$$
\begin{alignat}{}
X \sim P(\lambda) \\[6pt]
n \to \infty \\
p \to 0 \\
n \cdot p \to \lambda
\end{alignat}
$$

By calculating the limit then we have the following formula:

$$
\bbox[14pt, border: 1px solid black]{
P(X = K) = \frac{\lambda^K \cdot e^{-\lambda}}{K!}
}
$$

### Uniform Distribution

The uniform distribution is a type of [[#Continuous]] [[#Random Variable]]. Denoted as $X \sim U [a,b]$.

$$
f(x) = \begin{cases}
\frac{1}{b-a} \quad a \leq x \leq b \\[6pt]
0 \quad \text{else}
\end{cases}
$$

### Normal Distribution

[[#Continuous]] [[#Random Variable]] denoted as $X \sim N[0,1]$ described by the function:

$$
f(x) = \frac{1}{\sqrt{ 2\pi \sigma^{2} }} \cdot e^{-\frac{(x-\mu)^{2}}{2\sigma^{2}} }
$$

Where $E[X] = 0$ and $Var(X) = \sigma^{2}$

#### Standardization

$$
Z = \frac{X-\mu}{\sigma} \sim N[\mu, \sigma^{2}]
$$

in this case then $E[X] = \mu$ and $Var(X) = \sigma^{2}$

there fore we can calculate the probability in the following way:

$$
P(X \leq k) = P\left( \frac{x-\mu}{\sigma } \leq \frac{k-\mu}{\sigma} \right)
$$

TODO uses linearity check picture on phone

### Exponentials

Exponential distribution is a type of [[#Continuous]] [[#Random Variable]] that usually follows this rule:

$$
f(x) = \lambda \cdot e^{\lambda \cdot x}
$$

#### Expected Value

$$
E[X] = \frac{1}{\lambda}
$$

#### Variance

$$
Var(X) = \frac{1}{\lambda^2}
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

