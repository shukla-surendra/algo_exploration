# 2. Valid Anagram

**Difficulty:** Easy
**Topic:** Arrays & Hashing
**Pattern:** Hash Map / Frequency Count

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

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Hash Map / Frequency Count**, which itself
belongs to the broader **Hashing for O(1) Lookups** family of techniques. If the
specific trick above feels like it came out of nowhere, that's the signal to step back
and read [`../PATTERN.md`](../PATTERN.md) — it covers how to recognize this family of
problems in general (not just this one), the reusable template you can write from
memory, the usual variations, and the mistakes people make applying it. Coming back to
re-read this problem's approach afterward should make the specific choices here feel
inevitable rather than clever.

## Complexity
- Time: O(n)
- Space: O(1) (bounded alphabet) or O(n) for a general hash map
