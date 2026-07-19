# 2. Merge Two Sorted Lists

**Difficulty:** Easy
**Topic:** Linked List
**Pattern:** Dummy head + two-pointer merge

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

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Dummy head + two-pointer merge**, which itself
belongs to the broader **Linked List Pointer Manipulation** family of techniques. If the
specific trick above feels like it came out of nowhere, that's the signal to step back
and read [`../PATTERN.md`](../PATTERN.md) — it covers how to recognize this family of
problems in general (not just this one), the reusable template you can write from
memory, the usual variations, and the mistakes people make applying it. Coming back to
re-read this problem's approach afterward should make the specific choices here feel
inevitable rather than clever.

## Complexity
- Time: O(n + m)
- Space: O(1) (reuses existing nodes)

## Solution
Runnable, with sample test cases at the bottom (`python3 linked_list/02_merge_two_sorted_lists/solution.py`):

```python
--8<-- "linked_list/02_merge_two_sorted_lists/solution.py"
```
