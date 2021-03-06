-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Sat Jun 22 14:33:21 2019
-- Host        : Casually running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top Digital_Clock_Mux2to1_DF_1_0 -prefix
--               Digital_Clock_Mux2to1_DF_1_0_ Digital_Clock_Mux2to1_DF_0_0_stub.vhdl
-- Design      : Digital_Clock_Mux2to1_DF_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Digital_Clock_Mux2to1_DF_1_0 is
  Port ( 
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    sel : in STD_LOGIC;
    \out\ : out STD_LOGIC
  );

end Digital_Clock_Mux2to1_DF_1_0;

architecture stub of Digital_Clock_Mux2to1_DF_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "a,b,sel,\out\";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "Mux2to1_DF,Vivado 2017.4";
begin
end;
