-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Sat Jun 15 14:53:27 2019
-- Host        : Casually running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Desktop/Digital_Clock/Digital_Clock.srcs/sources_1/bd/Digital_Clock/ip/Digital_Clock_display_0_0/Digital_Clock_display_0_0_stub.vhdl
-- Design      : Digital_Clock_display_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Digital_Clock_display_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    data1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data3 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data4 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    en : out STD_LOGIC_VECTOR ( 3 downto 0 );
    led : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end Digital_Clock_display_0_0;

architecture stub of Digital_Clock_display_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,data1[3:0],data2[3:0],data3[3:0],data4[3:0],en[3:0],led[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "display,Vivado 2017.4";
begin
end;
