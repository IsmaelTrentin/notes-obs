---
tags:
  - algos
locale: en
---

## Spline

$$
f(x) = y_{j} + \frac{y_{j + 1} - y_{j}}{x_{j + 1} - x_{j}}(x - x_{j}) \quad x \in [x_{j}, x_{j + 1}]
$$

## Polynomial

![[Pasted image 20250502154350.png]]

### Newton Polynomial 

$$
\begin{align}
&(x_{0}, y_{0}) &p(x) = y_{0} \quad &\text{interp. } (x_{0}, y_{0}) \\
&(x_{1}, y_{1}) &p(x) = y_{0} + c_{1}(x - x_{0}) \quad &\text{interp. both} \\ 
& &y_{1} = y_{0} + c_{1}(x_{1} - x_{0}) \iff c_{1} = \frac{y_{1} - y_{0}}{x_{1} - x_{0}} \quad & \\
&(x_{2}, y_{2}) &p(x) = y_{0} + c_{1}(x - x_{0}) + c_{2}(x - x_{0})(x - x_{1}) \quad &\text{interp. previous} \\
&\dots &\dots \quad &\dots
\end{align}
$$

Generic form:

$$
p_{n} = p_{n - 1}(x) + c_{n}(x - x_{0})(x - x_{1})\dots(x - x_{n - 1})
$$

This outputs a lower triangular matrix:

$$
\begin{bmatrix}
1 & 0 & 0 & \dots \\
1 & (x_{1} - x_{0}) & 0 & \dots \\
1 & (x_{2} - x_{0}) & (x_{2} - x_{0})(x_{2} - x_{0}) & \dots \\
\vdots & \vdots & \vdots & \ddots
\end{bmatrix}
\begin{bmatrix}
c_{0} \\
c_{1} \\
c_{2} \\
\dots
\end{bmatrix}
=
\begin{bmatrix}
y_{0} \\
y_{1} \\
y_{2} \\
\dots
\end{bmatrix}
$$

