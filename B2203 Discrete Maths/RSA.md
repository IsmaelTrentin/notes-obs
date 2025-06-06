---
tags:
  - discrete
locale: en
---

## Modular Arithmetics

### Euclid Theorem

$$
\begin{cases}
a = qn + r \\
0 \leq r \leq n - 1
\end{cases}
$$

example:

$$
\begin{align}
&17 \div 7 = 7 \cdot 2 + 3 \\
&\text{quotient} = 2 \\
&\text{remainder} = 3
\end{align}
$$

### Congruency

$$
\begin{gather}
13 \equiv 1 \mod 12 \\
-8 \equiv 2 \mod 10 \text{ true because } -8 - 2 = -10 \quad (r=0)
\end{gather}
$$

## Remainder Classes

$$
\mathbb{Z}_{n} = \{0, 1, 2, n - 1\}
$$

[[#Congruency]] means same Remainder Class

meaning that:

$$
\begin{gather}
7 + 5 = 0 \implies (-7)=5
\end{gather}
$$

### Operations

In $\mathbb{Z}_{n}$:

module applied to results of operations

#### somma inverso:

in generale:

$$
n-a
$$

#### moltiplicativo inverso:

puo' non esistere, se esiste e' difficile da trovare. con i numeri primi tutti hanno un inverso moltiplicativo

example:

$$
\begin{gather}
\mathbb{Z}_{7} = \{0, 1, 2, 3, 4, 5, 6\} \\
2x = 1 \implies x = 4 = 2^{-1} \\
3x = 1 \implies x = 5 = 3^{-1} \\
4x = 1 \implies x = 2 = 4^{-1} \\
5x = 1 \implies x = 3 = 5^{-1} \\
6x = 1 \implies x = 6 = 6^{-1}
\end{gather}
$$

> IN Z7 !!!

in generale:

$$
\varnothing
$$

## Cifrario cesare

to decypher: remainder class n - key

## MCD

se $a = qb + r$

$$
MCD(a, b) = MCD(b, r)
$$

keep iterating, if $r=0$ then $MCD(a,b)=r_{n-1}$

$a$ possiede inverso molt in $\mathbb{Z}_{n}$ se $MCD(a, n) = 1$

### Euclid Algo

if

$$
1 = ka + tn
$$

then

$$
ka = 1 \text{ in } \mathbb{Z}_{n}
$$

therefore

$$
a^{-1} = k \text{ in } \mathbb{Z}_{n}
$$

### Bezout Algo

check slides 😭

## Legendre Algo

we want to perform the following computation:

$$
a^b \text{ in } \mathbb{Z}_{n}
$$

1. transform $b$ into a base $2$ number
2. express $a^b$ as $a^{b_{i}}$, where $b_i$ are the weights of the base $2$.

example:

$$
\begin{align}
&7^9 \text{ in } \mathbb{Z}_{n}& \\
&9_{10} = 1001_{2}& \\
\\
&7 \mod 11 &= 7 \\
&7^2 \mod 11 &= 5 \\
&7^4 \mod 11 = 7^2 \cdot 7^2 \mod 11 = 5 \cdot 5 \mod 11 &= 3 \\
&7^8 \mod 11 = 3 \cdot 3 \mod 11 &= 9 \\
\\
&\implies 7^9 = 7 \cdot 9 \mod 11 = 8
\end{align}
$$

the steps required are:

$$
len(b_{2})
$$

[[🚨]] starting from the LSB!

## Encoding

Use ASCII code - 64 to get into $\mathbb{Z}_{27}$. Each letter code is a coefficient for a power of $27$ form right to left, where LSC is power $0$ and MSC is power $len - 1$. If the result is $\geq n$, we need to split the message to fit it inside $\mathbb{Z}_{n}$.

## Decoding

Go back to $\mathbb{Z}_{27}$ using mod algo with $\mod 27$, the remainders are the letter codes. Where last remainder is MSC and first remainder is LSC, meaning the word is MSC...LSC.

## Encryption

$$
x^{PB_{t}} \implies (x^{PB_{t}})^{PR_{t}} = x
$$

where $PB = \text{public key}, PR = \text{private key}, t = \text{target}, x = \text{message}$.

## Decryption

$$
(x^{PB_{t}})^{{PR_{t}}} = x
$$

## Signing

[[🚨]] this is clear text, it is not encrypted!

$$
s = x^{PR_{o}}
$$

where $s = \text{signed message}, o = \text{owner}$

## Verify signature

$$
x = s^{PB_{o}} = (x^{PR_{o}})^{PB_{o}}
$$

## Summary

where $x = \text{message}$ and sending message $a \mapsto b$

| Operation                 |                                                                                       |
| ------------------------- | ------------------------------------------------------------------------------------- |
| Encrypt                   | $x^{PB_{b}}$                                                                          |
| Decrypt                   | $(x^{PB_{b}})^{PR_{b}}$                                                               |
| Sign                      | $x^{PR_{a}}$                                                                          |
| Check signature           | $(x^{PR_{a}})^{PB_{a}}$                                                               |
| Sign + Encrypt            | $(x^{PR_{a}} \text{ in } \mathbb{Z}_{n_{a}})^{PB_{b}} \text{ in } \mathbb{Z}_{n_{b}}$ |
| Decrypt + Check signature | $(x^{PR_{b}} \text{ in } \mathbb{Z}_{n_{b}})^{PB_{a}} \text{ in } \mathbb{Z}_{n_{a}}$ |

check slides....
