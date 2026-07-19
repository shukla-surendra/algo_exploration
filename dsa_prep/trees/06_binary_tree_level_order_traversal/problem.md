# 6. Binary Tree Level Order Traversal

**Difficulty:** Medium
**Topic:** Trees
**Pattern:** BFS with level-size snapshotting
**Companies:** Amazon, Meta, Microsoft, Bloomberg

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

## Complexity
- Time: O(n)
- Space: O(n) (queue + output)
