# 2. Last Stone Weight

**Difficulty:** Easy
**Topic:** Heap / Priority Queue
**Pattern:** Max-heap simulation
**Companies:** Amazon, Google

## Problem
You have stones with weights `stones`. Repeatedly smash the two heaviest stones together:
if they're equal weight, both are destroyed; otherwise the lighter is destroyed and the
heavier becomes `heavy - light`. Return the weight of the last remaining stone, or 0 if
none remain.

## Examples
```
Input: stones = [2,7,4,1,8,1] -> 1
```

## Approach
Python's `heapq` is a min-heap, so negate values to simulate a max-heap. Repeatedly pop
the two largest (most negative), and if they differ, push the difference back (re-negated).
Continue until at most one stone remains.

## Complexity
- Time: O(n log n)
- Space: O(n)
