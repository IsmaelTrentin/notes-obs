---
tags:
  - linear-algebra
lang: en
---

Transformation matrixes must always be invertible

## Rotation Matrix

In $\mathbb{R}^2$:

With center $O$:

$$
R(\alpha) = \begin{bmatrix}
\cos \alpha & -\sin \alpha  \\
\sin \alpha & \cos \alpha
\end{bmatrix}
$$

With center $C$:

traslate $C$ in $O$, meaning each point shifts by $-\vec{OC}$.
Rotate using $\hat{R}$.
traslate back to $C$, meaning each points shifts by $\vec{OC}$.

$$
\hat{R}\vec{x} + \vec{OC} - \hat{R}\vec{OC}
$$

In $\mathbb{R}^3$ we need a line and a plane with the line as its normal vector that contains the point we want to rotate.

To build terna destrorsa orto-normale: $\vec{v} \times \vec{p}$ because we want to maintain orientation, where $\vec{p}$ is normal to $\vec{v}$.
Then build $\vec{q}$ to complete terna.

Normalize the three vectors: $\vec{a}_{x} = \vec{p}, \quad \vec{b}_{y} = \vec{q}, \quad \vec{c}_{z} = \vec{v}$, meaning they need to have modulus 1. This is done because we are transforming this vectors into the fundamental vectors.

We then have:

$$
\hat{A} = \begin{bmatrix}
\vec{a} & \vec{b} & \vec{c}
\end{bmatrix}
$$

$\hat{A}$ maps the fundamental vectors to $\vec{a},\vec{b},\vec{c}$.

To map $\vec{a},\vec{b},\vec{c}$ into the fundamental vectors we use:

$$
\hat{A}^{-1} = \hat{A}^T
$$

> This is true $\iff \hat{A}$ is an orthonormal matrix

We can then use the origin rotation matrix:

$$
R_{z}(\alpha) = \begin{bmatrix}
\cos \alpha & -\sin \alpha & 0 \\
\sin \alpha & \cos \alpha & 0 \\
0 & 0 & 1
\end{bmatrix}
$$

Giving the formula:

$$
\hat{R} = \hat{A} \cdot \hat{R}_{z}(\alpha) \cdot \hat{A}^T
$$
