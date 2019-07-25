-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Sat Jun 15 14:53:27 2019
-- Host        : Casually running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/Desktop/Digital_Clock/Digital_Clock.srcs/sources_1/bd/Digital_Clock/ip/Digital_Clock_display_0_0/Digital_Clock_display_0_0_sim_netlist.vhdl
-- Design      : Digital_Clock_display_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Digital_Clock_display_0_0_display is
  port (
    led : out STD_LOGIC_VECTOR ( 6 downto 0 );
    en : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk : in STD_LOGIC;
    data3 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data4 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data2 : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Digital_Clock_display_0_0_display : entity is "display";
end Digital_Clock_display_0_0_display;

architecture STRUCTURE of Digital_Clock_display_0_0_display is
  signal \cursel[0]_i_1_n_0\ : STD_LOGIC;
  signal \cursel[1]_i_1_n_0\ : STD_LOGIC;
  signal \cursel_reg_n_0_[0]\ : STD_LOGIC;
  signal \cursel_reg_n_0_[1]\ : STD_LOGIC;
  signal \dat__29\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal data0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal selcnt : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \selcnt[31]_i_10_n_0\ : STD_LOGIC;
  signal \selcnt[31]_i_1_n_0\ : STD_LOGIC;
  signal \selcnt[31]_i_3_n_0\ : STD_LOGIC;
  signal \selcnt[31]_i_4_n_0\ : STD_LOGIC;
  signal \selcnt[31]_i_5_n_0\ : STD_LOGIC;
  signal \selcnt[31]_i_6_n_0\ : STD_LOGIC;
  signal \selcnt[31]_i_7_n_0\ : STD_LOGIC;
  signal \selcnt[31]_i_8_n_0\ : STD_LOGIC;
  signal \selcnt[31]_i_9_n_0\ : STD_LOGIC;
  signal selcnt_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \selcnt_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \selcnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \selcnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \selcnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \selcnt_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \selcnt_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \selcnt_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \selcnt_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \selcnt_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \selcnt_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \selcnt_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \selcnt_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \selcnt_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \selcnt_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \selcnt_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \selcnt_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \selcnt_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \selcnt_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \selcnt_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \selcnt_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \selcnt_reg[31]_i_2_n_2\ : STD_LOGIC;
  signal \selcnt_reg[31]_i_2_n_3\ : STD_LOGIC;
  signal \selcnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \selcnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \selcnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \selcnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \selcnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \selcnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \selcnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \selcnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \NLW_selcnt_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_selcnt_reg[31]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \en[0]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \en[1]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \en[2]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \en[3]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \led[0]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \led[1]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \led[2]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \led[3]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \led[4]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \led[6]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \selcnt[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \selcnt[31]_i_4\ : label is "soft_lutpair0";
begin
\cursel[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => \selcnt[31]_i_6_n_0\,
      I1 => \selcnt[31]_i_5_n_0\,
      I2 => \selcnt[31]_i_4_n_0\,
      I3 => \selcnt[31]_i_3_n_0\,
      I4 => \cursel_reg_n_0_[0]\,
      O => \cursel[0]_i_1_n_0\
    );
\cursel[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000002"
    )
        port map (
      I0 => \cursel_reg_n_0_[0]\,
      I1 => \selcnt[31]_i_3_n_0\,
      I2 => \selcnt[31]_i_4_n_0\,
      I3 => \selcnt[31]_i_5_n_0\,
      I4 => \selcnt[31]_i_6_n_0\,
      I5 => \cursel_reg_n_0_[1]\,
      O => \cursel[1]_i_1_n_0\
    );
\cursel_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cursel[0]_i_1_n_0\,
      Q => \cursel_reg_n_0_[0]\,
      R => '0'
    );
\cursel_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cursel[1]_i_1_n_0\,
      Q => \cursel_reg_n_0_[1]\,
      R => '0'
    );
\en[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \cursel_reg_n_0_[0]\,
      I1 => \cursel_reg_n_0_[1]\,
      O => en(0)
    );
\en[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cursel_reg_n_0_[1]\,
      I1 => \cursel_reg_n_0_[0]\,
      O => en(1)
    );
\en[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cursel_reg_n_0_[0]\,
      I1 => \cursel_reg_n_0_[1]\,
      O => en(2)
    );
\en[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cursel_reg_n_0_[0]\,
      I1 => \cursel_reg_n_0_[1]\,
      O => en(3)
    );
