# 1. Invert Binary Tree

**Difficulty:** Easy
**Topic:** Trees
**Pattern:** Recursive DFS (swap children)

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

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Recursive DFS (swap children)**, which itself
belongs to the broader **Tree Traversal (DFS & BFS)** family of techniques. If the
specific trick above feels like it came out of nowhere, that's the signal to step back
and read [`../PATTERN.md`](../PATTERN.md) — it covers how to recognize this family of
problems in general (not just this one), the reusable template you can write from
memory, the usual variations, and the mistakes people make applying it. Coming back to
re-read this problem's approach afterward should make the specific choices here feel
inevitable rather than clever.

## Complexity
- Time: O(n)
- Space: O(h) recursion stack, h = tree height

## Solution
Runnable, with sample test cases at the bottom (`python3 trees/01_invert_binary_tree/solution.py`):

```python
--8<-- "trees/01_invert_binary_tree/solution.py"
```
