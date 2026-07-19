# 1. Contains Duplicate

**Difficulty:** Easy
**Topic:** Arrays & Hashing
**Pattern:** Hash Set
**Companies:** Amazon, Google, Yahoo, Adobe

## Problem
Given an integer array `nums`, return `True` if any value appears **at least twice**, and
`False` if every element is distinct.

## Examples
```
Input: nums = [1,2,3,1]        -> True
Input: nums = [1,2,3,4]        -> False
Input: nums = [1,1,1,3,3,4,3,2,4,2] -> True
```

## Approach
Walk the array once, adding each value to a hash set. If a value is already in the set when
we see it, we found a duplicate. A sort-based approach works too (O(n log n), O(1) extra
space) but the hash-set approach is the standard O(n) answer.

## Complexity
- Time: O(n)
- Space: O(n)
