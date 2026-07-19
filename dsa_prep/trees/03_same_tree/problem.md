# 3. Same Tree

**Difficulty:** Easy
**Topic:** Trees
**Pattern:** Recursive structural comparison

## Problem
Given the roots of two binary trees, return `True` if they are structurally identical and
their nodes have the same values.

## Examples
```
Input: p = [1,2,3], q = [1,2,3] -> True
Input: p = [1,2], q = [1,null,2] -> False
```

## Approach
Recursively compare: if both nodes are `None`, they match. If exactly one is `None`, or
their values differ, they don't. Otherwise recurse on left-vs-left and right-vs-right and
require both to match.

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Recursive structural comparison**, which itself
belongs to the broader **Tree Traversal (DFS & BFS)** family of techniques. If the
specific trick above feels like it came out of nowhere, that's the signal to step back
and read [`../PATTERN.md`](../PATTERN.md) — it covers how to recognize this family of
problems in general (not just this one), the reusable template you can write from
memory, the usual variations, and the mistakes people make applying it. Coming back to
re-read this problem's approach afterward should make the specific choices here feel
inevitable rather than clever.

## Complexity
- Time: O(min(n, m))
- Space: O(min(h1, h2)) recursion stack
