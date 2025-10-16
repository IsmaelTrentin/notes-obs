---
tags:
  - mcus
locale: en
---

## def

PBUS clocks depends on the SYSCLK. The SYSCLK can be changed through the Phase Looked Up, scaling by factors by multiplying or dividing.

![[clock_scaling.excalidraw]]

## Sources

- FRC: internal osc., 8MHz
- LPRC internal osc., 32 kHz
- POSC primary high-speed osc., external crystal up to 20 MHz connected to the OSCI and OSCO
- SOSC secondary low-speed and high-accuracy osc., external crystal of 32 kHz connected to the SOSCI and SOSCO, i.e. used for RTCC

## Outputs

- USB clock exact 48 MHz, derived by: an 8 MHz POSC, divided by 2, multiplied by 24 and divided by 2 external 48 MHz primary oscillator
- CPU clock (SYSCLK) choosen from many ways
	- POSC directly
	- POSC through PLL dividers and PLL multipliers
	- internal FRC clock directly
	- internal FRC clock through PLL
	- internal FRC clock through divisor
	- internal FRC clock divided by 16 (x scale factor)
	- LPRC directly
	- SOSC directly
- Peripheral clock (PBCLK) derived from CPU clock passing through a postscaler