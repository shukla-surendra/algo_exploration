# 5. Minimum Window Substring

**Difficulty:** Hard
**Topic:** Sliding Window
**Pattern:** Variable window with a "have vs need" counter
**Companies:** Meta, Amazon, Google, Uber, Bloomberg — a classic hard sliding-window
capstone problem.

## Problem
Given strings `s` and `t`, return the minimum-length substring of `s` that contains every
character of `t` (including duplicates). Return `""` if no such substring exists.

## Examples
```
Input: s = "ADOBECODEBANC", t = "ABC" -> "BANC"
Input: s = "a", t = "aa"              -> ""
```

## Approach
Build a frequency map `need` for `t`. Expand a right pointer over `s`, maintaining a
`window` frequency map and a counter `have` of how many distinct characters currently meet
their required count in `need`. Once `have == len(need)` (window contains everything
needed), try shrinking from the left as much as possible while it stays valid, recording
the best (smallest) valid window found. This is the standard "grow to find validity,
shrink to minimize" sliding window template.

## Complexity
- Time: O(n + m) where n = len(s), m = len(t)
- Space: O(n + m)
