# UART

## High Level Block Diagram of UART Communication

![Capture](https://github.com/adhiiiii/Hardware-Design---VLSI/assets/47310995/ffd24671-020d-43c9-8ccb-34354802d88d)

UART is serial communicaton protocol for transferring data between digital systems

Protcol for UART as follows

1) It is two wire one to one communication protocol, 

![UART](https://github.com/adhiiiii/Hardware-Design---VLSI/assets/47310995/df288d5a-42b1-4675-80ce-3ae8a916d548)

2) Mode of communication - can be simplex,half-duplex or full duplex
here planning only simplex,which can be extended to other modes,

3) since it is digital systems the tranmitter and reciver need to operate with same speed

4) Data is transmitted as frames

Frame is collection of fixed size bits

1) Start and stop bits -  1 each bit (stop bit/s can be either 1 or 2 bits)
2) Optinal parity bit - 5 to 9 bits
3) Data bits  - 1 bit
