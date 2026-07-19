# 2. Jump Game

**Difficulty:** Medium
**Topic:** Greedy
**Pattern:** Track the farthest reachable index

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

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Track the farthest reachable index**, which
itself belongs to the broader **Greedy** family of techniques. If the specific trick
above feels like it came out of nowhere, that's the signal to step back and read
[`../PATTERN.md`](../PATTERN.md) — it covers how to recognize this family of problems in
general (not just this one), the reusable template you can write from memory, the usual
variations, and the mistakes people make applying it. Coming back to re-read this
problem's approach afterward should make the specific choices here feel inevitable
rather than clever.

## Complexity
- Time: O(n)
- Space: O(1)
