# 3. Edit Distance

**Difficulty:** Hard
**Topic:** 2-D Dynamic Programming
**Pattern:** 2-D DP table with insert/delete/replace transitions

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

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **2-D DP table with insert/delete/replace
transitions**, which itself belongs to the broader **2-D Dynamic Programming** family of
techniques. If the specific trick above feels like it came out of nowhere, that's the
signal to step back and read [`../PATTERN.md`](../PATTERN.md) — it covers how to
recognize this family of problems in general (not just this one), the reusable template
you can write from memory, the usual variations, and the mistakes people make applying
it. Coming back to re-read this problem's approach afterward should make the specific
choices here feel inevitable rather than clever.

## Complexity
- Time: O(n·m)
- Space: O(n·m) (reducible to O(min(n,m)))

## Solution
Runnable, with sample test cases at the bottom (`python3 dp_2d/03_edit_distance/solution.py`):

```python
--8<-- "dp_2d/03_edit_distance/solution.py"
```
