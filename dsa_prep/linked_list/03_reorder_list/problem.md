# 3. Reorder List

**Difficulty:** Medium
**Topic:** Linked List
**Pattern:** Fast/slow pointer split + reverse + merge
**Companies:** Amazon, Meta, Microsoft

## Problem
Given a linked list `L0 -> L1 -> ... -> Ln-1 -> Ln`, reorder it in place to:
`L0 -> Ln -> L1 -> Ln-1 -> L2 -> Ln-2 -> ...`. You may not modify node values, only links.

## Examples
```
Input: 1->2->3->4   -> 1->4->2->3
Input: 1->2->3->4->5 -> 1->5->2->4->3
```

## Approach
Three steps, each a well-known sub-pattern: (1) find the middle with slow/fast pointers,
(2) reverse the second half in place, (3) merge the first half and reversed second half by
alternating nodes. Combining these three primitives is the whole trick.

## Complexity
- Time: O(n)
- Space: O(1)
