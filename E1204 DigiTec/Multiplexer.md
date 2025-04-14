---
tags:
  - digitec
lang:
  - en
---

## Mux
refac

Selects between one of $N$ inputs to connect output.

$\log_{2}N$ bit select input cotrol input

2:1 mux has 2 inputs and one output

## Tristates

for an n input mux, use n tristates
turn on exactly one to select the appropriate input

S1:0 has two selection lines

4:1 mux has S1:0

and gate can be achieved with 4:1 mux
see scheme (11 to high and others all low) (lookup table)
also with 2:1 because input 1 can be a signal and A is the selection line

--
appication inside AVR architecture in microcpus