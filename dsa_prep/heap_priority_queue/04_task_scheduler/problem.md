# 4. Task Scheduler

**Difficulty:** Medium
**Topic:** Heap / Priority Queue
**Pattern:** Greedy scheduling by frequency, with a cooldown constraint

## Problem
Given a list of CPU `tasks` (each a letter) and a cooldown `n` (a task must wait at least
`n` intervals before the same type can run again), return the minimum number of intervals
needed to finish all tasks (idle intervals allowed).

## Examples
```
Input: tasks = ["A","A","A","B","B","B"], n = 2 -> 8   (A B idle A B idle A B)
Input: tasks = ["A","A","A","B","B","B"], n = 0 -> 6
```

## Approach
There's a neat closed-form using just counts: let `max_freq` be the highest frequency of
any task, and `max_count` the number of distinct tasks that hit that max frequency. The
most frequent task defines `(max_freq - 1)` full "chunks" of size `(n + 1)`, plus one
final partial chunk holding all `max_count` most-frequent tasks. The answer is
`max((max_freq - 1) * (n + 1) + max_count, len(tasks))` — the `len(tasks)` floor covers the
case where there are enough distinct tasks to fill every idle slot naturally (no idling
needed at all). A priority-queue simulation (pick the most frequent available task each
round) arrives at the same answer and is the more "obviously correct" approach to derive
under interview pressure.

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Greedy scheduling by frequency, with a cooldown
constraint**, which itself belongs to the broader **Heap / Priority Queue** family of
techniques. If the specific trick above feels like it came out of nowhere, that's the
signal to step back and read [`../PATTERN.md`](../PATTERN.md) — it covers how to
recognize this family of problems in general (not just this one), the reusable template
you can write from memory, the usual variations, and the mistakes people make applying
it. Coming back to re-read this problem's approach afterward should make the specific
choices here feel inevitable rather than clever.

## Complexity
- Time: O(n) counting-based approach; O(total intervals · log 26) simulation approach
- Space: O(1) (26-letter alphabet)

## Solution
Runnable, with sample test cases at the bottom (`python3 heap_priority_queue/04_task_scheduler/solution.py`):

```python
--8<-- "heap_priority_queue/04_task_scheduler/solution.py"
```
