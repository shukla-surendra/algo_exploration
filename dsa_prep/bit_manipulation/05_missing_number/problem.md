# 5. Missing Number

**Difficulty:** Easy
**Topic:** Bit Manipulation
**Pattern:** XOR cancellation over indices and values (or sum formula)
**Companies:** Amazon, Microsoft, Bloomberg

## Problem
Given an array `nums` containing `n` distinct numbers from the range `[0, n]`, return the
one number in that range missing from the array.

## Examples
```
Input: nums = [3,0,1] -> 2
Input: nums = [9,6,4,2,3,5,7,0,1] -> 8
```

## Approach
XOR every index `0..n` together with every value in `nums`. Every number that's actually
present cancels with its matching index (since indices only run 0..n-1 but values cover
0..n, exactly one value — the missing one — has no index partner and survives the
XOR). Equivalently, `expected_sum(0..n) - actual_sum(nums)` gives the same answer using
arithmetic instead of XOR — both are O(n) time, O(1) space, and avoid the O(n log n) sort
or O(n) hash-set approaches.

## Complexity
- Time: O(n)
- Space: O(1)
