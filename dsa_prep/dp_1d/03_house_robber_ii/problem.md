# 3. House Robber II

**Difficulty:** Medium
**Topic:** 1-D Dynamic Programming
**Pattern:** Circular array reduced to two linear subproblems

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

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Circular array reduced to two linear
subproblems**, which itself belongs to the broader **1-D Dynamic Programming** family of
techniques. If the specific trick above feels like it came out of nowhere, that's the
signal to step back and read [`../PATTERN.md`](../PATTERN.md) — it covers how to
recognize this family of problems in general (not just this one), the reusable template
you can write from memory, the usual variations, and the mistakes people make applying
it. Coming back to re-read this problem's approach afterward should make the specific
choices here feel inevitable rather than clever.

## Complexity
- Time: O(n)
- Space: O(1)

## Solution
Runnable, with sample test cases at the bottom (`python3 dp_1d/03_house_robber_ii/solution.py`):

```python
--8<-- "dp_1d/03_house_robber_ii/solution.py"
```
