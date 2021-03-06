-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Sat Jun 15 14:53:35 2019
-- Host        : Casually running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top Digital_Clock_xlconstant_3_0 -prefix
--               Digital_Clock_xlconstant_3_0_ Digital_Clock_xlconstant_0_0_stub.vhdl
-- Design      : Digital_Clock_xlconstant_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Digital_Clock_xlconstant_3_0 is
  Port ( 
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end Digital_Clock_xlconstant_3_0;

architecture stub of Digital_Clock_xlconstant_3_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "dout[0:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "xlconstant_v1_1_3_xlconstant,Vivado 2017.4";
begin
end;
