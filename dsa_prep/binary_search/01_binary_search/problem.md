# 1. Binary Search

**Difficulty:** Easy
**Topic:** Binary Search
**Pattern:** Classic binary search on a sorted array

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

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Classic binary search on a sorted array**,
which itself belongs to the broader **Binary Search** family of techniques. If the
specific trick above feels like it came out of nowhere, that's the signal to step back
and read [`../PATTERN.md`](../PATTERN.md) — it covers how to recognize this family of
problems in general (not just this one), the reusable template you can write from
memory, the usual variations, and the mistakes people make applying it. Coming back to
re-read this problem's approach afterward should make the specific choices here feel
inevitable rather than clever.

## Complexity
- Time: O(log n)
- Space: O(1)
