# 3. Non-overlapping Intervals

**Difficulty:** Medium
**Topic:** Intervals
**Pattern:** Sort by end time, greedy interval scheduling
**Companies:** Amazon, Meta, Google

## Problem
Given an array of `intervals`, return the minimum number of intervals to remove so the
rest are non-overlapping.

## Examples
```
Input: intervals = [[1,2],[2,3],[3,4],[1,3]] -> 1  (remove [1,3])
Input: intervals = [[1,2],[1,2],[1,2]]        -> 2
```

## Approach
This is the classic "activity selection" greedy problem: sort intervals by **end** time
(not start). Walk through them keeping track of the end time of the last kept interval; if
the current interval's start is before that end time, it overlaps — remove it (increment a
counter) and keep the previously kept interval's end (it ends earlier, so it's strictly
better to keep for future compatibility). Otherwise keep the current interval and update
the tracked end time. Sorting by end time greedily maximizes the number of non-overlapping
intervals kept, which minimizes removals.

## Complexity
- Time: O(n log n)
- Space: O(1) extra (excluding sort)
