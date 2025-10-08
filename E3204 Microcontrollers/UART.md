---
tags:
  - mcus
locale: en
---

## Def

Universal Asynchronous Receiver and Transmitter

Implements a serial async communication protocol.

## Config

parties have to agree upon the same baud-speed, that is the bit\s transmitted and received.

The full duplex capability of UART lets TX and RX happen on a single clock cycle, usually TX on rise and RX on fall. Thats why A's TX is connected to B's RX and viceversa.

[[🚨]] Both parties have to share the same **GND** line because they need to have the same $V_{dd}$ reference.

### Optional RTS/CTS Config

UART offers the possibility to send RTS (Request To Send) and CTS (Clear To Send) signals. These two lines allow the receiver and the transmitter to alert each other to their state.

If a transmitter wants to send data, it can send a RTS signal to the receiver. If the receiver is then ready to accept data it will send a CTS signal. This is achieved by connecting A's RTS to B's CTS and viceversa, allowing the two parties to communicate without extra steps. When A is ready to send it will send a RTS signal (connected to B's CTS), when B's is ready it will toggle the CTS line and A will detect the change on its RTS meaning it can send data.

[[🚨]] These signals are active on **LOW** and inactive on **HIGH**.

## Transmission

The TX line is on logic **HIGH** when idle. When transmission starts, it toggles to logic **LOW** to signal the start of the byte and starts to send the byte's bits in LSB. After 8 bit, the line switches to a logic **HIGH** to signal the end of the byte (stop signal).

[[🔎]] If the parity bit was configured, it will be sent before the stop signal.

The time taken to transmit a bit is calculated with:

$$
T_{bit} = \frac{1}{\text{baud rate}}s
$$

while one byte frame (one stop bit) takes:

$$
T_{byte} = (1 + 8 + 1) \cdot T_{bit}
$$


## Registers

- configuration: UxMODE, the 15th bit sets the peripheral ON or OFF
- status: UxSTA
- transmit data: UxTXREG
- receive data: UxRXREG
- baud-rate: UxBRG

With $x \in  [1; 6] \cap \mathbb{Z}$.

### Baud Rate Generator

$$
UxBRG = \frac{F_{PB}}{M \cdot B} - 1
$$

where:

TODO:

$F_{PB} = 4 :$ 