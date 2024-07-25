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
