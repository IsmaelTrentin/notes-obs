---
tags:
  - discrete
locale: en
---

## Def

?????????????

$$
y^2 = x^3 + ax + b
$$

...

$$
\begin{align}
P = (x_{1}, y_{1}) \quad Q = (x_{2}, y_{2}) \\
m = \frac{\Delta y}{\Delta x} \\
x_{3} = m^2 - x_{1} - x_{2} \\
-y_{3} = -y_{1} - m(x_{3} - x_{1}) \\
P + Q = (x_{3}, -y_{3})
\end{align}
$$

if $P = -Q \implies P + Q = 0$:

```desmos-graph
a = -7
b = 10
y^2=x^3+ax+b
P=(1, 2)
Q=(1, -2)
x=1|dashed
```

if $P = Q$

$$
\begin{gather}
m = \frac{3x_{1}^2 + a}{2y_{1}} \quad \text{using implicit derivative}
\end{gather}
$$

## In Remainder Classes

Quadratic Remainders are the remainders of a certain class that can be sqrt-ed.

for example in $\mathbb{Z}_{11}$:

$$
\{ 1,3,4,5,9 \}
$$

bho a questo punto honest non si capisce piu niente:

come per RSA il decipher e'

$$
\sqrt{ a } =a^{(p+1)/4}
$$

dove

$$
p = 4m-1
$$

quindi per cripto useremo:

```
E(<primo della forma di p>, e bho non ha spiegato)
```

