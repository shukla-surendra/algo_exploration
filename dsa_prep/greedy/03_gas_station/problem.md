# 3. Gas Station

**Difficulty:** Medium
**Topic:** Greedy
**Pattern:** Single-pass greedy with a running deficit / total-surplus check

## Problem
There are `n` gas stations in a circle. `gas[i]` is the gas available at station `i`, and
`cost[i]` is the gas needed to travel from station `i` to station `i+1`. Return the
starting station index from which you can complete the circuit, or `-1` if impossible
(the answer is guaranteed unique if it exists).

## Examples
```
Input: gas = [1,2,3,4,5], cost = [3,4,5,1,2] -> 3
Input: gas = [2,3,4], cost = [3,4,3]         -> -1
```

## Approach
If `sum(gas) < sum(cost)`, it's impossible overall — return -1. Otherwise a valid start
always exists, and it can be found in one pass: track a running `tank` as you simulate
from a candidate start; whenever `tank` goes negative at station `i`, none of the stations
from the previous start through `i` could have worked either (they'd only make the deficit
worse arriving at `i`), so reset the candidate start to `i + 1` and reset `tank` to 0. The
final candidate start after one full pass is the answer (guaranteed valid given the total
surplus check passed).

## Why This Approach (Generalizing the Pattern)
This problem is a concrete instance of **Single-pass greedy with a running deficit /
total-surplus check**, which itself belongs to the broader **Greedy** family of
techniques. If the specific trick above feels like it came out of nowhere, that's the
signal to step back and read [`../PATTERN.md`](../PATTERN.md) — it covers how to
recognize this family of problems in general (not just this one), the reusable template
you can write from memory, the usual variations, and the mistakes people make applying
it. Coming back to re-read this problem's approach afterward should make the specific
choices here feel inevitable rather than clever.

## Complexity
- Time: O(n)
- Space: O(1)
