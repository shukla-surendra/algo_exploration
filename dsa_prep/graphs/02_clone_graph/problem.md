# 2. Clone Graph

**Difficulty:** Medium
**Topic:** Graphs
**Pattern:** DFS/BFS with a hash-map of original -> clone
**Companies:** Amazon, Meta, Google, Microsoft

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

## Complexity
- Time: O(V + E)
- Space: O(V) for the map + recursion stack
