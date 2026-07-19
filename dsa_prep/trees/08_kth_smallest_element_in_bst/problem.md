# 8. Kth Smallest Element in a BST

**Difficulty:** Medium
**Topic:** Trees
**Pattern:** In-order traversal (yields sorted order for a BST)

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

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **In-order traversal (yields sorted order for a
BST)**, which itself belongs to the broader **Tree Traversal (DFS & BFS)** family of
techniques. If the specific trick above feels like it came out of nowhere, that's the
signal to step back and read [`../PATTERN.md`](../PATTERN.md) — it covers how to
recognize this family of problems in general (not just this one), the reusable template
you can write from memory, the usual variations, and the mistakes people make applying
it. Coming back to re-read this problem's approach afterward should make the specific
choices here feel inevitable rather than clever.

## Complexity
- Time: O(h + k) where h = tree height
- Space: O(h)
