# Week 6
## OpenLane-Sky130-USB Core PDK flow - Test run ##
``` Configuration Specific file - USB CDC Core with default settings ```

![0_config](https://github.com/user-attachments/assets/e7a0bae2-90b9-4b31-9b5f-adcb7e1bd0f1)

``` ./flow.tcl -design usb_cdc_core ```

![1](https://github.com/user-attachments/assets/bf80fa1c-dd68-4c80-80b5-0bcf6d5d5b78)
![2](https://github.com/user-attachments/assets/600c7ee0-f586-4d26-900f-ec0e23e2b1f8)



![3](https://github.com/user-attachments/assets/24556bc9-3a8c-4f2b-97ab-71a65e7c85e2)

``` Files generated as part of PDK flow run```

![4](https://github.com/user-attachments/assets/28e7d525-7f02-4b54-8035-201fe367995d)
![5](https://github.com/user-attachments/assets/9a032c49-9948-4a1f-841e-36d50aaddf16)

``` Final GDS file - Klayout ```

![6](https://github.com/user-attachments/assets/b9e8c225-db95-4707-a64e-658faa484ddd)
![7](https://github.com/user-attachments/assets/908e5777-6a55-487a-b8ac-69af4c68bcc5)

## Lab 1 - Flop Ratio - picorv32a

``` ./flow.tcl -design picorv32a ```

![10](https://github.com/user-attachments/assets/bbe5150a-0581-4107-9670-16256ad1159e)

``` Flop Ration = D flipflop cells / total cells  ==> 1596/9269 = 0.172 ```

![11_cells_flop_Ratio](https://github.com/user-attachments/assets/9b4a87d9-0c93-41d6-877b-5c4159040703)

## Lab 2 - Floorplan

``` prep -design picorv32a --> run_synthesis --> run_floorplan --> run_placement ```

![1](https://github.com/user-attachments/assets/33c7eee5-c32f-4791-9054-3bb5c085bebc)
![2](https://github.com/user-attachments/assets/cd72a672-99ad-40a1-a893-8e358bf99432)

``` Die Area ```

![3_DieArea](https://github.com/user-attachments/assets/a06e086c-0f9b-4ee0-95a7-ba9dd8aaf840)

``` Magic View ```
![4](https://github.com/user-attachments/assets/e2b23214-f632-4237-9603-82e801cea842)

## Lab 3 - Cell Design (VLSI Magic Layout - ngspice)

```github vsdstdcelldesign -->inverter layout```

![13](https://github.com/user-attachments/assets/a9814d36-c9e8-441e-9334-16be47d99532)


``` Inverter CMOS - MAGIC VLSI ```

![5](https://github.com/user-attachments/assets/6f42e796-b720-4edd-a61b-41038af3eb49)

```SPICE CMOS Inverter Simulation extracted from MAGIC```

![12](https://github.com/user-attachments/assets/49c69f9c-c75c-4035-9327-c152e28f49e7)
![6](https://github.com/user-attachments/assets/aa024c53-c78b-4710-8621-9d7a1d6356d8)
![7](https://github.com/user-attachments/assets/c33b604b-0dbd-4d75-907d-f4f15bdc3384)
![8](https://github.com/user-attachments/assets/039a4fff-f5a1-4ff6-8f2e-525c7c74127b)
![9](https://github.com/user-attachments/assets/0fd92e7c-a3fa-4995-a92b-45cd1969e6f7)

``` Waveform Generated from SPICE script ```

![10](https://github.com/user-attachments/assets/f07a2027-64b6-4b4a-9049-6f4e09a770bd)

``` Rise Delay = 10.0 , Fall Delay =11.4 ; Rise Transition =  , Fall transition = ```

![11](https://github.com/user-attachments/assets/ea762cb1-4631-4a18-befe-97459f3eb5c3)

```DRC Section - sky130A ```

![14](https://github.com/user-attachments/assets/ffe1b182-a0b1-429e-813b-417f843bf6e8)
![14_0](https://github.com/user-attachments/assets/b4be1c64-8d6c-481f-bf74-808ea43324e9)

```poly.9 - poly resistor spacing to poly or spacing - 0.480 um, It has less than 0.33u, which is a violation as per SKY130 ``` 

![a1](https://github.com/user-attachments/assets/a927021f-7121-4385-9d92-5ecaa2d03427)
  
![a2](https://github.com/user-attachments/assets/a97035e5-9ab0-412d-8a2e-5c11b5091c7a)
 
![a3](https://github.com/user-attachments/assets/fbb6b1fb-09d6-41f0-bb84-24a901498597)

![a4](https://github.com/user-attachments/assets/c2d05bed-2b89-4e52-82bc-417b4f356dfe)

![a5](https://github.com/user-attachments/assets/8b4fd614-6f66-4ba1-a90e-4556bcbf9da0)

## Lab 4 - Pre-Layout - Timing Analysis

``` Generating custom LEF file from Magic ```

![b1](https://github.com/user-attachments/assets/a3d4352f-0fdf-4c7a-9719-303ed133482e)

```drc find - check for any errors ```

![c1](https://github.com/user-attachments/assets/504d3f75-11c8-4eba-8551-9bd8c99ec4c5)

``` Generated LEF ```

![b2](https://github.com/user-attachments/assets/d8ec4499-257c-4cbf-b6cc-5fc35dfceaae)

``` Config file with custom LEF ```

![b3](https://github.com/user-attachments/assets/cb4cc02c-f9ee-463c-b47a-cf2f28f30fac)

## Lab 5 - RTL to GDS 
