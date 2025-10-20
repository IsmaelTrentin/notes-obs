---
tags:
  - calculus2
locale: en
---

## Parametric Curves

Let $c$ be a parametric curve defined as follows:

$$
c(t) = \begin{cases}
x = f(t) = t^2 - 1 \\[6pt]
y = g(t) = t^3 - 4t
\end{cases} 
~\quad t \in \mathbb{R}
$$

with the following graph:

```desmos-graph
(t^2-1, t^3 - 4t)\{-5 <= t <= 2\}
```

$x$ and $y$ values are expressed through the change of the variable $t$.

### Derivates and Tangents

To ease notation, we can use the $~\dot{}~$ notation when we are deriving in terms of $t$. For example $\dot{x}$ and $\dot{y}$ mean that we are computing the derivative of $y(t)$ in respect to the variable $t$:

$$
\dot{x} = \frac{dx}{dt} ~\quad~ \dot{y} = \frac{dy}{dt}
$$

this further enables us to represent $dx$ and $dy$ simply by multiplying by $dt$:

$$
dx = \dot{x}dt ~\quad~ dy = \dot{y}dt
$$

In conclusion, this gives us the ability to express $y'$, meaning the derivative in respect to $x$, as follows:

$$
y' = \frac{dy}{dx} = \frac{\dot{y}dt}{\dot{x}dt} = \frac{\frac{dy}{dt}}{\frac{dx}{dt}} = \frac{\dot{y}}{\dot{x}}
$$

## Areas

### Function Bounded

Let $c$ be a parametric function of the following form:

$$
c(t) = \begin{cases}
x = f(t)  \\[6pt]
y = g(t)
\end{cases} ~\quad~ \alpha \leq t \leq \beta
$$

and $f$ be derivable and continuous $\forall t \in [\alpha, \beta]$ and $g$ continuous $\forall t \in [\alpha, \beta]$.

```desmos-graph
left=-1
right=12
bottom=-1
top=5
---
f(x)=1/2\sin(1/2x-6)+3|x>1|x<11|

(1,f(1))|label: t = alpha|black
(1,0)|label: a|
(11,f(11))|label: t = beta|black
(11,0)|label: b|

x=1|#aaaaaa|dashed|y>=0|y<=f(x)
x=11|#aaaaaa|dashed|y>=0|y<=f(x)

y=f(3)|red|x>=3|x<=4
y=0|red|x>=3|x<=4
x=3|red|y>=0|y<=f(x)
x=4|red|y>=0|y<=f(3)

y=f(4)|red|x>=4|x<=5
y=0|red|x>=4|x<=5
x=4|red|y>=0|y<=f(x)
x=5|red|y>=0|y<=f(4)

y=f(5)|red|x>=5|x<=6
y=0|red|x>=5|x<=6
x=5|red|y>=0|y<=f(x)
x=6|red|y>=0|y<=f(5)

(7/2,2)|hidden|red|label:A_i
```

Given that $f'(t) > 0$ and $g(t) \geq 0$ $\forall t \in [\alpha, \beta]$ and that $f(\alpha)=a$ and $f(\beta) = b; a<b$, the area under the curve is expressed as follow:

$$
\begin{alignat}{}
A = \lim_{ n \to \infty } \sum_{i=1}^n A_{i} = \lim_{ n \to \infty } \sum_{i=1}^n b_{i} \cdot h_{i}  \\[14pt]
h_{i} = g(t) ~\quad~ b_{i} = f'(t) \cdot \Delta t
\end{alignat}
$$

> [[👁️]] since the difference in position along the $x$ axis depends on $f(t)$ and not directly on $t$, we need to compensate by the "velocity" of the movement that is $f'(t)$, thus giving us an analogous equation to physics' moments: $\Delta x = v \cdot t$

Putting it all together:

$$
\bbox[14pt, border: 1px solid black]{
A = \int_{\alpha}^{\beta} g(t) \cdot f'(t)dt
}
$$

### Direction Bounded

For this case we now have $g(t) = 0 \forall t\in[\alpha,\beta] \quad\alpha\leq t\leq \beta$ and $f(\alpha) = a; f(\beta) = b; a < b$

```desmos-graph
bottom=-1
left=-1
right=11
top=5
---
(x-5)^2/16 + (y-2.58)^2/2 = 1|y>1.48

(5/2,1.48)|black|label: t = alpha
(15/2,1.48)|black|label: t = beta

x=1|dashed|red|y<2.5|y>0
y=0|dashed|red|x>=1|x<=5/2
x=5/2|dashed|red|y<1.48|y>0
(x-5)^2/16 + (y-2.58)^2/2 = 1|dashed|red|y>1.48|y<5/2|x>0|x<4
(1.75,1)|hidden|red|label: negative

x=5/2|dashed|green|y<3.65|y>1.48
(x-5)^2/16 + (y-2.58)^2/2 = 1|dashed|green|y>5/2|y<3.65|x>0|x<4
(1.75,2.6)|hidden|green|label: positive
```

Since the direction from $t=\alpha$ to $t=\beta$ is positive, the integrals will evaluate to a positive number. We can clearly see how the integral from $t=\alpha$ to $1$ will evaluate to a **negative** number, since the direction is negative, thus cancelling out the area in excess calculated from the integral with bounds $1$ and $t=\alpha$.

