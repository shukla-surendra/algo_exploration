# 4. Permutation in String

**Difficulty:** Medium
**Topic:** Sliding Window
**Pattern:** Fixed-size window with a frequency-count comparison
**Companies:** Microsoft, Amazon, Meta

## Problem
Given strings `s1` and `s2`, return `True` if `s2` contains a permutation of `s1` as a
contiguous substring.

## Examples
```
Input: s1 = "ab", s2 = "eidbaooo" -> True  ("ba" is a permutation of "ab")
Input: s1 = "ab", s2 = "eidboaoo" -> False
```

## Approach
A permutation of `s1` occurring in `s2` is just a fixed-size window of length `len(s1)`
whose letter-count matches `s1`'s letter-count exactly. Slide a window of that fixed size
across `s2`, maintaining a running count array, incrementing on the new right character and
decrementing on the character leaving the left. Compare count arrays (or track a
"matches" counter to avoid O(26) comparisons each step).

## Complexity
- Time: O(n) where n = len(s2)
- Space: O(1) (26-letter count arrays)
