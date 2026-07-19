# 4. Reverse Bits

**Difficulty:** Easy
**Topic:** Bit Manipulation
**Pattern:** Bit-by-bit extraction and reassembly

## Problem
Given a 32-bit unsigned integer `n`, return its bits reversed.

## Examples
```
Input: n = 00000010100101000001111010011100 (43261596)
Output:   00111001011110000010100101000000 (964176192)
```

## Approach
Build the result bit by bit: for each of the 32 positions, shift the result left to make
room, then OR in the lowest bit of `n` (`n & 1`), then shift `n` right to expose the next
bit. After 32 iterations, every bit of `n` has been extracted lowest-to-highest and placed
into `result` highest-to-lowest — exactly the reversal.

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Bit-by-bit extraction and reassembly**, which
itself belongs to the broader **Bit Manipulation** family of techniques. If the specific
trick above feels like it came out of nowhere, that's the signal to step back and read
[`../PATTERN.md`](../PATTERN.md) — it covers how to recognize this family of problems in
general (not just this one), the reusable template you can write from memory, the usual
variations, and the mistakes people make applying it. Coming back to re-read this
problem's approach afterward should make the specific choices here feel inevitable
rather than clever.

## Complexity
- Time: O(32) = O(1)
- Space: O(1)
