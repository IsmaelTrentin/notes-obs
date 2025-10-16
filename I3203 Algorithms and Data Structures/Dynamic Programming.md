---
tags:
  - algos
locale: en
---

## def

Dynamic programming applies to optimization or combinational problems by subdividing problems into smaller ones and utilizing previously calculated solutions to save computational time.

To apply dynamic programming, we need 2 properties to be true:

- Optimal solution: the solution is the composition of optimal solutions of subproblems
- Overlapping subproblems: the space of subproblems overlaps, i. e. we solve the same subproblems multiple times

Common steps:

1. Characterize the structure of an optimal solution
2. Recursively define the value of an optimal solution
3. Compute the value of an optimal solution, typically in a bottom-up fashion
4. Construct an optimal solution from computed information

If number of subproblems is polynomial then the running time will be polynomial too.

```txt
top down -> recursive
bottom up -> non recursive
```


## Longest Common Subsequence

given `LCS(m, n)` the total number of subproblems is: $m\cdot n$.