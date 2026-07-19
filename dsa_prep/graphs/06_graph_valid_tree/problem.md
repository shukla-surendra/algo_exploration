# 6. Graph Valid Tree

**Difficulty:** Medium
**Topic:** Graphs
**Pattern:** Union-Find, checking edge count and connectivity/no-cycle

## Problem
Given `n` nodes labeled `0` to `n-1` and a list of undirected `edges`, determine if these
edges form a valid tree (connected, and acyclic).

## Examples
```
Input: n = 5, edges = [[0,1],[0,2],[0,3],[1,4]] -> True
Input: n = 5, edges = [[0,1],[1,2],[2,3],[1,3],[1,4]] -> False (cycle)
```

## Approach
A graph with `n` nodes is a tree iff it is connected **and** has exactly `n - 1` edges
(any fewer can't connect everything; any more forces a cycle given connectivity). Use
Union-Find: for each edge, if both endpoints are already in the same set, adding this edge
would create a cycle — fail immediately. Otherwise union them. At the end, check that
there's exactly one connected component left (equivalent to checking edge count == n-1
given no cycle was found along the way).

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Union-Find, checking edge count and
connectivity/no-cycle**, which itself belongs to the broader **Graph Traversal (BFS,
DFS, Union-Find, Topological Sort)** family of techniques. If the specific trick above
feels like it came out of nowhere, that's the signal to step back and read
[`../PATTERN.md`](../PATTERN.md) — it covers how to recognize this family of problems in
general (not just this one), the reusable template you can write from memory, the usual
variations, and the mistakes people make applying it. Coming back to re-read this
problem's approach afterward should make the specific choices here feel inevitable
rather than clever.

## Complexity
- Time: O(n + E · α(n))
- Space: O(n)
