// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Wed Jun 26 18:04:07 2019
// Host        : Casually running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Desktop/Digital_Clock_Complete/Digital_Clock_Complete/Digital_Clock.srcs/sources_1/bd/Digital_Clock/ip/Digital_Clock_cnt24_0_1/Digital_Clock_cnt24_0_1_stub.v
// Design      : Digital_Clock_cnt24_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "cnt24,Vivado 2017.4" *)
module Digital_Clock_cnt24_0_1(clk, rst, data_L, data_H)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,data_L[3:0],data_H[3:0]" */;
  input clk;
  input rst;
  output [3:0]data_L;
  output [3:0]data_H;
endmodule
