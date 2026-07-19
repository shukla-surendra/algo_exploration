# 7. Coin Change

**Difficulty:** Medium
**Topic:** 1-D Dynamic Programming
**Pattern:** Unbounded knapsack (bottom-up min-coins table)

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

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Unbounded knapsack (bottom-up min-coins
table)**, which itself belongs to the broader **1-D Dynamic Programming** family of
techniques. If the specific trick above feels like it came out of nowhere, that's the
signal to step back and read [`../PATTERN.md`](../PATTERN.md) — it covers how to
recognize this family of problems in general (not just this one), the reusable template
you can write from memory, the usual variations, and the mistakes people make applying
it. Coming back to re-read this problem's approach afterward should make the specific
choices here feel inevitable rather than clever.

## Complexity
- Time: O(amount · len(coins))
- Space: O(amount)
