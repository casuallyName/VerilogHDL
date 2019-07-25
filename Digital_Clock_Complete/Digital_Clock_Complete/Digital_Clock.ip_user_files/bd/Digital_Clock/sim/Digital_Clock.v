//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Wed Jun 26 18:02:33 2019
//Host        : Casually running 64-bit major release  (build 9200)
//Command     : generate_target Digital_Clock.bd
//Design      : Digital_Clock
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "Digital_Clock,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Digital_Clock,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=20,numReposBlks=20,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "Digital_Clock.hwdef" *) 
module Digital_Clock
   (LED0,
    LED1,
    LED_BIT0,
    LED_BIT1,
    clk,
    key_0,
    key_1,
    key_2,
    rst,
    sel_0);
  output [7:0]LED0;
  output [7:0]LED1;
  output [3:0]LED_BIT0;
  output [3:0]LED_BIT1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN Digital_Clock_clk_in1_0, FREQ_HZ 100000000, PHASE 0.000" *) input clk;
  input key_0;
  input key_1;
  input key_2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RST, POLARITY ACTIVE_LOW" *) input rst;
  input sel_0;

  wire Mux2to1_DF_0_out;
  wire Mux2to1_DF_1_out;
  wire Mux2to1_DF_2_out;
  wire Net;
  wire clk_1;
  wire clk_div_clk_out;
  wire clk_out_0_out;
  wire clk_out_1_out;
  wire clk_out_2_out;
  wire clk_wiz_clk_out1;
  wire cnt10_0_carry;
  wire [3:0]cnt10_0_cnt;
  wire [3:0]cnt24_0_data_H;
  wire [3:0]cnt24_0_data_L;
  wire [3:0]cnt6_0_cnt;
  wire [3:0]display_0_en;
  wire [7:0]display_0_led;
  wire [3:0]display_1_en;
  wire [7:0]display_1_led;
  wire key_0_1;
  wire key_1_1;
  wire key_2_1;
  wire minute_H_carry;
  wire rst_n_0_1;
  wire second_H_carry;
  wire [3:0]second_H_cnt;
  wire second_L_carry;
  wire [3:0]second_L_cnt;
  wire sel_0_1;
  wire [3:0]xlconcat_0_dout;
  wire [0:0]xlconstant_0_dout;
  wire [0:0]xlconstant_1_dout;
  wire [0:0]xlconstant_2_dout;
  wire [0:0]xlconstant_3_dout;

  assign LED0[7:0] = display_0_led;
  assign LED1[7:0] = display_1_led;
  assign LED_BIT0[3:0] = display_0_en;
  assign LED_BIT1[3:0] = display_1_en;
  assign clk_1 = clk;
  assign key_0_1 = key_0;
  assign key_1_1 = key_1;
  assign key_2_1 = key_2;
  assign rst_n_0_1 = rst;
  assign sel_0_1 = sel_0;
  Digital_Clock_Mux2to1_DF_0_0 Mux2to1_DF_0
       (.a(clk_out_1_out),
        .b(second_H_carry),
        .out(Mux2to1_DF_0_out),
        .sel(sel_0_1));
  Digital_Clock_Mux2to1_DF_1_0 Mux2to1_DF_1
       (.a(clk_out_0_out),
        .b(clk_div_clk_out),
        .out(Mux2to1_DF_1_out),
        .sel(sel_0_1));
  Digital_Clock_Mux2to1_DF_2_0 Mux2to1_DF_2
       (.a(clk_out_2_out),
        .b(minute_H_carry),
        .out(Mux2to1_DF_2_out),
        .sel(sel_0_1));
  Digital_Clock_clk_div_0_0 clk_div
       (.clk_in(clk_wiz_clk_out1),
        .clk_out(clk_div_clk_out));
  Digital_Clock_clk_out_0_0 clk_out_0
       (.clk(clk_wiz_clk_out1),
        .key(key_0_1),
        .out(clk_out_0_out));
  Digital_Clock_clk_out_1_0 clk_out_1
       (.clk(clk_wiz_clk_out1),
        .key(key_1_1),
        .out(clk_out_1_out));
  Digital_Clock_clk_out_2_0 clk_out_2
       (.clk(clk_wiz_clk_out1),
        .key(key_2_1),
        .out(clk_out_2_out));
  Digital_Clock_clk_wiz_0_0 clk_wiz
       (.clk_in1(clk_1),
        .clk_out1(clk_wiz_clk_out1),
        .clk_out2(Net));
  Digital_Clock_cnt24_0_1 cnt24_0
       (.clk(Mux2to1_DF_2_out),
        .data_H(cnt24_0_data_H),
        .data_L(cnt24_0_data_L),
        .rst(rst_n_0_1));
  Digital_Clock_xlconcat_0_0 concat
       (.In0(xlconstant_3_dout),
        .In1(xlconstant_1_dout),
        .In2(xlconstant_2_dout),
        .In3(xlconstant_0_dout),
        .dout(xlconcat_0_dout));
  Digital_Clock_xlconstant_3_0 constant_0
       (.dout(xlconstant_3_dout));
  Digital_Clock_xlconstant_1_0 constant_1
       (.dout(xlconstant_1_dout));
  Digital_Clock_xlconstant_2_0 constant_2
       (.dout(xlconstant_2_dout));
  Digital_Clock_xlconstant_0_0 constant_3
       (.dout(xlconstant_0_dout));
  Digital_Clock_display_0_1 display_0
       (.clk(Net),
        .data1(cnt24_0_data_H),
        .data2(cnt24_0_data_L),
        .data3(xlconcat_0_dout),
        .data4(cnt6_0_cnt),
        .en(display_0_en),
        .led(display_0_led));
  Digital_Clock_display_0_0 display_1
       (.clk(Net),
        .data1(cnt10_0_cnt),
        .data2(xlconcat_0_dout),
        .data3(second_H_cnt),
        .data4(second_L_cnt),
        .en(display_1_en),
        .led(display_1_led));
  Digital_Clock_cnt6_0_2 minute_H
       (.carry(minute_H_carry),
        .clk(cnt10_0_carry),
        .cnt(cnt6_0_cnt),
        .rst_n(rst_n_0_1));
  Digital_Clock_cnt10_0_1 minute_L
       (.carry(cnt10_0_carry),
        .clk(Mux2to1_DF_0_out),
        .cnt(cnt10_0_cnt),
        .rst_n(rst_n_0_1));
  Digital_Clock_cnt6_0_1 second_H
       (.carry(second_H_carry),
        .clk(second_L_carry),
        .cnt(second_H_cnt),
        .rst_n(rst_n_0_1));
  Digital_Clock_cnt10_0_0 second_L
       (.carry(second_L_carry),
        .clk(Mux2to1_DF_1_out),
        .cnt(second_L_cnt),
        .rst_n(rst_n_0_1));
endmodule
