# 1. Number of Islands

**Difficulty:** Medium
**Topic:** Graphs
**Pattern:** Grid DFS/BFS flood fill

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

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Grid DFS/BFS flood fill**, which itself belongs
to the broader **Graph Traversal (BFS, DFS, Union-Find, Topological Sort)** family of
techniques. If the specific trick above feels like it came out of nowhere, that's the
signal to step back and read [`../PATTERN.md`](../PATTERN.md) — it covers how to
recognize this family of problems in general (not just this one), the reusable template
you can write from memory, the usual variations, and the mistakes people make applying
it. Coming back to re-read this problem's approach afterward should make the specific
choices here feel inevitable rather than clever.

## Complexity
- Time: O(m·n)
- Space: O(m·n) worst case recursion/queue depth

## Solution
Runnable, with sample test cases at the bottom (`python3 graphs/01_number_of_islands/solution.py`):

```python
--8<-- "graphs/01_number_of_islands/solution.py"
```
