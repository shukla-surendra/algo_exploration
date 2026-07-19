# 4. Meeting Rooms

**Difficulty:** Easy
**Topic:** Intervals
**Pattern:** Sort by start, check adjacent overlap
**Companies:** Meta, Google, Amazon, Bloomberg (frequently asked in phone screens; a
LeetCode "premium" problem but extremely common in practice)

## Problem
Given an array of meeting time intervals, determine if a person could attend all of them
(i.e. none overlap).

## Examples
```
Input: intervals = [[0,30],[5,10],[15,20]] -> False
Input: intervals = [[7,10],[2,4]]           -> True
```

## Approach
Sort intervals by start time. Once sorted, any overlap must occur between two
*adjacent* intervals in the sorted order, so a single linear scan comparing each interval's
start to the previous interval's end suffices — if `intervals[i][0] < intervals[i-1][1]`,
there's a conflict.

## Complexity
- Time: O(n log n)
- Space: O(1) extra (excluding sort)
