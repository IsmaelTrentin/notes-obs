---
tags:
  - linear-algebra
locale: en
---

Let's define a function that maps $\mathbb{R}_{3} \to \mathbb{R}_{2}$. This is used to "project" a 3d space into a 2d plane. Altering the primitive vectors will alter all the points.

To define $A$ we have to identify how the primitive vector will change. Example:

$$
\begin{align}
\begin{bmatrix}
1 \\ 0 \\ 0
\end{bmatrix}
&\to
\begin{bmatrix}
-1 \\ -\frac{1}{2}
\end{bmatrix}
\\
\begin{bmatrix}
0 \\ 1 \\ 0
\end{bmatrix}
&\to
\begin{bmatrix}
\frac{1}{2} \\ -1
\end{bmatrix}
\\
\begin{bmatrix}
0 \\ 0 \\ 1
\end{bmatrix}
&\to
\begin{bmatrix}
0 \\ 1
\end{bmatrix}
\end{align}
$$

Let's define $f(\vec{x})$:

$$
f(\vec{x}) = A\vec{x} = \begin{bmatrix}
-1 & \frac{1}{2} & 0 \\
-\frac{1}{2} & -1 & 1
\end{bmatrix}
\begin{bmatrix}
x \\ y \\ z
\end{bmatrix}
$$

Now let's map $\vec{p}=\begin{bmatrix}1\\1\\1\end{bmatrix}$:

$$
f(\vec{p}) = \begin{bmatrix}
-\frac{1}{2} \\ -\frac{1}{2}
\end{bmatrix}
$$

$f(\vec{p})$ is the "projection" of a vector in space $\mathbb{R}_{3}$ (3d) onto a plane of $\mathbb{R}_{2}$ (2d).

The opposite can also be achieved. Which "point" in R2 belonged to R3? Since we are going one dimension up, we'll have infinite points because its a bigger dimension.

Example:
Come si rappresenta la circonferenza che comprende x, y e ha centro della terna?

$$
\begin{bmatrix}
X \\ Y
\end{bmatrix}
=
A\begin{bmatrix}
\cos t \\
\sin t \\
0
\end{bmatrix}
$$
