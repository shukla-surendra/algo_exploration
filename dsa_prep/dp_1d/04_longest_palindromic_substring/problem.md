# 4. Longest Palindromic Substring

**Difficulty:** Medium
**Topic:** 1-D Dynamic Programming
**Pattern:** Expand around center
**Companies:** Amazon, Meta, Microsoft, Apple — extremely frequently asked.

## Problem
Given a string `s`, return the longest palindromic substring.

## Examples
```
Input: s = "babad" -> "bab" (or "aba", both valid)
Input: s = "cbbd"  -> "bb"
```

## Approach
Every palindrome has a center — either a single character (odd length) or a gap between
two characters (even length). For each of the `2n - 1` possible centers, expand outward
while both sides match, tracking the longest palindrome found. This avoids the O(n³) brute
force of checking every substring, and is simpler to implement correctly than the O(n) DP
table approach while still being efficient enough (O(n²)).

## Complexity
- Time: O(n²)
- Space: O(1)
