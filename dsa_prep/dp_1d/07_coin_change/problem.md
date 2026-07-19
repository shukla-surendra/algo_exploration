# 7. Coin Change

**Difficulty:** Medium
**Topic:** 1-D Dynamic Programming
**Pattern:** Unbounded knapsack (bottom-up min-coins table)
**Companies:** Amazon, Meta, Uber, Bloomberg — a very frequently asked DP problem.

## Problem
Given coin denominations `coins` and a `target amount`, return the fewest number of coins
needed to make that amount (unlimited supply of each coin). Return `-1` if it can't be
made.

## Examples
```
Input: coins = [1,2,5], amount = 11 -> 3   (5+5+1)
Input: coins = [2], amount = 3       -> -1
Input: coins = [1], amount = 0       -> 0
```

## Approach
Build a bottom-up DP array `dp[a]` = minimum coins to make amount `a`, with `dp[0] = 0` and
everything else initialized to infinity. For each amount from 1 to target, try every coin
`c <= a`: `dp[a] = min(dp[a], dp[a - c] + 1)`. This is the unbounded-knapsack pattern
(each coin can be reused, so iterate amounts in the outer loop, coins in the inner loop,
without an "already used" restriction).

## Complexity
- Time: O(amount · len(coins))
- Space: O(amount)