\led[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3F6D"
    )
        port map (
      I0 => \dat__29\(2),
      I1 => \dat__29\(3),
      I2 => \dat__29\(0),
      I3 => \dat__29\(1),
      O => led(0)
    );
\led[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"497F"
    )
        port map (
      I0 => \dat__29\(1),
      I1 => \dat__29\(0),
      I2 => \dat__29\(3),
      I3 => \dat__29\(2),
      O => led(1)
    );
\led[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"76F7"
    )
        port map (
      I0 => \dat__29\(2),
      I1 => \dat__29\(3),
      I2 => \dat__29\(0),
      I3 => \dat__29\(1),
      O => led(2)
    );
\led[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5BED"
    )
        port map (
      I0 => \dat__29\(2),
      I1 => \dat__29\(3),
      I2 => \dat__29\(0),
      I3 => \dat__29\(1),
      O => led(3)
    );
\led[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F8D"
    )
        port map (
      I0 => \dat__29\(2),
      I1 => \dat__29\(3),
      I2 => \dat__29\(0),
      I3 => \dat__29\(1),
      O => led(4)
    );
\led[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3F4D"
    )
        port map (
      I0 => \dat__29\(1),
      I1 => \dat__29\(2),
      I2 => \dat__29\(0),
      I3 => \dat__29\(3),
      O => led(5)
    );
\led[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB6E"
    )
        port map (
      I0 => \dat__29\(1),
      I1 => \dat__29\(2),
      I2 => \dat__29\(0),
      I3 => \dat__29\(3),
      O => led(6)
    );
\led[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data3(1),
      I1 => data4(1),
      I2 => \cursel_reg_n_0_[1]\,
      I3 => \cursel_reg_n_0_[0]\,
      I4 => data1(1),
      I5 => data2(1),
      O => \dat__29\(1)
    );
\led[6]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data3(2),
      I1 => data4(2),
      I2 => \cursel_reg_n_0_[1]\,
      I3 => \cursel_reg_n_0_[0]\,
      I4 => data1(2),
      I5 => data2(2),
      O => \dat__29\(2)
    );
\led[6]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data3(0),
      I1 => data4(0),
      I2 => \cursel_reg_n_0_[1]\,
      I3 => \cursel_reg_n_0_[0]\,
      I4 => data1(0),
      I5 => data2(0),
      O => \dat__29\(0)
    );
\led[6]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data3(3),
      I1 => data4(3),
      I2 => \cursel_reg_n_0_[1]\,
      I3 => \cursel_reg_n_0_[0]\,
      I4 => data1(3),
      I5 => data2(3),
      O => \dat__29\(3)
    );
\selcnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => selcnt(0),
      O => selcnt_0(0)
    );
\selcnt[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \selcnt[31]_i_3_n_0\,
      I1 => \selcnt[31]_i_4_n_0\,
      I2 => \selcnt[31]_i_5_n_0\,
      I3 => \selcnt[31]_i_6_n_0\,
      O => \selcnt[31]_i_1_n_0\
    );
\selcnt[31]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => selcnt(21),
      I1 => selcnt(20),
      I2 => selcnt(23),
      I3 => selcnt(22),
      O => \selcnt[31]_i_10_n_0\
    );
\selcnt[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => selcnt(10),
      I1 => selcnt(11),
      I2 => selcnt(8),
      I3 => selcnt(9),
      I4 => \selcnt[31]_i_7_n_0\,
      O => \selcnt[31]_i_3_n_0\
    );
\selcnt[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => selcnt(2),
      I1 => selcnt(3),
      I2 => selcnt(0),
      I3 => selcnt(1),
      I4 => \selcnt[31]_i_8_n_0\,
      O => \selcnt[31]_i_4_n_0\
    );
\selcnt[31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => selcnt(26),
      I1 => selcnt(27),
      I2 => selcnt(24),
      I3 => selcnt(25),
      I4 => \selcnt[31]_i_9_n_0\,
      O => \selcnt[31]_i_5_n_0\
    );
\selcnt[31]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEFFF"
    )
        port map (
      I0 => selcnt(18),
      I1 => selcnt(19),
      I2 => selcnt(16),
      I3 => selcnt(17),
      I4 => \selcnt[31]_i_10_n_0\,
      O => \selcnt[31]_i_6_n_0\
    );
