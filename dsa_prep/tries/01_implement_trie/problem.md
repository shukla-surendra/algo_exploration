# 1. Implement Trie (Prefix Tree)

**Difficulty:** Medium
**Topic:** Tries
**Pattern:** Nested hash-map tree, one node per character
**Companies:** Google, Amazon, Meta, Microsoft — the foundation for the whole topic.

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

## Complexity
- Time: O(L) per operation, L = length of the word/prefix
- Space: O(total characters inserted)
