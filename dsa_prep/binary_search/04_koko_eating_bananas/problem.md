# 4. Koko Eating Bananas

**Difficulty:** Medium
**Topic:** Binary Search
**Pattern:** Binary search on the answer space

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

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Binary search on the answer space**, which
itself belongs to the broader **Binary Search** family of techniques. If the specific
trick above feels like it came out of nowhere, that's the signal to step back and read
[`../PATTERN.md`](../PATTERN.md) — it covers how to recognize this family of problems in
general (not just this one), the reusable template you can write from memory, the usual
variations, and the mistakes people make applying it. Coming back to re-read this
problem's approach afterward should make the specific choices here feel inevitable
rather than clever.

## Complexity
- Time: O(n · log(max(piles)))
- Space: O(1)

## Solution
Runnable, with sample test cases at the bottom (`python3 binary_search/04_koko_eating_bananas/solution.py`):

```python
--8<-- "binary_search/04_koko_eating_bananas/solution.py"
```