\selcnt[31]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => selcnt(12),
      I1 => selcnt(13),
      I2 => selcnt(15),
      I3 => selcnt(14),
      O => \selcnt[31]_i_7_n_0\
    );
\selcnt[31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => selcnt(5),
      I1 => selcnt(4),
      I2 => selcnt(7),
      I3 => selcnt(6),
      O => \selcnt[31]_i_8_n_0\
    );
\selcnt[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => selcnt(29),
      I1 => selcnt(28),
      I2 => selcnt(31),
      I3 => selcnt(30),
      O => \selcnt[31]_i_9_n_0\
    );
\selcnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => selcnt_0(0),
      Q => selcnt(0),
      R => '0'
    );
\selcnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => data0(10),
      Q => selcnt(10),
      R => \selcnt[31]_i_1_n_0\
    );
\selcnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => data0(11),
      Q => selcnt(11),
      R => \selcnt[31]_i_1_n_0\
    );
\selcnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => data0(12),
      Q => selcnt(12),
      R => \selcnt[31]_i_1_n_0\
    );
\selcnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \selcnt_reg[8]_i_1_n_0\,
      CO(3) => \selcnt_reg[12]_i_1_n_0\,
      CO(2) => \selcnt_reg[12]_i_1_n_1\,
      CO(1) => \selcnt_reg[12]_i_1_n_2\,
      CO(0) => \selcnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => selcnt(12 downto 9)
    );
\selcnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => data0(13),
      Q => selcnt(13),
      R => \selcnt[31]_i_1_n_0\
    );
\selcnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => data0(14),
      Q => selcnt(14),
      R => \selcnt[31]_i_1_n_0\
    );
\selcnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => data0(15),
      Q => selcnt(15),
      R => \selcnt[31]_i_1_n_0\
    );
\selcnt_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => data0(16),
      Q => selcnt(16),
      R => \selcnt[31]_i_1_n_0\
    );
\selcnt_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \selcnt_reg[12]_i_1_n_0\,
      CO(3) => \selcnt_reg[16]_i_1_n_0\,
      CO(2) => \selcnt_reg[16]_i_1_n_1\,
      CO(1) => \selcnt_reg[16]_i_1_n_2\,
      CO(0) => \selcnt_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3 downto 0) => selcnt(16 downto 13)
    );
\selcnt_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => data0(17),
      Q => selcnt(17),
      R => \selcnt[31]_i_1_n_0\
    );
\selcnt_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => data0(18),
      Q => selcnt(18),
      R => \selcnt[31]_i_1_n_0\
    );
\selcnt_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => data0(19),
      Q => selcnt(19),
      R => \selcnt[31]_i_1_n_0\
    );
\selcnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => data0(1),
      Q => selcnt(1),
      R => \selcnt[31]_i_1_n_0\
    );
\selcnt_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => data0(20),
      Q => selcnt(20),
      R => \selcnt[31]_i_1_n_0\
    );
\selcnt_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \selcnt_reg[16]_i_1_n_0\,
      CO(3) => \selcnt_reg[20]_i_1_n_0\,
      CO(2) => \selcnt_reg[20]_i_1_n_1\,
      CO(1) => \selcnt_reg[20]_i_1_n_2\,
      CO(0) => \selcnt_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3 downto 0) => selcnt(20 downto 17)
    );
\selcnt_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => data0(21),
      Q => selcnt(21),
      R => \selcnt[31]_i_1_n_0\
    );
\selcnt_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => data0(22),
      Q => selcnt(22),
      R => \selcnt[31]_i_1_n_0\
    );
\selcnt_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => data0(23),
      Q => selcnt(23),
      R => \selcnt[31]_i_1_n_0\
    );
\selcnt_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => data0(24),
      Q => selcnt(24),
      R => \selcnt[31]_i_1_n_0\
    );
\selcnt_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \selcnt_reg[20]_i_1_n_0\,
      CO(3) => \selcnt_reg[24]_i_1_n_0\,
      CO(2) => \selcnt_reg[24]_i_1_n_1\,
      CO(1) => \selcnt_reg[24]_i_1_n_2\,
      CO(0) => \selcnt_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(24 downto 21),
      S(3 downto 0) => selcnt(24 downto 21)
    );
\selcnt_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => data0(25),
      Q => selcnt(25),
      R => \selcnt[31]_i_1_n_0\
    );
