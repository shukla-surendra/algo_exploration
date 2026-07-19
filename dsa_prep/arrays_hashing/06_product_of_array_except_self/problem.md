# 6. Product of Array Except Self

**Difficulty:** Medium
**Topic:** Arrays & Hashing
**Pattern:** Prefix / Suffix products
**Companies:** Amazon, Meta, Microsoft, Apple

## Problem
Given an integer array `nums`, return an array `answer` such that `answer[i]` is the
product of all elements of `nums` except `nums[i]`. Must run in O(n) **without division**,
and (follow-up) in O(1) extra space excluding the output array.

## Examples
```
Input: nums = [1,2,3,4] -> [24,12,8,6]
Input: nums = [-1,1,0,-3,3] -> [0,0,9,0,0]
```

## Approach
`answer[i]` = (product of everything to the left of i) × (product of everything to the
right of i). Compute prefix products left-to-right into the output array, then walk
right-to-left multiplying in a running suffix product. This avoids division entirely and
uses only the output array plus one running variable.

## Complexity
- Time: O(n)
- Space: O(1) extra (output array doesn't count)
