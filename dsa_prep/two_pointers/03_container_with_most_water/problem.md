# 3. Container With Most Water

**Difficulty:** Medium
**Topic:** Two Pointers
**Pattern:** Two Pointers (greedy inward move)

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

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Two Pointers (greedy inward move)**, which
itself belongs to the broader **Two Pointers** family of techniques. If the specific
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
Runnable, with sample test cases at the bottom (`python3 two_pointers/03_container_with_most_water/solution.py`):

```python
--8<-- "two_pointers/03_container_with_most_water/solution.py"
```
