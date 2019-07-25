// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sat Jun 22 14:53:17 2019
// Host        : Casually running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top Digital_Clock_clk_out_1_0 -prefix
//               Digital_Clock_clk_out_1_0_ Digital_Clock_clk_out_0_0_stub.v
// Design      : Digital_Clock_clk_out_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "clk_out,Vivado 2017.4" *)
module Digital_Clock_clk_out_1_0(key, clk, out)
/* synthesis syn_black_box black_box_pad_pin="key,clk,out" */;
  input key;
  input clk;
  output out;
endmodule
