---
tags:
  - linear-algebra
lang:
  - en
---
## Definition

Used to define complex systems.

$$\mathbb{R}^n \Rightarrow \text{vector with dimension n}$$

[[👁️]] Note that:

$$\begin{bmatrix}
3 \\ 5
\end{bmatrix} \ne \begin{bmatrix}
5 \\ 3
\end{bmatrix}$$

while for sets:

$$\{1,2,2\} = \{1,2\}$$

## Dependency

Two vectors are defined as **linearly dependent** if one can be expressed as a [[#Linear Combination]] of the other. Otherwise they are **linearly independent**.

### Sets and bases of $\mathbb{R}^n$

Having more vectors than $n$ in $\mathbb{R}^n$ guarantees that $N_{vecs} - n$ are [[#Dependency|linearly dependent]].
To create a valid base for $\mathbb{R}^n$ all vectors need to be [[#Dependency|linearly independent]] from each other. If any of the vectors can be expressed as a [[#Linear Combination]] of one, then the base will not be $\mathbb{R}^n$ but a [[#Dimension]] of $n$, where $n$ is the number of [[#Dependency|linearly independent]] vectors.

### Dimension

A sub-space contained in $\mathbb{R}^n$ of dimension $n - x$ where $n \gt x \ge 1$.

### [[🔎]] Examples

Given the set:

$$\begin{bmatrix}
1 \\
2 \\
3
\end{bmatrix},\begin{bmatrix}
4 \\
5 \\
6
\end{bmatrix},\begin{bmatrix}
7 \\
8 \\
8
\end{bmatrix}$$

This set of vectors can be used to define every vector of $\mathbb{R}^3$. They are all [[#Dependency|linearly independent]].

Given the set:

$$\begin{bmatrix}
1 \\
2 \\
3
\end{bmatrix},\begin{bmatrix}
4 \\
5 \\
6
\end{bmatrix},\begin{bmatrix}
7 \\
8 \\
8
\end{bmatrix},\begin{bmatrix}
2 \\
4 \\
6
\end{bmatrix}$$

Since $\mathbb{R}^3$ can be defined only with 3 vectors, any additional vector is by definition [[#Dependency|linearly dependent]].

Given the set:

$$\begin{bmatrix}
1 \\
2 \\
3
\end{bmatrix},\begin{bmatrix}
4 \\
5 \\
6
\end{bmatrix},\begin{bmatrix}
7 \\
8 \\
9
\end{bmatrix}$$

This vectors create a [[#Dimension]] of $n=2$ in a space of $\mathbb{R}^3$.
## Operations

### $+$ Sum

$$\vec{v} + \vec{u} = \begin{bmatrix}
v_{x} + u_{x} \\
v_{y} + u_{y}
\end{bmatrix}$$

> 👁️ also defined as the **diagonal of a parallelogram**

### $\cdot$ Multiplication

Scalar product or _multiplo reale_

$$\vec{v} \cdot \vec{u} = \begin{bmatrix}
v_{x} \cdot u_{x} \\
v_{y} \cdot u_{y}
\end{bmatrix}$$

Vectors can be multiples of each other

$$k \cdot \vec{v} = \vec{u}$$

such that if $k=2$:

$$2\vec{v} = \vec{u}$$

$$\vec{v} = \frac{1}{2}\vec{u}$$

## [[🛠️]] Applications

### Vector from $A$ to $B$

Given two points: $A, B \in \mathbb{R}$

$$\vec{AB} = \begin{bmatrix}
B_{x} - A_{x} \\
B_{y} - A_{y}
\end{bmatrix} = \begin{bmatrix}
\Delta x \\
\Delta y
\end{bmatrix}$$

This is also **true**:

$$\vec{A} + \vec{v} = B$$

### Linear Combination

$$\vec{a} = k \vec{v} + j \vec{u}$$

Define $\vec{w}$ as a **LC** of $\vec{v}, \vec{u}, \vec{o}$

$$\begin{equation}
    \begin{cases}
kv_{x} + hu_{x} + jo_{x} = w_{x} \\
kv_{y} + hu_{y} + jo_{y} = w_{y} \\
kv_{z} + hu_{z} + jo_{z} = w_{z}
    \end{cases}
\end{equation}
$$

sum is always non parallel to each of the vectors and a LC of $h=1, j=1, k=1, \dots=1$
