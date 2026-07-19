# 1. Kth Largest Element in a Stream

**Difficulty:** Easy
**Topic:** Heap / Priority Queue
**Pattern:** Fixed-size min-heap

## Problem
Design a class that, given an integer `k` and an initial stream of numbers, supports `add(val)`
which adds `val` to the stream and returns the k-th largest element in the stream so far.

## Examples
```
KthLargest(3, [4,5,8,2]); add(3) -> 4; add(5) -> 5; add(10) -> 5; add(9) -> 8; add(4) -> 8
```

## Approach
Maintain a min-heap capped at size `k`. It always holds the `k` largest elements seen so
far, with the smallest of those `k` sitting at the heap's top — that top is exactly the
answer. On `add`, push the new value, and if the heap grows past size `k`, pop the
smallest. This is far cheaper than re-sorting the whole stream on every call.

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Fixed-size min-heap**, which itself belongs to
the broader **Heap / Priority Queue** family of techniques. If the specific trick above
feels like it came out of nowhere, that's the signal to step back and read
[`../PATTERN.md`](../PATTERN.md) — it covers how to recognize this family of problems in
general (not just this one), the reusable template you can write from memory, the usual
variations, and the mistakes people make applying it. Coming back to re-read this
problem's approach afterward should make the specific choices here feel inevitable
rather than clever.

## Complexity
- Time: O(log k) per `add`
- Space: O(k)
