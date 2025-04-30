---
tags:
  - linear-algebra
lang: en
---

## Example

Given $A=(1,1), B=(2,2), C=(3,4), D=(5,8)$:

find:

$$
a_{0}+a_{1}x = y
$$

build the system of equations:

$$
\begin{cases}
a_{0} + a_{1} = 1 \\
a_{0} + 2a_{1} = 2 \\
a_{0} + 3a_{1} = 4 \\
a_{0} + 5a_{1} = 8
\end{cases}
$$

we can directly solve (if we do not need $\hat{P}$ and $\hat{b'}$):

$$
\begin{bmatrix}
a_{0} \\
a_{1}
\end{bmatrix}
=
\hat{A}^+\vec{b'}
$$

or go through the work of finding $\hat{P}$ and $\vec{b'}$. put everything into Ax=b:

$$
\begin{bmatrix}
1&1 \\
1&2 \\
1&3 \\
1&5
\end{bmatrix}
\begin{bmatrix}
a_{0} \\
a_{1}
\end{bmatrix}
=
\begin{bmatrix}
1 \\
2 \\
4 \\
8
\end{bmatrix}
$$

this system has 0 solutions $(rank(\hat{A})=2 \quad rank(\hat{A|b})=3)$ because no line can contain 3+ non aligned points. We have to find the best approximation using the [[Matrixes#Projection Matrix]].

the system then becomes:

$$
\begin{gather}
\begin{bmatrix}
1&1 \\
1&2 \\
1&3 \\
1&5
\end{bmatrix}
\begin{bmatrix}
a_{0} \\
a_{1}
\end{bmatrix}
=
\vec{b'} \\
\begin{bmatrix}
a_{0} \\
a_{1}
\end{bmatrix}
=
\hat{A}^+\vec{b'}
\end{gather}
$$

## Multiple Regression

$$
y = ax_{1} + bx_{2} + cx_{3} + \dots + k
$$

## Exponential Functions

Exp functions can be expressed linearly using logarithms.

Let $f$ be an exponential function such that $f(x) = a\cdot b^x$:

$$
\begin{gather}
\ln y = \ln(a\cdot b^x) = \ln a + \ln b\cdot x \\
Y = A + Bx
\end{gather}
$$

We can then linearly regress the function $Y$ and then come back to the original form of $f$.

Extracting some formulas:

$$
\begin{gather}
A = \ln a \\
B = \ln b \\
a = e^A \\
b = e^B \\
f_{l}(x) = e^A \cdot e^{B\cdot x}
\end{gather}
$$

Therefore, given an input $c$, we can perform the regression using:

$$
\begin{align}
\ln(b^x) &= \ln c \\
x \cdot \ln b &= \ln c \\
x &= \frac{\ln c}{\ln b}
\end{align}
$$

Using linear systems:

$$
\begin{cases}
a + x_{1}b = \ln y_{1} \\
a + x_{2}b = \ln y_{2} \\
a + x_{3}b = \ln y_{3} \\
\dots
\end{cases}
$$

This outputs the following impossible linear system:

$$
\begin{bmatrix}
1 & x_{1} \\
1 & x_{2} \\
1 & x_{3} \\
\dots & \dots
\end{bmatrix}
\begin{bmatrix}
a \\ b
\end{bmatrix}
=
\begin{bmatrix}
\ln y_{1} \\
\ln y_{2} \\
\ln y_{3} \\
\dots
\end{bmatrix}
$$

That can be solved by approximating using regression:

$$
\vec{x} = (A^T A)^{-1} A^T \cdot \vec{b}
$$
