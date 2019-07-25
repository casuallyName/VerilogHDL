-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Wed Jun 26 18:04:07 2019
-- Host        : Casually running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Desktop/Digital_Clock_Complete/Digital_Clock_Complete/Digital_Clock.srcs/sources_1/bd/Digital_Clock/ip/Digital_Clock_cnt24_0_1/Digital_Clock_cnt24_0_1_stub.vhdl
-- Design      : Digital_Clock_cnt24_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Digital_Clock_cnt24_0_1 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    data_L : out STD_LOGIC_VECTOR ( 3 downto 0 );
    data_H : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end Digital_Clock_cnt24_0_1;

architecture stub of Digital_Clock_cnt24_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,data_L[3:0],data_H[3:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "cnt24,Vivado 2017.4";
begin
end;
