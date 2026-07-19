# 2. Search in Rotated Sorted Array

**Difficulty:** Medium
**Topic:** Binary Search
**Pattern:** Modified binary search using "which half is sorted"
**Companies:** Amazon, Meta, Microsoft, Bloomberg — very frequently asked.

## Problem
An ascending array `nums` (distinct values) has been rotated at an unknown pivot. Given
`target`, return its index, or `-1` if absent. Must run in O(log n).

## Examples
```
Input: nums = [4,5,6,7,0,1,2], target = 0 -> 4
Input: nums = [4,5,6,7,0,1,2], target = 3 -> -1
```

## Approach
Even rotated, at least one half of `[left, mid]` or `[mid, right]` is always properly
sorted. Check which half is sorted by comparing `nums[left]` to `nums[mid]`. Then check
whether `target` falls within that sorted half's range — if so, recurse/iterate into it;
otherwise the target must be in the other half. This keeps halving the search space.

## Complexity
- Time: O(log n)
- Space: O(1)
