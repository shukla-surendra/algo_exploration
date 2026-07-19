# 1. Valid Palindrome

**Difficulty:** Easy
**Topic:** Two Pointers
**Pattern:** Two Pointers (converging from both ends)

## Problem
Given a string `s`, return `True` if it is a palindrome after: converting all uppercase
letters to lowercase, and removing all non-alphanumeric characters.

## Examples
```
Input: s = "A man, a plan, a canal: Panama" -> True
Input: s = "race a car"                      -> False
Input: s = " "                                -> True
```

## Approach
Use two pointers, one from the start and one from the end. Skip non-alphanumeric
characters at each pointer. Compare the lowercase versions of the characters at both
pointers; mismatch means not a palindrome. Move both pointers inward until they cross.
This avoids building a cleaned copy of the string.

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Two Pointers (converging from both ends)**,
which itself belongs to the broader **Two Pointers** family of techniques. If the
specific trick above feels like it came out of nowhere, that's the signal to step back
and read [`../PATTERN.md`](../PATTERN.md) — it covers how to recognize this family of
problems in general (not just this one), the reusable template you can write from
memory, the usual variations, and the mistakes people make applying it. Coming back to
re-read this problem's approach afterward should make the specific choices here feel
inevitable rather than clever.

## Complexity
- Time: O(n)
- Space: O(1)

## Solution
Runnable, with sample test cases at the bottom (`python3 two_pointers/01_valid_palindrome/solution.py`):

```python
--8<-- "two_pointers/01_valid_palindrome/solution.py"
```
