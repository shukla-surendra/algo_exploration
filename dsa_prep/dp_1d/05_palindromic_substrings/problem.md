# 5. Palindromic Substrings

**Difficulty:** Medium
**Topic:** 1-D Dynamic Programming
**Pattern:** Expand around center, counting instead of tracking longest

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

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Expand around center, counting instead of
tracking longest**, which itself belongs to the broader **1-D Dynamic Programming**
family of techniques. If the specific trick above feels like it came out of nowhere,
that's the signal to step back and read [`../PATTERN.md`](../PATTERN.md) — it covers how
to recognize this family of problems in general (not just this one), the reusable
template you can write from memory, the usual variations, and the mistakes people make
applying it. Coming back to re-read this problem's approach afterward should make the
specific choices here feel inevitable rather than clever.

## Complexity
- Time: O(n²)
- Space: O(1)

## Solution
Runnable, with sample test cases at the bottom (`python3 dp_1d/05_palindromic_substrings/solution.py`):

```python
--8<-- "dp_1d/05_palindromic_substrings/solution.py"
```
