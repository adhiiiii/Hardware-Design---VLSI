# UART

## High Level Block Diagram of UART Communication

![Capture](https://github.com/adhiiiii/Hardware-Design---VLSI/assets/47310995/ffd24671-020d-43c9-8ccb-34354802d88d)

UART is serial communicaton protocol for transferring data between digital systems

Protcol for UART as follows

1) It is two wire one to one communication protocol, 

2) Mode of communication - can be simplex,half-duplex or full duplex
here planning only simplex,which can be extended to other modes,

![UART](https://github.com/adhiiiii/Hardware-Design---VLSI/assets/47310995/b7b67d52-6ca8-4b07-ab54-2bf2b9d4a019)

3) since it is digital systems the tranmitter and reciver need to operate with same speed

4) Data is transmitted as frames

Frame is collection of fixed size bits

1) Start and stop bits -  1 each bit (stop bit/s can be either 1 or 2 bits)
2) Optinal parity bit - 5 to 9 bits // here we are not adding parity bit
3) Data bits  - 1 bit

![3](https://github.com/adhiiiii/Hardware-Design---VLSI/assets/47310995/2e9baf11-257f-4162-9d4f-4b95c6009ca3)

## UART Block Diagram

 UART ==> baud_rate_gen + receiver + transmitter



## UART Simulation

![1](https://github.com/adhiiiii/Hardware-Design---VLSI/assets/47310995/f133bde3-9a6e-4fa9-a103-bc5d97e7b8df)

![2](https://github.com/adhiiiii/Hardware-Design---VLSI/assets/47310995/80c51204-2ac4-4704-a47c-abfa24867c7c)

In progress
