# 1. Reverse Linked List

**Difficulty:** Easy
**Topic:** Linked List
**Pattern:** Iterative pointer reversal
**Companies:** Amazon, Meta, Microsoft, Apple, Google — foundational for the whole topic.

## Problem
Given the head of a singly linked list, reverse it and return the new head.

## Examples
```
Input: 1->2->3->4->5 -> 5->4->3->2->1
Input: [] -> []
```

## Approach
Walk the list with `prev = None` and `curr = head`. At each node, save `curr.next` before
overwriting it to point backward at `prev`, then advance both `prev` and `curr` forward.
When `curr` becomes `None`, `prev` is the new head. (A recursive version is equally
common: recurse to the tail, then rewire `next.next = curr` on the way back up.)

## Complexity
- Time: O(n)
- Space: O(1) iterative (O(n) recursion stack if done recursively)
