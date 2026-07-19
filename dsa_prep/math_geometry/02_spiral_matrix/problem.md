# 2. Spiral Matrix

**Difficulty:** Medium
**Topic:** Math & Geometry
**Pattern:** Shrinking boundary traversal

## Problem
Given an `m x n` matrix, return all elements in spiral order (clockwise, from the
outside in).

## Examples
```
Input: [[1,2,3],[4,5,6],[7,8,9]] -> [1,2,3,6,9,8,7,4,5]
```

## Approach
Maintain four boundaries: `top`, `bottom`, `left`, `right`. Traverse right along `top`,
down along `right`, left along `bottom`, up along `left` — then shrink each boundary
inward after completing its side (`top += 1`, `right -= 1`, etc.). After each of the
bottom and left traversals, re-check that `top <= bottom` / `left <= right` before
proceeding, since a non-square matrix can exhaust a dimension mid-spiral. Repeat until the
boundaries cross.

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Shrinking boundary traversal**, which itself
belongs to the broader **In-Place Matrix Manipulation** family of techniques. If the
specific trick above feels like it came out of nowhere, that's the signal to step back
and read [`../PATTERN.md`](../PATTERN.md) — it covers how to recognize this family of
problems in general (not just this one), the reusable template you can write from
memory, the usual variations, and the mistakes people make applying it. Coming back to
re-read this problem's approach afterward should make the specific choices here feel
inevitable rather than clever.

## Complexity
- Time: O(m·n)
- Space: O(1) extra (excluding output)
