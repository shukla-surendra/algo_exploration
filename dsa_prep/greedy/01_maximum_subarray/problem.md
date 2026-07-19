# 1. Maximum Subarray

**Difficulty:** Medium
**Topic:** Greedy
**Pattern:** Kadane's Algorithm
**Companies:** Amazon, Meta, Microsoft, LinkedIn, Bloomberg — one of the most iconic
greedy/DP hybrid problems.

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

## Complexity
- Time: O(n)
- Space: O(1)
