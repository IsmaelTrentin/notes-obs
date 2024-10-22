---
tags:
  - algos
lang:
  - en
---

## In $\mathbb{N}$

### From base $b$ to $10$

Given $d_{i}$ as the digits of a number in base $b$ and $N$ being the number of digits:

$$H = (((d_{N} \cdot b + d_{N - 1}) \cdot b + d_{N-2}) \cdot \dots) \cdot b + d_{0}$$

### From base $10$ to $b$

Given $k$ being the starting number in base ten and $b$ being the target base:

$$
\begin{alignat}{2}
mod_{2} k &= d_{0} &: r_{0} = mod_{2} k \\
mod_{2} \frac{k - r_{0}}{b} &= d_{1} &: r_{1} = mod_{2} \frac{k - r_{0}}{b} \\
&\dots \\
mod_{2} \frac{k - r_{N}}{b} &= 0 \implies end
\end{alignat}
$$

### [[🔎]] Examples

Given $k=1010_{2}$, convert $k$ in base $10$:

$$(((1 \cdot 2) + 0) \cdot 2 + 1) \cdot 2 + 0 = 10_{10}$$

Given $k=7_{10}$, convert $k$ in base 2:

$$\begin{alignat}{2}
7 \rightarrow mod_{2}7 &= 1 &LSB\\
\frac{7 - 1}{2} \rightarrow mod_{2} 3 &= 1 &\\
\frac{3 - 1}{2} \rightarrow mod_{2} 1 &= 1 &MSB \\
\frac{1 - 1}{2} \rightarrow mod_{2} 0 &= 0 \implies \text{end (ignore)} \\
7_{10} &= 111_{2}
\end{alignat}$$
### Special conversions

If $b_{t}$ is a power of $b_{s}$, target digits may be coupled by the power of $b_s$ to $b_t$.

#### [[🔎]] Examples

$210745_{10} =$ `21` `07` `45` $_{100}$

## In $\mathbb{Z}$ with 2's complement

The algorithm remains the same as with [[#In $ mathbb{N}$|Horner]] in $\mathbb{N}$, but to support a valid representation of negative numbers in base `2`, the [[2's Complement]] is used.

The [[2's Complement]] of $k$, being $x$, is defined as so:

$$-k = -(2^n - x)$$

> $k$ can be $H(seq)$

$-k$ is an integral number and $x$ is the number that subtracted to $2^n$, gives the [[2's Complement]] of the number. $x$ will be what we would use in base `2` to represent $-k$.

So to obtain $x$:

$$x = 2^n - k$$
Having obtained $x$, it can now be converted to base `2` and return a [[2's Complement]] representation of $-k$.

### [[🔎]] Examples

Having $k=17, n=32$:

$$\begin{alignat*}{}
-17 = -(2^{32} - x) \\
x = 2^{32} - 17 = 4294967279 \\
x = FFFFFFEF_{h}
\end{alignat*} $$

## In $\mathbb{Q}$ 

Digits after the decimal point use the respective negative weights:

$$b^{-1},b^{-2},b^{-3},\dots$$

[[🔎]] Example for base `2`:

$$\{ 2^{-1}, 2^{-2}, \dots \} = \left\{  \frac{1}{2}, \frac{1}{4}, \frac{1}{8}, \dots \right\}$$

Applying this concept to the algorithm we get:

$$H = \left( \left( \left( d_{0} \cdot b^{-1} + d_{1} \right) \cdot b^{-1} + d_{2} \right) \dots \right) \cdot b^{-1} + d_{N}$$

Where $N$ is the number of digits after the decimal point and $d_{0}$ is the first digit after the decimal point.

Inverse definition:

_see example below_.

### [[🔎]] Examples

Given the number $k$:
$$k = 0.1101_{2}$$

[[🚨]] Starting from the **right** ($MSB$):

$$H(k) = \left(\left(\left( 1 \cdot \frac{1}{2} + 0\right) \cdot \frac{1}{2} + 1\right) \cdot \frac{1}{2} + 1\right) \cdot \frac{1}{2} + 0 = 0.8125_{10}$$

The inverse algorithm is defined as so:

$$\begin{alignat}{2}
int(0.8125 \cdot 2) &= 1 &LSB \\
int(0.625 \cdot 2) &= 1 \\
int(0.25 \cdot 2) &= 0 \\
int(0.5 \cdot 2) &= 1 &MSB \\
int(0) &\implies end \\
H^{-1}(0.8125) &= 0.1101_{2}
\end{alignat}$$

where $int$ is a function that returns the integral part of a number in $\mathbb{R}$.

> [[👁️]] $LSB$ is the first digit right after the decimal point, while $MSB$ is $b^{-N-1}$

> [[🚨]] unlike [[#In $ mathbb{Z}$ with 2's complement|Horner]] in $\mathbb{Z}$, one more step is required at the end for both normal and inverted

## In $\mathbb{R}$

To represent real numbers, machines need to approximate. In this set, [[2's Complement]] is not defined, hence not used.

Representation error:

$$\text{rounding} \lt \frac{x'_{m} - x_{m}}{2}$$

where $x_m$ is a machine number, meaning a number in $\mathbb{R}$ representable with no error by a machine, and $x'_m$ the next available machine number.

It is better to have an independent $\epsilon_{r}$. Lower numbers will have a much lower $\epsilon_{r}$ than big numbers. This is because the bigger the number the lower the $\epsilon_{r}$.

REFAC:
picture

1 bit sign
8 bit exp BIG ENDIAN
23 bit mantissa BIG ENDIAN

horner:
read the 8 bits and subtract 127
mantissa implies decimal point after the first digit $LSB + 1$ 
total=sign . mantissa . 2\^exp

inv horner:
left-> inv horner N, right-> inv horner Q
to IEE 755 -> NORMALIZE MANTISSA (1.xxxx and compensate exp)