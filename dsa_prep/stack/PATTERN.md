# Pattern: Stack

## What problem does this solve?

Stacks are the natural tool whenever "the most recently seen unresolved thing" is exactly
what you need next — nested/matching structures, expressions with operator precedence
implied by order, or "the next element that breaks some property" scanning problems. The
LIFO (last-in-first-out) order mirrors how these problems naturally resolve: the innermost
unmatched thing must be resolved before anything opened earlier.

## How to recognize it

Signals that a stack applies:
- Matching/nesting structure: brackets, parentheses, nested tags — anything where "the
  last opened must be the first closed."
- Expression evaluation (postfix/infix), where operators act on the most recently computed
  values.
- "For each element, find the next/previous element that is greater/smaller" — this is the
  **monotonic stack** sub-pattern (Daily Temperatures, Next Greater Element).
  Recognize it by: you're tempted to write a nested loop where the inner loop scans
  forward/backward looking for the first element satisfying some comparison — that inner
  scan is what the stack eliminates.
- You need O(1) access to "the minimum/maximum seen so far, but only among currently
  active elements" (Min Stack) — track auxiliary state alongside the main stack, not by
  rescanning it.

## The general template

**Matching/validation:**
```python
stack = []
for token in tokens:
    if token is an "opener":
        stack.append(token)
    else:  # it's a "closer" or an operator
        if not stack or stack[-1] doesn't_match token:
            return False  # or handle the mismatch
        stack.pop()
return not stack  # everything got matched
```

**Monotonic stack** (find next greater/smaller element for every position):
```python
stack = []  # holds indices, values kept in increasing (or decreasing) order
for i, val in enumerate(arr):
    while stack and arr[stack[-1]] < val:      # for "next greater": pop smaller values
        prev_index = stack.pop()
        answer[prev_index] = i - prev_index    # or val, or whatever "resolved" means here
    stack.append(i)
# whatever remains on the stack has no answer to the right — resolve to a default (0, -1, etc.)
```
The reason this is O(n) despite the `while` loop: every index is pushed once and popped at
most once across the *entire* run — same amortized argument as sliding window's `left`
pointer.

## Variations you'll see

- **Auxiliary stack for running aggregates** (Min Stack): keep a second stack in lockstep
  that always has the running min/max at that depth, so popping the main stack
  automatically "un-does" the aggregate too — no rescanning needed.
- **Stack as an evaluator** (Evaluate Reverse Polish Notation): operands get pushed;
  operators pop the last two operands, combine them, and push the result back. This
  directly mirrors how postfix notation is *defined* to be evaluated.
- **Call-stack simulation** (implicit in recursive DFS, but sometimes made explicit with a
  manual stack to avoid recursion-depth limits on very deep/wide inputs).

## Common pitfalls

- Forgetting to check `if not stack` before popping/peeking — an empty stack means an
  unmatched closer, which should usually fail validation rather than crash.
- For monotonic stacks, mixing up whether you want a strictly-increasing or
  strictly-decreasing stack, and `<` vs `<=` in the while condition — this changes whether
  equal elements resolve to each other.
- Forgetting that the final stack contents after the loop usually still need handling
  (e.g., they have "no answer" and should be resolved to a sentinel value).

## Complexity characteristics

O(n) time (each element pushed/popped a bounded number of times) and O(n) space
worst-case (e.g., a fully nested structure or a strictly monotonic input array).
