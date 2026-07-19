# 5. Number of Connected Components in an Undirected Graph

**Difficulty:** Medium
**Topic:** Graphs
**Pattern:** Union-Find (Disjoint Set Union) or DFS/BFS over unvisited nodes
**Companies:** Amazon, Meta, Google

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

## Complexity
- Time: O(n + E · α(n)) with union-find (α = inverse Ackermann, effectively constant)
- Space: O(n)
