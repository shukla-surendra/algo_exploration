# 3. K Closest Points to Origin

**Difficulty:** Medium
**Topic:** Heap / Priority Queue
**Pattern:** Max-heap of size k (or quickselect)
**Companies:** Amazon, Facebook/Meta, Google, LinkedIn

## Problem
Given an array of `points` where `points[i] = [xi, yi]`, return the `k` points closest to
the origin `(0, 0)` (Euclidean distance). Any order is acceptable.

## Examples
```
Input: points = [[1,3],[-2,2]], k = 1 -> [[-2,2]]
Input: points = [[3,3],[5,-1],[-2,4]], k = 2 -> [[3,3],[-2,4]]
```

## Approach
Maintain a max-heap (negate distances) capped at size `k`, keyed by squared distance
(avoids an unnecessary sqrt). Push each point; if the heap exceeds size `k`, pop the
farthest. What remains are the k closest. (Quickselect gives O(n) average time if that's
preferred over the O(n log k) heap approach.)

## Complexity
- Time: O(n log k)
- Space: O(k)
