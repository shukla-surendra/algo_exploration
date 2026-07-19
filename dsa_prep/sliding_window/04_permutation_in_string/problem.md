# 4. Permutation in String

**Difficulty:** Medium
**Topic:** Sliding Window
**Pattern:** Fixed-size window with a frequency-count comparison

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

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Fixed-size window with a frequency-count
comparison**, which itself belongs to the broader **Sliding Window** family of
techniques. If the specific trick above feels like it came out of nowhere, that's the
signal to step back and read [`../PATTERN.md`](../PATTERN.md) — it covers how to
recognize this family of problems in general (not just this one), the reusable template
you can write from memory, the usual variations, and the mistakes people make applying
it. Coming back to re-read this problem's approach afterward should make the specific
choices here feel inevitable rather than clever.

## Complexity
- Time: O(n) where n = len(s2)
- Space: O(1) (26-letter count arrays)

## Solution
Runnable, with sample test cases at the bottom (`python3 sliding_window/04_permutation_in_string/solution.py`):

```python
--8<-- "sliding_window/04_permutation_in_string/solution.py"
```
