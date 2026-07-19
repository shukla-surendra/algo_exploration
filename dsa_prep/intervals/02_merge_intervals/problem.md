# 2. Merge Intervals

**Difficulty:** Medium
**Topic:** Intervals
**Pattern:** Sort by start, then merge in a single pass

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

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Sort by start, then merge in a single pass**,
which itself belongs to the broader **Interval Scheduling** family of techniques. If the
specific trick above feels like it came out of nowhere, that's the signal to step back
and read [`../PATTERN.md`](../PATTERN.md) — it covers how to recognize this family of
problems in general (not just this one), the reusable template you can write from
memory, the usual variations, and the mistakes people make applying it. Coming back to
re-read this problem's approach afterward should make the specific choices here feel
inevitable rather than clever.

## Complexity
- Time: O(n log n) (dominated by the sort)
- Space: O(n) for the output

## Solution
Runnable, with sample test cases at the bottom (`python3 intervals/02_merge_intervals/solution.py`):

```python
--8<-- "intervals/02_merge_intervals/solution.py"
```
