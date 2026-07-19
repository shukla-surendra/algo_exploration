# 1. Single Number

**Difficulty:** Easy
**Topic:** Bit Manipulation
**Pattern:** XOR cancellation
**Companies:** Amazon, Palantir, Airbnb

## Problem
Given a non-empty array `nums` where every element appears exactly twice except for one,
find that single element. Must run in linear time with O(1) extra space.

## Examples
```
Input: nums = [2,2,1]     -> 1
Input: nums = [4,1,2,1,2] -> 4
```

## Approach
XOR is commutative, associative, `x ^ x = 0`, and `x ^ 0 = x`. XOR-ing every element
together cancels out every pair (they XOR to 0), leaving only the single unpaired element.
This rules out needing a hash set (which would use O(n) space).

## Complexity
- Time: O(n)
- Space: O(1)
