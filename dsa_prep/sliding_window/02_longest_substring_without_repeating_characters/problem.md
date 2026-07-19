# 2. Longest Substring Without Repeating Characters

**Difficulty:** Medium
**Topic:** Sliding Window
**Pattern:** Variable-size window + hash map of last-seen index
**Companies:** Amazon, Meta, Microsoft, Bloomberg, Adobe

## Problem
Given a string `s`, find the length of the longest substring without repeating
characters.

## Examples
```
Input: s = "abcabcbb" -> 3  ("abc")
Input: s = "bbbbb"    -> 1  ("b")
Input: s = "pwwkew"   -> 3  ("wke")
```

## Approach
Expand a window's right edge one character at a time. Keep a hash map of each character's
most recent index. If the current character was seen before *and* its last index is
inside the current window, jump the left edge to just past that previous occurrence.
Track the max window size (`right - left + 1`) throughout.

## Complexity
- Time: O(n)
- Space: O(min(n, alphabet size))
