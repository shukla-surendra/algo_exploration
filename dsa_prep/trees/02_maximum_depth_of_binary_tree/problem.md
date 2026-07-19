# 2. Maximum Depth of Binary Tree

**Difficulty:** Easy
**Topic:** Trees
**Pattern:** Recursive DFS

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

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Recursive DFS**, which itself belongs to the
broader **Tree Traversal (DFS & BFS)** family of techniques. If the specific trick above
feels like it came out of nowhere, that's the signal to step back and read
[`../PATTERN.md`](../PATTERN.md) — it covers how to recognize this family of problems in
general (not just this one), the reusable template you can write from memory, the usual
variations, and the mistakes people make applying it. Coming back to re-read this
problem's approach afterward should make the specific choices here feel inevitable
rather than clever.

## Complexity
- Time: O(n)
- Space: O(h) recursion stack

## Solution
Runnable, with sample test cases at the bottom (`python3 trees/02_maximum_depth_of_binary_tree/solution.py`):

```python
--8<-- "trees/02_maximum_depth_of_binary_tree/solution.py"
```
