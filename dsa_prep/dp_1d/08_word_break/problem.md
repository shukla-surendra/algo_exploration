# 8. Word Break

**Difficulty:** Medium
**Topic:** 1-D Dynamic Programming
**Pattern:** Bottom-up reachability DP over string prefixes
**Companies:** Amazon, Meta, Google, Bloomberg, Uber

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

## Complexity
- Time: O(n²) (or O(n² · maxWordLen) depending on substring slicing cost)
- Space: O(n)
