# 1. Binary Search

**Difficulty:** Easy
**Topic:** Binary Search
**Pattern:** Classic binary search on a sorted array
**Companies:** Amazon, Google, Microsoft — the foundation for the whole topic.

## Problem
Given a sorted array of distinct integers `nums` and a `target`, return the index of
`target`, or `-1` if it isn't present. Must run in O(log n).

## Examples
```
Input: nums = [-1,0,3,5,9,12], target = 9 -> 4
Input: nums = [-1,0,3,5,9,12], target = 2 -> -1
```

## Approach
Maintain `left`/`right` bounds over the sorted array. At each step compare `nums[mid]` to
`target`: equal means found; if `nums[mid] < target` the answer must be to the right, so
move `left = mid + 1`; otherwise move `right = mid - 1`. Halving the search space each
step gives O(log n).

## Complexity
- Time: O(log n)
- Space: O(1)
