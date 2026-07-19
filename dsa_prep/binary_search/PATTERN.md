# Pattern: Binary Search

## What problem does this solve?

Whenever you can ask a yes/no (or `<`/`>=`) question about a candidate and the answers are
**monotonic** — all "no"s then all "yes"s (or vice versa) as the candidate increases —
you can find the boundary in O(log n) instead of scanning linearly in O(n). The classic
"find x in a sorted array" is just the simplest case of a much more general idea: binary
search over *any monotonic predicate*, not just over array indices.

## How to recognize it

Signals that binary search applies:
- The data is sorted, or the *answer space* (not the input) is monotonic in some
  parameter — e.g. "the smallest speed such that you finish in time" (Koko Eating
  Bananas), "the smallest max-value such that a split is feasible" (allocation/capacity
  problems). This is **binary search on the answer**, and it's easy to miss because
  nothing about the input array itself is sorted.
- The problem says or implies "minimize the maximum" or "maximize the minimum" — these
  are almost always binary-search-on-the-answer in disguise.
- A rotated/modified sorted array where a naive linear scan works but the problem
  explicitly demands O(log n).

## The general template

**Classic search over indices:**
```python
left, right = 0, len(arr) - 1
while left <= right:
    mid = (left + right) // 2
    if arr[mid] == target:
        return mid
    elif arr[mid] < target:
        left = mid + 1
    else:
        right = mid - 1
return -1
```

**Binary search on the answer** (the more general, more powerful form):
```python
def feasible(candidate) -> bool:
    ...  # some monotonic check: true for all candidates >= the answer (or <=, depending)

left, right = lowest_possible_answer, highest_possible_answer
while left < right:
    mid = (left + right) // 2
    if feasible(mid):
        right = mid       # mid might be the answer — keep it in range
    else:
        left = mid + 1
return left
```
The mental model: you're not searching an array, you're searching the number line for the
boundary where `feasible()` flips from False to True. Write `feasible()` first, convince
yourself it's monotonic, *then* write the search loop — the loop itself is boilerplate you
should be able to write from memory.

**Boundary-finding on a rotated array** — instead of the standard `==` check, reason about
*which half is sorted* at each step (compare `arr[left]` to `arr[mid]`), then check whether
the target could lie in that sorted half's range before deciding which way to recurse.

## Variations you'll see

- **Find the rotation point** (minimum in a rotated sorted array): compare `arr[mid]` to
  `arr[right]` instead of a target — this is really "binary search on the answer" where
  the predicate is "is the rotation point at or before mid?"
- **`bisect_left`/`bisect_right` for insertion points** — useful whenever you need "first
  index where X is true" rather than an exact match (see Longest Increasing Subsequence's
  patience-sorting approach, which binary-searches for where a new value slots in).
- **Search space is implicit, not an array** — Koko Eating Bananas searches over possible
  eating speeds `1..max(piles)`, never touching array indices at all.

## Common pitfalls

- `left <= right` vs `left < right` — mixing these up causes infinite loops or off-by-one
  misses. Rule of thumb: use `<=` when you're looking for an exact match and will return
  -1 on failure; use `<` when you're converging on a boundary and `left`/`right` themselves
  are candidate answers.
- Integer overflow from `(left + right) // 2` isn't a concern in Python, but the habit of
  writing `left + (right - left) // 2` is worth knowing for other languages.
- Forgetting to prove monotonicity before trusting a binary-search-on-the-answer approach —
  if the predicate isn't actually monotonic, binary search silently gives a wrong answer
  instead of erroring.

## Complexity characteristics

O(log n) time for classic search; O(n log(range)) for binary-search-on-the-answer problems
where each feasibility check costs O(n). O(1) extra space (iterative).