In this case the [[#Function Bounded|previous]] formula applies without complications.

### Closed Shape

For this case we now have $g(t) \geq 0; \alpha \leq t \leq \beta; f(\alpha)=f(\beta)=a$:

```desmos-graph
bottom=-1
left=-1
right=11
top=5
---
f(x) = (x-5)^2/16 |hidden
g(x) = (x-2.58)^2/2 |hidden
f(x) + g(y) = 1

(5,g(1.05)-.5)|black|hidden|label: t = alpha t = beta
(5,g(1.05))|black|
```

Since in this case we need to account for the direction, either positive or negative, we need to compensate by flipping the sign of the integral used to calculate the area. Therefore we will have 2 cases:

**clockwise:**

$$
\bbox[14pt, border: 1px solid black]{
A = \int_{\alpha}^\beta g(t) \cdot f'(t)dt
}
$$

**counter-clockwise:**

$$
\bbox[14pt, border: 1px solid black]{
A = - \int_{\alpha}^{\beta} g(t) \cdot f'(t)dt
}
$$

### Superficies of Rotation

Knowing that we can utilize the formula for the lateral surface of a section of a cone to calculate the surface of a solid of revolution:

$$
A_{s} = 2\pi \cdot \int_{a}^{b} f(x) \cdot \sqrt{ 1 + (f'(x))^{2}}dx
$$

we can adapt it to work with parametric curves by expressing it in terms of $t$:

$$
\bbox[14pt, border: 1px solid black]{
A_{s} = 2\pi \cdot \int_{\alpha}^{\beta} g(t) \cdot \sqrt{ (f'(t))^{2} + (g'(t))^{2} } dt
}
$$

[[👁️]] Notice how we use the [[#Arc Length]] of the parametric curve multiplied by the changes in $g(t)$.

## Volumes

### Axis Revolution

We know that for a simple solid of revolution given by a function $f(x)$, we can apply the following formula:

$$
V_{x} = \pi \int_{a}^b y^2dx
$$

Now given a parametric curve $c$ defined as such:

$$
c(t) = \begin{cases}
x = f(t)  \\[6pt]
y = g(t)
\end{cases}
$$

```desmos-graph
left=-1
right=12
bottom=-1
top=5
---
f(x)=1/2\sin(1/2x-6)+3|x>1|x<11|

(1,0)|label: a|black
(11,0)|label: b|black

x=1|#aaaaaa|dashed|y>=0|y<=f(x)
x=11|#aaaaaa|dashed|y>=0|y<=f(x)

(x-6)^2/.15+(y-0)^2/.1=1|orange

y=0.0009|black|x>=6|x<=6.5
```

We just need to apply a couple of adjustments.

First of all, we substitute $y$ with its function meaning that $y^2 = g(t)^2$. Since $y$ has parameter $t$, we cannot integrate in terms of $x$, therefore our $dx$ must become a $dt$. To achieve this, we simply put $dt$ in the formula and compensate by dividing by $dt$, giving us $\frac{dx}{dt}\cdot dt$. Now our integration limits must be according to $t$, therefore instead of $a$ and $b$ we will use values of $t$ that correspond to $f(\alpha)=a$ and $g(\beta)=b$, giving us:

$$
V_{x} = \pi\int_{\alpha}^{\beta} y^2 \frac{dx}{dt}dt
$$

Since $\frac{dx}{dt}$ is the derivative of $x$ in respect to $t$, meaning $f'(t)$ or $\dot{x}$, the formula to calculate the volume of the revolution of a parametric curve then becomes:

$$
\bbox[14pt,border: 1px solid black]{
V_{x} = \pi \int_{\alpha}^{\beta} y^2 \cdot f'(t)dt
}
$$

### Pappo's Theorem

The volume $V$ of the solid generated by the rotation of a flat figure $R$ around a line that is coplanar with it and that does not intersect it, is given by the product of the area $A_R$ of such figure by the length of the circumference described by its center of gravity.  

![[pappo_theorem.png|center|250]]

Giving use the following formula:

$$
\bbox[14pt, border: 1px solid black]{
V = A_{R} \cdot 2\pi \cdot r
}
$$

Some really useful applications of this theorem use the coordinates of [[Center of Gravity]] of a given flat figure $R$ as the radius $r$ relative to the axis of rotation. For a rotation around the **y axis**, we can safely say that the radius $r$ will be $\overline{x}$, that is the coordinate x of the center of gravity of $R$. While for a rotation around the **x axis**, the $\overline{y}$ coordinate is used.

Therefore the following is true if we rotate around the **y axis**:

$$
V_{y} = A_{R} \cdot 2\pi \cdot \overline{x}
$$

While if we rotate around the **x axis** instead, the following is true:

$$
V_{x} = A_{R} \cdot 2\pi \cdot \overline{y}
$$

### Line

To calculate the volume of a solid rotated around a generic line $ax + by + c= 0$, we use the same principle state in [[#Pappo's Theorem]] but for the radius $r$ we take the distance from the center of gravity of the plane figure $R$ to the given line.

To calculate the distance from a point $P(x_{p}, y_{p})$ to the line $ax + by + c = 0$ we use:

$$
d(P, line) = \frac{|y_{p} - (mx_{p} + q)|}{\sqrt{ 1 + m^2 }} =\frac{|ax_{p} + by_{p} + c|}{\sqrt{ a^2 + b^2 }}
$$

Therefore we now apply [[#Pappo's Theorem]] using $d$ as $r$ giving us:

$$
V = A_{R} \cdot 2\pi \cdot d(P, line)
$$

## Arc Length

Knowing that the length of an arc of a simple function $f(x)$ is:

$$
\mathcal{L} = \int_{a}^b \sqrt{ 1 + (f'(x))^{2} }dx
$$

> utilizing a simple polynomial to map each point of $f$ and summing the distances $\Delta s = \sqrt{ (\Delta x_{i})^2 + (\Delta y_{i})^{2} }$ for $n \to \infty$

We can derive the formula form parametric curves as:

$$
\bbox[14pt, border: 1px solid black]{
\mathcal{L} = \int_{a}^b \sqrt{(f'(t))^{2} + (g'(t))^{2}}dt
}
$$

