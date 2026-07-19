# 4. Reverse Bits

**Difficulty:** Easy
**Topic:** Bit Manipulation
**Pattern:** Bit-by-bit extraction and reassembly
**Companies:** Apple, Amazon

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

## Complexity
- Time: O(32) = O(1)
- Space: O(1)
