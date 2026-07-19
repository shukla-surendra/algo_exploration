# 2. Jump Game

**Difficulty:** Medium
**Topic:** Greedy
**Pattern:** Track the farthest reachable index
**Companies:** Amazon, Meta, Microsoft, Google

## Problem
Given an array `nums` where `nums[i]` is the maximum jump length from index `i`,
determine if you can reach the last index starting from index 0.

## Examples
```
Input: nums = [2,3,1,1,4] -> True
Input: nums = [3,2,1,0,4] -> False (stuck at index 3)
```

## Approach
Walk left to right, maintaining `farthest` — the furthest index reachable so far. At each
index `i`, if `i > farthest`, that index is unreachable, so fail immediately. Otherwise
update `farthest = max(farthest, i + nums[i])`. If `farthest` ever reaches or passes the
last index, succeed. This greedy scan never needs to backtrack because reachability is
monotonic — the furthest-so-far is always the best possible position to jump from.

## Complexity
- Time: O(n)
- Space: O(1)
