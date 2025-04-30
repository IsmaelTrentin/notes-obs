---
tags:
  - analysis
lang: en
---

## Circumference

Starting from the origin $(0, 0)$, all points must have a distance of $r=2$. This form of implicit equation lets us escape from the definition $y = f(x)$, where $\forall x$ there is only one $y$.

$$
x^2+y^2 = 2^2
$$

With a different center and same $r$, for example $(3, 5)$:

We can define the distance from the center $C = (3, 5)$ as $\vec{CP} = \begin{bmatrix}x - 3 \\ y - 5\end{bmatrix}$, giving us the equation:

$$
\begin{align}
||\vec{CP}||^2 &= r^2  \\
(x - 3)^2 + (y - 5)^2 &= 2^2
\end{align}
$$

## Ellipses

When center is the origin:

$$
\frac{x^2}{a^2} + \frac{y^2}{b^2} = 1
$$

```desmos-graph
a=4
b=2
x^2/a^2 + y^2/b^2=1
y=0|0<x<a|RED
x=0|0<y<b|GREEN

```

> $a$ is red, $b$ is green

With a custom center:

$$
\frac{(x-x_{0})^2}{a^2} + \frac{(y-y_{0})^2}{b^2}=1
$$

```desmos-graph
left=-6;right=14
---
a=4
b=2
x_0=4
y_0=1
(x-x_0)^2/a^2+(y-y_0)^2/b^2=1|PURPLE
y=y_0|x_0<x<x_0+a|RED
x=x_0|y_0<y<y_0+b|GREEN
(x_0,y_0)|label: C
```

> $a$ is red, $b$ is green

## Hyperboles

When center is the origin:

$$
\frac{x^2}{a^2} - \frac{y^2}{b^2} = 1
$$

```desmos-graph
left=-15;right=15
---
a=4
b=2
x^2/a^2 - y^2/b^2=1
y=0|0<x<a|RED
x=a|0<y<b|GREEN
x*(b/a)|dashed|#bbbbbb
x*(-b/a)|dashed|#bbbbbb
```

> $a$ is red, $b$ is green

With a custom center:

$$
\frac{(x-x_{0})^2}{a^2} - \frac{(y-y_{0})^2}{b^2}=1
$$

```desmos-graph
left=-11;right=19
---
a=4
b=2
x_0=4
y_0=1
(x-x_0)^2/a^2-(y-y_0)^2/b^2=1|PURPLE
y=y_0|x_0<x<x_0+a|RED
x=x_0+a|y_0<y<y_0+b|GREEN
(x_0,y_0)|label: C
x*(b/a)-1|dashed|#bbbbbb
x*(-b/a)+3|dashed|#bbbbbb
```

> $a$ is red, $b$ is green

if =-1 rotates by 90deg

### Generic Form

$$
\begin{gather}
Ax^2 + Bxy + Cy^2 + Dx + Ey + F = 0 \\
A,B,C,D,E,F \in \mathbb{R}
\end{gather}
$$

when $A=0,C\not=0$ or $A\not=0,C=0$, the equation describes a simple Parabola.
when $A=0,C\not=0$ or $A\not=0,C=0$ and there is a single variable, the equation describes a pair of [[Lines]].
when $B=0$ there is no "tilt", meaning that the symmetry axes are aligned with the $x$ and $y$ axes.

when $A\not=0,C\not=0$, when can convert the equation in normal form using the [[Completing The Square]] method.

Example:

$$
\begin{gather}
x^2 + 4y^2 - 6x - 8y - 3 = 0 \\
(x^2 - 6x) + 4(y^2 - 2y) = 3 \\
\\
(x^2 - 6x + 9 - 9) + 4(y^2 - 2y + 1 - 1) = 3 \\
(x - 3)^2 - 9 + 4(y - 1)^2 + (4 \cdot -1) = 3 \\
(x - 3)^2 + 4(y - 1)^2 = 3 + 9 + 4 = 16 \\
\\
\frac{(x - 3)^2}{4^2} + \frac{(y - 1)^2}{2^2} = 1

\end{gather}
$$

From this form we can see that $C = (3, 1)$ and $a = 4$ and $b = 2$.
