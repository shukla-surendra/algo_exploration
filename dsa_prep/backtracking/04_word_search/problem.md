# 4. Word Search

**Difficulty:** Medium
**Topic:** Backtracking
**Pattern:** Grid DFS/backtracking with in-place visited marking
**Companies:** Amazon, Meta, Microsoft, Bloomberg

## Problem
Given an `m x n` grid of characters `board` and a string `word`, return `True` if `word`
exists as a path of adjacent cells (horizontally or vertically), using each cell at most
once.

## Examples
```
Input: board = [["A","B","C","E"],["S","F","C","S"],["A","D","E","E"]], word = "ABCCED"
Output: True
```

## Approach
Try starting the DFS from every cell that matches `word[0]`. During the DFS, if the
current cell matches `word[i]`, temporarily mark it visited (e.g. overwrite with a
sentinel character) and recurse into all 4 neighbors looking for `word[i+1]`; restore the
cell afterward (backtrack) whether or not that branch succeeded. Reaching `i == len(word)`
means the whole word was matched.

## Complexity
- Time: O(m·n·4^L), L = len(word) — heavily pruned in practice
- Space: O(L) recursion stack
