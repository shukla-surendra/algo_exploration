# 6. Binary Tree Level Order Traversal

**Difficulty:** Medium
**Topic:** Trees
**Pattern:** BFS with level-size snapshotting

## Problem
Given the root of a binary tree, return the values of its nodes grouped level by level
(left to right within each level).

## Examples
```
Input: root = [3,9,20,null,null,15,7] -> [[3],[9,20],[15,7]]
```

## Approach
Standard BFS with a queue. The key trick for grouping by level: before draining the queue
for the next level, snapshot its current size (`level_size = len(queue)`) and process
exactly that many nodes, pushing their children for the next round. This cleanly separates
levels without needing sentinel markers.

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **BFS with level-size snapshotting**, which
itself belongs to the broader **Tree Traversal (DFS & BFS)** family of techniques. If
the specific trick above feels like it came out of nowhere, that's the signal to step
back and read [`../PATTERN.md`](../PATTERN.md) — it covers how to recognize this family
of problems in general (not just this one), the reusable template you can write from
memory, the usual variations, and the mistakes people make applying it. Coming back to
re-read this problem's approach afterward should make the specific choices here feel
inevitable rather than clever.

## Complexity
- Time: O(n)
- Space: O(n) (queue + output)
