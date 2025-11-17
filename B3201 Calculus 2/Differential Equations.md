---
tags:
  - calculus2
locale: en
---

## def

A differential equation is a mathematical equation that relates a function with its [[Derivatives|derivatives]]. It describes how a quantity changes with respect to another, often representing physical, biological, or economic systems where change is continuous.

In simple terms, a differential equation shows the relationship between **a variable and its rate of change**.

sol omogenea + sol particolare

## Order

The order of a differential equation is the order of the highest [[Derivatives|derivative]] present in the equation. Therefore the solution for a differential equation of order $n$, will have at most $n$ free variables.

## Cauchy's Problem

Between all the possible functions that represent solutions, we want to find a specific one with the given initial conditions.

$$
\begin{cases}
F[t, y(t), y'(t), \dots, y^{(n)}(t)] = 0 \\[6pt]
y(t_{0}) = y_{0} \\[6pt]
y'(t_{1}) = y_{1}' \\[6pt]
\vdots \\[3pt]
y^{(n)}(t_{n}) = y_{n}^{(n)}
\end{cases}
$$

Therefore to find a specific solution, knowing $f(t)$ and its needed derivatives, we can solve a system of equations substituting the results using $y_{n}$.

