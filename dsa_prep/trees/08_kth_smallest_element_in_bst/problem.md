# 8. Kth Smallest Element in a BST

**Difficulty:** Medium
**Topic:** Trees
**Pattern:** In-order traversal (yields sorted order for a BST)
**Companies:** Amazon, Meta, Google

## Problem
Given the root of a BST and an integer `k`, return the `k`-th smallest value in the tree
(1-indexed).

## Examples
```
Input: root = [3,1,4,null,2], k = 1 -> 1
Input: root = [5,3,6,2,4,null,null,1], k = 3 -> 3
```

## Approach
An in-order traversal (left, node, right) of a BST visits nodes in strictly ascending
order. Do an iterative in-order traversal with an explicit stack, decrementing a counter
each time a node is visited; stop and return as soon as the counter hits `k`. This avoids
building the full sorted list when `k` is small.

## Complexity
- Time: O(h + k) where h = tree height
- Space: O(h)
