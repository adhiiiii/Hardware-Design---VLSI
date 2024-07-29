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
![5](https://github.com/user-attachments/assets/6f42e796-b720-4edd-a61b-41038af3eb49)

```SPICE CMOS Inverter Simulation extracted from MAGIC```

![12](https://github.com/user-attachments/assets/49c69f9c-c75c-4035-9327-c152e28f49e7)
![6](https://github.com/user-attachments/assets/aa024c53-c78b-4710-8621-9d7a1d6356d8)
![7](https://github.com/user-attachments/assets/c33b604b-0dbd-4d75-907d-f4f15bdc3384)
![8](https://github.com/user-attachments/assets/039a4fff-f5a1-4ff6-8f2e-525c7c74127b)
![9](https://github.com/user-attachments/assets/0fd92e7c-a3fa-4995-a92b-45cd1969e6f7)
![10](https://github.com/user-attachments/assets/f07a2027-64b6-4b4a-9049-6f4e09a770bd)

``` Rise Delay = 10.0 , Fall Delay =11.4 ; Rise Transition =  , Fall transition = ```

![11](https://github.com/user-attachments/assets/ea762cb1-4631-4a18-befe-97459f3eb5c3)
