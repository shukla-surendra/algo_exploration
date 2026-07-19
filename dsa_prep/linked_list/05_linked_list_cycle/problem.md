# 5. Linked List Cycle

**Difficulty:** Easy
**Topic:** Linked List
**Pattern:** Floyd's Cycle Detection (slow/fast pointers)
**Companies:** Amazon, Microsoft, Bloomberg, Meta

## Problem
Given the head of a linked list, determine if it has a cycle (some node's `next` points
back to an earlier node in the list).

## Examples
```
Input: 3->2->0->-4 with tail connecting back to node at index 1 -> True
Input: 1->2 with no cycle -> False
```

## Approach
Floyd's Tortoise and Hare: move `slow` one step and `fast` two steps at a time. If there's
a cycle, `fast` will eventually lap `slow` and they'll meet inside the loop. If `fast`
(or `fast.next`) hits `None`, there's no cycle. Uses no extra data structure, unlike the
hash-set-of-visited-nodes alternative (O(n) space).

## Complexity
- Time: O(n)
- Space: O(1)
