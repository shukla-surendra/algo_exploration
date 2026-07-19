# 2. Longest Substring Without Repeating Characters

**Difficulty:** Medium
**Topic:** Sliding Window
**Pattern:** Variable-size window + hash map of last-seen index

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

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Variable-size window + hash map of last-seen
index**, which itself belongs to the broader **Sliding Window** family of techniques. If
the specific trick above feels like it came out of nowhere, that's the signal to step
back and read [`../PATTERN.md`](../PATTERN.md) — it covers how to recognize this family
of problems in general (not just this one), the reusable template you can write from
memory, the usual variations, and the mistakes people make applying it. Coming back to
re-read this problem's approach afterward should make the specific choices here feel
inevitable rather than clever.

## Complexity
- Time: O(n)
- Space: O(min(n, alphabet size))
