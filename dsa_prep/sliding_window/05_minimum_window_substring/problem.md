# 5. Minimum Window Substring

**Difficulty:** Hard
**Topic:** Sliding Window
**Pattern:** Variable window with a "have vs need" counter

## Problem
Given strings `s` and `t`, return the minimum-length substring of `s` that contains every
character of `t` (including duplicates). Return `""` if no such substring exists.

## Examples
```
Input: s = "ADOBECODEBANC", t = "ABC" -> "BANC"
Input: s = "a", t = "aa"              -> ""
```

## Approach
Build a frequency map `need` for `t`. Expand a right pointer over `s`, maintaining a
`window` frequency map and a counter `have` of how many distinct characters currently meet
their required count in `need`. Once `have == len(need)` (window contains everything
needed), try shrinking from the left as much as possible while it stays valid, recording
the best (smallest) valid window found. This is the standard "grow to find validity,
shrink to minimize" sliding window template.

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Variable window with a "have vs need"
counter**, which itself belongs to the broader **Sliding Window** family of techniques.
If the specific trick above feels like it came out of nowhere, that's the signal to step
back and read [`../PATTERN.md`](../PATTERN.md) — it covers how to recognize this family
of problems in general (not just this one), the reusable template you can write from
memory, the usual variations, and the mistakes people make applying it. Coming back to
re-read this problem's approach afterward should make the specific choices here feel
inevitable rather than clever.

## Complexity
- Time: O(n + m) where n = len(s), m = len(t)
- Space: O(n + m)

## Solution
Runnable, with sample test cases at the bottom (`python3 sliding_window/05_minimum_window_substring/solution.py`):

```python
--8<-- "sliding_window/05_minimum_window_substring/solution.py"
```
