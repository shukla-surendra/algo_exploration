# 3. Set Matrix Zeroes

**Difficulty:** Medium
**Topic:** Math & Geometry
**Pattern:** Use the matrix's own first row/column as marker storage

## Problem
Given an `m x n` matrix, if an element is 0, set its entire row and column to 0. Do it
**in place**.

## Examples
```
Input: [[1,1,1],[1,0,1],[1,1,1]] -> [[1,0,1],[0,0,0],[1,0,1]]
```

## Approach
Naively zeroing as you scan would cascade incorrectly (newly-zeroed cells would trigger
more zeroing). Instead, use the matrix's own first row and first column as marker arrays:
for each zero found at `(r, c)` with `r, c > 0`, mark `matrix[r][0] = 0` and
`matrix[0][c] = 0`. Handle row 0 and column 0 themselves with two separate boolean flags
(since they double as storage). After marking, do a second pass setting `matrix[r][c] = 0`
wherever `matrix[r][0] == 0` or `matrix[0][c] == 0` (working from `(1,1)` onward first, so
the markers aren't corrupted early), then finally zero row 0 / column 0 based on the flags.

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Use the matrix's own first row/column as marker
storage**, which itself belongs to the broader **In-Place Matrix Manipulation** family
of techniques. If the specific trick above feels like it came out of nowhere, that's the
signal to step back and read [`../PATTERN.md`](../PATTERN.md) — it covers how to
recognize this family of problems in general (not just this one), the reusable template
you can write from memory, the usual variations, and the mistakes people make applying
it. Coming back to re-read this problem's approach afterward should make the specific
choices here feel inevitable rather than clever.

## Complexity
- Time: O(m·n)
- Space: O(1)

## Solution
Runnable, with sample test cases at the bottom (`python3 math_geometry/03_set_matrix_zeroes/solution.py`):

```python
--8<-- "math_geometry/03_set_matrix_zeroes/solution.py"
```
