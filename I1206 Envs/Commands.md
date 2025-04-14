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

## `zless`

Same as [[#`less`]] but is used with compressed files.

```bash
zless file.blah.gz
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

### Symbolic absolute

```bash
# all perms to owner and group member, no perms to other users.
chmod ug=rwx,o=--- file
```

> removing perms is achieved by omitting them, meaning just `o=` is also valid.

### Symbolic relative

```bash
# revoke write perms to group members and grant read perms to other users.
chmod g-w,o+r file
```

Absolute and relative can be used at the same time:

```bash
chmod g=rwx,o+r,g-wx file
```

### Octal

See [[Permissions#Octal form]].

```bash
# ugo=rwxr-----
chmod 740 file
```

### setuid

See [[Permissions#setuid]]

```bash
# exec file using parent gid and not the executor gid
chmod g+s executable_file
```
### setgid

See [[Permissions#setgid]]

```bash
# exec file using parent gid and not the executor gid
chmod g+s executable_file
```

```bash
# all files in dir will have parent dir gid
chmod g+s dir
```

## `chgrp`

Changes file's permissions group.

```bash
chgrp groupname file
```

> Only groups for which you are a member of can be used, an error will be returned otherwise.

## `newgrp`

Starts a new shell and sets the specified group as the main group.

```bash
groups
# > main b c

newgrp c
# > c main b
```

> Only groups for which you are a member of can be used, an error will be returned otherwise.

## `\time`

Benchmark command execution.

```bash
\time <cmd>
```

## `top`

In-shell activity monitor.

```bash
top
```

## `ps`

Shows current terminal processes.

```bash
ps
```

### `ps aux`

Shows all processes current status.

```bash
ps aux
```

## `split`

Split file contents in 2 files.

```bash
# creates two files (xaa, xab) of 250 lines each
split -l 250 file_of_500_lines.txt
```

## `parallel`

Build and execute shell command lines from stdin in parallel. Basically split workload between CPUs.

Key Options:

- `-j N`: Number of jobs to run in parallel.
- `--dry-run`: Prints the commands that would be executed, without running them.
- `--bar`: Shows a progress bar for the jobs.

```bash
# the `:::` is the delimiter used to separate the command from the arguments
parallel echo ::: A B C ::: X Y Z

# > A X
# > B Y
# > C Z
```

## `test`

Tests various expressions. It can be abbreviated with: `[ ... ]`, for example:

```bash
#!/bin/bash
if [ -f $f ]; then
	echo "$f is a file!"
fi
```

REFAC:
all options...
`-z` test if str is empty

## `select`

Interactive option selection

```bash
#!/bin/bash
select var in A B C; do
	echo $var
	break
done
```

## `dialog`

Basic UNIX UI dialog

```bash
dialog --title "Title" --info-box "text" 10 30
```

## `grep`

```bash
# use regexp and take negated results
grep -v -E <regexp> <input>
```

## `sed`

Powerful text processing tool used for parsing and transforming text in files or input streams. Performs substitution, deletion, insertion, and searching on text streams.

```bash
# substitution 
sed 's/pattern/replacement/' file
$str | sed 's/pattern/replacement/'

# deletion
sed '2d' file.txt # Delete line 2 
sed '/pattern/d' file # Delete lines matching "pattern"
sed '1,3d' file # Delete lines 1 to 3

# insertion
sed '2i\New line' file.txt   # Insert "New line" before line 2
sed '3a\Another line' file   # Append "Another line" after line 3

# regexp
sed -E 's/[0-9]+/#/g' file.txt

# multiple executions with -e
sed -E -e 's/(foo)+/bar/' -e 's/baz/qux/' file.txt
# use ; instead of -e
sed 's/foo/bar/; s/baz/qux/' file.txt
```

> `pattern` supports regexp
> `-E` enables you to not escape special characters 