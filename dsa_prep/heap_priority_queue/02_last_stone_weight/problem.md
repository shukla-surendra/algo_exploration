# 2. Last Stone Weight

**Difficulty:** Easy
**Topic:** Heap / Priority Queue
**Pattern:** Max-heap simulation

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

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Max-heap simulation**, which itself belongs to
the broader **Heap / Priority Queue** family of techniques. If the specific trick above
feels like it came out of nowhere, that's the signal to step back and read
[`../PATTERN.md`](../PATTERN.md) — it covers how to recognize this family of problems in
general (not just this one), the reusable template you can write from memory, the usual
variations, and the mistakes people make applying it. Coming back to re-read this
problem's approach afterward should make the specific choices here feel inevitable
rather than clever.

## Complexity
- Time: O(n log n)
- Space: O(n)

## Solution
Runnable, with sample test cases at the bottom (`python3 heap_priority_queue/02_last_stone_weight/solution.py`):

```python
--8<-- "heap_priority_queue/02_last_stone_weight/solution.py"
```
