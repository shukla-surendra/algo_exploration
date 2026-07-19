# 5. Find Median from Data Stream

**Difficulty:** Hard
**Topic:** Heap / Priority Queue
**Pattern:** Two heaps (max-heap for the lower half, min-heap for the upper half)
**Companies:** Amazon, Google, Meta, LinkedIn, Bloomberg — a classic hard heap capstone.

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

## Complexity
- Time: O(log n) per `add_num`, O(1) per `find_median`
- Space: O(n)
