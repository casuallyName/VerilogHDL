// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sat Jun 15 14:53:25 2019
// Host        : Casually running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ Digital_Clock_display_0_0_stub.v
// Design      : Digital_Clock_display_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "display,Vivado 2017.4" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, data1, data2, data3, data4, en, led)
/* synthesis syn_black_box black_box_pad_pin="clk,data1[3:0],data2[3:0],data3[3:0],data4[3:0],en[3:0],led[7:0]" */;
  input clk;
  input [3:0]data1;
  input [3:0]data2;
  input [3:0]data3;
  input [3:0]data4;
  output [3:0]en;
  output [7:0]led;
endmodule
