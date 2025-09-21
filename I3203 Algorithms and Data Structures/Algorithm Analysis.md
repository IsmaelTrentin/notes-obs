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

A -> n
n -> 1
\--- input
s -> 1
i -> 1

Time analysis:

s=0 -> 1
for... -> 1+ n+1 + n = 2n + 2
s+=... -> 1\*n
return s -> 1
tot = 3n + 4 -> $O(n)$

## Order of Growth

In algorithm analysis, we care about how the running time scales with
input size, not the exact number of operations.

It is therefore beneficial to use the asymptotic notation

| notation   | description                     |
| ---------- | ------------------------------- |
| $O()$      | big-o, function upper bound     |
| $\Omega()$ | big-omega, function lower bound |
| $\Theta()$ | theta, function average bound   |
### Big-O

The running time $T(n)$ is $O(f(n))$ $\iff$ there exist $n_{0} \geq 0$ and $c > 0$ such that $T(n) \leq c \cdot f(n) \forall n \geq n_{0}$.

![[big_O.png]]

## Big-Omega

The running time $T(n)$ is $\Omega(f(n))$ $\iff$ there exist $n_{0} \geq 0$ and $c > 0$ such that $T(n) \geq c \cdot f(n) \forall n \geq n_{0}$.

![[big_Omega.png]]

### Theta

The running time $T(n)$ is $\Theta(f(n))$ $\iff$ there exist $n_{0} \geq 0$ and $c_{1},c_{2} > 0$ such that $c_{1} \cdot  f(n) \leq T(n) \geq c_{2} \cdot f(n) \forall n \geq n_{0}$.

![[big_Theta.png]]

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

