# 3. Word Search II

**Difficulty:** Hard
**Topic:** Tries
**Pattern:** Trie of all target words + DFS/backtracking over the grid, pruned by the trie

## Problem
Given an `m x n` grid of characters `board` and a list of strings `words`, return all
words from `words` that can be formed by a path of adjacent cells (horizontally or
vertically), using each cell at most once per word.

## Examples
```
Input: board = [["o","a","a","n"],["e","t","a","e"],["i","h","k","r"],["i","f","l","v"]],
       words = ["oath","pea","eat","rain"]
Output: ["eat","oath"]
```

## Approach
Doing a separate DFS-from-every-cell for each word independently is too slow when there
are many words. Instead, build one Trie containing all of `words`. Then DFS from every
cell on the board **once**, walking the trie alongside the board path: only continue in a
direction if the current character exists as a child in the trie (this prunes dead paths
across all words simultaneously). When a trie node marked `is_end` is reached, record that
word (and clear its flag to avoid duplicate results). Mark visited cells during the DFS
and unmark on backtrack.

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Trie of all target words + DFS/backtracking
over the grid, pruned by the trie**, which itself belongs to the broader **Trie (Prefix
Tree)** family of techniques. If the specific trick above feels like it came out of
nowhere, that's the signal to step back and read [`../PATTERN.md`](../PATTERN.md) — it
covers how to recognize this family of problems in general (not just this one), the
reusable template you can write from memory, the usual variations, and the mistakes
people make applying it. Coming back to re-read this problem's approach afterward should
make the specific choices here feel inevitable rather than clever.

## Complexity
- Time: O(m·n·4^L) worst case, L = max word length, heavily pruned in practice by the trie
- Space: O(sum of word lengths) for the trie + O(L) recursion stack

## Solution
Runnable, with sample test cases at the bottom (`python3 tries/03_word_search_ii/solution.py`):

```python
--8<-- "tries/03_word_search_ii/solution.py"
```
