# 3. Evaluate Reverse Polish Notation

**Difficulty:** Medium
**Topic:** Stack
**Pattern:** Stack-based expression evaluation

## Problem
Evaluate an arithmetic expression given in Reverse Polish (postfix) Notation, provided as a
list of tokens (integers and `+ - * /`). Division truncates toward zero.

## Examples
```
Input: tokens = ["2","1","+","3","*"] -> 9   ((2+1)*3)
Input: tokens = ["4","13","5","/","+"] -> 6   (4 + (13/5))
```

## Approach
Postfix notation is naturally evaluated with a stack: push numbers as they come. On an
operator, pop the top two operands (note the order — the second-popped is the left
operand), apply the operator, and push the result back. At the end exactly one value
remains on the stack: the answer.

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Stack-based expression evaluation**, which
itself belongs to the broader **Stack** family of techniques. If the specific trick
above feels like it came out of nowhere, that's the signal to step back and read
[`../PATTERN.md`](../PATTERN.md) — it covers how to recognize this family of problems in
general (not just this one), the reusable template you can write from memory, the usual
variations, and the mistakes people make applying it. Coming back to re-read this
problem's approach afterward should make the specific choices here feel inevitable
rather than clever.

## Complexity
- Time: O(n)
- Space: O(n)
