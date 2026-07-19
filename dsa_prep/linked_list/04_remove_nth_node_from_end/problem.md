# 4. Remove Nth Node From End of List

**Difficulty:** Medium
**Topic:** Linked List
**Pattern:** Two pointers with a fixed gap

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

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Two pointers with a fixed gap**, which itself
belongs to the broader **Linked List Pointer Manipulation** family of techniques. If the
specific trick above feels like it came out of nowhere, that's the signal to step back
and read [`../PATTERN.md`](../PATTERN.md) — it covers how to recognize this family of
problems in general (not just this one), the reusable template you can write from
memory, the usual variations, and the mistakes people make applying it. Coming back to
re-read this problem's approach afterward should make the specific choices here feel
inevitable rather than clever.

## Complexity
- Time: O(n)
- Space: O(1)
