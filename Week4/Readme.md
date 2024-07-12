# Week 4

## STA - Test run

```OpenSTA```

![11](https://github.com/adhiiiii/Hardware-Design---VLSI/assets/47310995/d81cb47c-ee9d-4b86-bd13-28d88388b69f)

``` 'tcl' file - Configuration ```

![tcl_file](https://github.com/adhiiiii/Hardware-Design---VLSI/assets/47310995/49e99aa4-f079-453e-8557-3be677fab7a5)

``` Test OpenSTA - Example ```

![3](https://github.com/adhiiiii/Hardware-Design---VLSI/assets/47310995/da3ed21a-2990-4e44-b9f5-b0dbaf3403b8)

 ## Timing Analysis with Multiple Process Corners (UART Synth - specific to SKY130)
```Manufactured chip characteristics may not be exact as designed due to Foundary process limitations, In order to overcome these, during design, we simulate min and max tolerance levels as per foundry specifications (SKY130) ,so any variations is with in acceptable tolerance, these are represented by min(sky130_fd_sc_hd__slow.lib) and max (sky130_fd_sc_hd__fast.lib) for SKY130```


 ``` 'tcl' file - configuration ```
 
![6](https://github.com/adhiiiii/Hardware-Design---VLSI/assets/47310995/24260f71-cb1a-4a7b-96c7-c721be76fa36)
![10](https://github.com/adhiiiii/Hardware-Design---VLSI/assets/47310995/c92fd683-2c96-4c7d-879f-107709a7f098) 

``` STA execution for sky130 lib - ss - sky130_fd_sc_hd__slow.lib ```


![8](https://github.com/adhiiiii/Hardware-Design---VLSI/assets/47310995/b1292794-72b5-4dd8-bcab-ca87fcaa7fcd)


``` STA execution for sky130 lib - tt - sky130_fd_sc_hd__typical.lib ```

![9](https://github.com/adhiiiii/Hardware-Design---VLSI/assets/47310995/c800b3a8-fe7b-4f03-af92-afb4eea8f16f)

``` STA execution for sky130 lib - ff - sky130_fd_sc_hd__fast.lib ```

 ![7](https://github.com/adhiiiii/Hardware-Design---VLSI/assets/47310995/77c52138-d112-415c-9edf-3d9dae6d72c5)

``` SS Vs TT Vs FF ```

![12](https://github.com/adhiiiii/Hardware-Design---VLSI/assets/47310995/5c036e93-e0fc-4523-ac26-c49b3b96a9c7)
![11](https://github.com/adhiiiii/Hardware-Design---VLSI/assets/47310995/387a3586-91dc-48e8-87a5-df4d35912e4a)

## STA - Multiple Process Corners (WNS, TNS, Worst_Setup_Slack, Worst_Hold_Slack)

![Tcl_File](https://github.com/user-attachments/assets/e2f5faec-66f6-4100-b4b2-35e363cf5e91)

``` STA Exection based on above TCL file configuration ``` 

![2_TCL_Execution](https://github.com/user-attachments/assets/cf14d998-ce3a-4ddf-b6ef-38d840ebaadd)

``` Files generated as per TCL file configuration for analysis ```

![3_worst_slack](https://github.com/user-attachments/assets/45534c93-bb7d-47d3-abbd-bd3600741039)
![4](https://github.com/user-attachments/assets/63a31690-dda3-4577-b445-5c7eafb3215c)

``` WNS Vs TNS Vs WSS Vs WHS ```

![5](https://github.com/user-attachments/assets/46f53bdd-4d33-4ed6-8503-0e0a5adece84)

``` UART Post Synth Graph wrt SKY130 Timing libs ```

![6](https://github.com/user-attachments/assets/a37012b4-6abd-496e-97d1-71dbbe105069)
