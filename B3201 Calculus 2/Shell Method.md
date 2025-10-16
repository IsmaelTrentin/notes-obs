---
tags:
  - calculus2
locale: en
---

## def

To calculate the volume of solids of revolution we can make use of cylindrical shells, adding up the volumes of an infinite amount of infinitesimally thin shells to obtain the total volume of the solid.

Let $V_c$ be the volume of a cylindrical shell:

$$
V_{c} = 2\pi rh\Delta r
$$

where $h$ is the height of the cylinder and $\Delta r$ is the width of the internal (void) cylinder.

![[c_shell.excalidraw]]

Provided that these variables have been read from the graph, if we want to calculate the volume of a solid of revolution turning **around the y axis**, we can use the following integral:

$$
V = \int_{a}^b 2\pi x f(x) dx
$$

## Between Functions

Let $f$ and $g$ be two positive and continuous functions in the range $[a, b]$ with $f(x) \geq g(x) ~~\forall x\in[a, b]$ and the region $R$ is limited upward by $f$ and downward by $g$ and included between $x=a ~~~~ x=b$. Then the volume $V$ of the solid of revolution obtained by rotating the region $R$ around the $y$ axis is:

$$
V = \int_{a}^b 2\pi x \cdot [f(x) - g(x)] dx
$$

while for a rotation around the vertical [[Lines|line]] $x=k$ we have:

$$
V = \int_{a}^b 2\pi (x - k) \cdot [f(x) - g(x)] dx
$$

![[cshell_rotate_y.png]]

If the rotation is around the $x$ axis instead, we apply the following integral:

$$
V = \int_{c}^d 2\pi y \cdot [f(y) - g(y)]dy
$$

where $f(y)$ is the inverse of $f(x)$, same applies for $g(y)$.

![[cshell_rotate_x.png]]

