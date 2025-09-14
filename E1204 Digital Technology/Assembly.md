---
tags:
  - digitec
locale: en
---

| instr. | type | description                                                  |
| ------ | ---- | ------------------------------------------------------------ |
| `beq`  | I    | branches if two registers are equal                          |
| `bne`  | I    | branches if two registers are not equal                      |
| `j`    | J    | jumps to address                                             |
| `jr`   | R    | jumps to address stored in register                          |
| `jal`  | J    | like j but saves the return address in $a to come back to it |
| `slt`  |      |                                                              |
| <br>   |      |                                                              |


addressing modes;

REGISTER ONLY:
operands found in registers
`add $s0, $t2, $t3`

IMMEDIATE:
16bit immediate used as an operand
`addi $s3, $t4, 1`

BASE ADDRESSING:
base adress + sign-extended immediate
`lw $s4, 72($0)`

PC-RELATIVE ADDRESSING:
$BTA = PC + 4 + (\text{SignImm} << 2)$
shift 2 perche memory va in 4 in 4 (word)
viene calcolato quando il processore deve calcolare l'indirizzo BTA dove andare se la condizione e' vera

JTA:
$JTA = \{(PC + 4)[31:28], \text{addr}, 2'b0\}$

