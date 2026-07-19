# 5. N-Queens

**Difficulty:** Hard
**Topic:** Backtracking
**Pattern:** Row-by-row placement with O(1) column/diagonal conflict tracking
**Companies:** Amazon, Microsoft, Google — a classic hard backtracking capstone.

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

## Complexity
- Time: O(n!) worst case, pruned heavily by the conflict checks
- Space: O(n) for the tracking sets + recursion stack
