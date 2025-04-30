---
tags:
  - envs
lang: en
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

[[🚨]] When deleting files, the permissions that are checked are the ones of the container (file's directory) and not the single file permissions.

### Octal form

Each [[#UGO]] section is represented by an octal binary ternary. Example:

- `7` becomes `111`
- `5` becomes `101`
- `4` becomes `100`

and so on...

Each true bit represents if each single permission is granted or not. So `7` being `111` represents `rwx` meaning all permissions are granted. `3` would be `011` meaning `-wx`.

[[🚨]] Octal digits are read from LtR, missing digits are interpreted as `0`s, meaning that a single number applies permissions only to _others_: `7` => `007` => `------rwx`.

### Special Permissions

Special permissions take care of edge cases where normal permissions cannot.

### Octal

The first slot in the octal digits, composed of three bits, is the one dedicated to the special permissions. Each bit represents the special permission state in the same order as [[#UGO]], meaning the MSB is responsible for the owner, the middle one for the group and the LSB for others.

Examples:

`2777`: `010` `111` `111` `111`, sets the setgid bit to `1`
`4777`: `100` `111` `111` `111`, sets the setuid bit to `1`

#### setuid

This permissions is typically used on files and it enables the users to execute a file as if they were the user specified by the provided userid. Basically a 'run as X'.

In the user UGO field:
`s`: execution + setuid permissions
`S`: only setuid permission. Ambiguous and potentially wrong situation, should be avoided.

#### setgid

On directories, the **setgid** causes files created within the directory to inherit the directory's group rather than the primary group of the user who created the file.

On files, **setgid** allows the file to be executed with the `gid` of the file's group, rather than the group of the user executing the file.

In the group UGO field:
`s`: execution + setgid permissions
`S`: only setgid permission. Ambiguous and potentially wrong situation, should be avoided.

#### sticky

It is applied on directories and allows only the directory owner to delete entries, revoking this permissions to any other user.

`t`: execution + sticky permissions
`T`: only sticky permission.
