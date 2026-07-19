# 4. Subtree of Another Tree

**Difficulty:** Easy
**Topic:** Trees
**Pattern:** Recursive DFS + "same tree" as a subroutine
**Companies:** Amazon, Meta, Bloomberg

## Problem
Given the roots of two binary trees `root` and `subRoot`, return `True` if there's a node
in `root` such that the subtree rooted at that node is identical to `subRoot`.

## Examples
```
Input: root = [3,4,5,1,2], subRoot = [4,1,2] -> True
Input: root = [3,4,5,1,2,null,null,null,null,0], subRoot = [4,1,2] -> False
```

## Approach
Reuse the "Same Tree" check as a subroutine. Walk `root` with DFS; at every node, check if
the subtree rooted there is identical to `subRoot`. If any node passes, return `True`.
Worst case compares at every node, each comparison bounded by `subRoot`'s size.

## Complexity
- Time: O(n · m) worst case (n = size of root, m = size of subRoot)
- Space: O(h) recursion stack
