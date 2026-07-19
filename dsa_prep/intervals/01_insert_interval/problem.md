# 1. Insert Interval

**Difficulty:** Medium
**Topic:** Intervals
**Pattern:** Single pass, split into before/overlapping/after

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

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Single pass, split into
before/overlapping/after**, which itself belongs to the broader **Interval Scheduling**
family of techniques. If the specific trick above feels like it came out of nowhere,
that's the signal to step back and read [`../PATTERN.md`](../PATTERN.md) — it covers how
to recognize this family of problems in general (not just this one), the reusable
template you can write from memory, the usual variations, and the mistakes people make
applying it. Coming back to re-read this problem's approach afterward should make the
specific choices here feel inevitable rather than clever.

## Complexity
- Time: O(n)
- Space: O(n) for the output
