# 1. Invert Binary Tree

**Difficulty:** Easy
**Topic:** Trees
**Pattern:** Recursive DFS (swap children)
**Companies:** Google (famously — the "can't invert a binary tree" tweet), Amazon, Meta

## Problem
Given the root of a binary tree, invert it (mirror left and right children at every node)
and return the root.

## Examples
```
Input: root = [4,2,7,1,3,6,9] -> [4,7,2,9,6,3,1]
```

## Approach
Classic recursive DFS: swap a node's left and right children, then recurse into both
(now-swapped) subtrees. Base case: `None` returns `None`. An iterative BFS/DFS with an
explicit queue/stack works identically well.

## Complexity
- Time: O(n)
- Space: O(h) recursion stack, h = tree height
