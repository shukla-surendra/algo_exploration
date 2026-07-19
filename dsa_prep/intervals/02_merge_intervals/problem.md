# 2. Merge Intervals

**Difficulty:** Medium
**Topic:** Intervals
**Pattern:** Sort by start, then merge in a single pass
**Companies:** Amazon, Meta, Microsoft, Google, Bloomberg — one of the most frequently
asked interval problems.

## Problem
Given an array of `intervals`, merge all overlapping intervals and return the resulting
non-overlapping set (sorted by start).

## Examples
```
Input: intervals = [[1,3],[2,6],[8,10],[15,18]] -> [[1,6],[8,10],[15,18]]
Input: intervals = [[1,4],[4,5]] -> [[1,5]]
```

## Approach
Sort intervals by start time. Walk through them keeping a `merged` list; if the current
interval's start is `<=` the last merged interval's end, they overlap — extend the last
merged interval's end to `max(last.end, current.end)`. Otherwise, append the current
interval as a new entry. Sorting first is what makes a single linear pass sufficient.

## Complexity
- Time: O(n log n) (dominated by the sort)
- Space: O(n) for the output
