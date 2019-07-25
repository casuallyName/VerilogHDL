-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Sat Jun 22 14:53:17 2019
-- Host        : Casually running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top Digital_Clock_clk_out_2_0 -prefix
--               Digital_Clock_clk_out_2_0_ Digital_Clock_clk_out_0_0_sim_netlist.vhdl
-- Design      : Digital_Clock_clk_out_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Digital_Clock_clk_out_2_0 is
  port (
    key : in STD_LOGIC;
    clk : in STD_LOGIC;
    \out\ : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Digital_Clock_clk_out_2_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Digital_Clock_clk_out_2_0 : entity is "Digital_Clock_clk_out_0_0,clk_out,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Digital_Clock_clk_out_2_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of Digital_Clock_clk_out_2_0 : entity is "clk_out,Vivado 2017.4";
end Digital_Clock_clk_out_2_0;

architecture STRUCTURE of Digital_Clock_clk_out_2_0 is
  signal \^key\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1";
begin
  \^key\ <= key;
  \out\ <= \^key\;
end STRUCTURE;
