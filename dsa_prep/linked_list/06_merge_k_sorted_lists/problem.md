# 6. Merge k Sorted Lists

**Difficulty:** Hard
**Topic:** Linked List
**Pattern:** Min-heap of current heads (or divide & conquer pairwise merge)
**Companies:** Amazon, Meta, Google, Microsoft — a very common "hard" linked-list
capstone.

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

## Complexity
- Time: O(N log k) where N = total nodes, k = number of lists
- Space: O(k) for the heap
