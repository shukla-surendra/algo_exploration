# 5. Palindromic Substrings

**Difficulty:** Medium
**Topic:** 1-D Dynamic Programming
**Pattern:** Expand around center, counting instead of tracking longest
**Companies:** Amazon, Meta, Google

## Problem
Given a string `s`, return the number of palindromic substrings (different positions
counted separately even if the substrings have the same characters).

## Examples
```
Input: s = "abc" -> 3   ("a","b","c")
Input: s = "aaa" -> 6   ("a","a","a","aa","aa","aaa")
```

## Approach
Same "expand around center" technique as Longest Palindromic Substring, but every
successful expansion step is itself a valid palindrome, so just increment a counter each
time the expansion condition holds, for both odd-length and even-length centers, across
all `2n - 1` centers.

## Complexity
- Time: O(n²)
- Space: O(1)
