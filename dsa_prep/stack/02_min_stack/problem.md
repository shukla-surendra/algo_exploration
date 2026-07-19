# 2. Min Stack

**Difficulty:** Medium
**Topic:** Stack
**Pattern:** Auxiliary stack tracking running minimum

## Problem
Design a stack that supports `push`, `pop`, `top`, and retrieving the minimum element, all
in O(1) time.

## Examples
```
push(-2); push(0); push(-3)
getMin() -> -3
pop()
top()    -> 0
getMin() -> -2
```

## Approach
Maintain a second stack alongside the main one that tracks the minimum "so far" at each
depth. When pushing `x`, push `min(x, current_min)` onto the min-stack (or just `x` if the
min-stack is empty). When popping, pop from both stacks in lockstep. `getMin()` is just
the min-stack's top — always O(1).

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Auxiliary stack tracking running minimum**,
which itself belongs to the broader **Stack** family of techniques. If the specific
trick above feels like it came out of nowhere, that's the signal to step back and read
[`../PATTERN.md`](../PATTERN.md) — it covers how to recognize this family of problems in
general (not just this one), the reusable template you can write from memory, the usual
variations, and the mistakes people make applying it. Coming back to re-read this
problem's approach afterward should make the specific choices here feel inevitable
rather than clever.

## Complexity
- Time: O(1) for every operation
- Space: O(n)

## Solution
Runnable, with sample test cases at the bottom (`python3 stack/02_min_stack/solution.py`):

```python
--8<-- "stack/02_min_stack/solution.py"
```
