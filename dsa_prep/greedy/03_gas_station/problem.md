# 3. Gas Station

**Difficulty:** Medium
**Topic:** Greedy
**Pattern:** Single-pass greedy with a running deficit / total-surplus check
**Companies:** Amazon, Meta, Bloomberg

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

## Complexity
- Time: O(n)
- Space: O(1)
