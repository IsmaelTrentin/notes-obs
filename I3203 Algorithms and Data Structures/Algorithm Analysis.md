---
tags:
  - algos
locale: en
---

Give the following algorithm:

```java
int sum(int[] A, int n) {
	int s = 0;
	
	for(int i = 0; i < n; i++) {
		s += A[i];
	}
	
	return s;
}
```

Spatial analysis:

```txt
A -> n
n -> 1
--- input
s -> 1
i -> 1
```

Time analysis:

```text
s=0 -> 1
for... -> 1+ n+1 + n = 2n + 2
s+=... -> 1*n
return s -> 1
tot = 3n + 4 -> O(n)
```

## Order of Growth

In algorithm analysis, we care about how the running time scales with input size, not the exact number of operations.

It is therefore beneficial to use the asymptotic notation.

| notation   | description                     |
| ---------- | ------------------------------- |
| $O()$      | big-o, function upper bound     |
| $\Omega()$ | big-omega, function lower bound |
| $\Theta()$ | theta, function average bound   |
### Big-O

Let $T(n)$ be the running time and $O(f(n))$ the asymptotic behavior of the algorithm:

$$
T(n) = O(f(n)) \iff \exists \{ ~n_{0} \geq 0;~ c > 0 \} ~:~ T(n) \leq c \cdot f(n) ~~\forall~n \geq n_{0}
$$

#### Example

Let

$$
T(n) = 3n^2 + 10n + 5
$$

Show that $T(n) = O(n^2)$.

$$
\begin{align}
T(n) &= 3n^2 + 10n + 5 \\
&\leq 3n^2 + 10n^2 + 5n^2 \quad \text{for } ~n \geq 1~ \text{ we have } ~n \leq n^2~ \text{ and } ~1 \leq n^2\\
&= 18n^2
\end{align}
$$

Therefore we can pick $c = 18$ and $n_{0} = 1$ and conclude that $T(n) = O(n^2)$.

### Big-Omega

Let $T(n)$ be the running time and $\Omega(f(n))$ the asymptotic behavior of the algorithm:

$$
T(n) = \Omega(f(n)) \iff \exists \{ ~n_{0} \geq 0;~ c > 0 \} ~:~ T(n) \geq c \cdot f(n) ~~\forall~n \geq n_{0}
$$

#### Example

Let

$$
T(n) = 7n + 20
$$

Show that $T(n) = \Omega(n)$.

$$
T(n) = 7n + 20 \geq 7n \quad \text{for any } ~n \geq 1
$$

Thus we can choose $c = 7$ and $n_{0} = 1$ and conclude $T(n) = \Omega(n)$.

### Big-Theta

Let $T(n)$ be the running time and $\Theta(f(n))$ the asymptotic behavior of the algorithm:

$$
T(n) = \Theta(f(n)) \iff \exists \{ ~n_{0} \geq 0;~ c_{1},c_{2} > 0 \} ~:~ c_{1} \cdot f(n) \leq T(n) \geq c_{2} \cdot f(n) ~~\forall~n \geq n_{0}
$$

#### Example

Let

$$
T(n) = n^2 + 5n
$$

Show that $T(n) = \Theta(n^2)$.

Pick $c_{1} = 1, c_{2}=2$ and consider $n \geq 5$.

$$
\begin{align}
\text{Lower bound: } &\quad T(n) = n^2 + 5n \geq n^2 = c_{1}n^2 \\
\text{Upper bound: } &\quad T(n) = n^2 + 5n \leq n^2 + n^2 = 2n^2 = c_{2}n^2
\end{align}
$$

> because $5n \leq n^2 \iff n \geq 5$

Therefore, with $c_{1} = 1, c_{2} = 2, n_{0} = 5$, we have $T(n) = \Theta(n^2)$.

### Properties

$$
\text{if } T(n) = O(n) \text{ then } k \cdot T(n) = O(n)
$$

constants do not matter in this notation. valid for all notations.

[[🚨]] only for theta:!!!!!

$$
f(n) = \Theta(g(n)) \implies g(n) = \Theta(f(n))
$$

[[🚨]] only for O and Theta:!!!!!

$$
f(n) = O(g(n)) \implies g(n) = \Omega(f(n))
$$

## Examples

### 1

Given the following code, analyze the time complexity of this algorithm:

