# 1. Subsets

**Difficulty:** Medium
**Topic:** Backtracking
**Pattern:** Include/exclude decision tree
**Companies:** Amazon, Meta, Microsoft, Bloomberg — the foundational backtracking template.

## Problem
Given an array `nums` of unique integers, return all possible subsets (the power set), in
any order.

## Examples
```
Input: nums = [1,2,3]
Output: [[],[1],[2],[1,2],[3],[1,3],[2,3],[1,2,3]]
```

## Approach
At each index, backtrack over two choices: include `nums[i]` in the current subset, or
don't. Recurse to the next index either way, and record the current subset (a copy) at
every recursive call — every node of this decision tree is a valid subset, not just the
leaves. This "include/exclude" template generalizes to many other backtracking problems.

## Complexity
- Time: O(2^n) — that many subsets exist
- Space: O(n) recursion depth (excluding output)
