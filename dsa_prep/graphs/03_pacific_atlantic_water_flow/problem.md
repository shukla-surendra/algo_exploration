# 3. Pacific Atlantic Water Flow

**Difficulty:** Medium
**Topic:** Graphs
**Pattern:** Multi-source DFS/BFS from the borders, run backward

## Problem
Given an `m x n` grid of heights, water can flow from a cell to a neighbor with height
`<=` its own, in 4 directions. The Pacific touches the top/left edges, the Atlantic the
bottom/right edges. Return all cells from which water can reach **both** oceans.

## Examples
```
Input: heights = [[1,2,2,3,5],[3,2,3,4,4],[2,4,5,3,1],[6,7,1,4,5],[5,1,1,2,4]]
Output: [[0,4],[1,3],[1,4],[2,2],[3,0],[3,1],[4,0]]
```

## Approach
Instead of checking, for every cell, whether it can flow all the way to both borders
(expensive), reverse the direction: start a multi-source DFS/BFS **from every border
cell** of each ocean, moving to a neighbor only if that neighbor's height is `>=` the
current cell's (this is water flowing "uphill" in reverse, equivalent to "could flow down
to here"). This marks every cell that ocean's water can be traced back from. A cell in
both the Pacific-reachable and Atlantic-reachable sets is part of the answer.

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Multi-source DFS/BFS from the borders, run
backward**, which itself belongs to the broader **Graph Traversal (BFS, DFS, Union-Find,
Topological Sort)** family of techniques. If the specific trick above feels like it came
out of nowhere, that's the signal to step back and read [`../PATTERN.md`](../PATTERN.md)
— it covers how to recognize this family of problems in general (not just this one), the
reusable template you can write from memory, the usual variations, and the mistakes
people make applying it. Coming back to re-read this problem's approach afterward should
make the specific choices here feel inevitable rather than clever.

## Complexity
- Time: O(m·n)
- Space: O(m·n)

## Solution
Runnable, with sample test cases at the bottom (`python3 graphs/03_pacific_atlantic_water_flow/solution.py`):

```python
--8<-- "graphs/03_pacific_atlantic_water_flow/solution.py"
```
