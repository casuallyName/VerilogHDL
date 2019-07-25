//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Wed Jun 26 18:02:33 2019
//Host        : Casually running 64-bit major release  (build 9200)
//Command     : generate_target Digital_Clock_wrapper.bd
//Design      : Digital_Clock_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Digital_Clock_wrapper
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
  input clk;
  input key_0;
  input key_1;
  input key_2;
  input rst;
  input sel_0;

  wire [7:0]LED0;
  wire [7:0]LED1;
  wire [3:0]LED_BIT0;
  wire [3:0]LED_BIT1;
  wire clk;
  wire key_0;
  wire key_1;
  wire key_2;
  wire rst;
  wire sel_0;

  Digital_Clock Digital_Clock_i
       (.LED0(LED0),
        .LED1(LED1),
        .LED_BIT0(LED_BIT0),
        .LED_BIT1(LED_BIT1),
        .clk(clk),
        .key_0(key_0),
        .key_1(key_1),
        .key_2(key_2),
        .rst(rst),
        .sel_0(sel_0));
endmodule
