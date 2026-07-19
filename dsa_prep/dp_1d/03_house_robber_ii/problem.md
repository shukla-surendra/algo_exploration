# 3. House Robber II

**Difficulty:** Medium
**Topic:** 1-D Dynamic Programming
**Pattern:** Circular array reduced to two linear subproblems
**Companies:** Amazon, Meta

## Problem
Same as House Robber, but the houses are arranged in a **circle** — the first and last
house are adjacent. Return the maximum amount you can rob without robbing two adjacent
houses.

## Examples
```
Input: nums = [2,3,2] -> 3   (can't rob both house 0 and 2 — they're adjacent in the circle)
Input: nums = [1,2,3,1] -> 4
```

## Approach
The circular constraint only matters for the pair (first house, last house). So the
answer is the max of two independent linear House-Robber subproblems: one that excludes
the last house (allows robbing the first), and one that excludes the first house (allows
robbing the last). Run the standard linear House Robber DP on both ranges and take the
max. (Special-case a single house directly.)

## Complexity
- Time: O(n)
- Space: O(1)
