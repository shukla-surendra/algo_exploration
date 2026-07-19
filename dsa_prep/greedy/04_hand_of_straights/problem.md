# 4. Hand of Straights

**Difficulty:** Medium
**Topic:** Greedy
**Pattern:** Sort + greedily consume the smallest remaining run
**Companies:** Amazon, Meta

## Problem
Given an array of card values `hand` and a group size `groupSize`, return `True` if the
cards can be rearranged into groups of `groupSize` consecutive values each.

## Examples
```
Input: hand = [1,2,3,6,2,3,4,7,8], groupSize = 3 -> True  ([1,2,3],[2,3,4],[6,7,8])
Input: hand = [1,2,3,4,5], groupSize = 4          -> False
```

## Approach
If `len(hand)` isn't divisible by `groupSize`, fail immediately. Otherwise count card
frequencies. Repeatedly take the smallest remaining card value with count > 0 as the start
of a new group — it *must* start a group of consecutive values, since nothing smaller
remains to place before it. Consume `groupSize` consecutive values from that start,
decrementing their counts (failing if any needed value is missing). A min-heap of distinct
remaining values makes "smallest remaining" efficient.

## Complexity
- Time: O(n log n)
- Space: O(n)
