# 9. Binary Tree Maximum Path Sum

**Difficulty:** Hard
**Topic:** Trees
**Pattern:** Post-order DFS returning "best downward path", tracking a global max
**Companies:** Amazon, Meta, Microsoft, Google — a classic hard tree DFS problem.

## Problem
A path is any sequence of nodes connected by edges, and need not pass through the root or
be a straight line to a leaf. Given the root of a binary tree, return the maximum path
sum any path in the tree can have.

## Examples
```
Input: root = [1,2,3]         -> 6   (path 2 -> 1 -> 3)
Input: root = [-10,9,20,null,null,15,7] -> 42  (path 15 -> 20 -> 7)
```

## Approach
The subtlety: a node can be the "peak" of a path that uses **both** its children, but if
that node is itself used by its parent's path, the parent can only extend through **one**
side (a path can't branch). So define a recursive helper `max_gain(node)` that returns the
best sum extending downward through one side only (clamped at 0 — negative branches are
skipped). At each node, before returning that one-sided value to the parent, also check
`node.val + left_gain + right_gain` (the "peak through this node" case) against a global
running maximum.

## Complexity
- Time: O(n)
- Space: O(h) recursion stack
