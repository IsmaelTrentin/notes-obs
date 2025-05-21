---
tags:
  - algos
locale: en
---

## Spline

$$
f(x) = y_{j} + \frac{y_{j + 1} - y_{j}}{x_{j + 1} - x_{j}}(x - x_{j}) \quad x \in [x_{j}, x_{j + 1}]
$$

### Quadratic Spline

$$
f_{i}(x) = \frac{z_{i + 1} - z_{i}}{2(x_{i + 1} - x_{i})}(x - x_{i})^2 + z_{i}(x - x_{i}) + y_{i} 
$$

$z$ is obtained recursively 

$$
z_{i + 1} = -z_{i} + 2 \frac{y_{i + 1} - y_{i}}{x_{i + 1} - x_{i}}
$$

where:

$$
z_{0} = f'(x_{0})
$$

### Natural Cubic

uses $z$ and $h$ as parameters to assure continuity for $f''$, where $f''(x_{0}) = z_{0} = 0$ and $f''(x_{n}) = z_{n} = 0$

$$
\begin{cases}
h_{i - 1}z_{i - 1} + 2(h_{i - 1} + h_{i})z_{i} + h_{i}z_{i + 1} = 6\left( \frac{y_{i + 1} - y_{i}}{h_{i}} - \frac{y_{i} - y_{i - 1}}{h_{i - 1}}\right)
\end{cases}
$$

> one case for each $z \setminus \{ z_{0}, z_{n} \}$ 



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

