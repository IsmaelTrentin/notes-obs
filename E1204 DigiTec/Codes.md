---
tags:
  - digitec
lang: en
---

refac

## BCD

binary coded decimal

0-9

## eccesso 3

complemento 9 -> 9-N

98367

9+3 12
8+3 11
3+3 6
6+3 9
7+3 10

then each result in binary

## Aiken 2421

|     | w2  | w4  | w2  | w1  |
| --- | --- | --- | --- | --- |
| 0   | 0   | 0   | 0   | 0   |
| 1   | 0   | 0   | 0   | 1   |
| 2   | 0   | 0   | 1   | 0   |
| 3   | 0   | 0   | 1   | 1   |
| 4   | 0   | 1   | 0   | 0   |
| 5   | 1   | 0   | 1   | 1   |
| 6   | 1   | 1   | 0   | 0   |
| 7   | 1   | 1   | 0   | 1   |
| 8   | 1   | 1   | 1   | 0   |
| 9   | 1   | 1   | 1   | 1   |

## Gray

| 0   | 0   | 0   | 0   |
| --- | --- | --- | --- |
| 0   | 0   | 0   | 1   |
| 0   | 0   | 1   | 1   |
| 0   | 0   | 1   | 0   |
| 0   | 1   | 1   | 0   |
| 0   | 1   | 0   | 1   |
| 0   | 1   | 0   | 0   |
| 1   | 1   | 0   | 0   |
| 1   | 1   | 0   | 1   |
| 1   | 1   | 1   | 1   |
| 1   | 1   | 1   | 0   |
| 1   | 0   | 1   | 0   |
| 1   | 0   | 1   | 1   |
| 1   | 0   | 0   | 1   |
| 1   | 0   | 0   | 0   |

## Errors

refac

ridondanza -> surplus di info che un codice ha per poter individuare errori

$$
HD_{code} = d + 1
$$

> $HD$: Hamming Distance
> $d$: number of errors (linked to distance)

devo avere un bit in piu' altrimenti non posso detectare error

### parity

even n of ones -> even
odd n of ones -> odd

## Correction

$$
HD_{code} = 2d+1
$$

$$
n = m+r
$$

$$
2^r - 1 \geq m + r
$$

## Examples

consider:

$$
\begin{align}
m&=5bit \\
HD&=3
\end{align}
$$

> $m$: message

qty of bits to correct:

$$
\begin{align}
HD&=2d+1 \\
3&=2d+1 \\
d&=1
\end{align}
$$

calc $r$ (bit di controllo):

$$
\begin{align}
r&=2 \implies& 4-1 &\geq 5+2 ~&\text{ FALSE} \\
r&=3 \implies& 8-1 &\geq 5+3 ~&\text{ FALSE} \\
r&=4 \implies& 16-1 &\geq 5+4 ~&\text{ TRUE}
\end{align}
$$

calc $r_{i}$

$$
\begin{align}
r_{0}=m_{0} \oplus m_{1} \oplus m_{3} \oplus m_{4}\oplus m_{6} \\
\dots \text{check slides}
\end{align}
$$
