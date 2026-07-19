# 1. Number of Islands

**Difficulty:** Medium
**Topic:** Graphs
**Pattern:** Grid DFS/BFS flood fill
**Companies:** Amazon, Meta, Microsoft, Google, Bloomberg — one of the most commonly asked
graph problems in the industry.

## Problem
Given an `m x n` binary grid where `1` is land and `0` is water, return the number of
islands (groups of land connected horizontally/vertically).

## Examples
```
Input: grid = [
 ["1","1","0","0","0"],
 ["1","1","0","0","0"],
 ["0","0","1","0","0"],
 ["0","0","0","1","1"]]
Output: 3
```

## Approach
Scan every cell. On an unvisited `1`, increment the island count and flood-fill (DFS or
BFS) to mark every connected land cell as visited (e.g. by mutating it to `"0"` in place,
or using a separate visited set). This ensures each island is only counted once no matter
its shape.

## Complexity
- Time: O(m·n)
- Space: O(m·n) worst case recursion/queue depth
