---
tags:
  - envs
lang:
  - en
---

## Permissions

- `$`: normal
- `>`: admin

## Globbing

[[🚨]] hidden files are not matched by default when globbing.

| \[\[:x:]] |                            |
| --------- | -------------------------- |
| `^`       | non alphanumeric char      |
| `alnum`   | alphanumeric `[a-zA-Z0-9]` |
| `alpha`   | alphabet `[a-zA-Z]`        |
| `digit`   | digit `[0-9]`              |
| `upper`   | upper case `[A-Z]`         |
| `lower`   | lower case `[a-z]`         |

### [[🔎]] Examples

Find files that have a single digit as a name.

```bash
find [[:digit:]]
```

Match files that start with numbers from 10 to 20

```bash
ls 1[0-9][^0-9]* 20[^0-9]*
```

## Redirection

| stream   | descriptor |
| -------- | ---------- |
| `stdout` | `1`        |
| `stderr` | `2`        |
| `stdin`  | `0`        |

>Default redirection (`1>`) **does not** include errors and will overwrite destination contents. To append use `>>`.

### `stdout`

```bash
cat file > /dev/null
```

### `stderr`

```bash
cat nonexistingfile 2> errors.txt
```

### `stdin`

Default from keyboard:

```bash
> cat > greetings.txt
```

From a file:

```bash
cat < data.txt > results.txt
```

> [[👁️]] `EOF` keybind: `ctrl + D`

### Empty terminal

```bash
cat file nonexisting > data.txt 2> errors.txt
```

### Same destination

```bash
cat file nonexisting >& results.txt
```

> redirecting both streams to the same file will cause problems. avoid doing it.

### Data Flow

The program's internal logic is responsabile for reading from `file.txt`. The path of the file is passed through `args`.

```bash
cat file.txt
```

Contents from `file.txt` are read by the shell and passed to the program via `stdin`.

```bash
cat < file.txt
```