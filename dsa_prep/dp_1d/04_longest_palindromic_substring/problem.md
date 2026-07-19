# 4. Longest Palindromic Substring

**Difficulty:** Medium
**Topic:** 1-D Dynamic Programming
**Pattern:** Expand around center

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

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Expand around center**, which itself belongs to
the broader **1-D Dynamic Programming** family of techniques. If the specific trick
above feels like it came out of nowhere, that's the signal to step back and read
[`../PATTERN.md`](../PATTERN.md) — it covers how to recognize this family of problems in
general (not just this one), the reusable template you can write from memory, the usual
variations, and the mistakes people make applying it. Coming back to re-read this
problem's approach afterward should make the specific choices here feel inevitable
rather than clever.

## Complexity
- Time: O(n²)
- Space: O(1)
