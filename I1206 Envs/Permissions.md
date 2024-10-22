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

[[🚨]] When deleting files, the permissions that are checked are the ones of the container (file's directory) and not the single file permissions.

### Octal form

Each [[#UGO]] section is represented by an octal binary ternary. Example:

- `7` becomes `111`
- `5` becomes `101`
- `4` becomes `100`

and so on...

Each true bit represents if each single permission is granted or not. So `7` being `111` represents `rwx` meaning all permissions are granted. `3` would be `011` meaning `-wx`.

[[🚨]] Octal digits are read from LtR, missing digits are interpreted as `0`s, meaning that a single number applies permissions only to _others_: `7` => `007` => `------rwx`.

### REFAC: Special Permissions

#### setuserid

usually su file

permette exec con l'user id specificato (esegui come X)

`s`: exec + setuid
`S`: only setuid (really weird situation)

#### setgid

usually su dirs

See [[Commands#setgid]].

group third slot values:
`s`: exec + setgid
`S`: only setgid

in ottale -> 2777 -> `010` `111` `111` `111`. sets setgid bit to 1

#### sticky

usually su dirs

 allows only the dir owner or file owner to delete a file/dir

`t`: exec + sticky
`T`: only sticky

toglie il permesso di cancellare i file agli altri utenti per i file contenuti nella cartella dove e' stato applicato il permesso
