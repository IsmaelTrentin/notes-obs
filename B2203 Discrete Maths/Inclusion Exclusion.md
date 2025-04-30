---
tags:
  - discrete
lang: en
---

## Definition

$$
\begin{alignat}{}
|A \cup B| = |A| + |B| - |A \cap B| \\
|A \cup B \cup C| = |A| + |B| + |C| - |A \cap B| - |A \cap C| - |B \cap C| + |A \cap B \cap C| \\
\dots
\end{alignat}
$$

## Example

Having a set $\Omega = \left\{1,2,3,4,\dots,100\right\}$, how many elements are **non** divisible by $2, 3, 5$?

$$
|\Omega| - (|A_{2} \cup A_{3} \cup A_{5}|) = \text{?}
$$

Start by counting the elements for each criteria's set. We can count divisible elements using:

$$
\left\lfloor  \frac{n}{k}  \right\rfloor
$$

where $n$ is the max value of $\Omega$ and $k$ is the divisor we need to check.

$$
\begin{align}
&|A_{2}| = \left\lfloor  \frac{100}{2}  \right\rfloor = 50  \\
&|A_{3}| = \left\lfloor  \frac{100}{3}  \right\rfloor = 33 \\
&|A_{5}| = \left\lfloor  \frac{100}{5}  \right\rfloor = 20 \\
&|A_{2} \cap A_{3}| = \left\lfloor  \frac{100}{2 \cdot 3}  \right\rfloor = 16 \\
&|A_{2} \cap A_{5}| = \left\lfloor  \frac{100}{2 \cdot 5}  \right\rfloor = 10 \\
&|A_{3} \cap A_{5}| = \left\lfloor  \frac{100}{3 \cdot 5}  \right\rfloor = 6  \\
&|A_{2} \cap A_{3} \cap A_{5}| = \left\lfloor  \frac{100}{2 \cdot 3 \cdot 5}  \right\rfloor = 3
\end{align}
$$

we can then use the Inclusion-Exclusion theorem to calculate $|A_{2} \cup A_{3} \cup A_{5}|$:

$$
|A_{2} \cup A_{3} \cup A_{5}| = 50 + 33 + 20 - 16 - 10 - 6 + 3 = 74
$$

giving a final result of:

$$
|\Omega| - 74 = 100 - 74 = 26
$$