\selcnt_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => data0(26),
      Q => selcnt(26),
      R => \selcnt[31]_i_1_n_0\
    );
\selcnt_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => data0(27),
      Q => selcnt(27),
      R => \selcnt[31]_i_1_n_0\
    );
\selcnt_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => data0(28),
      Q => selcnt(28),
      R => \selcnt[31]_i_1_n_0\
    );
\selcnt_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \selcnt_reg[24]_i_1_n_0\,
      CO(3) => \selcnt_reg[28]_i_1_n_0\,
      CO(2) => \selcnt_reg[28]_i_1_n_1\,
      CO(1) => \selcnt_reg[28]_i_1_n_2\,
      CO(0) => \selcnt_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(28 downto 25),
      S(3 downto 0) => selcnt(28 downto 25)
    );
\selcnt_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => data0(29),
      Q => selcnt(29),
      R => \selcnt[31]_i_1_n_0\
    );
\selcnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => data0(2),
      Q => selcnt(2),
      R => \selcnt[31]_i_1_n_0\
    );
\selcnt_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => data0(30),
      Q => selcnt(30),
      R => \selcnt[31]_i_1_n_0\
    );
\selcnt_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => data0(31),
      Q => selcnt(31),
      R => \selcnt[31]_i_1_n_0\
    );
\selcnt_reg[31]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \selcnt_reg[28]_i_1_n_0\,
      CO(3 downto 2) => \NLW_selcnt_reg[31]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \selcnt_reg[31]_i_2_n_2\,
      CO(0) => \selcnt_reg[31]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_selcnt_reg[31]_i_2_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => selcnt(31 downto 29)
    );
\selcnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => data0(3),
      Q => selcnt(3),
      R => \selcnt[31]_i_1_n_0\
    );
\selcnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => data0(4),
      Q => selcnt(4),
      R => \selcnt[31]_i_1_n_0\
    );
\selcnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \selcnt_reg[4]_i_1_n_0\,
      CO(2) => \selcnt_reg[4]_i_1_n_1\,
      CO(1) => \selcnt_reg[4]_i_1_n_2\,
      CO(0) => \selcnt_reg[4]_i_1_n_3\,
      CYINIT => selcnt(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => selcnt(4 downto 1)
    );
\selcnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => data0(5),
      Q => selcnt(5),
      R => \selcnt[31]_i_1_n_0\
    );
\selcnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => data0(6),
      Q => selcnt(6),
      R => \selcnt[31]_i_1_n_0\
    );
\selcnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => data0(7),
      Q => selcnt(7),
      R => \selcnt[31]_i_1_n_0\
    );
\selcnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => data0(8),
      Q => selcnt(8),
      R => \selcnt[31]_i_1_n_0\
    );
\selcnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \selcnt_reg[4]_i_1_n_0\,
      CO(3) => \selcnt_reg[8]_i_1_n_0\,
      CO(2) => \selcnt_reg[8]_i_1_n_1\,
      CO(1) => \selcnt_reg[8]_i_1_n_2\,
      CO(0) => \selcnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => selcnt(8 downto 5)
    );
\selcnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => data0(9),
      Q => selcnt(9),
      R => \selcnt[31]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Digital_Clock_display_0_0 is
  port (
    clk : in STD_LOGIC;
    data1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data3 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data4 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    en : out STD_LOGIC_VECTOR ( 3 downto 0 );
    led : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Digital_Clock_display_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Digital_Clock_display_0_0 : entity is "Digital_Clock_display_0_0,display,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Digital_Clock_display_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of Digital_Clock_display_0_0 : entity is "display,Vivado 2017.4";
end Digital_Clock_display_0_0;

architecture STRUCTURE of Digital_Clock_display_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^led\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1";
begin
  led(7) <= \<const0>\;
  led(6 downto 0) <= \^led\(6 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.Digital_Clock_display_0_0_display
     port map (
      clk => clk,
      data1(3 downto 0) => data1(3 downto 0),
      data2(3 downto 0) => data2(3 downto 0),
      data3(3 downto 0) => data3(3 downto 0),
      data4(3 downto 0) => data4(3 downto 0),
      en(3 downto 0) => en(3 downto 0),
      led(6 downto 0) => \^led\(6 downto 0)
    );
end STRUCTURE;
