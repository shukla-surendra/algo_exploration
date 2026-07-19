# 1. Rotate Image

**Difficulty:** Medium
**Topic:** Math & Geometry
**Pattern:** In-place matrix transform: transpose + reverse rows
**Companies:** Amazon, Microsoft, Apple, Google

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

## Complexity
- Time: O(n²)
- Space: O(1)
