# 4. Word Search

**Difficulty:** Medium
**Topic:** Backtracking
**Pattern:** Grid DFS/backtracking with in-place visited marking

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

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Grid DFS/backtracking with in-place visited
marking**, which itself belongs to the broader **Backtracking** family of techniques. If
the specific trick above feels like it came out of nowhere, that's the signal to step
back and read [`../PATTERN.md`](../PATTERN.md) — it covers how to recognize this family
of problems in general (not just this one), the reusable template you can write from
memory, the usual variations, and the mistakes people make applying it. Coming back to
re-read this problem's approach afterward should make the specific choices here feel
inevitable rather than clever.

## Complexity
- Time: O(m·n·4^L), L = len(word) — heavily pruned in practice
- Space: O(L) recursion stack

## Solution
Runnable, with sample test cases at the bottom (`python3 backtracking/04_word_search/solution.py`):

```python
--8<-- "backtracking/04_word_search/solution.py"
```
