# 4. Course Schedule

**Difficulty:** Medium
**Topic:** Graphs
**Pattern:** Cycle detection in a directed graph (topological sort / DFS coloring)
**Companies:** Amazon, Meta, Google, Bloomberg, Microsoft

## Problem
Given `numCourses` and a list of prerequisite pairs `[a, b]` (must take `b` before `a`),
return `True` if it's possible to finish all courses (i.e. the prerequisite graph has no
cycle).

## Examples
```
Input: numCourses = 2, prerequisites = [[1,0]] -> True
Input: numCourses = 2, prerequisites = [[1,0],[0,1]] -> False  (cycle)
```

## Approach
Build an adjacency list, then DFS with a 3-color scheme per node: unvisited, "in the
current recursion path" (visiting), and fully processed (visited). If DFS reaches a node
that's currently marked "visiting", that's a back edge — a cycle, so return `False`. After
fully exploring a node's neighbors, mark it "visited" (safe, can be revisited freely by
other paths) and remove it from the "visiting" set. No cycle across the whole graph means
all courses are finishable.

## Complexity
- Time: O(V + E)
- Space: O(V + E)
