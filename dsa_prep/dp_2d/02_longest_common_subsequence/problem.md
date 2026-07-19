# 2. Longest Common Subsequence

**Difficulty:** Medium
**Topic:** 2-D Dynamic Programming
**Pattern:** Classic 2-D DP table over two strings

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

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Classic 2-D DP table over two strings**, which
itself belongs to the broader **2-D Dynamic Programming** family of techniques. If the
specific trick above feels like it came out of nowhere, that's the signal to step back
and read [`../PATTERN.md`](../PATTERN.md) — it covers how to recognize this family of
problems in general (not just this one), the reusable template you can write from
memory, the usual variations, and the mistakes people make applying it. Coming back to
re-read this problem's approach afterward should make the specific choices here feel
inevitable rather than clever.

## Complexity
- Time: O(n·m)
- Space: O(n·m) (reducible to O(min(n,m)) with a rolling array)
