# 4. Koko Eating Bananas

**Difficulty:** Medium
**Topic:** Binary Search
**Pattern:** Binary search on the answer space
**Companies:** Google, Amazon — classic "binary search over a monotonic feasibility
function" problem.

## Problem
Koko has `piles` of bananas and `h` hours before the guards return. Each hour she chooses
some pile and eats up to `k` bananas from it (if the pile has fewer than `k`, she finishes
it and stops for the hour). Find the minimum integer `k` such that she can eat all bananas
within `h` hours.

## Examples
```
Input: piles = [3,6,7,11], h = 8 -> 4
Input: piles = [30,11,23,4,20], h = 5 -> 30
Input: piles = [30,11,23,4,20], h = 6 -> 23
```

## Approach
This isn't searching *in* an array — it's binary searching over the **answer**, `k`,
which ranges from 1 to `max(piles)`. Define `hours_needed(k) = sum(ceil(pile / k) for pile
in piles)`. This function is monotonically non-increasing in `k` (a bigger eating speed
never needs more hours), so binary search for the smallest `k` where `hours_needed(k) <= h`.

## Complexity
- Time: O(n · log(max(piles)))
- Space: O(1)
