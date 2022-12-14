
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set return_group [add_wave_group return(wire) -into $coutputgroup]
add_wave /apatb_adders_top/AESL_inst_adders/ap_return -into $return_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set return_group [add_wave_group return(wire) -into $cinputgroup]
add_wave /apatb_adders_top/AESL_inst_adders/in7 -into $return_group -radix hex
add_wave /apatb_adders_top/AESL_inst_adders/in6 -into $return_group -radix hex
add_wave /apatb_adders_top/AESL_inst_adders/in5 -into $return_group -radix hex
add_wave /apatb_adders_top/AESL_inst_adders/in4 -into $return_group -radix hex
add_wave /apatb_adders_top/AESL_inst_adders/in3 -into $return_group -radix hex
add_wave /apatb_adders_top/AESL_inst_adders/in2 -into $return_group -radix hex
add_wave /apatb_adders_top/AESL_inst_adders/in1 -into $return_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_adders_top/AESL_inst_adders/ap_start -into $blocksiggroup
add_wave /apatb_adders_top/AESL_inst_adders/ap_done -into $blocksiggroup
add_wave /apatb_adders_top/AESL_inst_adders/ap_idle -into $blocksiggroup
add_wave /apatb_adders_top/AESL_inst_adders/ap_ready -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_adders_top/AESL_inst_adders/ap_rst -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_adders_top/AESL_inst_adders/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_adders_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_adders_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_adders_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_adders_top/LENGTH_in1 -into $tb_portdepth_group -radix hex
add_wave /apatb_adders_top/LENGTH_in2 -into $tb_portdepth_group -radix hex
add_wave /apatb_adders_top/LENGTH_in3 -into $tb_portdepth_group -radix hex
add_wave /apatb_adders_top/LENGTH_in4 -into $tb_portdepth_group -radix hex
add_wave /apatb_adders_top/LENGTH_in5 -into $tb_portdepth_group -radix hex
add_wave /apatb_adders_top/LENGTH_in6 -into $tb_portdepth_group -radix hex
add_wave /apatb_adders_top/LENGTH_in7 -into $tb_portdepth_group -radix hex
add_wave /apatb_adders_top/LENGTH_ap_return -into $tb_portdepth_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_return_group [add_wave_group return(wire) -into $tbcoutputgroup]
add_wave /apatb_adders_top/ap_return -into $tb_return_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_return_group [add_wave_group return(wire) -into $tbcinputgroup]
add_wave /apatb_adders_top/in7 -into $tb_return_group -radix hex
add_wave /apatb_adders_top/in6 -into $tb_return_group -radix hex
add_wave /apatb_adders_top/in5 -into $tb_return_group -radix hex
add_wave /apatb_adders_top/in4 -into $tb_return_group -radix hex
add_wave /apatb_adders_top/in3 -into $tb_return_group -radix hex
add_wave /apatb_adders_top/in2 -into $tb_return_group -radix hex
add_wave /apatb_adders_top/in1 -into $tb_return_group -radix hex
save_wave_config adders.wcfg
run all
quit

