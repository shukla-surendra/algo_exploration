# 4. 0/1 Knapsack

**Difficulty:** Medium
**Topic:** 2-D Dynamic Programming
**Pattern:** Bounded knapsack (each item used at most once)
**Companies:** Amazon, Google, Bloomberg — the foundational knapsack pattern underlying
many "partition"/"subset sum" style interview questions.

## Problem
Given `n` items each with a `weight` and a `value`, and a knapsack capacity `W`, choose a
subset of items (each usable at most once) maximizing total value without exceeding total
weight `W`. Return the max achievable value.

## Examples
```
Input: weights = [1,3,4,5], values = [1,4,5,7], capacity = 7 -> 9  (items with weight 3+4=7, value 4+5=9)
```

## Approach
`dp[i][w]` = max value achievable using the first `i` items with capacity `w`. For each
item, either skip it (`dp[i-1][w]`) or, if it fits (`weight[i-1] <= w`), take it
(`value[i-1] + dp[i-1][w - weight[i-1]]`) — take the better of the two. Iterating items in
the outer loop and processing weight capacity 0..W in the inner loop, using only the
*previous* item's row, is what enforces "each item used at most once" (contrast with Coin
Change's unbounded reuse, where the same row is reused within an item).

## Complexity
- Time: O(n·W)
- Space: O(n·W) (reducible to O(W) with a rolling array, iterating capacity in reverse)
