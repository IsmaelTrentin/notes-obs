---
tags:
  - calculus2
locale: en
---

## Definition

Given a flat region $R$ delimited by $f(x)$ and $g(x)$ in a range $[a, b]$, where $f(x) \geq g(x) ~\forall x \in [a, b]$, the coordinates of the center of gravity $G = (\overline{x}, \overline{y})$ of $R$ are given by:

$$
\begin{alignat}{}
\bbox[14pt, border: 1px solid black]{
\overline{x} = \frac{1}{A} \cdot \int_{a}^{b} x \cdot [f(x - g(x))] dx
} \\[6pt]
\bbox[14pt, border: 1px solid black]{
\overline{y} = \frac{1}{2A} \cdot \int_{a}^{b} [f(x) - g(x)]^{2} dx
}
\end{alignat}
$$

where $A$ is [[Integrals#Areas#Between Functions|area between two functions]].

## Physics Oriented Definition

$$
\overline{x} = \frac{\sum f(x_{i}) \cdot x_{i} \cdot \Delta x}{\sum A_{i}} \overset{\Delta x \to 0}{=} \frac{\int_{a}^{b} x \cdot f(x) dx}{\int_{a}^{b} f(x) dx}
$$

where the numerator is the sum of the moments.

$$
\overline{y} = \frac{\sum \frac{(f(x_{i}))^2}{2} \cdot \Delta x}{\sum A_{i}} \overset{\Delta x \to 0}{=} \frac{\int_{a}^{b} \frac{(f(x))^2}{2} dx}{\int_{a}^{b} f(x) dx}
$$
