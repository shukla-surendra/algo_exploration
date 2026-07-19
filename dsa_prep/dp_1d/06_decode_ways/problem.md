# 6. Decode Ways

**Difficulty:** Medium
**Topic:** 1-D Dynamic Programming
**Pattern:** Fibonacci-style recurrence with validity checks

## Problem
A message of digits (`'A'`->`1` ... `'Z'`->`26`) was encoded. Given the encoded string
`s`, return the number of ways it can be decoded. (Leading zeros make a substring invalid,
e.g. "06" is not decodable.)

## Examples
```
Input: s = "12"   -> 2   ("AB" or "L")
Input: s = "226"  -> 3   ("BZ", "VF", "BBF"... actually "B Z", "V F", "B B F" -> 3 ways)
Input: s = "06"   -> 0   (leading zero, invalid)
```

## Approach
`ways(i)` = number of ways to decode `s[i:]`. It depends on: can `s[i]` alone be decoded
(non-zero) -> add `ways(i+1)`; can `s[i:i+2]` be decoded as a two-digit letter (10-26) ->
add `ways(i+2)`. Build this bottom-up from the end of the string using two running
variables (like climbing stairs, but with validity gating each transition).

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Fibonacci-style recurrence with validity
checks**, which itself belongs to the broader **1-D Dynamic Programming** family of
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
Runnable, with sample test cases at the bottom (`python3 dp_1d/06_decode_ways/solution.py`):

```python
--8<-- "dp_1d/06_decode_ways/solution.py"
```
