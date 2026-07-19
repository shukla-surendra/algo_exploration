# 4. Remove Nth Node From End of List

**Difficulty:** Medium
**Topic:** Linked List
**Pattern:** Two pointers with a fixed gap
**Companies:** Amazon, Meta, Microsoft, Apple

## Problem
Given the head of a linked list, remove the `n`-th node from the end and return the head.
Do it in one pass.

## Examples
```
Input: head = 1->2->3->4->5, n = 2 -> 1->2->3->5
Input: head = 1, n = 1              -> []
Input: head = 1->2, n = 1            -> 1
```

## Approach
Use a dummy node before `head` (handles removing the head cleanly). Advance a `fast`
pointer `n` steps ahead first, then move `slow` (starting at dummy) and `fast` together
until `fast` reaches the last node. At that point `slow.next` is exactly the node to
remove — unlink it with `slow.next = slow.next.next`. One pass, no need to know the
length up front.

## Complexity
- Time: O(n)
- Space: O(1)
