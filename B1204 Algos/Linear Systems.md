---
tags:
  - algos
locale: en
---

## Exact Resolution

See [[Matrixes#Sistemi lineari]]

### LU Decomposition

$$
\begin{cases}
\hat{L} \cdot y = \hat{I} \\
\hat{U} \cdot \hat{A}^{-1} = y\\
\end{cases}
$$

where $\hat{L}$ and $\hat{U}$ are triangular matrices.

$\hat{U}$ is an **upper** triangular matrix achieved with Gaussian Elimination
$\hat{L}$ is a **lower** triangular matrix with $k$ coefficients

Example:

$$
A=\begin{bmatrix}
4&2 \\
3&1
\end{bmatrix}
,k=\frac{3}{4}
$$

$$
\begin{cases}
\begin{bmatrix}
4&2 \\
0&-\frac{1}{2}
\end{bmatrix} &\cdot& \begin{bmatrix}
a_{00}&a_{01} \\
a_{10}&_{11}
\end{bmatrix} &=& \begin{bmatrix}
y_{00}&y_{01} \\
y_{10}&y_{11}
\end{bmatrix} \\
\begin{bmatrix}
1&0 \\
\frac{3}{4}&1
\end{bmatrix} &\cdot& \begin{bmatrix}
y_{00}&y_{01} \\
y_{10}&y_{11}
\end{bmatrix} &=& \begin{bmatrix}
1&0 \\
0&1
\end{bmatrix}
\end{cases}
$$

## Approximated Resolution

### Jacobi Algo

Computational cost for one iteration:

$$
O(n^2)
$$

For $k$ iterations:

$$
\sim kn^2
$$

meaning that if you perform $k=n$ iterations the computational cost becomes:

$$O(n^3)$$

SLOPPY AS HELL!

Definition:

$$
\begin{align}
\vec{x_{j+1}} &= \hat{P} \cdot \vec{x_{j}} + \vec{q} \\
&\text{where} \\
\hat{P} &= \hat{M}^{-1} \cdot \hat{N} \\
\vec{q} &= \hat{M}^{-1} \cdot \vec{b}
\end{align}
$$

where $\hat{M}$ has only the main diagonal elements of $\hat{A}$ and all other elements are $0$.
where $\hat{N}$ has zeros on the main diagonal and all other elements are $-\hat{A}$.

Diagonal matrixes are easily invertible because:

$$
\begin{bmatrix}
\frac{1}{a_{11}}&0&0 \\
0&\frac{1}{a_{22}}&0 \\
0&0&\frac{1}{a_{33}}
\end{bmatrix}
$$

A strictly diagonally dominant matrix is a matrix where the elements on the main diagonal satisfy:

$$
|a_{ij}| > \sum_{i\ne j} |a_{ij}|
$$

If $\hat{A}$ is SDDM, convergence is **guaranteed**.

### Gauss Seidel

$\hat{M}$ is upper diag (diag included) of $\hat{A}$.
$\hat{N}$ is lower diag (diag excluded) of $-\hat{A}$.

$$
\hat{M}\vec{x}_{n} = \hat{N}\vec{x}_{n-1} + \vec{b}
$$

to actually find a $\vec{x}_{n}$ we need to use Substitution for:

$$
\hat{M}\vec{x_{n}} = \vec{b_{n}}
$$

where

$$
\vec{b_{n}} = \hat{N}\vec{x_{n-1}} + \vec{b}
$$
