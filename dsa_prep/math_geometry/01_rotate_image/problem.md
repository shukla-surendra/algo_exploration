# 1. Rotate Image

**Difficulty:** Medium
**Topic:** Math & Geometry
**Pattern:** In-place matrix transform: transpose + reverse rows

## Problem
Given an `n x n` 2D matrix `matrix`, rotate it 90 degrees clockwise **in place**.

## Examples
```
Input: [[1,2,3],[4,5,6],[7,8,9]] -> [[7,4,1],[8,5,2],[9,6,3]]
```

## Approach
A 90-degree clockwise rotation decomposes into two simpler in-place steps: (1) transpose
the matrix (swap `matrix[i][j]` with `matrix[j][i]` for `i < j`), then (2) reverse each
row. Doing both achieves the rotation without needing an auxiliary matrix. (Rotating layer
by layer, swapping 4 cells at a time, is an equivalent alternative that avoids the
transpose step.)

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **In-place matrix transform: transpose + reverse
rows**, which itself belongs to the broader **In-Place Matrix Manipulation** family of
techniques. If the specific trick above feels like it came out of nowhere, that's the
signal to step back and read [`../PATTERN.md`](../PATTERN.md) — it covers how to
recognize this family of problems in general (not just this one), the reusable template
you can write from memory, the usual variations, and the mistakes people make applying
it. Coming back to re-read this problem's approach afterward should make the specific
choices here feel inevitable rather than clever.

## Complexity
- Time: O(n²)
- Space: O(1)

## Solution
Runnable, with sample test cases at the bottom (`python3 math_geometry/01_rotate_image/solution.py`):

```python
--8<-- "math_geometry/01_rotate_image/solution.py"
```
