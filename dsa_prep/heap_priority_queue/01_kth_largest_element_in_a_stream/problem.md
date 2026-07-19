# 1. Kth Largest Element in a Stream

**Difficulty:** Easy
**Topic:** Heap / Priority Queue
**Pattern:** Fixed-size min-heap
**Companies:** Amazon, Google

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

## Complexity
- Time: O(log k) per `add`
- Space: O(k)
