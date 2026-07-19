# Pattern: Trie (Prefix Tree)

## What problem does this solve?

Whenever a problem revolves around *prefixes* of strings — "does any word start with
this," "insert many words, then answer many prefix/exact-match queries efficiently," or
"search a grid/board for words from a large dictionary" — a hash set of full strings
doesn't help, because it can only answer exact-match questions, not prefix questions. A
trie restructures the *set of strings* into a tree where every root-to-node path spells out
a prefix, so prefix questions become simple tree walks.

## How to recognize it

Signals that a trie applies:
- The problem explicitly mentions prefixes ("startsWith", "autocomplete").
- You need to check many words against a *fixed, large* dictionary repeatedly — building
  one trie once is cheaper than repeatedly scanning the word list.
- A wildcard character needs to match "any single letter" during search (Design Add and
  Search Words) — this turns lookup into a small DFS/backtracking search *over the trie*
  rather than a single deterministic walk.
- Board/grid word-search problems with a **list** of target words (Word Search II) — doing
  a separate DFS per word is wasteful; building one trie of all words lets a single grid
  DFS check progress against every word simultaneously, pruning dead branches early.

## The general template

**Node structure:**
```python
class TrieNode:
    def __init__(self):
        self.children = {}   # char -> TrieNode
        self.is_end = False  # True if a word ends exactly at this node
```

**Insert:**
```python
def insert(word):
    node = root
    for ch in word:
        node = node.children.setdefault(ch, TrieNode())
    node.is_end = True
```

**Exact search vs. prefix search — the only difference is the final check:**
```python
def _walk(prefix):
    node = root
    for ch in prefix:
        if ch not in node.children:
            return None
        node = node.children[ch]
    return node

def search(word):       return (n := _walk(word)) is not None and n.is_end
def starts_with(prefix): return _walk(prefix) is not None
```

**Wildcard search (DFS over the trie instead of a straight walk):**
```python
def dfs(node, i):
    if i == len(word):
        return node.is_end
    if word[i] == '.':
        return any(dfs(child, i + 1) for child in node.children.values())
    child = node.children.get(word[i])
    return child is not None and dfs(child, i + 1)
```

**Grid search pruned by a trie** (Word Search II): DFS the board as usual, but instead of
checking each cell against one target word, walk the *trie* alongside the board path —
only continue in a direction if the current character exists as a child in the trie. This
prunes paths that can't possibly complete *any* remaining word, all in one pass over the
board.

## Common pitfalls

- Forgetting `is_end` entirely and only checking "does this path exist" — that conflates
  "prefix exists" with "word exists" (e.g. inserting "app" then "apple" — searching "app"
  before inserting "app" itself should fail even though the path exists as a prefix of
  "apple").
- Re-scanning the whole word list per query instead of building the trie once upfront —
  defeats the purpose.
- In Word Search II, forgetting to prune trie branches once fully explored/matched, which
  can leave stale `is_end` nodes causing duplicate results if not cleared after a match.

## Complexity characteristics

O(L) per insert/search, where L = word or prefix length — independent of how many words
are stored. Space is O(total characters across all inserted words) in the worst case
(no shared prefixes), but real dictionaries share a lot of prefix structure, so actual
usage is often much less.
