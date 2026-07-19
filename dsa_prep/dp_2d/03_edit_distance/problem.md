# 3. Edit Distance

**Difficulty:** Hard
**Topic:** 2-D Dynamic Programming
**Pattern:** 2-D DP table with insert/delete/replace transitions
**Companies:** Amazon, Google, Meta, Microsoft — a classic hard DP problem (Levenshtein
distance).

## Problem
Given two strings `word1` and `word2`, return the minimum number of single-character
edits (insert, delete, replace) required to transform `word1` into `word2`.

## Examples
```
Input: word1 = "horse", word2 = "ros" -> 3
Input: word1 = "intention", word2 = "execution" -> 5
```

## Approach
`dp[i][j]` = min edits to convert `word1[:i]` into `word2[:j]`. Base cases: converting an
empty prefix into a `j`-length prefix takes `j` insertions (and symmetrically `i`
deletions). If the last characters match, no edit needed there:
`dp[i][j] = dp[i-1][j-1]`. Otherwise take the best of three operations:
`1 + min(dp[i-1][j]` (delete from word1), `dp[i][j-1]` (insert into word1),
`dp[i-1][j-1])` (replace).

## Complexity
- Time: O(n·m)
- Space: O(n·m) (reducible to O(min(n,m)))
