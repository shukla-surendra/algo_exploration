# Pattern: Two Pointers

## What problem does this solve?

Many array/string problems ask you to find a pair, a palindrome check, or a partition that
satisfies some ordering condition. Brute force checks every pair — O(n²). Two pointers
exploits *sortedness or a monotonic relationship* to eliminate whole ranges of candidates
at once, cutting this down to O(n) with O(1) extra space.

## How to recognize it

Signals that two pointers applies:
- The array is sorted, or can cheaply be sorted, and the problem is about pairs/triplets
  with a target sum/relationship.
- You need to check a string/array from both ends inward (palindrome checks).
- You're computing something like "area between two lines," "capacity between two walls,"
  or any objective that depends on a *pair* of positions and shrinks as they converge.
- The brute force is O(n²) with a nested loop over pairs, and there's some monotonic
  structure you could exploit to avoid checking every pair.

## The general template

**Converging pointers** (opposite ends moving inward — palindrome check, container with
most water, 3Sum's inner loop):
```python
left, right = 0, len(arr) - 1
while left < right:
    if condition(arr[left], arr[right]):
        # process / record the answer
        left += 1
        right -= 1
    elif need_to_move_left(arr[left], arr[right]):
        left += 1
    else:
        right -= 1
```
The key correctness argument you should be able to state out loud: *"moving the pointer I
chose to move can never make the answer worse, and not moving it would definitely not help
future candidates."* For Container With Most Water, that's: moving the taller line inward
can only shrink width without ever increasing the limiting (shorter) height, so it's
strictly dominated — you must move the shorter line.

**Fixed + sliding second pointer** (3Sum: fix one index, two-pointer the rest):
```python
nums.sort()
for i in range(len(nums)):
    left, right = i + 1, len(nums) - 1
    while left < right:
        ... # standard converging two-pointer on the subarray after i
```

**Fast/slow pointers** (same direction, different speeds — cycle detection, middle of a
linked list): see `../linked_list/PATTERN.md`, which is really a two-pointer variant.

## Variations you'll see

- **Sort first, then two-pointer** — turns an O(n²) or O(n³) brute force (3Sum) into
  O(n log n) + O(n²), which is the best known approach for that family of problems.
- **Skip duplicates** — after sorting, when you want *unique* combinations (3Sum), you
  must explicitly skip over repeated values at each pointer once a candidate is recorded,
  or you'll emit the same triplet multiple times.
- **Read/write pointers in the same array** — a different flavor: one pointer scans, the
  other marks where the next "kept" element should be written (e.g. removing duplicates
  in place, partitioning). Both pointers move in the same direction here, not toward
  each other.

## Common pitfalls

- Forgetting to skip duplicate values after finding a match (produces duplicate output in
  3Sum-style problems).
- Off-by-one errors in the loop condition (`<` vs `<=` for `left`/`right` crossing).
- Reaching for two pointers on an *unsorted* array where the target relationship isn't
  monotonic — sort first, or recognize this isn't actually a two-pointer problem.

## Complexity characteristics

O(n) after any required O(n log n) sort, and O(1) extra space — this is usually the space
optimization over a hash-map approach (see `../arrays_hashing/PATTERN.md`) when the array
is already sorted or sorting is affordable.
