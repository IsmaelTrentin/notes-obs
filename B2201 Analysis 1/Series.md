---
tags:
  - analysis
lang:
  - en
---

## Defining a limit

### Bounds

For all $\epsilon$ in a defined range, the number of elements in said range is $\infty$.

$$
\forall \epsilon > 0 \text{ in } ]0; \epsilon[ ~\implies~ \#a_{n} = \infty
$$

$$\{a_{n}\}_{n\geq_{1}} ~\text{ e' }~ \begin{align} &\text{Limitata Superiormente} \text{ se } \exists~ C \in \mathbb{R} : a_{n} \leq C ~~\forall~~ n \in \mathbb{N} \\ &\text{Limitata Inferiormente} \text{ se } \exists~ c \in \mathbb{R} : c \leq a_{n} ~~\forall~~ n \in \mathbb{N} \end{align}$$

Infatti $C = 1$ (upper bound) e $c = 0$ (lower bound)

Example:

$$
\{2^i\}_{i ~\in~ \mathbb {N}} ~~~
\begin{align}
&\text{Illimitata SUP} \\
&\text{Limitata INF}
\end{align}
$$

### Monotonicity 

$\{2^i\}_{i ~\in~ \mathbb {N}} ~\forall~ i \in \mathbb{N} \implies a_{i} \leq a_{i + 1} \implies \text{Monotona Crescente}$
$\left\{ \frac{1}{i} \right\}_{i ~\in~ \mathbb {N}} ~\forall~ i \in \mathbb{N} \implies \frac{1}{i + 1} \leq \frac{1}{i} \implies \text{Monotona Decrescente}$

If no monotonicity and values alternate, then it is defined as $\text{Alternating}$.
If monotonicity but values are all identical, $\text{Stazionaria}$.

## Convergence

A convergence exists if a limit exists.

$$
\begin{alignat}{}
\lim_{ n \to \infty } a_{n} = L  \text{ if } \\
\forall \epsilon > 0 ~~\exists~ N \in \mathbb{N}  : \text{ if } n > N \implies |L - a_{n}| < \epsilon
\end{alignat}
$$

where $L \in \mathbb{R}$

A $\lim_{ n \to \infty } = \infty$ defines a divergence

If monotona decrescente e limite inferiore -> converges
If monotona crescente -> limite superiore -> converges

## Rational Functions

having n and m as the degrees of the polynomials and Pn/Qm"
when m>n lim = 0
when n>m lim = ifty
when n=m lim = coeff_n/coeff_m and not 0

asintoto verticale quando denom=0
asintoto orizzontale quando valore per $x=\pm \infty$ converge quindi limite esiste

asintoto obliquo when n=m+1
ruffini and reminder is 0 because x->ifty and asympt is mx+q
of
m=limx->+-ifty f(x)/x
q=limx->+-ifty (f(x)-mx)

## Limiti Notevoli

for $e$:

$$
\lim_{ n \to \infty } \left( 1 + \frac{1}{n} \right)^n = e 
$$

$$
\lim_{ x \to 0 } \frac{e^x - 1}{x} = 1
$$

$$
\lim_{ x \to 0 } \frac{\cos x - 1}{x} = 0
$$

usage:

$$
\lim_{ n \to \infty } \left( 1 + \frac{3}{n} \right)^n = \left( \left( 1+\frac{1}{\frac{n}{3}} \right) \right)^{\frac{n}{3}} = e^3
$$

$$
\lim_{ n \to \infty } \left( \frac{1+5n}{5n} \right)^{\frac{n}{3}} = \left( \frac{1}{5n} + 1 \right)^{\frac{n}{3}} = \left( \left( 1+ \frac{1}{5n} \right)^{5n} \right)^{\frac{1}{5n} \cdot \frac{n}{3}} = e^{\frac{1}{15}}
$$

for $sin$:

$$
\lim_{ x \to 0 } \frac{\sin x}{x} = 1
$$

## Limit of a function

Definition:

$$
\lim_{ x \to x_{0} } f(x) = L
$$

la funzione $f$ tende al limite $L ~\in~ \mathbb{R}$ quando $x$ tende ad $a$ sia da destra che da sinistra.

$$
\text{if} ~~\forall~~ \text{succ.} ~x_{n} \rightarrow x_{0} \implies f(x_{n}) \rightarrow L
$$

The function limit can be different depending on which directions it is approached from.

$0^-$ when approaching $0$ with negative values, from the left
$0^+$ when approaching $0$ with positive values, from the right

for example having:

$$
f(x) = \frac{1}{x-2}
$$

```desmos-graph
f(x)=1/(x-2)
```

a limit for $2$ is not defined so:

$$
\lim_{ x \to 2 } f(x) ~\not\exists
$$

but...

$$
\begin{align}
\lim_{ x \to 2^+ } f(x) = + \infty \\
\lim_{ x \to 2^- } f(x) = - \infty
\end{align}
$$

## how to

sub for x:
if 0/0 -> manip
if n/0 -> asympt. sub for x > n -> lim_n+ and sub for x < n -> lim_n-. basically find the sign of the function


## Continuity 

$$
\lim_{ x \to x_{0} } f(x) = f(x_{0}) 
$$
se vero, e' continua in $x_{0}$.

