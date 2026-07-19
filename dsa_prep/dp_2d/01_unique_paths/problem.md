# 1. Unique Paths

**Difficulty:** Medium
**Topic:** 2-D Dynamic Programming
**Pattern:** Grid DP, each cell = sum of cell above + cell to the left

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

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Grid DP, each cell = sum of cell above + cell
to the left**, which itself belongs to the broader **2-D Dynamic Programming** family of
techniques. If the specific trick above feels like it came out of nowhere, that's the
signal to step back and read [`../PATTERN.md`](../PATTERN.md) — it covers how to
recognize this family of problems in general (not just this one), the reusable template
you can write from memory, the usual variations, and the mistakes people make applying
it. Coming back to re-read this problem's approach afterward should make the specific
choices here feel inevitable rather than clever.

## Complexity
- Time: O(m·n)
- Space: O(n) using a rolling 1-D array

## Solution
Runnable, with sample test cases at the bottom (`python3 dp_2d/01_unique_paths/solution.py`):

```python
--8<-- "dp_2d/01_unique_paths/solution.py"
```
