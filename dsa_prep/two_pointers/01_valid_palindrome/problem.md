# 1. Valid Palindrome

**Difficulty:** Easy
**Topic:** Two Pointers
**Pattern:** Two Pointers (converging from both ends)
**Companies:** Microsoft, Amazon, Facebook/Meta, Apple

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

## Complexity
- Time: O(n)
- Space: O(1)
