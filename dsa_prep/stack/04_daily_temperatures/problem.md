# 4. Daily Temperatures

**Difficulty:** Medium
**Topic:** Stack
**Pattern:** Monotonic Stack
**Companies:** Amazon, Meta, Bloomberg, Google

## Problem
Given an array `temperatures`, return an array `answer` where `answer[i]` is the number of
days you'd have to wait after day `i` for a warmer temperature. If no such day exists,
`answer[i] = 0`.

## Examples
```
Input: temperatures = [73,74,75,71,69,72,76,73] -> [1,1,4,2,1,1,0,0]
```

## Approach
Use a monotonic decreasing stack of **indices** (temperatures at those indices decrease as
you go down the stack). For each new day, pop every index off the stack whose temperature
is lower than today's — today is the "warmer day" they were waiting for, so set
`answer[popped_index] = i - popped_index`. Then push today's index. Every index is pushed
and popped at most once, so this is O(n) overall despite the inner while loop.

## Complexity
- Time: O(n)
- Space: O(n)
