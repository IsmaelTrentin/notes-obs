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

Updates latest file edit time. If the file does not exist, one gets created.

```bash
touch filename
```

## `seq`

Prints sequences of numbers.
Common args: `[first=1 [increment=1]] <last>`

```bash
# sequence starting from 1 and ending at 100 with an increment of 1 (default).
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

## `find`

Search files by walking a file hierarchy.
Common args:

- `-name`: filename pattern
- `-iname`: filename pattern case **insensitive**
- `-user`: owner name pattern
- `-size`: file size. supports byte scale indicator. add - before to check if size less than
- `-type`: file type (`bcdflps`)
- `-exec`: exec command for each entry. `-exec copy {} destination MODE`
	- `+`: exec command once with all results as args
	- `\;`: exec command for each result

```bash
# find files ending with `.jpg` and copy them one by one to `/destination`
find / -name '*.jpg' -exec copy {} /destination \;
```
