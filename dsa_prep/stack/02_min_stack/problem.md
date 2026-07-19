# 2. Min Stack

**Difficulty:** Medium
**Topic:** Stack
**Pattern:** Auxiliary stack tracking running minimum
**Companies:** Amazon, Google, Bloomberg, Microsoft

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

## Complexity
- Time: O(1) for every operation
- Space: O(n)
