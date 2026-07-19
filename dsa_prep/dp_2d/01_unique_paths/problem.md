# 1. Unique Paths

**Difficulty:** Medium
**Topic:** 2-D Dynamic Programming
**Pattern:** Grid DP, each cell = sum of cell above + cell to the left
**Companies:** Amazon, Google, Bloomberg — the foundational grid-DP problem.

## Problem
A robot sits at the top-left of an `m x n` grid and can only move down or right. Return
the number of distinct paths to reach the bottom-right corner.

## Examples
```
Input: m = 3, n = 7 -> 28
Input: m = 3, n = 2 -> 3
```

## Approach
`paths(r, c) = paths(r-1, c) + paths(r, c-1)` — the number of ways to reach a cell is the
sum of ways to reach the cell above and the cell to the left, since those are the only two
places you could have moved from. The first row and first column each have exactly 1 path
(straight line). This can be computed with a single 1-D array reused across rows, updating
in place left to right.

## Complexity
- Time: O(m·n)
- Space: O(n) using a rolling 1-D array
