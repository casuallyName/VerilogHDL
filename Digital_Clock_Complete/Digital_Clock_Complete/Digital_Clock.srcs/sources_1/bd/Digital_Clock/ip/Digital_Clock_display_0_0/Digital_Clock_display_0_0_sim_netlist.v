// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Sat Jun 15 14:53:27 2019
// Host        : Casually running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Desktop/Digital_Clock/Digital_Clock.srcs/sources_1/bd/Digital_Clock/ip/Digital_Clock_display_0_0/Digital_Clock_display_0_0_sim_netlist.v
// Design      : Digital_Clock_display_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Digital_Clock_display_0_0,display,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "display,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module Digital_Clock_display_0_0
   (clk,
    data1,
    data2,
    data3,
    data4,
    en,
    led);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1" *) input clk;
  input [3:0]data1;
  input [3:0]data2;
  input [3:0]data3;
  input [3:0]data4;
  output [3:0]en;
  output [7:0]led;

  wire \<const0> ;
  wire clk;
  wire [3:0]data1;
  wire [3:0]data2;
  wire [3:0]data3;
  wire [3:0]data4;
  wire [3:0]en;
  wire [6:0]\^led ;

  assign led[7] = \<const0> ;
  assign led[6:0] = \^led [6:0];
  GND GND
       (.G(\<const0> ));
  Digital_Clock_display_0_0_display inst
       (.clk(clk),
        .data1(data1),
        .data2(data2),
        .data3(data3),
        .data4(data4),
        .en(en),
        .led(\^led ));
endmodule

