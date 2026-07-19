# 5. Top K Frequent Elements

**Difficulty:** Medium
**Topic:** Arrays & Hashing
**Pattern:** Bucket Sort by frequency (or heap)
**Companies:** Amazon, Meta, Yahoo, Bloomberg

## Problem
Given an integer array `nums` and an integer `k`, return the `k` most frequent elements.
Any order in the answer is fine.

## Examples
```
Input: nums = [1,1,1,2,2,3], k = 2 -> [1,2]
Input: nums = [1], k = 1           -> [1]
```

## Approach
A heap of size k gives O(n log k). The optimal O(n) approach: count frequencies with a hash
map, then bucket-sort — create `n+1` buckets indexed by frequency (frequency can't exceed
`n`), and drop each value into `buckets[freq]`. Walk buckets from high frequency to low,
collecting values until we have k.

## Complexity
- Time: O(n)
- Space: O(n)
