# 3. Find Minimum in Rotated Sorted Array

**Difficulty:** Medium
**Topic:** Binary Search
**Pattern:** Modified binary search toward the rotation point

## Problem
A sorted array of unique elements was rotated at an unknown pivot. Return the minimum
element. Must run in O(log n).

## Examples
```
Input: nums = [3,4,5,1,2]     -> 1
Input: nums = [4,5,6,7,0,1,2] -> 0
Input: nums = [11,13,15,17]   -> 11 (not rotated)
```

## Approach
Compare `nums[mid]` to `nums[right]`. If `nums[mid] > nums[right]`, the minimum (the
rotation point) must be to the right of `mid`, so `left = mid + 1`. Otherwise the minimum
is at `mid` or to its left, so `right = mid` (keep `mid` in range, since it could be the
answer). Converges when `left == right`.

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Modified binary search toward the rotation
point**, which itself belongs to the broader **Binary Search** family of techniques. If
the specific trick above feels like it came out of nowhere, that's the signal to step
back and read [`../PATTERN.md`](../PATTERN.md) — it covers how to recognize this family
of problems in general (not just this one), the reusable template you can write from
memory, the usual variations, and the mistakes people make applying it. Coming back to
re-read this problem's approach afterward should make the specific choices here feel
inevitable rather than clever.

## Complexity
- Time: O(log n)
- Space: O(1)

## Solution
Runnable, with sample test cases at the bottom (`python3 binary_search/03_find_minimum_in_rotated_sorted_array/solution.py`):

```python
--8<-- "binary_search/03_find_minimum_in_rotated_sorted_array/solution.py"
```
