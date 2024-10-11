---
tags:
  - linear-algebra
  - todo
lang:
  - en
---

## Points and [[Vectors]]

[[Vectors]] can be built using points' coordinates. Given two points $A, B$ in $\mathbb{R}^3$, the vector $\vec{AB}$ can be built like so:

$$\vec{AB} = \begin{bmatrix}
B_{x} - A_{x} \\
B_{y} - A_{y} \\
B_{z} - A_{z} \\
\end{bmatrix}$$

To find the coordinates of point $C$, opposite of $B$ in symmetry to $A$, one can add vectors to points to reach the point's coordinates. Example:

$$C = A - \vec{AB}$$

The distance from $A$ to $B$ is the [[Vectors#Module|module]] of $\vec{AB}$.

## Coordinates

### Polar 

Polar coordinates are defined using a radius $r$ and an angle $\alpha$. The point is the intersection between the [[Lines|line]] traced from the origin with angle $\alpha$ and the circle of radius $r$.

TODO: picture

### Cartesian

I don't think I have to explain these...

### Conversion

Polar to cartesian:

$$(r, \alpha) \implies (r \cdot \cos \alpha, r \cdot \sin \alpha)$$

Cartesian to polar:

$$(x, y) \implies ( \sqrt{ x^2 + y^2 }, \pm \cos^{-1} \frac{x}{r} )$$

## Versor

A versor is a vector that has [[Vectors#Module|module]] **1**. To build a versor for a vector $\vec{x}$, this is valid:

$$\frac{1}{||x||}\vec{x}$$

### [[🔎]] Examples

Having $\vec{x} = \begin{bmatrix} 3 \\ 1 \end{bmatrix}$:

$$\begin{align}
||\vec{x}|| &= \sqrt{ 3^2 + 1^2 } = \sqrt{ 10 } \\
\frac{1}{\sqrt{ 10 }} \cdot \vec{x} &= \begin{bmatrix}
\frac{3}{\sqrt{ 10 }} \\
\frac{1}{\sqrt{ 10 }}
\end{bmatrix} \implies \sqrt{ 0.9 + 0.1 } = 1
\end{align}$$

---

Having a vector $\vec{v}$ with module $||\vec{v}|| = \sqrt{ 10 }$, change the module to be $k=7$ maintaining its direction:

[[🛠️]] The problem can be resolved using a versor:

$$\left( \frac{1}{||\vec{v}||} \cdot k\right) \cdot \vec{v}$$
