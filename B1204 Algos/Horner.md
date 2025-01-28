---
tags:
  - algos
lang:
  - en
---

## In $\mathbb{N}$

### From base $b$ to $10$

Given $d_{i}$ as the digits of a number in base $b$ and $N$ being the number of digits:

$$
H = (((d_{N} \cdot b + d_{N - 1}) \cdot b + d_{N-2}) \cdot \dots) \cdot b + d_{0}
$$

### From base $10$ to $b$

Given $k$ being the starting number in base ten and $b$ being the target base:

$$
\begin{alignat}{2}
mod_{2} k &= d_{0} &: k = \frac{k - d_{0}}{b} \\
mod_{2} k &= d_{1} &: k = \frac{k - d_{1}}{b} \\
&\dots \\
mod_{2} \frac{k_{N} - d_{N}}{b} &= 0 \implies end
\end{alignat}
$$

### Excel Implementation

Bits to decimal:

| $d_i$   | $n \leftarrow$               |
| ------- | ---------------------------- |
| $d_{0}$ | $int(r_{0} = n_{0} \cdot b)$ |
| $d_{1}$ | $int(r_{1} = n_{1} \cdot b)$ |
| $d_{2}$ | $int(r_{i} = n_{i} \cdot b)$ |
| $\dots$ | $\dots$                      |
|         | $int(0)$                     |

Decimal to bits:

| $n \leftarrow$                  | $d_{i}$                      |
| ------------------------------- | ---------------------------- |
| $k$                             | $int(r_{0} = n_{0} \cdot b)$ |
| $r_{0} \cdot 2 - d_{0}$         | $int(r_{1} = n_{1} \cdot b)$ |
| $r_{i - 1} \cdot 2 - d_{i - 1}$ | $int(r_{i} = n_{i} \cdot b)$ |
| $\dots$                         | $\dots$                      |
|                                 | $int(0)$                     |


### [[🔎]] Examples

Given $k=1010_{2}$, convert $k$ in base $10$:

$$
(((1 \cdot 2) + 0) \cdot 2 + 1) \cdot 2 + 0 = 10_{10}
$$

Given $k=7_{10}$, convert $k$ in base 2:

$$
\begin{alignat}{2}
7 \rightarrow mod_{2}7 &= 1 &LSB\\
\frac{7 - 1}{2} \rightarrow mod_{2} 3 &= 1 &\\
\frac{3 - 1}{2} \rightarrow mod_{2} 1 &= 1 &MSB \\
\frac{1 - 1}{2} \rightarrow mod_{2} 0 &= 0 \implies \text{end (ignore)} \\
7_{10} &= 111_{2}
\end{alignat}
$$
### Special conversions

If $b_{t}$ is a power of $b_{s}$, target digits may be coupled by the power of $b_s$ to $b_t$.

#### [[🔎]] Examples

$210745_{10} =$ `21` `07` `45` $_{100}$

## In $\mathbb{Z}$ with 2's complement

