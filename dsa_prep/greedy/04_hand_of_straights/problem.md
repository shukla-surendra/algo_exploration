# 4. Hand of Straights

**Difficulty:** Medium
**Topic:** Greedy
**Pattern:** Sort + greedily consume the smallest remaining run

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

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Sort + greedily consume the smallest remaining
run**, which itself belongs to the broader **Greedy** family of techniques. If the
specific trick above feels like it came out of nowhere, that's the signal to step back
and read [`../PATTERN.md`](../PATTERN.md) — it covers how to recognize this family of
problems in general (not just this one), the reusable template you can write from
memory, the usual variations, and the mistakes people make applying it. Coming back to
re-read this problem's approach afterward should make the specific choices here feel
inevitable rather than clever.

## Complexity
- Time: O(n log n)
- Space: O(n)