(* ORIG_REF_NAME = "display" *) 
module Digital_Clock_display_0_0_display
   (led,
    en,
    clk,
    data3,
    data4,
    data1,
    data2);
  output [6:0]led;
  output [3:0]en;
  input clk;
  input [3:0]data3;
  input [3:0]data4;
  input [3:0]data1;
  input [3:0]data2;

  wire clk;
  wire \cursel[0]_i_1_n_0 ;
  wire \cursel[1]_i_1_n_0 ;
  wire \cursel_reg_n_0_[0] ;
  wire \cursel_reg_n_0_[1] ;
  wire [3:0]dat__29;
  wire [31:1]data0;
  wire [3:0]data1;
  wire [3:0]data2;
  wire [3:0]data3;
  wire [3:0]data4;
  wire [3:0]en;
  wire [6:0]led;
  wire [31:0]selcnt;
  wire \selcnt[31]_i_10_n_0 ;
  wire \selcnt[31]_i_1_n_0 ;
  wire \selcnt[31]_i_3_n_0 ;
  wire \selcnt[31]_i_4_n_0 ;
  wire \selcnt[31]_i_5_n_0 ;
  wire \selcnt[31]_i_6_n_0 ;
  wire \selcnt[31]_i_7_n_0 ;
  wire \selcnt[31]_i_8_n_0 ;
  wire \selcnt[31]_i_9_n_0 ;
  wire [0:0]selcnt_0;
  wire \selcnt_reg[12]_i_1_n_0 ;
  wire \selcnt_reg[12]_i_1_n_1 ;
  wire \selcnt_reg[12]_i_1_n_2 ;
  wire \selcnt_reg[12]_i_1_n_3 ;
  wire \selcnt_reg[16]_i_1_n_0 ;
  wire \selcnt_reg[16]_i_1_n_1 ;
  wire \selcnt_reg[16]_i_1_n_2 ;
  wire \selcnt_reg[16]_i_1_n_3 ;
  wire \selcnt_reg[20]_i_1_n_0 ;
  wire \selcnt_reg[20]_i_1_n_1 ;
  wire \selcnt_reg[20]_i_1_n_2 ;
  wire \selcnt_reg[20]_i_1_n_3 ;
  wire \selcnt_reg[24]_i_1_n_0 ;
  wire \selcnt_reg[24]_i_1_n_1 ;
  wire \selcnt_reg[24]_i_1_n_2 ;
  wire \selcnt_reg[24]_i_1_n_3 ;
  wire \selcnt_reg[28]_i_1_n_0 ;
  wire \selcnt_reg[28]_i_1_n_1 ;
  wire \selcnt_reg[28]_i_1_n_2 ;
  wire \selcnt_reg[28]_i_1_n_3 ;
  wire \selcnt_reg[31]_i_2_n_2 ;
  wire \selcnt_reg[31]_i_2_n_3 ;
  wire \selcnt_reg[4]_i_1_n_0 ;
  wire \selcnt_reg[4]_i_1_n_1 ;
  wire \selcnt_reg[4]_i_1_n_2 ;
  wire \selcnt_reg[4]_i_1_n_3 ;
  wire \selcnt_reg[8]_i_1_n_0 ;
  wire \selcnt_reg[8]_i_1_n_1 ;
  wire \selcnt_reg[8]_i_1_n_2 ;
  wire \selcnt_reg[8]_i_1_n_3 ;
  wire [3:2]\NLW_selcnt_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_selcnt_reg[31]_i_2_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \cursel[0]_i_1 
       (.I0(\selcnt[31]_i_6_n_0 ),
        .I1(\selcnt[31]_i_5_n_0 ),
        .I2(\selcnt[31]_i_4_n_0 ),
        .I3(\selcnt[31]_i_3_n_0 ),
        .I4(\cursel_reg_n_0_[0] ),
        .O(\cursel[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFD00000002)) 
    \cursel[1]_i_1 
       (.I0(\cursel_reg_n_0_[0] ),
        .I1(\selcnt[31]_i_3_n_0 ),
        .I2(\selcnt[31]_i_4_n_0 ),
        .I3(\selcnt[31]_i_5_n_0 ),
        .I4(\selcnt[31]_i_6_n_0 ),
        .I5(\cursel_reg_n_0_[1] ),
        .O(\cursel[1]_i_1_n_0 ));
  FDRE \cursel_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\cursel[0]_i_1_n_0 ),
        .Q(\cursel_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \cursel_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\cursel[1]_i_1_n_0 ),
        .Q(\cursel_reg_n_0_[1] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \en[0]_INST_0 
       (.I0(\cursel_reg_n_0_[0] ),
        .I1(\cursel_reg_n_0_[1] ),
        .O(en[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \en[1]_INST_0 
       (.I0(\cursel_reg_n_0_[1] ),
        .I1(\cursel_reg_n_0_[0] ),
        .O(en[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \en[2]_INST_0 
       (.I0(\cursel_reg_n_0_[0] ),
        .I1(\cursel_reg_n_0_[1] ),
        .O(en[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \en[3]_INST_0 
       (.I0(\cursel_reg_n_0_[0] ),
        .I1(\cursel_reg_n_0_[1] ),
        .O(en[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h3F6D)) 
    \led[0]_INST_0 
       (.I0(dat__29[2]),
        .I1(dat__29[3]),
        .I2(dat__29[0]),
        .I3(dat__29[1]),
        .O(led[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h497F)) 
    \led[1]_INST_0 
       (.I0(dat__29[1]),
        .I1(dat__29[0]),
        .I2(dat__29[3]),
        .I3(dat__29[2]),
        .O(led[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h76F7)) 
    \led[2]_INST_0 
       (.I0(dat__29[2]),
        .I1(dat__29[3]),
        .I2(dat__29[0]),
        .I3(dat__29[1]),
        .O(led[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h5BED)) 
    \led[3]_INST_0 
       (.I0(dat__29[2]),
        .I1(dat__29[3]),
        .I2(dat__29[0]),
        .I3(dat__29[1]),
        .O(led[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h4F8D)) 
    \led[4]_INST_0 
       (.I0(dat__29[2]),
        .I1(dat__29[3]),
        .I2(dat__29[0]),
        .I3(dat__29[1]),
        .O(led[4]));
  LUT4 #(
    .INIT(16'h3F4D)) 
    \led[5]_INST_0 
       (.I0(dat__29[1]),
        .I1(dat__29[2]),
        .I2(dat__29[0]),
        .I3(dat__29[3]),
        .O(led[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFB6E)) 
    \led[6]_INST_0 
       (.I0(dat__29[1]),
        .I1(dat__29[2]),
        .I2(dat__29[0]),
        .I3(dat__29[3]),
        .O(led[6]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \led[6]_INST_0_i_1 
       (.I0(data3[1]),
        .I1(data4[1]),
        .I2(\cursel_reg_n_0_[1] ),
        .I3(\cursel_reg_n_0_[0] ),
        .I4(data1[1]),
        .I5(data2[1]),
        .O(dat__29[1]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \led[6]_INST_0_i_2 
       (.I0(data3[2]),
        .I1(data4[2]),
        .I2(\cursel_reg_n_0_[1] ),
        .I3(\cursel_reg_n_0_[0] ),
        .I4(data1[2]),
        .I5(data2[2]),
        .O(dat__29[2]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \led[6]_INST_0_i_3 
       (.I0(data3[0]),
        .I1(data4[0]),
        .I2(\cursel_reg_n_0_[1] ),
        .I3(\cursel_reg_n_0_[0] ),
        .I4(data1[0]),
        .I5(data2[0]),
        .O(dat__29[0]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \led[6]_INST_0_i_4 
       (.I0(data3[3]),
        .I1(data4[3]),
        .I2(\cursel_reg_n_0_[1] ),
        .I3(\cursel_reg_n_0_[0] ),
        .I4(data1[3]),
        .I5(data2[3]),
        .O(dat__29[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \selcnt[0]_i_1 
       (.I0(selcnt[0]),
        .O(selcnt_0));
  LUT4 #(
    .INIT(16'h0001)) 
    \selcnt[31]_i_1 
       (.I0(\selcnt[31]_i_3_n_0 ),
        .I1(\selcnt[31]_i_4_n_0 ),
        .I2(\selcnt[31]_i_5_n_0 ),
        .I3(\selcnt[31]_i_6_n_0 ),
        .O(\selcnt[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \selcnt[31]_i_10 
       (.I0(selcnt[21]),
        .I1(selcnt[20]),
        .I2(selcnt[23]),
        .I3(selcnt[22]),
        .O(\selcnt[31]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \selcnt[31]_i_3 
       (.I0(selcnt[10]),
        .I1(selcnt[11]),
        .I2(selcnt[8]),
        .I3(selcnt[9]),
        .I4(\selcnt[31]_i_7_n_0 ),
        .O(\selcnt[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \selcnt[31]_i_4 
       (.I0(selcnt[2]),
        .I1(selcnt[3]),
        .I2(selcnt[0]),
        .I3(selcnt[1]),
        .I4(\selcnt[31]_i_8_n_0 ),
        .O(\selcnt[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \selcnt[31]_i_5 
       (.I0(selcnt[26]),
        .I1(selcnt[27]),
        .I2(selcnt[24]),
        .I3(selcnt[25]),
        .I4(\selcnt[31]_i_9_n_0 ),
        .O(\selcnt[31]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    \selcnt[31]_i_6 
       (.I0(selcnt[18]),
        .I1(selcnt[19]),
        .I2(selcnt[16]),
        .I3(selcnt[17]),
        .I4(\selcnt[31]_i_10_n_0 ),
        .O(\selcnt[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \selcnt[31]_i_7 
       (.I0(selcnt[12]),
        .I1(selcnt[13]),
        .I2(selcnt[15]),
        .I3(selcnt[14]),
        .O(\selcnt[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \selcnt[31]_i_8 
       (.I0(selcnt[5]),
        .I1(selcnt[4]),
        .I2(selcnt[7]),
        .I3(selcnt[6]),
        .O(\selcnt[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \selcnt[31]_i_9 
       (.I0(selcnt[29]),
        .I1(selcnt[28]),
        .I2(selcnt[31]),
        .I3(selcnt[30]),
        .O(\selcnt[31]_i_9_n_0 ));
  FDRE \selcnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(selcnt_0),
        .Q(selcnt[0]),
        .R(1'b0));
  FDRE \selcnt_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[10]),
        .Q(selcnt[10]),
        .R(\selcnt[31]_i_1_n_0 ));
  FDRE \selcnt_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[11]),
        .Q(selcnt[11]),
        .R(\selcnt[31]_i_1_n_0 ));
  FDRE \selcnt_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[12]),
        .Q(selcnt[12]),
        .R(\selcnt[31]_i_1_n_0 ));
  CARRY4 \selcnt_reg[12]_i_1 
       (.CI(\selcnt_reg[8]_i_1_n_0 ),
        .CO({\selcnt_reg[12]_i_1_n_0 ,\selcnt_reg[12]_i_1_n_1 ,\selcnt_reg[12]_i_1_n_2 ,\selcnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(selcnt[12:9]));
  FDRE \selcnt_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[13]),
        .Q(selcnt[13]),
        .R(\selcnt[31]_i_1_n_0 ));
  FDRE \selcnt_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[14]),
        .Q(selcnt[14]),
        .R(\selcnt[31]_i_1_n_0 ));
  FDRE \selcnt_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[15]),
        .Q(selcnt[15]),
        .R(\selcnt[31]_i_1_n_0 ));
  FDRE \selcnt_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[16]),
        .Q(selcnt[16]),
        .R(\selcnt[31]_i_1_n_0 ));
  CARRY4 \selcnt_reg[16]_i_1 
       (.CI(\selcnt_reg[12]_i_1_n_0 ),
        .CO({\selcnt_reg[16]_i_1_n_0 ,\selcnt_reg[16]_i_1_n_1 ,\selcnt_reg[16]_i_1_n_2 ,\selcnt_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(selcnt[16:13]));
  FDRE \selcnt_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[17]),
        .Q(selcnt[17]),
        .R(\selcnt[31]_i_1_n_0 ));
  FDRE \selcnt_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[18]),
        .Q(selcnt[18]),
        .R(\selcnt[31]_i_1_n_0 ));
  FDRE \selcnt_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[19]),
        .Q(selcnt[19]),
        .R(\selcnt[31]_i_1_n_0 ));
  FDRE \selcnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[1]),
        .Q(selcnt[1]),
        .R(\selcnt[31]_i_1_n_0 ));
  FDRE \selcnt_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[20]),
        .Q(selcnt[20]),
        .R(\selcnt[31]_i_1_n_0 ));
  CARRY4 \selcnt_reg[20]_i_1 
       (.CI(\selcnt_reg[16]_i_1_n_0 ),
        .CO({\selcnt_reg[20]_i_1_n_0 ,\selcnt_reg[20]_i_1_n_1 ,\selcnt_reg[20]_i_1_n_2 ,\selcnt_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S(selcnt[20:17]));
  FDRE \selcnt_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[21]),
        .Q(selcnt[21]),
        .R(\selcnt[31]_i_1_n_0 ));
  FDRE \selcnt_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[22]),
        .Q(selcnt[22]),
        .R(\selcnt[31]_i_1_n_0 ));
  FDRE \selcnt_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[23]),
        .Q(selcnt[23]),
        .R(\selcnt[31]_i_1_n_0 ));
  FDRE \selcnt_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[24]),
        .Q(selcnt[24]),
        .R(\selcnt[31]_i_1_n_0 ));
  CARRY4 \selcnt_reg[24]_i_1 
       (.CI(\selcnt_reg[20]_i_1_n_0 ),
        .CO({\selcnt_reg[24]_i_1_n_0 ,\selcnt_reg[24]_i_1_n_1 ,\selcnt_reg[24]_i_1_n_2 ,\selcnt_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S(selcnt[24:21]));
  FDRE \selcnt_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[25]),
        .Q(selcnt[25]),
        .R(\selcnt[31]_i_1_n_0 ));
  FDRE \selcnt_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[26]),
        .Q(selcnt[26]),
        .R(\selcnt[31]_i_1_n_0 ));
  FDRE \selcnt_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[27]),
        .Q(selcnt[27]),
        .R(\selcnt[31]_i_1_n_0 ));
  FDRE \selcnt_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[28]),
        .Q(selcnt[28]),
        .R(\selcnt[31]_i_1_n_0 ));
  CARRY4 \selcnt_reg[28]_i_1 
       (.CI(\selcnt_reg[24]_i_1_n_0 ),
        .CO({\selcnt_reg[28]_i_1_n_0 ,\selcnt_reg[28]_i_1_n_1 ,\selcnt_reg[28]_i_1_n_2 ,\selcnt_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S(selcnt[28:25]));
  FDRE \selcnt_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[29]),
        .Q(selcnt[29]),
        .R(\selcnt[31]_i_1_n_0 ));
  FDRE \selcnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[2]),
        .Q(selcnt[2]),
        .R(\selcnt[31]_i_1_n_0 ));
  FDRE \selcnt_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[30]),
        .Q(selcnt[30]),
        .R(\selcnt[31]_i_1_n_0 ));
  FDRE \selcnt_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[31]),
        .Q(selcnt[31]),
        .R(\selcnt[31]_i_1_n_0 ));
  CARRY4 \selcnt_reg[31]_i_2 
       (.CI(\selcnt_reg[28]_i_1_n_0 ),
        .CO({\NLW_selcnt_reg[31]_i_2_CO_UNCONNECTED [3:2],\selcnt_reg[31]_i_2_n_2 ,\selcnt_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_selcnt_reg[31]_i_2_O_UNCONNECTED [3],data0[31:29]}),
        .S({1'b0,selcnt[31:29]}));
  FDRE \selcnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[3]),
        .Q(selcnt[3]),
        .R(\selcnt[31]_i_1_n_0 ));
  FDRE \selcnt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[4]),
        .Q(selcnt[4]),
        .R(\selcnt[31]_i_1_n_0 ));
  CARRY4 \selcnt_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\selcnt_reg[4]_i_1_n_0 ,\selcnt_reg[4]_i_1_n_1 ,\selcnt_reg[4]_i_1_n_2 ,\selcnt_reg[4]_i_1_n_3 }),
        .CYINIT(selcnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(selcnt[4:1]));
  FDRE \selcnt_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[5]),
        .Q(selcnt[5]),
        .R(\selcnt[31]_i_1_n_0 ));
  FDRE \selcnt_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[6]),
        .Q(selcnt[6]),
        .R(\selcnt[31]_i_1_n_0 ));
  FDRE \selcnt_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[7]),
        .Q(selcnt[7]),
        .R(\selcnt[31]_i_1_n_0 ));
  FDRE \selcnt_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[8]),
        .Q(selcnt[8]),
        .R(\selcnt[31]_i_1_n_0 ));
  CARRY4 \selcnt_reg[8]_i_1 
       (.CI(\selcnt_reg[4]_i_1_n_0 ),
        .CO({\selcnt_reg[8]_i_1_n_0 ,\selcnt_reg[8]_i_1_n_1 ,\selcnt_reg[8]_i_1_n_2 ,\selcnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(selcnt[8:5]));
  FDRE \selcnt_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(data0[9]),
        .Q(selcnt[9]),
        .R(\selcnt[31]_i_1_n_0 ));
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
