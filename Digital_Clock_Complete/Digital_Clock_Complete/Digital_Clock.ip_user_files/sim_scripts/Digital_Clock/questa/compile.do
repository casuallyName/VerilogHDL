vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm
vlib questa_lib/msim/xlconstant_v1_1_3
vlib questa_lib/msim/xlconcat_v2_1_1

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm
vmap xlconstant_v1_1_3 questa_lib/msim/xlconstant_v1_1_3
vmap xlconcat_v2_1_1 questa_lib/msim/xlconcat_v2_1_1

vlog -work xil_defaultlib -64 -sv "+incdir+../../../../Digital_Clock.srcs/sources_1/bd/Digital_Clock/ipshared/4868" "+incdir+../../../../Digital_Clock.srcs/sources_1/bd/Digital_Clock/ipshared/4868" \
"F:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93 \
"F:/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../Digital_Clock.srcs/sources_1/bd/Digital_Clock/ipshared/4868" "+incdir+../../../../Digital_Clock.srcs/sources_1/bd/Digital_Clock/ipshared/4868" \
"../../../bd/Digital_Clock/ip/Digital_Clock_clk_wiz_0_0/Digital_Clock_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/Digital_Clock/ip/Digital_Clock_clk_wiz_0_0/Digital_Clock_clk_wiz_0_0.v" \
"../../../bd/Digital_Clock/ipshared/c8f0/IP_Project/Clk_Div/Clk_div.srcs/sources_1/new/clk_div.v" \
"../../../bd/Digital_Clock/ip/Digital_Clock_clk_div_0_0/sim/Digital_Clock_clk_div_0_0.v" \
"../../../bd/Digital_Clock/ipshared/5b64/src/cont6.v" \
"../../../bd/Digital_Clock/ip/Digital_Clock_cnt10_0_0/sim/Digital_Clock_cnt10_0_0.v" \
"../../../bd/Digital_Clock/ipshared/fc6e/src/cont6.v" \
"../../../bd/Digital_Clock/ip/Digital_Clock_cnt6_0_1/sim/Digital_Clock_cnt6_0_1.v" \
"../../../bd/Digital_Clock/ip/Digital_Clock_cnt10_0_1/sim/Digital_Clock_cnt10_0_1.v" \
"../../../bd/Digital_Clock/ip/Digital_Clock_cnt6_0_2/sim/Digital_Clock_cnt6_0_2.v" \
"../../../bd/Digital_Clock/ipshared/8f07/src/display.v" \
"../../../bd/Digital_Clock/ip/Digital_Clock_display_0_0/sim/Digital_Clock_display_0_0.v" \
"../../../bd/Digital_Clock/ip/Digital_Clock_display_0_1/sim/Digital_Clock_display_0_1.v" \

vlog -work xlconstant_v1_1_3 -64 "+incdir+../../../../Digital_Clock.srcs/sources_1/bd/Digital_Clock/ipshared/4868" "+incdir+../../../../Digital_Clock.srcs/sources_1/bd/Digital_Clock/ipshared/4868" \
"../../../../Digital_Clock.srcs/sources_1/bd/Digital_Clock/ipshared/0750/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../Digital_Clock.srcs/sources_1/bd/Digital_Clock/ipshared/4868" "+incdir+../../../../Digital_Clock.srcs/sources_1/bd/Digital_Clock/ipshared/4868" \
"../../../bd/Digital_Clock/ip/Digital_Clock_xlconstant_0_0/sim/Digital_Clock_xlconstant_0_0.v" \
"../../../bd/Digital_Clock/ip/Digital_Clock_xlconstant_1_0/sim/Digital_Clock_xlconstant_1_0.v" \
"../../../bd/Digital_Clock/ip/Digital_Clock_xlconstant_2_0/sim/Digital_Clock_xlconstant_2_0.v" \
"../../../bd/Digital_Clock/ip/Digital_Clock_xlconstant_3_0/sim/Digital_Clock_xlconstant_3_0.v" \

vlog -work xlconcat_v2_1_1 -64 "+incdir+../../../../Digital_Clock.srcs/sources_1/bd/Digital_Clock/ipshared/4868" "+incdir+../../../../Digital_Clock.srcs/sources_1/bd/Digital_Clock/ipshared/4868" \
"../../../../Digital_Clock.srcs/sources_1/bd/Digital_Clock/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../Digital_Clock.srcs/sources_1/bd/Digital_Clock/ipshared/4868" "+incdir+../../../../Digital_Clock.srcs/sources_1/bd/Digital_Clock/ipshared/4868" \
"../../../bd/Digital_Clock/ip/Digital_Clock_xlconcat_0_0/sim/Digital_Clock_xlconcat_0_0.v" \
"../../../bd/Digital_Clock/sim/Digital_Clock.v" \
"../../../bd/Digital_Clock/ipshared/d602/project_3.srcs/sources_1/new/Mux2to1_DF.v" \
"../../../bd/Digital_Clock/ip/Digital_Clock_Mux2to1_DF_0_0/sim/Digital_Clock_Mux2to1_DF_0_0.v" \
"../../../bd/Digital_Clock/ipshared/a9b2/src/clk_out.v" \
"../../../bd/Digital_Clock/ip/Digital_Clock_clk_out_0_0/sim/Digital_Clock_clk_out_0_0.v" \
"../../../bd/Digital_Clock/ip/Digital_Clock_Mux2to1_DF_1_0/sim/Digital_Clock_Mux2to1_DF_1_0.v" \
"../../../bd/Digital_Clock/ip/Digital_Clock_Mux2to1_DF_2_0/sim/Digital_Clock_Mux2to1_DF_2_0.v" \
"../../../bd/Digital_Clock/ip/Digital_Clock_clk_out_1_0/sim/Digital_Clock_clk_out_1_0.v" \
"../../../bd/Digital_Clock/ip/Digital_Clock_clk_out_2_0/sim/Digital_Clock_clk_out_2_0.v" \
"../../../../Digital_Clock.srcs/sources_1/project_1/project_1.srcs/sources_1/new/cnt24.v" \
"../../../bd/Digital_Clock/ip/Digital_Clock_cnt24_0_1/sim/Digital_Clock_cnt24_0_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

