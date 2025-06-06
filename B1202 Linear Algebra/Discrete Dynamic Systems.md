---
tags:
  - linear-algebra
locale: en
---

## Def

- A starting value $x_0$
- a function $f$ applied to the previous val

$$
x_{0}, f(x_{0}), f(f(x_{0})), f(f(f(x_{0}))), \dots
$$

written in a more formal way:

$$
\begin{cases}
x_{0} \\
x_{t + 1} = f(x_{t})
\end{cases}
$$

## [[Bracketing#Bisezione|Heron Algo]]

Let $n = \sqrt{ 57 }$, we want to find its approximation using a DDS. We know that:

$$
7 < \sqrt{ 57 } < 8
$$

Now lets defines the system:

$$
\begin{cases}
x_{0} = 7 \\
x_{t + 1} = \frac{1}{2}\left( x_{t} + \frac{57}{x_{t}} \right)
\end{cases}
$$

The sequence will converge to $evalf(\sqrt{ 57 })$.

## Newton Algo

[[Bracketing#Tangent]]

## Dynamic Affine Discrete System

In general:

$$
\begin{cases}
x_{0} = k \\
x_{t+1} = ax_{t} + b
\end{cases}
$$

Example:

$$
\begin{cases}
x_{0} = 1000 \\
x_{t+1} = 0.8x_{t} + 100
\end{cases}
$$

```desmos-graph
top=1050
bottom=450
left=-5
right=80
---
x_0 = 1000
a = 0.8
b = 100
E = b/(1 - a)
f(t) = E + a^t(x_0 - E)
```

### Solution

$$
x_{t} = a^tx_{0} + b\sum_{i = 0}^{t - 1}a^i = a^tx_{0} + b \frac{1 - a^t}{1 - a} \quad a \ne 1
$$

where the equilibrium of a system is:

$$
E = \frac{b}{1 - a} \quad a \ne 1
$$

giving the final generic solution:

$$
x_{t} = E + a^t(x_{0} - E)
$$

## Dimension 2

$$
\begin{cases}
\vec{x}_{0} = \vec{v} \\
\vec{x}_{t + 1} = \hat{A}\vec{x}_{t} + \vec{b}
\end{cases}
$$

when $\vec{b} = \vec{0}$, its a closed system, meaning that there is no loss nor gain therefore the sum of the components of $\vec{x}_{t}$ will always be equal to the sum of the components of $\vec{x}_{0}$.

when $\vec{b} \ne \vec{0}$, its an open system, meaning that there is variation.

to get $x_{t - 1}$ invert the system law:

$$
\hat{A}^{-1} \cdot x_{t} - \hat{A}^{-1} \cdot \vec{b} = x_{t - 1}
$$

the equilibrium then becomes:

$$
\vec{E} = (\hat{I} - \hat{A})^{-1} \cdot \vec{b}
$$

the general form is then:

$$
\vec{x}_{t} = \vec{E} + \hat{A}^t(\vec{x}_{0} - \vec{E})
$$

### System Behaviour

When $(\hat{I} - \hat{A})$ is invertible, the [[Matrixes#Eigenvalues]] are LI. Therefore we can define $(\vec{x}_{0} - \vec{E})$ as a linear combination of $v_{1}, v_{2}$. Giving us the following expression:

$$
\vec{x}_{t} = \vec{E} + \hat{A}^t(c_{1}\vec{v}_{1} + c_{2} \vec{v}_{2}) = \vec{E} + c_{1}\hat{A}^t\vec{v}_{1} + c_{2}\hat{A}^t\vec{v}_{2}
$$

where in terms of $\lambda$ becomes:

$$
\vec{x}_{t} = \vec{E} + c_{1}\lambda_{1}^t\vec{v}_{1} + c_{2}\lambda_{2}^t\vec{v}_{2}
$$

By defining it in terms of $\lambda$, we can easily study the behavior of the system as $t \rightarrow +\infty$.

To find the linear combination we can either use the RREF:

$$
RREF(\begin{bmatrix}
v_{1a} & v_{2a} & (\vec{x}_{0} - \vec{E})_{a}  \\
v_{1b} & v_{2b} & (\vec{x}_{0} - \vec{E})_{b} 
\end{bmatrix})
$$

or the matrix that holds $\vec{v}_{1}, \vec{v}_{2}$:

$$\begin{bmatrix}
\vec{v}_{1a} & \vec{v}_{2a} \\
\vec{v}_{1b} & \vec{v}_{2b}
\end{bmatrix}^{-1} \cdot (\vec{x}_{0} - \vec{E})$$
