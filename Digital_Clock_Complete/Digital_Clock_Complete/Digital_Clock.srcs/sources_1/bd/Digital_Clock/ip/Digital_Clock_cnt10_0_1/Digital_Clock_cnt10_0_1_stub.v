// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sat Jun 15 14:50:48 2019
// Host        : Casually running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top Digital_Clock_cnt10_0_1 -prefix
//               Digital_Clock_cnt10_0_1_ Digital_Clock_cnt10_0_0_stub.v
// Design      : Digital_Clock_cnt10_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "cnt10,Vivado 2017.4" *)
module Digital_Clock_cnt10_0_1(clk, rst_n, carry, cnt)
/* synthesis syn_black_box black_box_pad_pin="clk,rst_n,carry,cnt[3:0]" */;
  input clk;
  input rst_n;
  output carry;
  output [3:0]cnt;
endmodule
