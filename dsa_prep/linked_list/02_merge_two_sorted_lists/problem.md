# 2. Merge Two Sorted Lists

**Difficulty:** Easy
**Topic:** Linked List
**Pattern:** Dummy head + two-pointer merge
**Companies:** Amazon, Microsoft, Apple, Meta

## Problem
Merge two sorted linked lists `list1` and `list2` into one sorted list by splicing
together their nodes, and return the head.

## Examples
```
Input: list1 = 1->2->4, list2 = 1->3->4 -> 1->1->2->3->4->4
```

## Approach
Use a dummy head node and a `tail` pointer. Repeatedly compare the current heads of both
lists, attach the smaller to `tail.next`, and advance that list's pointer and `tail`. When
one list is exhausted, attach the remainder of the other directly (no need to keep
comparing one at a time). Return `dummy.next`.

## Complexity
- Time: O(n + m)
- Space: O(1) (reuses existing nodes)
