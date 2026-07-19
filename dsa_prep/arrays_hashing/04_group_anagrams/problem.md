# 4. Group Anagrams

**Difficulty:** Medium
**Topic:** Arrays & Hashing
**Pattern:** Hash Map with a canonical key

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

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Hash Map with a canonical key**, which itself
belongs to the broader **Hashing for O(1) Lookups** family of techniques. If the
specific trick above feels like it came out of nowhere, that's the signal to step back
and read [`../PATTERN.md`](../PATTERN.md) — it covers how to recognize this family of
problems in general (not just this one), the reusable template you can write from
memory, the usual variations, and the mistakes people make applying it. Coming back to
re-read this problem's approach afterward should make the specific choices here feel
inevitable rather than clever.

## Complexity
- Time: O(n·k) where n = number of strings, k = max string length (using count signature)
- Space: O(n·k)

## Solution
Runnable, with sample test cases at the bottom (`python3 arrays_hashing/04_group_anagrams/solution.py`):

```python
--8<-- "arrays_hashing/04_group_anagrams/solution.py"
```
