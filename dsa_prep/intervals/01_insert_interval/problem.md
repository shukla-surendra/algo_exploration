# 1. Insert Interval

**Difficulty:** Medium
**Topic:** Intervals
**Pattern:** Single pass, split into before/overlapping/after
**Companies:** Google, Meta, Microsoft

## Problem
Given a list of non-overlapping intervals `intervals` sorted by start time, and a new
`newInterval`, insert it and merge as necessary so the result is still sorted and
non-overlapping.

## Examples
```
Input: intervals = [[1,3],[6,9]], newInterval = [2,5] -> [[1,5],[6,9]]
Input: intervals = [[1,2],[3,5],[6,7],[8,10],[12,16]], newInterval = [4,8]
Output: [[1,2],[3,10],[12,16]]
```

## Approach
Single pass through the sorted intervals, split into three phases: (1) intervals ending
entirely before `newInterval` starts — copy as-is; (2) intervals overlapping
`newInterval` (start <= newInterval's end and end >= newInterval's start) — merge them
into `newInterval` by expanding its bounds (`min` of starts, `max` of ends); (3) intervals
starting entirely after `newInterval` ends — copy as-is. Insert the (possibly expanded)
`newInterval` between phases 1 and 3.

## Complexity
- Time: O(n)
- Space: O(n) for the output
