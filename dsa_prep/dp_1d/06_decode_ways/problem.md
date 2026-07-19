# 6. Decode Ways

**Difficulty:** Medium
**Topic:** 1-D Dynamic Programming
**Pattern:** Fibonacci-style recurrence with validity checks
**Companies:** Meta, Amazon, Microsoft, Uber

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

## Complexity
- Time: O(n)
- Space: O(1)
