---
tags:
  - discrete
lang:
  - en
---

## Defs

semplici: no loops, no archi paralleli

loop: A---A
parallel: A---B, A--B

$v$ --- $w$
$v$ and $w$ are adjacent 

edges notation for SIMPLE GRAPHS:
$v$ --- $w$  $\{v, w\}$

a path that starts and ends in the same node is called a loop
if all nodes are connected -> connected graph
connected components -> "islands" of connected nodes

degree of a node:
$d(v)$ is the number of edges that exit and enter the node

## Adjacency Matrix

A matrix that lists if a nodes are adj. or not.

$$
\begin{align}
&~~~0 ~ 1 ~ 2 ~ 3  \\

& \begin{bmatrix}
0 ~ 1 ~ 1 ~ 0 \\
1 ~ 0 ~ 1 ~ 1 \\
1 ~ 1 ~ 0 ~ 1 \\
0 ~ 1 ~ 1 ~ 0
\end{bmatrix}
\end{align}
$$

> symmetric matrix where $i$ and $j$ are the nodes index

## Degrees Matrix

$$
\begin{bmatrix}
d(0)&0&0&\dots \\
0&d(1)&0&\dots \\
0&0&d(n)&\dots \\
\dots&\dots&\dots&\ddots
\end{bmatrix}
$$

Given a simple graph with $n$ vertices:

max deg. $n-1$
max deg. if disconnected $n-2$
max # of edges $\begin{pmatrix} n \\ 2 \end{pmatrix}$
min # of edges to be connected $\begin{pmatrix}n - 1 \\ 2\end{pmatrix} + 1$
max # of edges to be disconnected: $n-2$
Simple graph with $n$ vertices with $\begin{pmatrix} n \\ 2 \end{pmatrix}$ edges: $\text{complete graph } K_n$

Graph bipartito $K_{n,m}$: $n$ nodi tutti connessi for each $m$ nodi e viceversa ma no $n\mapsto n$ e $m\mapsto m$
$\text{\#archi} = m\cdot n$
deg nodi n is m and deg nodi m is n
euleriano se e solo se n e m entrambi pari
## Fundamental Theorem

Let $G$ be a graph with set of vertices $V$ and set of edges $E$:

$$
\sum_{v ~\in~ V} d(v) = 2|E|
$$

## Complementary Graph

 connessioni negate. il complementare e' sempre piu' piccolo.

edges:

$$
\frac{n(n-1)}{2}-m
$$
get compl deg sequence from deg sequence:

$$
(n - 1) - d_{i}
$$

where $d_i$ is each degree from the starting sequence.

## Euler path

given a connected graph, an Euler path is a path that traverses all the EDGES of the graph.
this is true if and only if the # of nodes with odd deg. is $2$.

## Euler loop

ciclo che tocca tutti i lati una volta sola
given a connected graph, and Euler loop is possible if and only if all the nodes have an even deg.
A graph is an Eulerian graph if it has an Euler loop.

## Hamiltonian Loop

ciclo che tocca tutti i nodi una volta sola
A graph is Hamiltonian se il grado di ogni nodo e' maggiore o uguale a $n/2$

## Hakimi-Havel algo

algo for checking if a sequence is a graph.

example:

init: order sequence descending
each step: pop $d$ where $d$ is the biggest digit and subtract $1$ to $d$ digits
repeat until sequence is all zeros (ok) or a negative number is encountered (not ok)

$$
\begin{align}
&5~5~3~2~2~1 \\
&x~4~2~1~1~0 \\
&x~x~1~0~0~{-1}
\end{align}
$$

## Isomorphic Graphs

Two graphs $G=(V, E)$ and $G'=(V',E')$ are defined isomorphic if a bijective function $f: V\to V'$ exists such that:

$$\{x,y\}\in E \Leftrightarrow \{f(x), f(y)\}\in E'$$



## Laplacian Matrix

$$
\hat{L} = \hat{D} - \hat{A}
$$

Where $\hat{D}$ is the [[#Degrees Matrix]] and $\hat{A}$ is the [[#Adjacency Matrix]].

$dim(Ker(\hat{A}))$ is the number of connected components of a graph.

## Planarity 

A graph is planar if it exists any drawing that does not intersect edges (plane drawing).

## Chromatic Number

$$
\chi(K_{n}) = n
$$

while for $K_{n,n}$:

$$
\chi(K_{n,n}) = 2
$$

if loop has even nodes: $\chi=2$
if loop has odd nodes: $\chi=3$

Theorem:

$$
\chi \leq \text{max deg}
$$

The chromatic number of a binary [[Trees|Tree]] is always:

$$\chi(BT) = 2$$

## Weighted Graphs

edges have a weight

The [[#Adjacency Matrix]] changes, replacing the $1$s with the edges weight.

$$
\begin{bmatrix}

\end{bmatrix}
$$

```tikz
\usepackage{tikz-cd}

\begin{document}
\begin{tikzcd}

    T
    \arrow[drr, bend left, "x"]
    \arrow[ddr, bend right, "y"]
    \arrow[dr, dotted, "{(x,y)}" description] & & \\
    K & X \times_Z Y \arrow[r, "p"] \arrow[d, "q"]
    & X \arrow[d, "f"] \\
    & Y \arrow[r, "g"]
    & Z

\end{tikzcd}

\quad \quad

\begin{tikzcd}[row sep=2.5em]

A' \arrow[rr,"f'"] \arrow[dr,swap,"a"] \arrow[dd,swap,"g'"] &&
  B' \arrow[dd,swap,"h'" near start] \arrow[dr,"b"] \\
& A \arrow[rr,crossing over,"f" near start] &&
  B \arrow[dd,"h"] \\
C' \arrow[rr,"k'" near end] \arrow[dr,swap,"c"] && D' \arrow[dr,swap,"d"] \\
& C \arrow[rr,"k"] \arrow[uu,<-,crossing over,"g" near end]&& D

\end{tikzcd}

\end{document}
```

## Dijkstra's Algo

INPUT: weighted graph $G$ and a starting node
OUTPUT: $n$ paths of minimal cost starting from the start node going to each node of $G$

Complexity:

$$
O(n^2)
$$

## Spanning Tree

A graph is a spanning tree if it is a sub graph that it is a tree and contains all the nodes of the parent graph.

## Prim's Algo

1. Pick a node
2. iter: pick lightest adjacent edge of formed subgraph without creating a loop

Complexity:

$$
O(n^2)
$$
