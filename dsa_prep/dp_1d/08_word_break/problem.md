# 8. Word Break

**Difficulty:** Medium
**Topic:** 1-D Dynamic Programming
**Pattern:** Bottom-up reachability DP over string prefixes

## Problem
Given a string `s` and a dictionary `wordDict`, return `True` if `s` can be segmented into
a space-separated sequence of one or more dictionary words. Words may be reused.

## Examples
```
Input: s = "leetcode", wordDict = ["leet","code"] -> True
Input: s = "catsandog", wordDict = ["cats","dog","sand","and","cat"] -> False
```

## Approach
Let `dp[i]` mean "`s[:i]` can be fully segmented using dictionary words". `dp[0] = True`
(empty prefix trivially works). For each `i`, check every `j < i` where `dp[j]` is true
and `s[j:i]` is in the dictionary — if found, `dp[i] = True`. The final answer is
`dp[len(s)]`. Using a set for `wordDict` keeps substring lookups O(1).

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Bottom-up reachability DP over string
prefixes**, which itself belongs to the broader **1-D Dynamic Programming** family of
techniques. If the specific trick above feels like it came out of nowhere, that's the
signal to step back and read [`../PATTERN.md`](../PATTERN.md) — it covers how to
recognize this family of problems in general (not just this one), the reusable template
you can write from memory, the usual variations, and the mistakes people make applying
it. Coming back to re-read this problem's approach afterward should make the specific
choices here feel inevitable rather than clever.

## Complexity
- Time: O(n²) (or O(n² · maxWordLen) depending on substring slicing cost)
- Space: O(n)
