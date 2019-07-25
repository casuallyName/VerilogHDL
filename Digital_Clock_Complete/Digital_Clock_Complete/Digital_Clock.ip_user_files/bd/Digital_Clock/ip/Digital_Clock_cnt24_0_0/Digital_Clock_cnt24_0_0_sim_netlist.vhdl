-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Sat Jun 15 14:53:27 2019
-- Host        : Casually running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/Desktop/Digital_Clock/Digital_Clock.srcs/sources_1/bd/Digital_Clock/ip/Digital_Clock_cnt24_0_0/Digital_Clock_cnt24_0_0_sim_netlist.vhdl
-- Design      : Digital_Clock_cnt24_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Digital_Clock_cnt24_0_0_counter_24 is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    data_H : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rst : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Digital_Clock_cnt24_0_0_counter_24 : entity is "counter_24";
end Digital_Clock_cnt24_0_0_counter_24;

architecture STRUCTURE of Digital_Clock_cnt24_0_0_counter_24 is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^data_h\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \data_H[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_L[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_L[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_L[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_L[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_L[3]_i_2_n_0\ : STD_LOGIC;
  signal \data_L[3]_i_3_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_H[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_H[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \data_H[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_H[3]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \data_L[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \data_L[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \data_L[3]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \data_L[3]_i_3\ : label is "soft_lutpair1";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  data_H(3 downto 0) <= \^data_h\(3 downto 0);
\data_H[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^data_h\(0),
      O => p_0_in(0)
    );
\data_H[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^data_h\(0),
      I1 => \^data_h\(1),
      O => p_0_in(1)
    );
\data_H[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^data_h\(0),
      I1 => \^data_h\(1),
      I2 => \^data_h\(2),
      O => p_0_in(2)
    );
\data_H[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(3),
      O => \data_H[3]_i_1_n_0\
    );
\data_H[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^data_h\(1),
      I1 => \^data_h\(0),
      I2 => \^data_h\(2),
      I3 => \^data_h\(3),
      O => p_0_in(3)
    );
\data_H_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_H[3]_i_1_n_0\,
      D => p_0_in(0),
      Q => \^data_h\(0),
      R => \data_L[3]_i_1_n_0\
    );
\data_H_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_H[3]_i_1_n_0\,
      D => p_0_in(1),
      Q => \^data_h\(1),
      R => \data_L[3]_i_1_n_0\
    );
\data_H_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_H[3]_i_1_n_0\,
      D => p_0_in(2),
      Q => \^data_h\(2),
      R => \data_L[3]_i_1_n_0\
    );
\data_H_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_H[3]_i_1_n_0\,
      D => p_0_in(3),
      Q => \^data_h\(3),
      R => \data_L[3]_i_1_n_0\
    );
\data_L[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \data_L[0]_i_1_n_0\
    );
\data_L[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2C3C"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(3),
      O => \data_L[1]_i_1_n_0\
    );
\data_L[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => \data_L[2]_i_1_n_0\
    );
\data_L[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => \data_L[3]_i_3_n_0\,
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => \^data_h\(0),
      I4 => \^data_h\(2),
      I5 => rst,
      O => \data_L[3]_i_1_n_0\
    );
\data_L[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6F80"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(3),
      O => \data_L[3]_i_2_n_0\
    );
\data_L[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^data_h\(3),
      I2 => \^q\(0),
      I3 => \^data_h\(1),
      O => \data_L[3]_i_3_n_0\
    );
\data_L_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \data_L[0]_i_1_n_0\,
      Q => \^q\(0),
      R => \data_L[3]_i_1_n_0\
    );
\data_L_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \data_L[1]_i_1_n_0\,
      Q => \^q\(1),
      R => \data_L[3]_i_1_n_0\
    );
\data_L_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \data_L[2]_i_1_n_0\,
      Q => \^q\(2),
      R => \data_L[3]_i_1_n_0\
    );
\data_L_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \data_L[3]_i_2_n_0\,
      Q => \^q\(3),
      R => \data_L[3]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Digital_Clock_cnt24_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    data_L : out STD_LOGIC_VECTOR ( 3 downto 0 );
    data_H : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Digital_Clock_cnt24_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Digital_Clock_cnt24_0_0 : entity is "Digital_Clock_cnt24_0_0,counter_24,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Digital_Clock_cnt24_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of Digital_Clock_cnt24_0_0 : entity is "counter_24,Vivado 2017.4";
end Digital_Clock_cnt24_0_0;

architecture STRUCTURE of Digital_Clock_cnt24_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW";
begin
inst: entity work.Digital_Clock_cnt24_0_0_counter_24
     port map (
      Q(3 downto 0) => data_L(3 downto 0),
      clk => clk,
      data_H(3 downto 0) => data_H(3 downto 0),
      rst => rst
    );
end STRUCTURE;
