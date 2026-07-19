# 2. 3Sum

**Difficulty:** Medium
**Topic:** Two Pointers
**Pattern:** Sort + fix one element + two pointers

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

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Sort + fix one element + two pointers**, which
itself belongs to the broader **Two Pointers** family of techniques. If the specific
trick above feels like it came out of nowhere, that's the signal to step back and read
[`../PATTERN.md`](../PATTERN.md) — it covers how to recognize this family of problems in
general (not just this one), the reusable template you can write from memory, the usual
variations, and the mistakes people make applying it. Coming back to re-read this
problem's approach afterward should make the specific choices here feel inevitable
rather than clever.

## Complexity
- Time: O(n²)
- Space: O(1) extra (excluding output; O(n) if sort isn't in-place)
