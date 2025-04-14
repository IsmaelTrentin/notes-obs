---
tags:
  - digitec
lang:
  - en
---

## Half Adder

Inputs: `A` `B`
Outputs: `C_out` `S`
$S = A \oplus B$
$C_{out} = AB$

## Full Adder

Inputs: `C_in` `A` `B`
Outputs: `C_out` `S`
$S = A \oplus B \oplus C_{in}$
$C_{out} =  AB + AC_{in} + BC_{in}$

Ripple-carry full adder -> slow as hell

## Carry Lookahead Adder (CLA)

Generate carry is when the input generates a carry.
$G = AB$
Propagate carry is when a circuit propagates a carry.
$P = A + B$

$$
C_{n+1} = G_{n} + C_{n}P_{n}
$$

$$
t_{CLA} = t_{pg} + t_{pg_{bock}} + \left( \frac{N}{k-1} \right)t_{AND\_OR}+kt_{FA}
$$

## Prefix Adder

???

## Subtractor

just negate B and sum

## Comparator

LessThan: subtract A B and then check A < B

## Logical Shifter

left/right overflow -> 0

## Arithmetic Shifter

right shift (right overflow) -> old MSB