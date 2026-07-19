# 5. N-Queens

**Difficulty:** Hard
**Topic:** Backtracking
**Pattern:** Row-by-row placement with O(1) column/diagonal conflict tracking

## Problem
Place `n` queens on an `n x n` chessboard so that no two queens attack each other (same
row, column, or diagonal). Return all distinct board configurations, each represented as a
list of strings.

## Examples
```
Input: n = 4
Output: [
 [".Q..","...Q","Q...","..Q."],
 ["..Q.","Q...","...Q",".Q.."]
]
```

## Approach
Place one queen per row, choosing a column for each row in turn (this alone guarantees no
two queens share a row). Track occupied columns and both diagonal directions with three
sets: columns, `row - col` (identifies a "/" diagonal), and `row + col` (identifies a "\"
diagonal) — both diagonal identities are invariant along their diagonal, giving O(1)
conflict checks instead of scanning the board. Backtrack: try a column, recurse to the
next row, then undo before trying the next column.

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Row-by-row placement with O(1) column/diagonal
conflict tracking**, which itself belongs to the broader **Backtracking** family of
techniques. If the specific trick above feels like it came out of nowhere, that's the
signal to step back and read [`../PATTERN.md`](../PATTERN.md) — it covers how to
recognize this family of problems in general (not just this one), the reusable template
you can write from memory, the usual variations, and the mistakes people make applying
it. Coming back to re-read this problem's approach afterward should make the specific
choices here feel inevitable rather than clever.

## Complexity
- Time: O(n!) worst case, pruned heavily by the conflict checks
- Space: O(n) for the tracking sets + recursion stack

## Solution
Runnable, with sample test cases at the bottom (`python3 backtracking/05_n_queens/solution.py`):

```python
--8<-- "backtracking/05_n_queens/solution.py"
```
