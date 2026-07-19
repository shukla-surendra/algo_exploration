# 3. Container With Most Water

**Difficulty:** Medium
**Topic:** Two Pointers
**Pattern:** Two Pointers (greedy inward move)
**Companies:** Amazon, Meta, Bloomberg, Adobe

## Problem
Given `n` non-negative integers `height[i]` representing vertical lines on the x-axis,
find two lines that together with the x-axis form a container that holds the most water.
Return the maximum area.

## Examples
```
Input: height = [1,8,6,2,5,4,8,3,7] -> 49
Input: height = [1,1]               -> 1
```

## Approach
Start with two pointers at the far left and far right — the widest possible container.
Area is `min(height[left], height[right]) * (right - left)`. Moving the taller pointer
inward can never increase the area (width shrinks, height is capped by the *shorter* side
either way), so always move the pointer at the **shorter** line inward. This greedily
explores only the moves that could possibly improve the answer.

## Complexity
- Time: O(n)
- Space: O(1)
