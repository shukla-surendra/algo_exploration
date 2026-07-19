# DSA Interview Prep

A curated, topic-organized set of the highest-frequency coding interview problems
(roughly the well-known "Top 150" tier — Blind 75 + NeetCode 150 extras), each with:

- `problem.md` — statement, the general pattern this problem teaches, a step-by-step
  approach with the reasoning behind it, and complexity
- `solution.py` — clean Python solution + runnable sample test cases (`python3 solution.py`)

Each topic folder also has a `PATTERN.md` — a deeper, problem-agnostic writeup of the
technique itself: how to recognize when it applies, the general template, common
variations, and pitfalls. Read it once per topic; it'll make every problem in that folder
click faster.

## How to use this

1. Work topic by topic in the order below — it's roughly increasing difficulty/dependency
   (e.g. two pointers before sliding window, trees before graphs, 1-D DP before 2-D DP).
2. Start each topic by skimming its `PATTERN.md` to get the general technique in your head.
3. Read a problem's `problem.md`, attempt it yourself, *then* check `solution.py`.
4. Run the solution file directly to sanity-check: `python3 <topic>/<NN>_<name>/solution.py`
5. See `TOP_LIST.md` for a flat priority-ordered checklist if you only have time for a subset.

## Topics (in suggested order)

| # | Folder | Topic |
|---|--------|-------|
| 1 | `arrays_hashing/` | Arrays & Hashing |
| 2 | `two_pointers/` | Two Pointers |
| 3 | `sliding_window/` | Sliding Window |
| 4 | `stack/` | Stack |
| 5 | `binary_search/` | Binary Search |
| 6 | `linked_list/` | Linked List |
| 7 | `trees/` | Trees / BST |
| 8 | `tries/` | Tries |
| 9 | `heap_priority_queue/` | Heap / Priority Queue |
| 10 | `backtracking/` | Backtracking |
| 11 | `graphs/` | Graphs (BFS/DFS/Union-Find/Topo Sort) |
| 12 | `dp_1d/` | 1-D Dynamic Programming |
| 13 | `dp_2d/` | 2-D Dynamic Programming |
| 14 | `greedy/` | Greedy |
| 15 | `intervals/` | Intervals |
| 16 | `math_geometry/` | Math & Geometry |
| 17 | `bit_manipulation/` | Bit Manipulation |

Each problem folder is numbered `NN_problem_name/` for a sensible working order within the topic.

## Status

**Complete — 88 problems across all 17 topics.** Every `solution.py` has been run and its
sample tests pass (`88/88` green as of the last full sweep).

- [x] arrays_hashing (7)
- [x] two_pointers (3)
- [x] sliding_window (5)
- [x] stack (4)
- [x] binary_search (4)
- [x] linked_list (6)
- [x] trees (9)
- [x] tries (3)
- [x] heap_priority_queue (5)
- [x] backtracking (5)
- [x] graphs (7)
- [x] dp_1d (9)
- [x] dp_2d (4)
- [x] greedy (4)
- [x] intervals (5)
- [x] math_geometry (3)
- [x] bit_manipulation (5)
