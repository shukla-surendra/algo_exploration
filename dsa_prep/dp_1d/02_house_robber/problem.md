# 2. House Robber

**Difficulty:** Medium
**Topic:** 1-D Dynamic Programming
**Pattern:** Include/exclude running maximum

## Problem
Given an array `nums` of non-negative integers representing money in houses arranged in a
row, you cannot rob two adjacent houses (triggers an alarm). Return the maximum amount you
can rob.

## Examples
```
Input: nums = [1,2,3,1] -> 4  (rob house 0 and 2: 1+3)
Input: nums = [2,7,9,3,1] -> 12  (rob houses 0,2,4: 2+9+1)
```

## Approach
At each house, decide: skip it (carry forward the best total without it) or rob it (best
total two houses back, plus this house's value). Track two running values: `rob_prev` (best
total including the previous house) and `skip_prev` (best total excluding it). At each
step, the new "best including or up to this house" is
`max(skip_prev + nums[i], rob_prev)`. Only two variables needed, no array.

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Include/exclude running maximum**, which itself
belongs to the broader **1-D Dynamic Programming** family of techniques. If the specific
trick above feels like it came out of nowhere, that's the signal to step back and read
[`../PATTERN.md`](../PATTERN.md) — it covers how to recognize this family of problems in
general (not just this one), the reusable template you can write from memory, the usual
variations, and the mistakes people make applying it. Coming back to re-read this
problem's approach afterward should make the specific choices here feel inevitable
rather than clever.

## Complexity
- Time: O(n)
- Space: O(1)

## Solution
Runnable, with sample test cases at the bottom (`python3 dp_1d/02_house_robber/solution.py`):

```python
--8<-- "dp_1d/02_house_robber/solution.py"
```
