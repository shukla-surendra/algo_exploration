# 5. Top K Frequent Elements

**Difficulty:** Medium
**Topic:** Arrays & Hashing
**Pattern:** Bucket Sort by frequency (or heap)

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

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Bucket Sort by frequency (or heap)**, which
itself belongs to the broader **Hashing for O(1) Lookups** family of techniques. If the
specific trick above feels like it came out of nowhere, that's the signal to step back
and read [`../PATTERN.md`](../PATTERN.md) — it covers how to recognize this family of
problems in general (not just this one), the reusable template you can write from
memory, the usual variations, and the mistakes people make applying it. Coming back to
re-read this problem's approach afterward should make the specific choices here feel
inevitable rather than clever.

## Complexity
- Time: O(n)
- Space: O(n)
