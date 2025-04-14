---
tags:
  - analysis
lang:
  - en
---

## Point Derivatives

Exists when:

$$
f: [a,b] \rightarrow \mathbb{R} \implies \text{continuous}
$$

incremental ratio:

$$
\frac{f(x_{0} + h) - f(x_{0})}{h}
$$

So the definition of a derivative is:

$$
\text{if } \lim_{ h \to 0 } \frac{f(x_{0} + h) - f(x_{0})}{h} ~~\exists~ < \infty \implies f'(x_{0}) = \text{slope of tangent line in } (x_{0}, f(x_{0}))
$$

> $< \infty$ is used to say that $L$ is a finite number

Example of why $f'$ of a line is the slope of said line:


$$
\begin{align}
f'(x_{0}) &= \lim_{ h \to 0 } \frac{m(x_{0} + h) + q - (mx_{0} + q)}{h} \\
&= \lim_{ h \to 0 } \frac{mx_{0} + mh + q - mx_{0} - q}{h} \\
&= \lim_{ h \to 0 }  \frac{mh}{h} = m
\end{align}
$$

Example for $f(x) = x^2$:

$$
\begin{align}
f'(x_{0}) &= \lim_{ h \to 0 } \frac{(x_{0} + h)^2 - x_{0}^2}{h} \\
&= \lim_{ h \to 0 } \frac{x_{0}^2 + h^2 + 2x_{0}h - x_{0}^2}{h} \\
&= \lim_{ h \to 0 } \frac{h(h + 2x_{0})}{h} \\
&= \lim_{ h \to 0 }  h + 2x_{0} = 2x_{0}
\end{align}
$$

Tangent line equation:

$$
t: y = f'(x_{0})\cdot(x - x_{0}) + f(x_{0}) 
$$

or

$$
y = f'(x_{0})x - f'(x_{0})x_{0} + f(x_{0})
$$

where $m=f'(x_{0})$ and $q=-f'(x_{0})x_{0}+f(x_{0})$.

TODO: transcribe derivate notevoli e regole derivazione

## L'Hopital Theorem

$$
\lim_{ x \to x_{0} } \frac{f(x)}{g(x)} = \lim_{ x \to x_{0} } \frac{f'(x)}{g'(x)} \dots 
$$

a condizione che esista il limite del quoziente delle derivate.

quindi se fai tutti i passaggi e poi esce qualcosa che non esiste allora il teorema non e' valido retroattivamente.

example:

$$
\lim_{ x \to \infty } \frac{e^x}{x^2} = \lim_{ x \to \infty } \frac{e^x}{3x^2} = \lim_{ x \to \infty } \frac{e^x}{6x} = \lim_{ x \to \infty } \frac{e^x}{6} = \infty
$$

for limits with exp:

$$
\begin{gather}
\lim_{ x \to 0^+ } x^x = \lim_{ x \to 0^+ } e^{x \ln x} \\
\lim_{ x \to 0^+ } x\ln x = 0 
\end{gather}
$$

strat 2:

$$
\lim_{ x \to 0^+ } \times^x = L \implies \lim_{ x \to 0^+ } \ln(x^x) = \ln L  
$$
