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
seq 1 100
# 1
# 2
# ...
# 100
```

## `wc`

Print newline, word, and byte counts for each file.

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
find / -name '*.jpg' -exec cp {} /destination \;
```

## `sort`

Sorts input.

`-R`: random sort
`-r`: reverse sort
`-n`: sort on numerical value

```bash
# numerically sort random sequence of numbers 
seq 1 20 | sort -R | sort -n
```

## `uniq`

Filters consecutive identical lines and returns unique results.

```bash
cat names | uniq
```

## `less`

Like `more` but supports backwards scrolling.

```bash
# as arg
less bigtext.txt

# or pipe
cat text.txt | less
```

## `cut`

`-d`: delimiter character
`-f`: 1 base field column index
- can be stacked (`-f 1,2,3`)

```bash
# splits line by ';' and returns the first element
cat csv | head -n 1 | cut -d ';' -f 1 
```

## `tr`

Translates, deletes, and squeezes characters from `stdin` and writes the result to `stdout`.

```bash
echo "f1;f2" | tr ';' ' '
#> f1 f2
```

```bash
# | -> \whitespace
# = -> :
# a_n -> b_n
# ... -> ...
echo "f=a|f2=b" | tr '|=' ' :'
# > f:a f2:b
```

## `tee`

Duplicates `stdin` to `stdout` and specified file.

```bash
seq 1 100 | grep 8 | tee numbersw8

# to `stderr`
seq 1 100 | grep 8 | tee /dev/stderr
```

## `date`

Prints current date time to `stdout`


## `stat`

Shows permission stats.

```bash
stat file.ext

#   File: <filename>
#   Size: <bytes>    Blocks: <n>    IO Block: <bytes>    <f_type>
# Device: ...
# Access: (<octal_perm>/<f_type><ugo>)    Uid: <user_id>    Gid: <group_id>
# Access: 2024-10-10 10:23:31.502996705 +0200
# Modify: 2024-10-03 10:27:34.060522655 +0200
# Change: 2024-10-03 10:27:34.060522655 +0200
#  Birth: 2024-09-26 10:45:31.049602148 +0200
# <yyyy-MM-dd> <hh:mm:ss.ms> 
```

## `whoami`

Prints current user username.

```bash
whoami
# username@doma.in
```

## `groups`

Prints current user groups.

```bash
groups
# student blah blahblah
```

## `chmod`

To change perms for all files in a directory use recursive mode with `-R`.

Symbolic absolute

```bash
# all perms to owner and group member, no perms to other users.
chmod ug=rwx,o=--- file
```

> removing perms is achieved by omitting them, meaning just `o=` is also valid.

Symbolic relative

```bash
# revoke write perms to group members and grant read perms to other users.
chmod g-w,o+r file
```

Absolute and relative can be used at the same time:

```bash
chmod g=rwx,o+r,g-wx file
```