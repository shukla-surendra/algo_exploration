# 1. Climbing Stairs

**Difficulty:** Easy
**Topic:** 1-D Dynamic Programming
**Pattern:** Fibonacci-style recurrence
**Companies:** Amazon, Adobe, Apple — the canonical "intro to DP" problem.

## Problem
You're climbing a staircase of `n` steps. Each move you can climb 1 or 2 steps. How many
distinct ways can you reach the top?

## Examples
```
Input: n = 2 -> 2  (1+1, 2)
Input: n = 3 -> 3  (1+1+1, 1+2, 2+1)
```

## Approach
The number of ways to reach step `n` is the sum of ways to reach `n-1` (then take a
1-step) and ways to reach `n-2` (then take a 2-step) — exactly the Fibonacci recurrence.
Iteratively build up from the base cases (`ways(1)=1`, `ways(2)=2`) using just two
running variables, no need for a full array.

## Complexity
- Time: O(n)
- Space: O(1)
