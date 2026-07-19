# 1. Valid Parentheses

**Difficulty:** Easy
**Topic:** Stack
**Pattern:** Stack matching for nested/paired structures

## Problem
Given a string `s` containing just `(`, `)`, `{`, `}`, `[`, `]`, determine if the input is
valid: every open bracket is closed by the same type of bracket, and in the correct order.

## Examples
```
Input: s = "()[]{}" -> True
Input: s = "(]"      -> False
Input: s = "([)]"    -> False
Input: s = "{[]}"    -> True
```

## Approach
Push every opening bracket onto a stack. On a closing bracket, check the stack's top: it
must be the matching opening bracket, or the string is invalid — pop it if so. At the end,
the string is valid only if the stack is empty (every opener was matched).

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Stack matching for nested/paired structures**,
which itself belongs to the broader **Stack** family of techniques. If the specific
trick above feels like it came out of nowhere, that's the signal to step back and read
[`../PATTERN.md`](../PATTERN.md) — it covers how to recognize this family of problems in
general (not just this one), the reusable template you can write from memory, the usual
variations, and the mistakes people make applying it. Coming back to re-read this
problem's approach afterward should make the specific choices here feel inevitable
rather than clever.

## Complexity
- Time: O(n)
- Space: O(n)

## Solution
Runnable, with sample test cases at the bottom (`python3 stack/01_valid_parentheses/solution.py`):

```python
--8<-- "stack/01_valid_parentheses/solution.py"
```
