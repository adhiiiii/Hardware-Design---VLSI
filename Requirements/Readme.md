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
 
 ![3 15Mz](https://github.com/adhiiiii/Hardware-Design---VLSI/assets/47310995/8c77c8e6-a51f-4a68-9841-d197eb943a5e)


## UART Simulation

![36](https://github.com/adhiiiii/Hardware-Design---VLSI/assets/47310995/2bcf5ef5-60af-4b71-a13e-d807deeed533)
![37_Initial_State](https://github.com/adhiiiii/Hardware-Design---VLSI/assets/47310995/ced5aa40-8a67-4280-a1fb-36809e5c91a8)
![37_Initial_State2](https://github.com/adhiiiii/Hardware-Design---VLSI/assets/47310995/7b50ad46-5818-4142-acf3-63e7743fd881)
![37_Initial_State3](https://github.com/adhiiiii/Hardware-Design---VLSI/assets/47310995/85fd7a10-f262-40d7-8497-b17227ad40c7)
![37_Initial_State4](https://github.com/adhiiiii/Hardware-Design---VLSI/assets/47310995/3b005d93-a57d-4db0-ae78-f58f7cf602e6)

## UART Synthesis - In progress

```
# read design
read_verilog mydesign.v

# the high-level stuff
proc; opt; fsm; opt; memory; opt

# mapping to internal cell library
techmap; opt

# mapping flip-flops to mycells.lib
dfflibmap -liberty mycells.lib

# mapping logic to mycells.lib
abc -liberty mycells.lib

# cleanup
clean
# write synthesized design
write_verilog synth.v

``` 

