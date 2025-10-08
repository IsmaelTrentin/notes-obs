---
tags:
  - mcus
locale: en
---

## def

Interrupts save the current code execution to then stop and run a dedicated part of memory, after that execution is done, it gets back to the previous point of execution and keeps running the program.

Interrupt events can be set up to have a priority and a sub-priority ranking, making it possible to handle multiple events occurring at the same time.
Priority order is descending meaning that level 7 has more priority than level 0.

single vector mode -> maps all interrupts to a single ISR
multi vector mode -> each interrupt has its own ISR

## Workflow

- interrupt occurs
- interrupt event bit flag toggles on
- controller looks up IVT entry to call the dedicated ISR

> [[👁️]] the interrupt enable flag must be turned on for the events to be dispatched

when an interrupt occurs, the interrupt flag goes to 1 **and stays on 1**. It's the programmer responsibility to set that value back to 0.