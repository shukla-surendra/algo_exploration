# 2. Valid Anagram

**Difficulty:** Easy
**Topic:** Arrays & Hashing
**Pattern:** Hash Map / Frequency Count
**Companies:** Amazon, Bloomberg, Uber, Microsoft

## Problem
Given two strings `s` and `t`, return `True` if `t` is an anagram of `s`, and `False`
otherwise. An anagram uses exactly the same letters with the same frequency, rearranged.

## Examples
```
Input: s = "anagram", t = "nagaram" -> True
Input: s = "rat", t = "car"         -> False
```

## Approach
If the lengths differ, they can't be anagrams. Otherwise count letter frequencies of `s`
in a hash map (or a fixed-size array of 26 for lowercase-only inputs), then decrement while
scanning `t`. If every count returns to zero, they're anagrams. Sorting both strings and
comparing (O(n log n)) is a simpler but slower alternative.

## Complexity
- Time: O(n)
- Space: O(1) (bounded alphabet) or O(n) for a general hash map
