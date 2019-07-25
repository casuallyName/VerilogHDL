-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Sat Jun 22 14:33:21 2019
-- Host        : Casually running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top Digital_Clock_Mux2to1_DF_1_0 -prefix
--               Digital_Clock_Mux2to1_DF_1_0_ Digital_Clock_Mux2to1_DF_0_0_sim_netlist.vhdl
-- Design      : Digital_Clock_Mux2to1_DF_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Digital_Clock_Mux2to1_DF_1_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    sel : in STD_LOGIC;
    \out\ : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Digital_Clock_Mux2to1_DF_1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Digital_Clock_Mux2to1_DF_1_0 : entity is "Digital_Clock_Mux2to1_DF_0_0,Mux2to1_DF,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Digital_Clock_Mux2to1_DF_1_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of Digital_Clock_Mux2to1_DF_1_0 : entity is "Mux2to1_DF,Vivado 2017.4";
end Digital_Clock_Mux2to1_DF_1_0;

architecture STRUCTURE of Digital_Clock_Mux2to1_DF_1_0 is
begin
out_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => a,
      I1 => sel,
      I2 => b,
      O => \out\
    );
end STRUCTURE;
