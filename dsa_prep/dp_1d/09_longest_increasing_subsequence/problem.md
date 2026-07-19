# 9. Longest Increasing Subsequence

**Difficulty:** Medium
**Topic:** 1-D Dynamic Programming
**Pattern:** Patience sorting with binary search (O(n log n)), or O(n²) DP

## Problem
Given an integer array `nums`, return the length of the longest strictly increasing
subsequence (not necessarily contiguous).

## Examples
```
Input: nums = [10,9,2,5,3,7,101,18] -> 4   ([2,3,7,101] or [2,3,7,18])
```

## Approach
The O(n²) DP defines `dp[i]` = length of the LIS ending at index `i`, computed as
`1 + max(dp[j] for j < i if nums[j] < nums[i])`. The faster O(n log n) approach maintains
a list `tails`, where `tails[k]` is the smallest possible tail value of an increasing
subsequence of length `k+1` seen so far. For each number, binary-search `tails` for the
first position `>= num` and replace it (or append if `num` is larger than everything);
`len(tails)` at the end is the LIS length. Note `tails` itself isn't a valid subsequence —
only its length matters.

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Patience sorting with binary search (O(n log
n)), or O(n²) DP**, which itself belongs to the broader **1-D Dynamic Programming**
family of techniques. If the specific trick above feels like it came out of nowhere,
that's the signal to step back and read [`../PATTERN.md`](../PATTERN.md) — it covers how
to recognize this family of problems in general (not just this one), the reusable
template you can write from memory, the usual variations, and the mistakes people make
applying it. Coming back to re-read this problem's approach afterward should make the
specific choices here feel inevitable rather than clever.

## Complexity
- Time: O(n log n)
- Space: O(n)

## Solution
Runnable, with sample test cases at the bottom (`python3 dp_1d/09_longest_increasing_subsequence/solution.py`):

```python
--8<-- "dp_1d/09_longest_increasing_subsequence/solution.py"
```
