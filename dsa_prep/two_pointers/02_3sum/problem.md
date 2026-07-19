# 2. 3Sum

**Difficulty:** Medium
**Topic:** Two Pointers
**Pattern:** Sort + fix one element + two pointers
**Companies:** Amazon, Meta, Microsoft, Apple, Bloomberg — extremely common follow-up to
Two Sum.

## Problem
Given an integer array `nums`, return all unique triplets `[nums[i], nums[j], nums[k]]`
such that `i != j != k` and they sum to zero. The solution set must not contain duplicate
triplets.

## Examples
```
Input: nums = [-1,0,1,2,-1,-4] -> [[-1,-1,2],[-1,0,1]]
Input: nums = [0,1,1]          -> []
Input: nums = [0,0,0]          -> [[0,0,0]]
```

## Approach
Sort the array first. Fix each index `i` as a candidate first element, then use two
pointers (`left = i+1`, `right = n-1`) on the remaining sorted subarray to find pairs that
sum to `-nums[i]`, exactly like the classic "two sum on a sorted array" pattern. Skip
duplicate values for `i`, and after finding a valid triplet, skip duplicate `left`/`right`
values to avoid duplicate triplets in the output.

## Complexity
- Time: O(n²)
- Space: O(1) extra (excluding output; O(n) if sort isn't in-place)
