# 5. Find Median from Data Stream

**Difficulty:** Hard
**Topic:** Heap / Priority Queue
**Pattern:** Two heaps (max-heap for the lower half, min-heap for the upper half)

## Problem
Design a data structure that supports `add_num(num)` and `find_median()`, efficiently
tracking the running median of a stream of numbers.

## Examples
```
add_num(1); add_num(2); find_median() -> 1.5
add_num(3); find_median() -> 2
```

## Approach
Split the stream into two halves via two heaps: a max-heap `small` holding the smaller
half, and a min-heap `large` holding the larger half, kept balanced in size (differing by
at most 1). On `add_num`, insert into `small` then move its top into `large` to keep
ordering correct, then rebalance sizes by moving the top of the larger heap back if it's
grown too big. The median is either the top of the larger-sized heap (odd total) or the
average of both tops (even total).

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Two heaps (max-heap for the lower half, min-
heap for the upper half)**, which itself belongs to the broader **Heap / Priority
Queue** family of techniques. If the specific trick above feels like it came out of
nowhere, that's the signal to step back and read [`../PATTERN.md`](../PATTERN.md) — it
covers how to recognize this family of problems in general (not just this one), the
reusable template you can write from memory, the usual variations, and the mistakes
people make applying it. Coming back to re-read this problem's approach afterward should
make the specific choices here feel inevitable rather than clever.

## Complexity
- Time: O(log n) per `add_num`, O(1) per `find_median`
- Space: O(n)
