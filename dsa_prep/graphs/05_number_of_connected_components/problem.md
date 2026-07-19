# 5. Number of Connected Components in an Undirected Graph

**Difficulty:** Medium
**Topic:** Graphs
**Pattern:** Union-Find (Disjoint Set Union) or DFS/BFS over unvisited nodes

## Problem
Given `n` nodes labeled `0` to `n-1` and a list of undirected `edges`, return the number
of connected components in the graph.

## Examples
```
Input: n = 5, edges = [[0,1],[1,2],[3,4]] -> 2
Input: n = 5, edges = [[0,1],[1,2],[2,3],[3,4]] -> 1
```

## Approach
Union-Find is the natural tool here: initialize each node as its own parent, then for
every edge, union the two endpoints' sets (using union-by-rank/size and path compression
for near-O(1) operations). The final answer is the number of distinct root parents
remaining. (An equivalent DFS/BFS approach: iterate over every node, and each time an
unvisited node is found, that's a new component — flood-fill mark everything reachable
from it.)

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Union-Find (Disjoint Set Union) or DFS/BFS over
unvisited nodes**, which itself belongs to the broader **Graph Traversal (BFS, DFS,
Union-Find, Topological Sort)** family of techniques. If the specific trick above feels
like it came out of nowhere, that's the signal to step back and read
[`../PATTERN.md`](../PATTERN.md) — it covers how to recognize this family of problems in
general (not just this one), the reusable template you can write from memory, the usual
variations, and the mistakes people make applying it. Coming back to re-read this
problem's approach afterward should make the specific choices here feel inevitable
rather than clever.

## Complexity
- Time: O(n + E · α(n)) with union-find (α = inverse Ackermann, effectively constant)
- Space: O(n)

## Solution
Runnable, with sample test cases at the bottom (`python3 graphs/05_number_of_connected_components/solution.py`):

```python
--8<-- "graphs/05_number_of_connected_components/solution.py"
```
