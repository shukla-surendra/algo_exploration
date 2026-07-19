# 3. Permutations

**Difficulty:** Medium
**Topic:** Backtracking
**Pattern:** Backtracking with a "used" tracker (or swap-in-place)

## Problem
Given an array `nums` of distinct integers, return all possible permutations, in any order.

## Examples
```
Input: nums = [1,2,3]
Output: [[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]
```

## Approach
Build permutations one position at a time: at each step, try every not-yet-used number as
the next element, recurse, then backtrack (unmark it as used) before trying the next
candidate. A boolean `used` array (or a set) tracks which numbers are already placed in the
current path. A full path (length == len(nums)) is a complete permutation.

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Backtracking with a "used" tracker (or swap-in-
place)**, which itself belongs to the broader **Backtracking** family of techniques. If
the specific trick above feels like it came out of nowhere, that's the signal to step
back and read [`../PATTERN.md`](../PATTERN.md) — it covers how to recognize this family
of problems in general (not just this one), the reusable template you can write from
memory, the usual variations, and the mistakes people make applying it. Coming back to
re-read this problem's approach afterward should make the specific choices here feel
inevitable rather than clever.

## Complexity
- Time: O(n! · n) — n! permutations, each built in O(n)
- Space: O(n) recursion depth (excluding output)
