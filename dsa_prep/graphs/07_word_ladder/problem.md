# 7. Word Ladder

**Difficulty:** Hard
**Topic:** Graphs
**Pattern:** BFS shortest path over an implicit graph (words as nodes)
**Companies:** Amazon, Meta, Google, LinkedIn — a classic hard BFS capstone.

## Problem
Given `beginWord`, `endWord`, and a dictionary `wordList`, return the length of the
shortest transformation sequence from `beginWord` to `endWord`, changing exactly one
letter at a time, with every intermediate word required to be in `wordList`. Return 0 if
no such sequence exists.

## Examples
```
Input: beginWord = "hit", endWord = "cog", wordList = ["hot","dot","dog","lot","log","cog"]
Output: 5   (hit -> hot -> dot -> dog -> cog)
```

## Approach
Model each word as a graph node, with edges between words differing by exactly one letter.
BFS from `beginWord` gives the shortest path in an unweighted graph. Rather than comparing
every pair of words directly (slow), generate all single-letter-wildcard patterns for the
current word (e.g. `"h*t"`, `"*it"`, `"hi*"`) and look them up in a precomputed map from
pattern -> list of matching words — this makes neighbor generation fast. Track visited
words to avoid revisiting.

## Complexity
- Time: O(N · L²) where N = number of words, L = word length (building the pattern map)
- Space: O(N · L²)
