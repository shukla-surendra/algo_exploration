# 4. Meeting Rooms

**Difficulty:** Easy
**Topic:** Intervals
**Pattern:** Sort by start, check adjacent overlap

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

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Sort by start, check adjacent overlap**, which
itself belongs to the broader **Interval Scheduling** family of techniques. If the
specific trick above feels like it came out of nowhere, that's the signal to step back
and read [`../PATTERN.md`](../PATTERN.md) — it covers how to recognize this family of
problems in general (not just this one), the reusable template you can write from
memory, the usual variations, and the mistakes people make applying it. Coming back to
re-read this problem's approach afterward should make the specific choices here feel
inevitable rather than clever.

## Complexity
- Time: O(n log n)
- Space: O(1) extra (excluding sort)
