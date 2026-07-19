# 2. Combination Sum

**Difficulty:** Medium
**Topic:** Backtracking
**Pattern:** Backtracking with unlimited reuse of each candidate
**Companies:** Amazon, Meta, Snapchat, Uber

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

## Complexity
- Time: exponential in the worst case, bounded by the number of valid combinations
- Space: O(target / min(candidates)) recursion depth
