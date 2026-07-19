# 7. Longest Consecutive Sequence

**Difficulty:** Medium
**Topic:** Arrays & Hashing
**Pattern:** Hash Set, sequence-start detection
**Companies:** Amazon, Meta, Google, Microsoft

## Problem
Given an unsorted array of integers `nums`, return the length of the longest run of
consecutive integers (e.g. `[100,4,200,1,3,2]` contains the run `1,2,3,4`). Must run in
O(n) time — sorting first would be O(n log n).

## Examples
```
Input: nums = [100,4,200,1,3,2] -> 4   (the sequence 1,2,3,4)
Input: nums = [0,3,7,2,5,8,4,6,0,1] -> 9
```

## Approach
Put all numbers in a hash set. For each number, only start counting a sequence if
`num - 1` is **not** in the set (i.e. it's the start of a run) — this guarantees each run
is only walked once in total, not once per element, giving true O(n) overall despite the
inner while loop.

## Complexity
- Time: O(n)
- Space: O(n)
