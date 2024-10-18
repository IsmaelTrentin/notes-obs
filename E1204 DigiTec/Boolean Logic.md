---
tags:
  - digitec
  - draft
lang:
  - en
---

## SOP Form

Sum Of Products. Pick only the **minterms** that give a `true` $Y$.

$$Y = \sum_{}^{}mi_{i}$$

Example:

$$Y = F(A,B) = \overline{A}B + AB = \sum_{}^{}(1,3)$$

## POS Form

Product of Sums. Pick only the **maxterms** that give a `false` $Y$.

$$Y = \prod_{}^{}MI_{i}$$

Example:

$$Y = F(A,B) = (A+B)(\overline{A}+B) = \prod_{}^{}(0,3)$$

## Axioms

![axioms](_cdn/digitec/boolean_axioms.png)