---
tags:
  - envs
lang:
  - en
---

refac

## Iterate over files

```bash
for f in $(ls); do
...
done
```

## String manipulation

```bash
N="hello world"

# hello w
# % starts searching from end of str
echo ${N%o*}

# hell
# longest match
echo ${N%%o*}

#  world
# # starts searching from start of str
echo ${N#*o}

# rld
# longest match
echo ${N##*o}

# string substitution 
echo ${N/world/lapis}

# slices
# <index>:<len>
echo ${N:0:3}

# str len
echo ${#N}
```