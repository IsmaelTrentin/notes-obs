---
tags:
  - algos
lang:
  - en
todo: true
---

## Conversions

If $b_{t}$ is a power of $b_{s}$, target digits may be coupled 2 by 2.

### [[🔎]] Examples

$210745_{10} =$ `21` `07` `45` $_{100}$

## 2's Complement

$$-(2^n - H(seq))$$

where $n$ is the number of digits, $H$ is the Horner algorithm and $seq$ is the sequence of digits of the source number.

This is also true:

$$H(seq) = 2^n - k$$

where $k$ is the 2's complement negative number (starting number).
