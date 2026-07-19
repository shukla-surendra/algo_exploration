# 1. Implement Trie (Prefix Tree)

**Difficulty:** Medium
**Topic:** Tries
**Pattern:** Nested hash-map tree, one node per character

## Problem
Implement a Trie with `insert(word)`, `search(word)` (exact match), and
`starts_with(prefix)` (any word has this prefix).

## Examples
```
insert("apple")
search("apple")   -> True
search("app")     -> False
starts_with("app") -> True
insert("app")
search("app")     -> True
```

## Approach
Each `TrieNode` holds a dict mapping character -> child `TrieNode`, plus a boolean
`is_end` flag. `insert` walks/creates a child node per character and marks `is_end` on the
final node. `search` walks the same way but requires `is_end` to be true at the end.
`starts_with` walks the same way but doesn't check `is_end` — just that the path exists.

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Nested hash-map tree, one node per character**,
which itself belongs to the broader **Trie (Prefix Tree)** family of techniques. If the
specific trick above feels like it came out of nowhere, that's the signal to step back
and read [`../PATTERN.md`](../PATTERN.md) — it covers how to recognize this family of
problems in general (not just this one), the reusable template you can write from
memory, the usual variations, and the mistakes people make applying it. Coming back to
re-read this problem's approach afterward should make the specific choices here feel
inevitable rather than clever.

## Complexity
- Time: O(L) per operation, L = length of the word/prefix
- Space: O(total characters inserted)

## Solution
Runnable, with sample test cases at the bottom (`python3 tries/01_implement_trie/solution.py`):

```python
--8<-- "tries/01_implement_trie/solution.py"
```