The algorithm remains the same as [[#In $ mathbb{N}$|Horner]] in $\mathbb{N}$, but to support a valid representation of negative numbers in base `2`, the [[2's Complement]] is used.

The [[2's Complement]] of $k$, named $x$, is defined as:

$$
-k = -(2^N - x)
$$

$-k$ is a negative integral number and $x$ is the number that subtracted to $2^N$ gives $k$. This $x$ is the [[2's Complement]] representation of $-k$ in base `2` with $N$ bits.

So to obtain $x$:

$$
x = 2^N - k
$$

Having obtained $x$, it can now be converted to base `2` and return a [[2's Complement]] representation of $-k$.

### From bits to decimal

$$
-k = -(2^N - H(seq))
$$

### From decimal to bits

$$
\begin{alignat}{}
x_{seq} = H^{-1}(2^N + k) &\iff& k < 0
\end{alignat}
$$

### [[🔎]] Examples

Having $k=17, n=32$:

$$
\begin{alignat*}{}
-17 = -(2^{32} - x) \\
x = 2^{32} - 17 = 4294967279 \\
x = FFFFFFEF_{h}
\end{alignat*} 
$$

## In $\mathbb{Q}$ 

Digits after the decimal point use the respective negative weights:

$$
b^{-1},b^{-2},b^{-3},\dots
$$

[[🔎]] Example for base `2`:

$$
\{ 2^{-1}, 2^{-2}, \dots \} = \left\{  \frac{1}{2}, \frac{1}{4}, \frac{1}{8}, \dots \right\}
$$

For the digits before the decimal point, [[#In $ mathbb{N}$|Horner in N]] algorithms must be used.

### From bits to decimal

[[🚨]] **Starting from the right** ($LSB$):

$$
H = \left( \left( \left( d_{N - 1} \cdot b^{-1} + d_{N - 2} \right) \cdot b^{-1} + d_{N - 3} \right) \dots \right) \cdot b^{-1} + 0
$$

Where $N$ is the number of digits after the decimal point and $d_{0}$ is the first digit after the decimal point.

[[🚨]] Unlike [[#In $ mathbb{N}$|Horner]] in $\mathbb{N}$, **one more step** is required at the end for the normal algorithm

### From decimal to bits

$$
\begin{alignat}{3}
int(k \cdot b) &= d_{0} &:k &= k - (k \cdot b) &\text{ }\text{ }\text{MSB} \\
int(k \cdot b) &= d_{1} &:k &= k_{-1} - (k_{-1} \cdot b) \\
\dots \\
int(k_{N} \cdot 2) &= d_{N} &&&\text{ }\text{ }\text{LSB} \\
int(0) &\implies \text{end}
\end{alignat}
$$

### Excel implementation

Bits to decimal:

| $d_i$       | $n \leftarrow$             |
| ----------- | -------------------------- |
| $d_{N - 1}$ | $n = \frac{n_{-1}}{2} + n$ |
| $d_{N - 2}$ | $n = \frac{n_{-1}}{2} + n$ |
| $d_{N - 3}$ | $n = \frac{n_{-1}}{2} + n$ |
| $\dots$     | $\dots$                    |
|             | $int(0)$                   |

Decimal to bits:

| $n \leftarrow$                  | $d_{i}$                      |
| ------------------------------- | ---------------------------- |
| $k$                             | $int(r_{0} = n_{0} \cdot b)$ |
| $r_{0} \cdot 2 - d_{0}$         | $int(r_{1} = n_{1} \cdot b)$ |
| $r_{i - 1} \cdot 2 - d_{i - 1}$ | $int(r_{i} = n_{i} \cdot b)$ |
| $\dots$                         | $\dots$                      |
|                                 | $int(0)$                     |

### [[🔎]] Examples

Given the number $k$:
$$k = 0.1101_{2}$$

**Starting from the right** ($LSB$):

$$
H(k) = \left(\left(\left( 1 \cdot \frac{1}{2} + 0\right) \cdot \frac{1}{2} + 1\right) \cdot \frac{1}{2} + 1\right) \cdot \frac{1}{2} + 0 = 0.8125_{10}
$$

The inverse algorithm is defined as so:

$$
\begin{alignat}{2}
int(0.8125 \cdot 2) &= 1 &MSB \\
int(0.625 \cdot 2) &= 1 \\
int(0.25 \cdot 2) &= 0 \\
int(0.5 \cdot 2) &= 1 &LSB \\
int(0) &\implies end \\
H^{-1}(0.8125) &= 0.1101_{2}
\end{alignat}
$$

where $int$ is a function that returns the integral part of a number in $\mathbb{R}$.

> [[👁️]] $MSB$ is the first digit right after the decimal point, while $LSB$ is $d^{-N-1}$

## In $\mathbb{R}$

To represent real numbers, machines need to approximate. In this set, [[2's Complement]] is not defined, hence not used.

Representation error:

$$
\text{rounding} \lt \frac{x'_{m} - x_{m}}{2}
$$

where $x_m$ is a machine number, meaning a number in $\mathbb{R}$ representable with no error by a machine, and $x'_m$ the next available machine number.

Absolute and relative error:

$$
\begin{align}
\epsilon_{a} &= |x_{m} - n| \\
\epsilon_{r} &= \frac{\epsilon_a}{|n|}
\end{align}
$$

where $n$ is the real number with **no approximation**.

It is better to have an independent $\epsilon_{r}$. Lower numbers will have a much lower $\epsilon_{r}$ than big numbers. This is because the bigger the number the lower the $\epsilon_{r}$.

> [[🛠️]] $x_m$ is the re-conversion in base ten from the bits obtained when applying Horner to $n$. If $n$ is not a machine number, they will be slightly different. That is the absolute error.

refac
absolut error approx way:
0.overflown bits from mantissa \* 2 ^ exp - 23 

for relative
ea/|x| < 2^p-23/|x| < 2^-23
check slides with formulae
-> -1 implies division by two because when using approx the max error will always be half the size of the truncated one

approx:
when 24th' bit is 1The  -> +1
when 24th' bit is 0 -> unchanged

denormalized mantissa is like working with less bits. it is dangerous 


### IEEE 754 Float

![[ieee_754_float.excalidraw]]

### From IEEE 754 to decimal

- sign bit `0` -> positive, `1` -> negative
- [[#From base $b$ to $10$|Horner in N]] the exponent bits and subtract `127`
- [[#In $ mathbb{Q}$|Horner in Q]] the mantissa and add `1.0`
- $n = \text{sign } \cdot \text{ norm mantissa} \cdot 2^{\text{exp}}$

### From decimal to IEEE 754

- [[#From base $10$ to $b$|Inv. Horner in N]] the integral part 
- [[#In $ mathbb{Q}$|Inv. Horner in Q]] the fractional part
- Normalize mantissa (1.mantissa_bits) and compensate exponent

### Exceptions

refac
when exp bits all 0 -> mantissa is 0.bits and exp value switches to 2^-126

not a machine number when bits needed to represent the number overflow the dedicated mantissa space (machine number have a)

absolute error approx