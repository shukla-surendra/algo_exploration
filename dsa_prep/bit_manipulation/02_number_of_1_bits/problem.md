# 2. Number of 1 Bits (Hamming Weight)

**Difficulty:** Easy
**Topic:** Bit Manipulation
**Pattern:** Brian Kernighan's bit trick (`n & (n-1)` clears the lowest set bit)

## Problem
Given an unsigned integer `n`, return the number of `1` bits in its binary representation
(its Hamming weight).

## Examples
```
Input: n = 11 (1011) -> 3
Input: n = 128 (10000000) -> 1
```

## Approach
The naive approach shifts and checks the lowest bit `32` times regardless of how many bits
are actually set. Brian Kernighan's trick is faster in practice: `n & (n - 1)` clears
exactly the lowest set bit of `n` (since `n - 1` flips all bits after and including the
lowest set bit). Repeating this and counting iterations until `n` becomes 0 counts exactly
the number of set bits, in a number of steps equal to the number of 1-bits (not 32).

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Brian Kernighan's bit trick (`n & (n-1)` clears
the lowest set bit)**, which itself belongs to the broader **Bit Manipulation** family
of techniques. If the specific trick above feels like it came out of nowhere, that's the
signal to step back and read [`../PATTERN.md`](../PATTERN.md) — it covers how to
recognize this family of problems in general (not just this one), the reusable template
you can write from memory, the usual variations, and the mistakes people make applying
it. Coming back to re-read this problem's approach afterward should make the specific
choices here feel inevitable rather than clever.

## Complexity
- Time: O(k), k = number of set bits (at most 32)
- Space: O(1)
