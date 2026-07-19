# 3. Two Sum

**Difficulty:** Easy
**Topic:** Arrays & Hashing
**Pattern:** Hash Map (complement lookup)

## Problem
Given an array of integers `nums` and an integer `target`, return the **indices** of the
two numbers that add up to `target`. Exactly one valid answer exists; you may not use the
same element twice.

## Examples
```
Input: nums = [2,7,11,15], target = 9 -> [0,1]
Input: nums = [3,2,4], target = 6     -> [1,2]
```

## Approach
Brute force checks every pair — O(n²). Instead, walk the array once, keeping a hash map of
`value -> index` seen so far. At each element, check whether `target - nums[i]` is already
in the map; if so, we've found the pair in O(n).

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Hash Map (complement lookup)**, which itself
belongs to the broader **Hashing for O(1) Lookups** family of techniques. If the
specific trick above feels like it came out of nowhere, that's the signal to step back
and read [`../PATTERN.md`](../PATTERN.md) — it covers how to recognize this family of
problems in general (not just this one), the reusable template you can write from
memory, the usual variations, and the mistakes people make applying it. Coming back to
re-read this problem's approach afterward should make the specific choices here feel
inevitable rather than clever.

## Complexity
- Time: O(n)
- Space: O(n)

## Solution
Runnable, with sample test cases at the bottom (`python3 arrays_hashing/03_two_sum/solution.py`):

```python
--8<-- "arrays_hashing/03_two_sum/solution.py"
```
