# 2. Design Add and Search Words Data Structure

**Difficulty:** Medium
**Topic:** Tries
**Pattern:** Trie + DFS/backtracking for wildcard `.` matching

## Problem
Design a data structure supporting `add_word(word)` and `search(word)`, where `search`'s
query may contain `.` as a wildcard matching any single letter.

## Examples
```
add_word("bad"); add_word("dad"); add_word("mad")
search("pad") -> False
search("bad") -> True
search(".ad") -> True
search("b..") -> True
```

## Approach
Same Trie structure as a standard prefix tree. `add_word` is identical to `insert`.
`search` needs DFS instead of a simple walk: at each character, if it's a literal letter,
follow that single child (or fail); if it's `.`, try **every** child at that level
recursively and succeed if any path succeeds. This is a backtracking search over the trie.

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Trie + DFS/backtracking for wildcard `.`
matching**, which itself belongs to the broader **Trie (Prefix Tree)** family of
techniques. If the specific trick above feels like it came out of nowhere, that's the
signal to step back and read [`../PATTERN.md`](../PATTERN.md) — it covers how to
recognize this family of problems in general (not just this one), the reusable template
you can write from memory, the usual variations, and the mistakes people make applying
it. Coming back to re-read this problem's approach afterward should make the specific
choices here feel inevitable rather than clever.

## Complexity
- Time: O(L) for a word with no wildcards; O(26^d · L) worst case with d dots
- Space: O(total characters inserted)
