# 3. Two Sum

**Difficulty:** Easy
**Topic:** Arrays & Hashing
**Pattern:** Hash Map (complement lookup)
**Companies:** Amazon, Google, Meta, Apple, Microsoft, Adobe, LinkedIn — one of the single
most commonly asked screening questions across the industry.

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

## Complexity
- Time: O(n)
- Space: O(n)
