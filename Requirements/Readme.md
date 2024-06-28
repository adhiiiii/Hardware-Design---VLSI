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
 
 ![3 1](https://github.com/adhiiiii/Hardware-Design---VLSI/assets/47310995/22d90ec8-1e38-43f1-983f-69a738f65d38)


## UART Simulation

![1](https://github.com/adhiiiii/Hardware-Design---VLSI/assets/47310995/f133bde3-9a6e-4fa9-a103-bc5d97e7b8df)

![2](https://github.com/adhiiiii/Hardware-Design---VLSI/assets/47310995/80c51204-2ac4-4704-a47c-abfa24867c7c)

## UART Synthesis - In progress

![4](https://github.com/adhiiiii/Hardware-Design---VLSI/assets/47310995/efa90f2c-9eec-43c3-9159-0d22a260cc65)
![4_1](https://github.com/adhiiiii/Hardware-Design---VLSI/assets/47310995/de50d7d8-6b93-46d2-8b1e-c699e26d9bbf)
![5](https://github.com/adhiiiii/Hardware-Design---VLSI/assets/47310995/790528c0-a391-438d-9037-937d90e269c5)
![6_Synth](https://github.com/adhiiiii/Hardware-Design---VLSI/assets/47310995/346c3045-b036-412a-9431-1e0b8e7ca123)
