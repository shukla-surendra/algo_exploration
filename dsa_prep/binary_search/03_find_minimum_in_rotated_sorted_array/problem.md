# 3. Find Minimum in Rotated Sorted Array

**Difficulty:** Medium
**Topic:** Binary Search
**Pattern:** Modified binary search toward the rotation point
**Companies:** Amazon, Microsoft, Meta

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

## Complexity
- Time: O(log n)
- Space: O(1)
