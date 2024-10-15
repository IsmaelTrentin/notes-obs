---
tags:
  - envs
lang:
  - en
---

## Permissions on Linux



## UGO

### `--- user`

File/dir owner permissions. Permissions applied to the owner.

### `--- group`

File/dir group permissions. Usually the main group of the file's owner. Permissions applied to anyone that is part of said group.

### `--- other`

File/dir permissions for every other user. Permissions applied to users that are not owner **and** not part of the specified group.

> [[👁️]] Categories apply from left to right, so if permissions are `-------rwx` and you match the [[#`--- group`|group]] permissions, those will be used resulting in you not having access to the file. Same if you are the owner.

### Directories

Directories are marked with `d` in the first column ([[Commands#`find`|file type]]).

| symbol | permission                   |
| ------ | ---------------------------- |
| `r`    | list contents                |
| `w`    | add/remove files. needs `x`! |
| `x`    | traverse directory           |

> Having only `x` does not grant permissions to read contents. You must have at least `r`.

> Having `w` while **not** having `x` does not grant permissions to write into the directory. It is implied that you are able to traverse into the directory to work on it.