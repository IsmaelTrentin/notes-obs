---
tags:
  - mcus
locale: en
---

## Ports

```text
ANSELX -> sets ANALOG=1/DIGITAL=0
TRISX -> sets diretion input=1/output=0
PORTX -> reads value
LATX -> writes value

bits:
<REG>X = <bits> -> sets all 32 bits using <bits>
<REG>XCLR = <bitmask> -> if a bit is 1 in <bitmask>, it sets <REG>X of that                             bit position to 0
<REG>XSET = <bitmask> -> if a bit is 1 in <bitmask>, it sets <REG>X of that                             bit position to 1
<REG>XINV = <bitmask> -> if a bit is 1 in <bitmask>, it sets <REG>X of that                             bit position to its inverted value
```
