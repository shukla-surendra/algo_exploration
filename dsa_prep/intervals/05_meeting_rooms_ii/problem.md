# 5. Meeting Rooms II

**Difficulty:** Medium
**Topic:** Intervals
**Pattern:** Min-heap of active end times (or separate sorted start/end sweep)
**Companies:** Meta, Google, Amazon, Bloomberg — a very common "premium" problem, frequent
in on-site interviews.

## Problem
Given an array of meeting time intervals, return the minimum number of conference rooms
required to hold all meetings.

## Examples
```
Input: intervals = [[0,30],[5,10],[15,20]] -> 2
Input: intervals = [[7,10],[2,4]]           -> 1
```

## Approach
Sort meetings by start time. Use a min-heap of end times for currently "in progress"
meetings. For each meeting in order, if the heap's smallest end time is `<=` this
meeting's start, that room has freed up — pop it (reuse the room). Push the current
meeting's end time either way. The heap's size at any point represents rooms in
simultaneous use; its **maximum size over the whole sweep** is the answer. (An alternative
"sweep line" approach separately sorts all start times and end times, and tracks a running
counter — both approaches are O(n log n).)

## Complexity
- Time: O(n log n)
- Space: O(n)
