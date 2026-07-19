# 5. Lowest Common Ancestor of a Binary Search Tree

**Difficulty:** Medium
**Topic:** Trees
**Pattern:** BST property-guided traversal
**Companies:** Amazon, Meta, Microsoft, LinkedIn

## Problem
Given a BST and two nodes `p` and `q` that exist in it, return their lowest common
ancestor (the deepest node that has both `p` and `q` as descendants, a node can be its own
descendant).

## Examples
```
Input: root = [6,2,8,0,4,7,9,null,null,3,5], p = 2, q = 8 -> 6
Input: root = [6,2,8,0,4,7,9,null,null,3,5], p = 2, q = 4 -> 2
```

## Approach
Exploit the BST ordering instead of general tree LCA: starting at the root, if both `p.val`
and `q.val` are less than the current node, the LCA must be in the left subtree; if both
are greater, it's in the right subtree. Otherwise (values on either side, or equal to the
current node) the current node is the split point — the LCA.

## Complexity
- Time: O(h), h = tree height (O(log n) balanced, O(n) worst case)
- Space: O(1) iterative
