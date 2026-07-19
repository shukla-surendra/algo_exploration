# 1. Valid Parentheses

**Difficulty:** Easy
**Topic:** Stack
**Pattern:** Stack matching for nested/paired structures
**Companies:** Amazon, Google, Meta, Microsoft, Bloomberg — a near-universal screening
question.

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

## Complexity
- Time: O(n)
- Space: O(n)
