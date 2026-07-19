# 1. Best Time to Buy and Sell Stock

**Difficulty:** Easy
**Topic:** Sliding Window
**Pattern:** Single pass, track running minimum
**Companies:** Amazon, Meta, Bloomberg, Google — one of the most frequently asked screening
questions.

## Problem
Given an array `prices` where `prices[i]` is the stock price on day `i`, and you may buy
on one day and sell on a later day, return the maximum profit. Return 0 if no profit is
possible.

## Examples
```
Input: prices = [7,1,5,3,6,4] -> 5   (buy at 1, sell at 6)
Input: prices = [7,6,4,3,1]   -> 0   (prices only fall)
```

## Approach
This is a sliding window with a variable left edge: keep a running `min_price` seen so
far (the left/buy edge), and at each day compute the profit if selling today
(`price - min_price`), tracking the best. Update `min_price` whenever a new lower price
is seen. One pass, no extra space.

## Complexity
- Time: O(n)
- Space: O(1)
