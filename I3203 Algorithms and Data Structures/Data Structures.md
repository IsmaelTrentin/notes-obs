---
tags:
  - algos
locale: en
---

## Binary Heap

Nearly completed binary tree, where the values in the nodes satisfy a heap property:

- max heap: value of parent is always greater or equal than its child
- min heap: vale of parent is always less or equal than its child

This is local property: meaning it concerns only parent->child. Since this is a transitive property we can safely infer that the root node will be the greater value node.

The number of levels is: $\log_{2}N$

### Array Implementation

```text
16, 14, 10, 8, 7, 9, 3, 2, 4, 1
```

```tikz
\usepackage{tikz-cd}
\usetikzlibrary{trees}

\begin{document}
\begin{tikzpicture}[
  every node/.style={
    draw,
    circle,
    minimum width=15mm,
    minimum height=8mm,
    inner sep=2pt,
    align=center
  },
  level distance=20mm,
  level 1/.style={sibling distance=45mm},
  level 2/.style={sibling distance=25mm},
  level 3/.style={sibling distance=16mm}
]
\node[label=left:{0}]{16}
  child { 
    node {14}
    child { 
      node {8} 
      child { 
        node {2} 
      } 
      child { 
        node {4} 
      }
    }
    child {
      node {7}
	  child {
	    node {1}
	  }
    }
  }
  child { 
    node {10}
    child { 
      node {9}
    }
    child { 
      node {3}
    }
  };
\end{tikzpicture}
\end{document}
```

> L1: 0; L2: 1, 2; L3: 3, 4, 5, 6 
