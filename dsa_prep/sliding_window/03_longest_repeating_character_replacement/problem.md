# 3. Longest Repeating Character Replacement

**Difficulty:** Medium
**Topic:** Sliding Window
**Pattern:** Variable window with a validity check
**Companies:** Amazon, Meta, Google

## Problem
Given a string `s` of uppercase letters and an integer `k`, you may replace up to `k`
characters in the string. Return the length of the longest substring achievable that
contains only one repeating character after those replacements.

## Examples
```
Input: s = "ABAB", k = 2  -> 4
Input: s = "AABABBA", k = 1 -> 4
```

## Approach
Slide a window over `s`, keeping a count of each letter within the window and tracking
`max_freq` — the count of the most frequent letter in the current window. A window is
valid if `(window length - max_freq) <= k`, i.e. the number of characters that would need
replacing doesn't exceed `k`. When the window becomes invalid, shrink from the left. The
window size never needs to shrink below its historical max, so the answer is simply the
largest window length ever reached.

## Complexity
- Time: O(n) (26-letter alphabet, effectively O(26n) = O(n))
- Space: O(1) (fixed 26-letter count array)
