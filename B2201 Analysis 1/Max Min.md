---
tags:
  - analysis
lang:
  - en
---

## Definition

Let $f(x)$ be a function. A point $(x_{0}, f(x_{0}))$ is:

| type             | def                                                                              |
| ---------------- | -------------------------------------------------------------------------------- |
| absolute maximum | $f(x_{0}) \geq f(x) \quad \forall x \in D_{f}$                                   |
| absolute minimum | $f(x_{0}) \leq f(x) \quad \forall x \in D_{f}$                                   |
| local maximum    | $\exists [a; b] \subseteq D_{f} : f(x_{0}) \geq f(x) \quad \forall x \in [a; b]$ |
| local minimum    | $\exists [a; b] \subseteq D_{f} : f(x_{0}) \leq f(x) \quad \forall x \in [a; b]$ |

## Monotony

$f'(x) \geq 0 \quad \forall x \in I \implies$ Monotona Crescente
se sale poi ha un tratto dritto = non strettamente, se sale e basta = strettamente

## How To

Study sign using $f'$ and zeros of $f$ and $f'$. 

Punti critici:

- edges of $D_f$ (punti di confine)
- stazionari: $f'(x_{0}) = 0  ~\land~ x_{0} \in D_{f}$
- singolari: $f'(x_{0}) \not \exists$ ma $x_{0} \in D_{f}$

find points with $f'=0$
check $sign(f')$ a bit before and after a point in $x_{n}$

### For edges

$$
\begin{align}
I& = [a, b] &\implies& f(a)~f(b) \\
I& = ]a, b[ &\implies& \lim_{ x \to a^+ }f(x_{0})~\lim_{ x \to b^- }f(x_{0}) \\
I& = ]-\infty, +\infty[ &\implies& \lim_{ x \to a^+ }f(x_{0})~\lim_{ x \to b^-  }f(x_{0})
\end{align}
$$

### Flexes

def:

se $f''(x_{0}) = 0$ e 
se $f''(x) < 0$ per $x < x_{0}$ e $f''(x) > 0$ per $x > x_{0}$
oppure $f''(x) > 0$ per $x < x_{0}$ e $f''(x) < 0$ per $x > x_{0}$
allora in $x0$ ho un flesso

ci puo' essere un flesso anche se $f'' \not \exists$. Per esempio in un punto a tangenza verticale dove $f' \not \exists ~\land~ f'' \not \exists$ o nell 'onda'.
Per $x^4$ per esempio pero' $f''=0$ non e' un punto di flesso perche' non cambia segno/convessita'.

in x0 c'e' flesso se cambia la convessita' di f.

quando un punto non e' ne massimo ne minimo, quindi analisi del segno $f'(x_{0})=0$ ha stesso segno sia a sinistra che destra.
Per esempio per $x^3$, il flesso e' in $x=0$ ed e' un flesso a **tangente orizzontale**

```desmos-graph
bottom=-3
top=3
left=-2
right=2
---
x^3
f(x)=3x^2
(0, f(0))
```

#### Test derivata seconda

se $f'(x_{0})=0$ allora:
se $f''(x_{0}) < 0$ allora in $x_{0}$ ho un max (locale)
se $f''(x_{0}) > 0$ allora in $x_{0}$ ho un min (locale)

se $f''(x_{0}) = 0$ niente da fare! usare test della derivata prima

## Convexity

A curve is convex in a range if its tangent line is under the curve $\forall x \in D_{f}$ .

$f$ is convex in $[a; b] \iff f'$ increases in $[a; b]$
$f'$ increases $\iff f''(x) \geq 0 \quad \forall x \in ]a; b[$

```desmos-graph
bottom=0
top=1
left=-2
right=2
---
f(x)=x^2
```

## Concavity

A curve is concave in a range if its tangent line is over the curve $\forall x \in D_{f}$ .

$f$ is concave in $[a; b] \iff f'$ decreases in $[a; b]$
$f'$ decreases $\iff f''(x) \leq 0 \quad \forall x \in ]a; b[$

```desmos-graph
bottom=-1
top=0
left=-2
right=2
---
-x^2
```
