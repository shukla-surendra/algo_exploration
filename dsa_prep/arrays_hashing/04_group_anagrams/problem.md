# 4. Group Anagrams

**Difficulty:** Medium
**Topic:** Arrays & Hashing
**Pattern:** Hash Map with a canonical key
**Companies:** Amazon, Meta, Uber, Bloomberg, Microsoft

## Problem
Given an array of strings `strs`, group the anagrams together. You can return the answer
in any order.

## Examples
```
Input: strs = ["eat","tea","tan","ate","nat","bat"]
Output: [["bat"],["nat","tan"],["ate","eat","tea"]]
```

## Approach
Two strings are anagrams iff they share the same sorted form (or the same 26-length letter
count signature). Use that canonical form as a hash map key and bucket every string into
the list for its key. Using a count-tuple signature instead of `sorted(word)` avoids the
O(k log k) sort per word, giving O(k) per word instead.

## Complexity
- Time: O(n·k) where n = number of strings, k = max string length (using count signature)
- Space: O(n·k)
