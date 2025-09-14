---
tags:
  - algos
locale: en
---

## Bisezione

refac

find **one** f(x) zero in a range by choosing a random point and checking if its above or below the function. each time adjusting to shrink the range.
see excalidraw

$$
k: [a_{k}, b_{k}]
$$

$$
x^* \simeq c_{k} = \frac{a_{k}+b_{k}}{2}
$$

| $k$ | $a_{k}$  | $b_{k}$ | $c_{k}$   | $sgn~f(a_{k})$ | $sgn~f(c_{k})$ | $sgn~f(a_{k} \cdot c_{k})$ |
| --- | -------- | ------- | --------- | -------------- | -------------- | -------------------------- |
| `0` | $0$      | $3$     | $1.5$     | $< 0$          | $< 0$          | $> 0$                      |
| `1` | $1.5$    | $3$     | $2.25$    | $< 0$          | $> 0$          | $< 0$                      |
| `2` | $1.5$    | $2.25$  | $1.875$   | $< 0$          | $> 0$          | $< 0$                      |
| `3` | $1.5$    | $1.875$ | $1.6875$  | $< 0$          | $< 0$          | $> 0$                      |
| `4` | $1.6875$ | $1.875$ | $1.78125$ |                |                |                            |

if f(ak) . f(ck) < 0 -> then is on the left then new range is \[ak, ck]
if f(ak) . f(ck) > 0 -> then is on the right then new range is \[ck, bk]

stima errore:

$$
\epsilon_{k} = |x^* - c_{k}| < \frac{(b_{0}-a_{0})}{2^{k+1}}
$$

## Regula Falsi

line:

$$
f(x) = \frac{y_{a} - y_{b}}{x_{a} - x_{b}}(x - x_{a}) + y_{a}
$$

to find $x^*$:

$$
f(x) = 0
$$

$$
x^* = x_{a} - \frac{y_{a}}{\frac{y_{b} - y_{a}}{x_{b} - x_{a}}}
$$

to find c:

$$
\begin{align} \\
c &= a - \frac{f(a)}{\frac{f(b) - f(a)}{b - a}} \\
c &= b-f(b)\cdot \frac{1}{m} \\
c &= a-f(a)\cdot \frac{1}{m}
\end{align}
$$

where $m$ is:

$$
m=\frac{f(b)-f(a)}{b-a}
$$

per problema geometrico uno dei punti si potrebbe fissare -> MALE!

```desmos-graph
left=-5/2; right=5/2;
top=5/2; bottom=-5/2;
---
f(x)=x^2-2
-2x+y=-2
-3x+y=-4

(0,-2)|label:A
(2,2)|label:B
(1,0)|label:C
(1,-1)|label:f(C)
```

## Ibrido

- RF
- BIS finche punto non si sblocca
- repeat
- 1 iter = 1 RF + n BIS where n is a number of iter until the estremo is unblocked

## Ricorsivi

non garantiscono convergenza

si stabilisce fine quando

$$
|f(x_{k})| < \epsilon
$$

$$
|x_{k} - x_{k-1}| < \epsilon
$$

> dove $\epsilon$ e' la tolleranza

### Secante

def:

$$
x_{j+1} = x_{j} - \frac{f(x_{j})}{\frac{f(x_{j}) - f(x_{j-1})}{x_{j} - x_{j-1}}}
$$

returns/uses sequence of $x$:

$$
x_{0},x_{1},x_{2},\dots,x_{n} \to x^*
$$

convergence (to one zero of $f$):

$$
\lim_{ n \to \infty } |x_{n} - x^*| = 0
$$

### Tangent

line generic form

$$
y = m(x - x_{0}) + y_{0}
$$

for this algo:

$$
y = f'(x_{0})(x-x_{0})+f(x_{0})
$$

> using derivatives $m$ is found through $f'(x_0)$

giving the succession of points:

$$
x_{i} = x_{0} - \frac{f(x_{0})}{f'(x_{0})}
$$

there exists one and only one tangent line for a point.

1st degree recursion

points converge towards $x^*$

### Polynomial Derivative

$$
(f(x) + g(x))' = f'(x)+g'(x)
$$

$$
(kf(x))' = kf'(x)
$$

$$
(x^7)' = 7x^6
$$

Example:

$$
\begin{align}
f(x) &= 5x^2 + 7 & \\
f(x) &= 5x^2 + 0 & \text{derivative 7 = 0 because const} \\
f(x) &= 5 \cdot2 \cdot x + 0 & \text{3rd rule}
\end{align}
$$

with negatives

$$
\begin{align}
f(x) &= -\frac{1}{x} & \\
f(x) &= -x^{-1} & \text{3a regola} \\
f(x) &= +x^{-2} &
\end{align}
$$

### Numeric Derivative

$$
f'(x) \sim \frac{f(x+h)-f(x)}{h} ~~~~~~~ h \in \mathbb{R}^*
$$

> lower $h$ implies higher definition

## Convergence Analysis

middle point in a range is always the best choice since:

$$
\epsilon = \frac{b-a}{2}
$$

guarantees the best outcome for the worst case.

Analysis of precision:

$$
\epsilon_{k} = |x^* - x_{k}|
$$

### Convergence Order

....refac copy formula from slides

$$
C = \frac{e_{k+1}}{e_{k}^p}
$$

first: e_k

e_k dipende da l'x\* corrente in cui si converge!!! ( se ci sono piu zeri )

> p defines at what speed we gain more zeros in precision, for example if $p=2$ each time we gain 2 zeros

SUPER LINEAR when gamma_k -> 0 or $p=1$
LINEAR when gamma_k not -> 0 or $1 < p < 2$
QUADRATIC -> $p=2$

bigger p -> better algo (faster)

### Which algo is better?

BIS & RF -> SEC -> TAN

> from worse to best

SEC and TAN are super linear
BIS is linear

TAN is super linear except when:

$$
f'(x*) = 0
$$

the algo then becomes slower

> same thing as saying that $\text{x*}$ is a double zero ($f(x) = x^2$)
