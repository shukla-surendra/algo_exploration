# 3. Evaluate Reverse Polish Notation

**Difficulty:** Medium
**Topic:** Stack
**Pattern:** Stack-based expression evaluation
**Companies:** Amazon, LinkedIn, Microsoft

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

## Complexity
- Time: O(n)
- Space: O(n)
