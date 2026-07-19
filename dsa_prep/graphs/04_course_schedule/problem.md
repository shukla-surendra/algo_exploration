# 4. Course Schedule

**Difficulty:** Medium
**Topic:** Graphs
**Pattern:** Cycle detection in a directed graph (topological sort / DFS coloring)

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

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Cycle detection in a directed graph
(topological sort / DFS coloring)**, which itself belongs to the broader **Graph
Traversal (BFS, DFS, Union-Find, Topological Sort)** family of techniques. If the
specific trick above feels like it came out of nowhere, that's the signal to step back
and read [`../PATTERN.md`](../PATTERN.md) — it covers how to recognize this family of
problems in general (not just this one), the reusable template you can write from
memory, the usual variations, and the mistakes people make applying it. Coming back to
re-read this problem's approach afterward should make the specific choices here feel
inevitable rather than clever.

## Complexity
- Time: O(V + E)
- Space: O(V + E)

## Solution
Runnable, with sample test cases at the bottom (`python3 graphs/04_course_schedule/solution.py`):

```python
--8<-- "graphs/04_course_schedule/solution.py"
```
