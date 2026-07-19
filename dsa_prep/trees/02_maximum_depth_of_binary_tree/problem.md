# 2. Maximum Depth of Binary Tree

**Difficulty:** Easy
**Topic:** Trees
**Pattern:** Recursive DFS
**Companies:** Amazon, Meta, LinkedIn, Apple

## Problem
Given the root of a binary tree, return its maximum depth (number of nodes along the
longest path from root to the farthest leaf).

## Examples
```
Input: root = [3,9,20,null,null,15,7] -> 3
Input: root = [] -> 0
```

## Approach
The depth of a tree is `1 + max(depth(left), depth(right))`, with `None` having depth 0.
This recurrence maps directly onto a recursive DFS. A BFS level-by-level count works
equally well if an iterative solution is preferred.

## Complexity
- Time: O(n)
- Space: O(h) recursion stack
