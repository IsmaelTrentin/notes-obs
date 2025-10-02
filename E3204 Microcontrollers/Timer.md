---
tags:
  - mcus
locale: en
---

## Def

Counter that increments for each rising clock cycle until a max value specified in the `PRx` register. The `TMRx` is the dedicated register for a timer $x \in \mathbb{N}$. When $TMRx = PRx$, a reset takes place. This system depends on the **Peripheral Bus Clock** but we can set a pre-scaler value to specify a ratio PB_Clock:TMR_Clock, for example 8 PB clocks corresponds to a single timer clock.

## Types

### A Type

- 16 bit
- async timer with a built in oscillator
- operational during CPU sleep
- pre-scalers: 1:1, 1:8, 1:64, 1:256

### B Type

- 16 bit (32 bit see below)
- 32 bit timer oscillator
- pre-scalers: 1:1, 1:2, 1:4, 1:8, 1:16, 1:32, 1:64, 1:256

B type timers can be coupled together to reach 32 bit

## PIC32

The PIC32 MC integrates `5` timers:

- TIMER1: 16bit
- TIMER2...5: 16bit and can be combined to 32bit

## Timer 1

Set clock source: set `TGATE=0`, `TCS=0`, `ON=1`.

Set pre-scaler: `TCKPS<1-0>`

Config register: `T1CON`

interrupt: `T1IF` sets to one when timer has reached max values and will reset

$$
T_{timer 1} = T_{clk} \cdot Presc \cdot PR1 = \frac{Presc \cdot PR1}{F_{clk}} = \frac{Presc \cdot PR1}{PBCLOCK}
$$

## Example of Time Calculation

Given: $f_{clk} = 20 \text{ MHz}$, $Presc = 256$, $TMR1 = 0$ at time zero, we want $T = 256 \text{ ms}$:

$$
\begin{align}
PBCLOCK = f_{clk} = 20 \text{ MHz} = 20 \cdot 10^6 \text{ Hz} \\
PR1 = \frac{T \cdot f_{clk}}{PRESC} = \frac{256\cdot 10^{-3} \cdot 20 \cdot 10^6}{256} = 2000
\end{align}
$$

