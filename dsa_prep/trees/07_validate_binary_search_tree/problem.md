# 7. Validate Binary Search Tree

**Difficulty:** Medium
**Topic:** Trees
**Pattern:** DFS with a propagated valid range

## Problem
Given the root of a binary tree, determine if it is a valid BST: every node's value must
be strictly greater than **all** values in its left subtree and strictly less than **all**
values in its right subtree — not just its immediate children.

## Examples
```
Input: root = [2,1,3]     -> True
Input: root = [5,1,4,null,null,3,6] -> False  (4 < 5 but sits in the right subtree)
```

## Approach
A common bug is only comparing a node to its direct children. Instead, pass down a valid
`(low, high)` range as you recurse: the root's range is `(-inf, +inf)`; going left tightens
the upper bound to the parent's value, going right tightens the lower bound. A node is
valid only if `low < node.val < high`. (An in-order-traversal-must-be-strictly-increasing
approach is an equally valid alternative.)

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **DFS with a propagated valid range**, which
itself belongs to the broader **Tree Traversal (DFS & BFS)** family of techniques. If
the specific trick above feels like it came out of nowhere, that's the signal to step
back and read [`../PATTERN.md`](../PATTERN.md) — it covers how to recognize this family
of problems in general (not just this one), the reusable template you can write from
memory, the usual variations, and the mistakes people make applying it. Coming back to
re-read this problem's approach afterward should make the specific choices here feel
inevitable rather than clever.

## Complexity
- Time: O(n)
- Space: O(h) recursion stack
