---
tags:
  - envs
lang:
  - en
---

## `history`

Prints commands history.

```bash
history
```

> `ctrl+r`: `reverse-i-search` search history entries

## `touch`

Updates latest file edit time. If the file does not exist, it creates one.

```bash
touch filename
```

## `seq`

Creates a sequence of lines from `0` to `100`.

```bash
seq 1 100 > file.txt

cat file.txt

# 1
# 2
# ...
# 100
```

## `wc`

Print newline, word, and byte counts for each file

```bash
# print line count
cat file.txt | wc -l
```