```c
int sum(int A[], int n) {
	int S = 0;
	
	for(int i = 0; i < n; i++){ // O(n)
		S += A[i]; // O(1)
	}
	
	return S;
}
```

The loop will end when $i = n$. Therefore we can compute the total amount for the inner operations giving us the final result of:

$$
n \cdot 1 = n \implies O(n)
$$

### 2

Given the following code, analyze the time complexity of this algorithm:

```c
int n; // input
for(int i = 1; i < n; i = i * 2){
	// smt
}
```

Let us create a table to list all iterations:

| it  | $i$     |
| --- | ------- |
| 0   | $1$     |
| 1   | $2$     |
| 2   | $2^2$   |
| $k$ | $2^{k}$ |

We then need to identify when the iterations will end:

$$
\begin{align}
i &< n \\
2^k &< n \\
k &< \log_{2}n
\end{align}
$$

Giving us a time complexity of:

$$
O(\log_{2}n)
$$

### 3

Given the following code, analyze the time complexity of this algorithm:

```c
int n; // input
for(int i = n; i >= 1; i = i / 2){
	// smt
}
```

Let us create a table to list all iterations:

| it  | $i$                   |
| --- | --------------------- |
| 0   | $n$                   |
| 1   | $\frac{n}{2}$         |
| 2   | $\frac{n}{2 \cdot 2}$ |
| $k$ | $\frac{n}{2^k}$       |
Let's identify when the iterations stop and find the condition for that to happen:

$$
i \geq 1 \implies i < 1
$$

We now know that $i = \frac{n}{2^k}$ therefore we can substitute for that and obtain the following inequation:

$$
\begin{align}
1 &> \frac{n}{2^k} \\
2^k &> n \\
k &> \log_{2}n
\end{align}
$$

Giving us the time complexity of:

$$
O(\log_{2}n)
$$
### 4

Given the following code, analyze the time complexity of this algorithm:

```java
int n; // input
for(int i = 1; i * i < n; i++) {
	// smt
}
```

Let us create a table to list all iterations:

| it  | $i$   | $i^2$       |
| --- | ----- | ----------- |
| 0   | $1$   | $1$         |
| 1   | $2$   | $2^2$       |
| 2   | $3$   | $3^2$       |
| $k$ | $k+1$ | $(k + 1)^2$ |

Let's identify when the iterations stop and find the condition for that to happen:

$$
i^2 < n \implies i^2 \geq n
$$

Now that we know the stop condition, we can use the generic $k$ iteration to identify our time complexity. Therefore, we can express $i$ in terms of $k$ knowing that $i^2 = (k + 1)^2$:

$$
\begin{align}
(k + 1)^2 &\geq n \\
k^2 + 2k + 1 &\geq n \\
k^2 &\geq n \quad k^2 \text{ dominates}\\
k &\geq \sqrt{ n }
\end{align}
$$

> we can also think about letting $k \to \infty$ and observe that $k^2$ dominates over all the remaining factors.

Resulting in the following time complexity:

$$
O(\sqrt{ n })
$$

## Recursion Examples

### Factorial

Given the following code, analyze the time complexity of this algorithm:

```java
int fact(int n) {
	if (n == 0) {
		return 1;
	}
	
	return n * fact(n - 1);
}
```

We can start by expressing our time analysis in a function $T(n)$:

$$
T(n) = 
\begin{cases}
1 &\quad n = 0 \\
c + T(n - 1) &\quad n > 0, c \in \mathbb{N}
\end{cases}
$$

> $c$ denotes an arbitrary unit of time for a given operation. We can also substitute it for $1$.

Let us now iterate the algorithm:

$$
\begin{align}
T(1) &= c \\
T(n) &= c + T(n - 1) \\
T(n - 1) &= c + (c + T(n - 2)) = 2c + T(n - 2) \\
&~\vdots \\
&= ic + T(n - i) 
\end{align}
$$

We now need to identify our termination condition:

$$
n - i = 1 \iff i = n - 1
$$

Knowing the condition we can now substitute and simplify the expression:

$$
\begin{align}
(n - 1)c + T(1)  \\
= (n - 1)c + c  \\
= cn - c + c \\
= c \cdot n
\end{align}
$$

Resulting in our time complexity:

$$
O(c \cdot n) \implies O(n)
$$
