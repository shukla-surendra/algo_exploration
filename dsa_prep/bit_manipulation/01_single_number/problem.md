# 1. Single Number

**Difficulty:** Easy
**Topic:** Bit Manipulation
**Pattern:** XOR cancellation

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

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **XOR cancellation**, which itself belongs to the
broader **Bit Manipulation** family of techniques. If the specific trick above feels
like it came out of nowhere, that's the signal to step back and read
[`../PATTERN.md`](../PATTERN.md) — it covers how to recognize this family of problems in
general (not just this one), the reusable template you can write from memory, the usual
variations, and the mistakes people make applying it. Coming back to re-read this
problem's approach afterward should make the specific choices here feel inevitable
rather than clever.

## Complexity
- Time: O(n)
- Space: O(1)
