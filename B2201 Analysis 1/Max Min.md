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
| absolute maximum | $f(x_{0}) \geq f(x) \quad \forall x \in D_{F}$                                   |
| absolute minimum | $f(x_{0}) \leq f(x) \quad \forall x \in D_{f}$                                   |
| local maximum    | $\exists [a; b] \subseteq D_{f} : f(x_{0}) \geq f(x) \quad \forall x \in [a; b]$ |
| local minimum    | $\exists [a; b] \subseteq D_{f} : f(x_{0}) \leq f(x) \quad \forall x \in [a; b]$ |

## How To

Study sign using $f'$ and zeros of $f$ and $f'$. 

Punti critici:

- edges of $D_f$ (punti di confine)
- $f'(x) = 0$ (stazionari)
- $f' \not \exists$ (singolari)

## Convexity

A curve is convex if its tangent line is under the curve $\forall x \in D_{f}$ .

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

A curve is concave if its tangent line is over the curve $\forall x \in D_{f}$ .

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
