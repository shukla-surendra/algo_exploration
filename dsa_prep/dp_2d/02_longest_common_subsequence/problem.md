# 2. Longest Common Subsequence

**Difficulty:** Medium
**Topic:** 2-D Dynamic Programming
**Pattern:** Classic 2-D DP table over two strings
**Companies:** Amazon, Meta, Microsoft, Google — the foundational two-string DP problem.

## Problem
Given two strings `text1` and `text2`, return the length of their longest common
subsequence (not necessarily contiguous), or 0 if none exists.

## Examples
```
Input: text1 = "abcde", text2 = "ace" -> 3   ("ace")
Input: text1 = "abc", text2 = "abc"   -> 3
Input: text1 = "abc", text2 = "def"   -> 0
```

## Approach
Build a 2-D table `dp[i][j]` = LCS length of `text1[:i]` and `text2[:j]`. If the last
characters match (`text1[i-1] == text2[j-1]`), extend the LCS found without those
characters: `dp[i][j] = dp[i-1][j-1] + 1`. Otherwise take the best of dropping a character
from either string: `dp[i][j] = max(dp[i-1][j], dp[i][j-1])`. The answer is
`dp[len(text1)][len(text2)]`.

## Complexity
- Time: O(n·m)
- Space: O(n·m) (reducible to O(min(n,m)) with a rolling array)
