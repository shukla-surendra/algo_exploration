# 6. Merge k Sorted Lists

**Difficulty:** Hard
**Topic:** Linked List
**Pattern:** Min-heap of current heads (or divide & conquer pairwise merge)

## Problem
Given an array of `k` linked lists, each sorted ascending, merge them into one sorted
linked list and return its head.

## Examples
```
Input: lists = [[1,4,5],[1,3,4],[2,6]] -> [1,1,2,3,4,4,5,6]
```

## Approach
Push the head node of every non-empty list onto a min-heap keyed by value (with a tie
breaker index to avoid comparing `ListNode` objects directly). Repeatedly pop the smallest,
append it to the result, and if it has a `next`, push that onto the heap. This is
O(N log k) where N is the total number of nodes. (An alternative divide-and-conquer
approach pairwise-merges the lists, also O(N log k), without needing a heap.)

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Min-heap of current heads (or divide & conquer
pairwise merge)**, which itself belongs to the broader **Linked List Pointer
Manipulation** family of techniques. If the specific trick above feels like it came out
of nowhere, that's the signal to step back and read [`../PATTERN.md`](../PATTERN.md) —
it covers how to recognize this family of problems in general (not just this one), the
reusable template you can write from memory, the usual variations, and the mistakes
people make applying it. Coming back to re-read this problem's approach afterward should
make the specific choices here feel inevitable rather than clever.

## Complexity
- Time: O(N log k) where N = total nodes, k = number of lists
- Space: O(k) for the heap
