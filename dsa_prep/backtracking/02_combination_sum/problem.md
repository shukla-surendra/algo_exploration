# 2. Combination Sum

**Difficulty:** Medium
**Topic:** Backtracking
**Pattern:** Backtracking with unlimited reuse of each candidate

## Problem
Given an array of distinct integers `candidates` and a `target`, return all unique
combinations where the chosen numbers sum to `target`. The same number may be reused an
unlimited number of times.

## Examples
```
Input: candidates = [2,3,6,7], target = 7 -> [[2,2,3],[7]]
Input: candidates = [2,3,5], target = 8   -> [[2,2,2,2],[2,3,3],[3,5]]
```

## Approach
Backtrack starting from index `i`, choosing whether to include `candidates[i]` (staying at
index `i` again, since reuse is allowed) or move on to `i + 1`. Subtract the chosen value
from the remaining target; a remaining target of 0 is a valid combination, and going
negative prunes that branch. Always advancing `i` (never revisiting earlier indices)
naturally avoids generating duplicate combinations in different orders.

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Backtracking with unlimited reuse of each
candidate**, which itself belongs to the broader **Backtracking** family of techniques.
If the specific trick above feels like it came out of nowhere, that's the signal to step
back and read [`../PATTERN.md`](../PATTERN.md) — it covers how to recognize this family
of problems in general (not just this one), the reusable template you can write from
memory, the usual variations, and the mistakes people make applying it. Coming back to
re-read this problem's approach afterward should make the specific choices here feel
inevitable rather than clever.

## Complexity
- Time: exponential in the worst case, bounded by the number of valid combinations
- Space: O(target / min(candidates)) recursion depth
