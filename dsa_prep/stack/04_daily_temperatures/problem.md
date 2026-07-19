# 4. Daily Temperatures

**Difficulty:** Medium
**Topic:** Stack
**Pattern:** Monotonic Stack

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

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Monotonic Stack**, which itself belongs to the
broader **Stack** family of techniques. If the specific trick above feels like it came
out of nowhere, that's the signal to step back and read [`../PATTERN.md`](../PATTERN.md)
— it covers how to recognize this family of problems in general (not just this one), the
reusable template you can write from memory, the usual variations, and the mistakes
people make applying it. Coming back to re-read this problem's approach afterward should
make the specific choices here feel inevitable rather than clever.

## Complexity
- Time: O(n)
- Space: O(n)

## Solution
Runnable, with sample test cases at the bottom (`python3 stack/04_daily_temperatures/solution.py`):

```python
--8<-- "stack/04_daily_temperatures/solution.py"
```
