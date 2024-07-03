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


![38 1](https://github.com/adhiiiii/Hardware-Design---VLSI/assets/47310995/5d55f9b4-9f90-47b3-9d0f-a0c9df1f1097)
![7 1](https://github.com/adhiiiii/Hardware-Design---VLSI/assets/47310995/ba42cb5c-93a9-4404-82ad-b7ca5143d9eb)
![38 2](https://github.com/adhiiiii/Hardware-Design---VLSI/assets/47310995/6f0ae3b3-90ca-4e6d-83d8-f0d5d27f0a39)
![39](https://github.com/adhiiiii/Hardware-Design---VLSI/assets/47310995/2d268e98-d683-49fd-9a11-df3eda1c652e)
![7 1 3](https://github.com/adhiiiii/Hardware-Design---VLSI/assets/47310995/ae2b5b03-a253-40af-aabc-a22514bc4b14)
![7 1 1](https://github.com/adhiiiii/Hardware-Design---VLSI/assets/47310995/bf43e7c1-2bf5-45cb-890f-53ede3a4a573)
![7 1 2](https://github.com/adhiiiii/Hardware-Design---VLSI/assets/47310995/97045843-5ee7-4e8a-96b8-6ef01dc09666)
![40](https://github.com/adhiiiii/Hardware-Design---VLSI/assets/47310995/0b105b04-bda4-4bce-b3c8-612b0a09de52)
![38 3](https://github.com/adhiiiii/Hardware-Design---VLSI/assets/47310995/332d4b58-8283-4b7f-b454-cfd42aa94a13)
![41](https://github.com/adhiiiii/Hardware-Design---VLSI/assets/47310995/33adf5eb-6ca3-4239-8371-ef9ea274beb1)

## RTL simulation Vs Gate Level Simulation (GLS) after synthesis
