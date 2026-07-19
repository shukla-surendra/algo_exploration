# 4. Subtree of Another Tree

**Difficulty:** Easy
**Topic:** Trees
**Pattern:** Recursive DFS + "same tree" as a subroutine

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

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Recursive DFS + "same tree" as a subroutine**,
which itself belongs to the broader **Tree Traversal (DFS & BFS)** family of techniques.
If the specific trick above feels like it came out of nowhere, that's the signal to step
back and read [`../PATTERN.md`](../PATTERN.md) — it covers how to recognize this family
of problems in general (not just this one), the reusable template you can write from
memory, the usual variations, and the mistakes people make applying it. Coming back to
re-read this problem's approach afterward should make the specific choices here feel
inevitable rather than clever.

## Complexity
- Time: O(n · m) worst case (n = size of root, m = size of subRoot)
- Space: O(h) recursion stack

## Solution
Runnable, with sample test cases at the bottom (`python3 trees/04_subtree_of_another_tree/solution.py`):

```python
--8<-- "trees/04_subtree_of_another_tree/solution.py"
```
