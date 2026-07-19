# 1. Reverse Linked List

**Difficulty:** Easy
**Topic:** Linked List
**Pattern:** Iterative pointer reversal

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

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Iterative pointer reversal**, which itself
belongs to the broader **Linked List Pointer Manipulation** family of techniques. If the
specific trick above feels like it came out of nowhere, that's the signal to step back
and read [`../PATTERN.md`](../PATTERN.md) — it covers how to recognize this family of
problems in general (not just this one), the reusable template you can write from
memory, the usual variations, and the mistakes people make applying it. Coming back to
re-read this problem's approach afterward should make the specific choices here feel
inevitable rather than clever.

## Complexity
- Time: O(n)
- Space: O(1) iterative (O(n) recursion stack if done recursively)

## Solution
Runnable, with sample test cases at the bottom (`python3 linked_list/01_reverse_linked_list/solution.py`):

```python
--8<-- "linked_list/01_reverse_linked_list/solution.py"
```
