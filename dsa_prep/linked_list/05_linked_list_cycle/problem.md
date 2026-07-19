# 5. Linked List Cycle

**Difficulty:** Easy
**Topic:** Linked List
**Pattern:** Floyd's Cycle Detection (slow/fast pointers)

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

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Floyd's Cycle Detection (slow/fast pointers)**,
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
