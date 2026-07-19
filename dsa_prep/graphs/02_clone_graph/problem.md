# 2. Clone Graph

**Difficulty:** Medium
**Topic:** Graphs
**Pattern:** DFS/BFS with a hash-map of original -> clone

## Problem
Given a reference node in a connected undirected graph (each node has a value and a list
of neighbors), return a deep copy (clone) of the graph.

## Examples
```
Input: adjList = [[2,4],[1,3],[2,4],[1,3]] -> a structurally identical cloned graph
```

## Approach
DFS from the given node, maintaining a hash map from original node -> its clone. Before
recursing into a node's neighbors, create its clone and store it in the map immediately
(this is what prevents infinite loops on cycles — if we encounter a node already in the
map, we return its existing clone instead of recursing again). For each neighbor, either
reuse its clone from the map or recurse to build it, then append to the current clone's
neighbor list.

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **DFS/BFS with a hash-map of original -> clone**,
which itself belongs to the broader **Graph Traversal (BFS, DFS, Union-Find, Topological
Sort)** family of techniques. If the specific trick above feels like it came out of
nowhere, that's the signal to step back and read [`../PATTERN.md`](../PATTERN.md) — it
covers how to recognize this family of problems in general (not just this one), the
reusable template you can write from memory, the usual variations, and the mistakes
people make applying it. Coming back to re-read this problem's approach afterward should
make the specific choices here feel inevitable rather than clever.

## Complexity
- Time: O(V + E)
- Space: O(V) for the map + recursion stack

## Solution
Runnable, with sample test cases at the bottom (`python3 graphs/02_clone_graph/solution.py`):

```python
--8<-- "graphs/02_clone_graph/solution.py"
```
