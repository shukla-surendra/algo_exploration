# Pattern: Interval Scheduling

## What problem does this solve?

Interval problems (meetings, ranges, bookings) almost always become easy once sorted in
the right order — the difficulty is realizing *which* sort key makes the rest of the
problem a simple linear scan, since sorting by start vs. end time solve different
questions.

## How to recognize it

Signals that this topic's techniques apply:
- Input is a list of `[start, end]` pairs.
- The question is about overlap ("can all meetings be attended," "merge overlapping
  ranges"), counting simultaneous usage ("minimum meeting rooms"), or fitting the maximum
  number of non-conflicting items ("minimum removals to make non-overlapping").

## The two sort keys, and when to use each

**Sort by start time** — use this when you need to process intervals in the order they
begin, to merge adjacent/overlapping ones or detect any overlap at all:
```python
intervals.sort(key=lambda pair: pair[0])
merged = [intervals[0]]
for start, end in intervals[1:]:
    if start <= merged[-1][1]:              # overlaps the last kept interval
        merged[-1][1] = max(merged[-1][1], end)   # extend it
    else:
        merged.append([start, end])          # starts a new, separate interval
```
(Merge Intervals, Meeting Rooms — where any overlap at all is a failure, so you only need
to compare each interval to the *previous* one once sorted.)

**Sort by end time** — use this for greedy *selection* problems: "keep the maximum number
of non-overlapping intervals" (equivalently, "remove the minimum number to make the rest
non-overlapping"):
```python
intervals.sort(key=lambda pair: pair[1])
kept_end = float('-inf')
count_kept = 0
for start, end in intervals:
    if start >= kept_end:
        kept_end = end
        count_kept += 1
```
Why end time and not start time here: greedily keeping the interval that **finishes
earliest** among the compatible candidates always leaves the most room for future
intervals — this is the exchange-argument justification (see
`../greedy/PATTERN.md`) for why this specific sort key is optimal and sorting by start
time would not be.

**Sweep with a heap for "concurrent usage" problems** (Meeting Rooms II — how many
rooms/resources are needed simultaneously):
```python
intervals.sort(key=lambda pair: pair[0])
heap = []  # end times of meetings currently "in progress"
for start, end in intervals:
    if heap and heap[0] <= start:
        heapq.heappop(heap)     # earliest-ending meeting has freed a room — reuse it
    heapq.heappush(heap, end)
return len(heap)   # max concurrent size across the whole sweep is the answer
```
The heap always holds the end times of currently-active intervals; its size at any moment
is "rooms in use right now," and the *maximum* size reached during the whole sweep is the
answer.

**Three-way split for inserting into an already-sorted, non-overlapping list** (Insert
Interval): walk once through intervals strictly before the new one (copy as-is), then
intervals overlapping it (merge into an expanding `[start, end]`), then intervals strictly
after (copy as-is) — no need to re-sort since the input is already sorted and the new
interval is inserted in a single linear pass.

## Common pitfalls

- Sorting by the wrong key for the question being asked (start vs. end) — this is the
  single most common mistake in this topic; always ask "am I detecting overlap/merging"
  (sort by start) or "am I greedily selecting a maximum compatible subset" (sort by end)
  before writing any code.
- Off-by-one in the overlap check: `start <= end` (touching endpoints count as overlapping)
  vs. `start < end` (touching endpoints are fine, e.g. one meeting ending at 10 and another
  starting at 10) — read the problem statement carefully, since both conventions appear
  across different problems.
- For Meeting Rooms II, forgetting that popping from the heap only happens when the
  earliest-ending meeting has *already* ended by the time the new one starts — get the
  comparison direction right (`heap[0] <= start`, not `<`, depending on whether touching
  counts as freeing the room).

## Complexity characteristics

O(n log n), dominated by the initial sort — every variant here does O(n) work after that
single sort.
