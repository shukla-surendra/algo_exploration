# 2. House Robber

**Difficulty:** Medium
**Topic:** 1-D Dynamic Programming
**Pattern:** Include/exclude running maximum
**Companies:** Amazon, Meta, LinkedIn, Adobe

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

## Complexity
- Time: O(n)
- Space: O(1)
