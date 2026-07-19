# 3. Same Tree

**Difficulty:** Easy
**Topic:** Trees
**Pattern:** Recursive structural comparison
**Companies:** Amazon, Bloomberg, Microsoft

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

## Complexity
- Time: O(min(n, m))
- Space: O(min(h1, h2)) recursion stack
