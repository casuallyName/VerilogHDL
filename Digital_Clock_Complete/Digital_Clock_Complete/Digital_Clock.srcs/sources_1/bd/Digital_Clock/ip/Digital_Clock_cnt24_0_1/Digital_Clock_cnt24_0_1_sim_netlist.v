// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Wed Jun 26 18:04:07 2019
// Host        : Casually running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Desktop/Digital_Clock_Complete/Digital_Clock_Complete/Digital_Clock.srcs/sources_1/bd/Digital_Clock/ip/Digital_Clock_cnt24_0_1/Digital_Clock_cnt24_0_1_sim_netlist.v
// Design      : Digital_Clock_cnt24_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Digital_Clock_cnt24_0_1,cnt24,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "cnt24,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module Digital_Clock_cnt24_0_1
   (clk,
    rst,
    data_L,
    data_H);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW" *) input rst;
  output [3:0]data_L;
  output [3:0]data_H;

  wire clk;
  wire [3:0]data_H;
  wire [3:0]data_L;
  wire rst;

  Digital_Clock_cnt24_0_1_cnt24 inst
       (.Q(data_L),
        .clk(clk),
        .data_H(data_H),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "cnt24" *) 
module Digital_Clock_cnt24_0_1_cnt24
   (Q,
    data_H,
    clk,
    rst);
  output [3:0]Q;
  output [3:0]data_H;
  input clk;
  input rst;

  wire [3:0]Q;
  wire clk;
  wire [3:0]data_H;
  wire \data_H[0]_i_2_n_0 ;
  wire \data_H[3]_i_1_n_0 ;
  wire \data_L[0]_i_1_n_0 ;
  wire \data_L[1]_i_1_n_0 ;
  wire \data_L[2]_i_1_n_0 ;
  wire \data_L[2]_i_2_n_0 ;
  wire \data_L[3]_i_1_n_0 ;
  wire \data_L[3]_i_2_n_0 ;
  wire [3:0]p_0_in;
  wire rst;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \data_H[0]_i_1 
       (.I0(data_H[3]),
        .I1(data_H[2]),
        .I2(Q[3]),
        .I3(\data_H[0]_i_2_n_0 ),
        .I4(data_H[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \data_H[0]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(data_H[1]),
        .I3(Q[2]),
        .O(\data_H[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0F70)) 
    \data_H[1]_i_1 
       (.I0(\data_L[2]_i_2_n_0 ),
        .I1(Q[1]),
        .I2(data_H[1]),
        .I3(data_H[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \data_H[2]_i_1 
       (.I0(data_H[2]),
        .I1(data_H[1]),
        .I2(data_H[0]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'h000088F000000000)) 
    \data_H[3]_i_1 
       (.I0(\data_L[2]_i_2_n_0 ),
        .I1(data_H[1]),
        .I2(Q[3]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(\data_H[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \data_H[3]_i_2 
       (.I0(data_H[3]),
        .I1(data_H[0]),
        .I2(data_H[1]),
        .I3(data_H[2]),
        .O(p_0_in[3]));
  FDCE #(
    .INIT(1'b0)) 
    \data_H_reg[0] 
       (.C(clk),
        .CE(\data_H[3]_i_1_n_0 ),
        .CLR(\data_L[3]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(data_H[0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_H_reg[1] 
       (.C(clk),
        .CE(\data_H[3]_i_1_n_0 ),
        .CLR(\data_L[3]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(data_H[1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_H_reg[2] 
       (.C(clk),
        .CE(\data_H[3]_i_1_n_0 ),
        .CLR(\data_L[3]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(data_H[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_H_reg[3] 
       (.C(clk),
        .CE(\data_H[3]_i_1_n_0 ),
        .CLR(\data_L[3]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(data_H[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \data_L[0]_i_1 
       (.I0(Q[0]),
        .O(\data_L[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0DF0)) 
    \data_L[1]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\data_L[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0FFF7000)) 
    \data_L[2]_i_1 
       (.I0(\data_L[2]_i_2_n_0 ),
        .I1(data_H[1]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(\data_L[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \data_L[2]_i_2 
       (.I0(data_H[3]),
        .I1(data_H[2]),
        .I2(Q[3]),
        .I3(data_H[0]),
        .O(\data_L[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7B80)) 
    \data_L[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\data_L[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_L[3]_i_2 
       (.I0(rst),
        .O(\data_L[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_L_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_L[3]_i_2_n_0 ),
        .D(\data_L[0]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_L_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_L[3]_i_2_n_0 ),
        .D(\data_L[1]_i_1_n_0 ),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_L_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_L[3]_i_2_n_0 ),
        .D(\data_L[2]_i_1_n_0 ),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_L_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_L[3]_i_2_n_0 ),
        .D(\data_L[3]_i_1_n_0 ),
        .Q(Q[3]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
