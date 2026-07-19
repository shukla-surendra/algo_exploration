# 3. Reorder List

**Difficulty:** Medium
**Topic:** Linked List
**Pattern:** Fast/slow pointer split + reverse + merge

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

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Fast/slow pointer split + reverse + merge**,
which itself belongs to the broader **Linked List Pointer Manipulation** family of
techniques. If the specific trick above feels like it came out of nowhere, that's the
signal to step back and read [`../PATTERN.md`](../PATTERN.md) — it covers how to
recognize this family of problems in general (not just this one), the reusable template
you can write from memory, the usual variations, and the mistakes people make applying
it. Coming back to re-read this problem's approach afterward should make the specific
choices here feel inevitable rather than clever.

## Complexity
- Time: O(n)
- Space: O(1)
