# 3. Word Search II

**Difficulty:** Hard
**Topic:** Tries
**Pattern:** Trie of all target words + DFS/backtracking over the grid, pruned by the trie
**Companies:** Amazon, Google, Meta, Microsoft — a classic hard trie + backtracking
combination problem.

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

## Complexity
- Time: O(m·n·4^L) worst case, L = max word length, heavily pruned in practice by the trie
- Space: O(sum of word lengths) for the trie + O(L) recursion stack
