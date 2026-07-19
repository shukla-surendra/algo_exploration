# 1. Maximum Subarray

**Difficulty:** Medium
**Topic:** Greedy
**Pattern:** Kadane's Algorithm

## Problem
Given an integer array `nums`, find the contiguous subarray with the largest sum and
return that sum.

## Examples
```
Input: nums = [-2,1,-3,4,-1,2,1,-5,4] -> 6   ([4,-1,2,1])
Input: nums = [1]                     -> 1
```

## Approach
Kadane's algorithm: track `current_sum`, the best sum of a subarray ending exactly at the
current position. At each element, decide greedily whether extending the previous
subarray is better than starting fresh here: `current_sum = max(num, current_sum + num)`.
Track the running `best` across all positions. The key insight: a negative `current_sum`
can never help a future subarray, so it's always better to restart there.

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Kadane's Algorithm**, which itself belongs to
the broader **Greedy** family of techniques. If the specific trick above feels like it
came out of nowhere, that's the signal to step back and read
[`../PATTERN.md`](../PATTERN.md) — it covers how to recognize this family of problems in
general (not just this one), the reusable template you can write from memory, the usual
variations, and the mistakes people make applying it. Coming back to re-read this
problem's approach afterward should make the specific choices here feel inevitable
rather than clever.

## Complexity
- Time: O(n)
- Space: O(1)

## Solution
Runnable, with sample test cases at the bottom (`python3 greedy/01_maximum_subarray/solution.py`):

```python
--8<-- "greedy/01_maximum_subarray/solution.py"
```
