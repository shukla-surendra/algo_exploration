# 1. Contains Duplicate

**Difficulty:** Easy
**Topic:** Arrays & Hashing
**Pattern:** Hash Set

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

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Hash Set**, which itself belongs to the broader
**Hashing for O(1) Lookups** family of techniques. If the specific trick above feels
like it came out of nowhere, that's the signal to step back and read
[`../PATTERN.md`](../PATTERN.md) — it covers how to recognize this family of problems in
general (not just this one), the reusable template you can write from memory, the usual
variations, and the mistakes people make applying it. Coming back to re-read this
problem's approach afterward should make the specific choices here feel inevitable
rather than clever.

## Complexity
- Time: O(n)
- Space: O(n)

## Solution
Runnable, with sample test cases at the bottom (`python3 arrays_hashing/01_contains_duplicate/solution.py`):

```python
--8<-- "arrays_hashing/01_contains_duplicate/solution.py"
```
