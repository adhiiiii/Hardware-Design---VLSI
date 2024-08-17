# File type - TCL
# Desc - It generates tns, wns , max - min slack report for UART - Post Route 
#      - Audhivishnu K
#      - 08/16/2024
set systemTime [clock seconds]
puts "\n~~~~~~~~~~~~~~~~~~~~~~~~~@Audhi~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~";
puts "===============================================================";
puts "~~~~~~~~~~~~~~~~~~~~ POST-ROUTE STA ~~~~~~~~~~~~~~~~~~~~~~~~~~~";
puts "===============================================================";
# Read library files --------------------------------------
set list_of_lib_files(1) "sky130_fd_sc_hd__tt_025C_1v80.lib"
set list_of_lib_files(2) "sky130_fd_sc_hd__ff_100C_1v65.lib"
set list_of_lib_files(3) "sky130_fd_sc_hd__ff_100C_1v95.lib"
set list_of_lib_files(4) "sky130_fd_sc_hd__ff_n40C_1v56.lib"
set list_of_lib_files(5) "sky130_fd_sc_hd__ff_n40C_1v65.lib"
set list_of_lib_files(6) "sky130_fd_sc_hd__ff_n40C_1v76.lib"
set list_of_lib_files(7) "sky130_fd_sc_hd__ss_100C_1v40.lib"
set list_of_lib_files(8) "sky130_fd_sc_hd__ss_100C_1v60.lib"
set list_of_lib_files(9) "sky130_fd_sc_hd__ss_n40C_1v28.lib"
set list_of_lib_files(10) "sky130_fd_sc_hd__ss_n40C_1v35.lib"
set list_of_lib_files(11) "sky130_fd_sc_hd__ss_n40C_1v40.lib"
set list_of_lib_files(12) "sky130_fd_sc_hd__ss_n40C_1v44.lib"
set list_of_lib_files(13) "sky130_fd_sc_hd__ss_n40C_1v76.lib"
# Load Liberty File --------------------------------------
set_cmd_units -time ns -capacitance pF -current mA -voltage V -resistance kOhm -distance um
set_units -time ns -capacitance pF -current mA -voltage V -resistance kOhm -distance um
########Read DB File###############
read_db /home/adiv123/vlsi/openlane2/uart/runs/RUN_2024-08-14_22-56-40/final/odb/uart.odb
########Read SPEF###############
read_spef /home/adiv123/vlsi/openlane2/uart/runs/RUN_2024-08-14_22-56-40/final/spef/nom/uart.nom.spef
####################################
for {set i 1} {$i <= [array size list_of_lib_files]} {incr i} {
#path to liberty lib
read_liberty ./timing/$list_of_lib_files($i)
current_design
########Read SDC File###############
read_sdc uart_audhi.sdc
####################################
check_setup -verbose
# Report - output  --------------------------------------
report_checks -path_delay min_max -fields {nets cap slew input_pins fanout} -digits {4} > ./POST_ROUTE_STA/min_max_$list_of_lib_files($i).txt
exec echo "$list_of_lib_files($i)" >> ./POST_ROUTE_STA/sta_worst_slack.txt
report_worst_slack >> ./POST_ROUTE_STA/sta_worst_slack.txt
exec echo "$list_of_lib_files($i)" >> ./POST_ROUTE_STA/sta_tns.txt
report_tns >> ./POST_ROUTE_STA/sta_tns.txt
exec echo "$list_of_lib_files($i)" >> ./POST_ROUTE_STA/sta_wns.txt
report_wns >> ./POST_ROUTE_STA/sta_wns.txt
#report_checks -path_delay min_max -digits {4} >> ./POST_ROUTE_STA/sta_max_min_slack_report.txt
#exec echo "$list_of_lib_files($i)" >> ./POST_ROUTE_STA/sta_max_min_slack_report.txt
#report_checks min_max -digits {4} >> ./POST_ROUTE_STA/sta_max_min_slack_report.txt
puts "~~Execution $i)$list_of_lib_files($i) SUCCESS..! ~~";
}
puts "===============================================================\n";
puts "POST-ROUTE STA execution completed @ [clock format $systemTime -format %D ],[clock format $systemTime -format %T ],Please check generated sta output files under 'POST_ROUTE_STA' folder \n";
