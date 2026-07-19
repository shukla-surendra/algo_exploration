# 3. Counting Bits

**Difficulty:** Easy
**Topic:** Bit Manipulation
**Pattern:** DP building on `i >> 1` (reuse of the previous answer)
**Companies:** Amazon, Meta

## Problem
Given an integer `n`, return an array `ans` of length `n+1` where `ans[i]` is the number
of 1 bits in the binary representation of `i`, for every `i` from 0 to `n`. Aim for a
linear-time solution.

## Examples
```
Input: n = 2 -> [0,1,1]
Input: n = 5 -> [0,1,1,2,1,2]
```

## Approach
Recomputing Hamming weight from scratch for every `i` costs O(n log n) overall. Instead,
build a DP: `ans[i] = ans[i >> 1] + (i & 1)`. Right-shifting `i` by 1 drops its lowest bit,
so its bit count is already known from an earlier (smaller) index; just add back 1 if the
dropped bit was a 1 (`i & 1`). This computes every answer in O(1) using previously
computed results.

## Complexity
- Time: O(n)
- Space: O(n) for the output (O(1) extra)
