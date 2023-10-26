-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Thu May  6 18:12:02 2021
-- Host        : LAPTOP-EFCFLAO9 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {e:/Progame fires/vivado
--               Projects/lab03_1/lab03_1.srcs/sources_1/ip/dist_mem_gen_0_1/dist_mem_gen_0_sim_netlist.vhdl}
-- Design      : dist_mem_gen_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dist_mem_gen_0_dpram is
  port (
    dpo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    spo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    d : in STD_LOGIC_VECTOR ( 31 downto 0 );
    we : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 5 downto 0 );
    dpra : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dist_mem_gen_0_dpram : entity is "dpram";
end dist_mem_gen_0_dpram;

architecture STRUCTURE of dist_mem_gen_0_dpram is
  signal \^dpo\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal qdpo_int : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of qdpo_int : signal is "true";
  signal qspo_int : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute RTL_KEEP of qspo_int : signal is "true";
  signal \^spo\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute KEEP : string;
  attribute KEEP of \qdpo_int_reg[0]\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \qdpo_int_reg[0]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[10]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[10]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[11]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[11]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[12]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[12]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[13]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[13]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[14]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[14]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[15]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[15]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[16]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[16]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[17]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[17]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[18]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[18]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[19]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[19]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[1]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[20]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[20]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[21]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[21]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[22]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[22]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[23]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[23]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[24]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[24]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[25]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[25]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[26]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[26]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[27]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[27]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[28]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[28]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[29]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[29]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[2]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[2]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[30]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[30]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[31]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[31]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[3]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[3]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[4]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[4]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[5]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[5]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[6]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[6]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[7]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[7]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[8]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[8]\ : label is "no";
  attribute KEEP of \qdpo_int_reg[9]\ : label is "yes";
  attribute equivalent_register_removal of \qdpo_int_reg[9]\ : label is "no";
  attribute KEEP of \qspo_int_reg[0]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[0]\ : label is "no";
  attribute KEEP of \qspo_int_reg[10]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[10]\ : label is "no";
  attribute KEEP of \qspo_int_reg[11]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[11]\ : label is "no";
  attribute KEEP of \qspo_int_reg[12]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[12]\ : label is "no";
  attribute KEEP of \qspo_int_reg[13]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[13]\ : label is "no";
  attribute KEEP of \qspo_int_reg[14]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[14]\ : label is "no";
  attribute KEEP of \qspo_int_reg[15]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[15]\ : label is "no";
  attribute KEEP of \qspo_int_reg[16]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[16]\ : label is "no";
  attribute KEEP of \qspo_int_reg[17]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[17]\ : label is "no";
  attribute KEEP of \qspo_int_reg[18]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[18]\ : label is "no";
  attribute KEEP of \qspo_int_reg[19]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[19]\ : label is "no";
  attribute KEEP of \qspo_int_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[1]\ : label is "no";
  attribute KEEP of \qspo_int_reg[20]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[20]\ : label is "no";
  attribute KEEP of \qspo_int_reg[21]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[21]\ : label is "no";
  attribute KEEP of \qspo_int_reg[22]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[22]\ : label is "no";
  attribute KEEP of \qspo_int_reg[23]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[23]\ : label is "no";
  attribute KEEP of \qspo_int_reg[24]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[24]\ : label is "no";
  attribute KEEP of \qspo_int_reg[25]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[25]\ : label is "no";
  attribute KEEP of \qspo_int_reg[26]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[26]\ : label is "no";
  attribute KEEP of \qspo_int_reg[27]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[27]\ : label is "no";
  attribute KEEP of \qspo_int_reg[28]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[28]\ : label is "no";
  attribute KEEP of \qspo_int_reg[29]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[29]\ : label is "no";
  attribute KEEP of \qspo_int_reg[2]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[2]\ : label is "no";
  attribute KEEP of \qspo_int_reg[30]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[30]\ : label is "no";
  attribute KEEP of \qspo_int_reg[31]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[31]\ : label is "no";
  attribute KEEP of \qspo_int_reg[3]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[3]\ : label is "no";
  attribute KEEP of \qspo_int_reg[4]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[4]\ : label is "no";
  attribute KEEP of \qspo_int_reg[5]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[5]\ : label is "no";
  attribute KEEP of \qspo_int_reg[6]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[6]\ : label is "no";
  attribute KEEP of \qspo_int_reg[7]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[7]\ : label is "no";
  attribute KEEP of \qspo_int_reg[8]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[8]\ : label is "no";
  attribute KEEP of \qspo_int_reg[9]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[9]\ : label is "no";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of ram_reg_0_63_0_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of ram_reg_0_63_0_0 : label is 63;
  attribute ram_offset : integer;
  attribute ram_offset of ram_reg_0_63_0_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of ram_reg_0_63_0_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of ram_reg_0_63_0_0 : label is 0;
  attribute ram_addr_begin of ram_reg_0_63_10_10 : label is 0;
  attribute ram_addr_end of ram_reg_0_63_10_10 : label is 63;
  attribute ram_offset of ram_reg_0_63_10_10 : label is 0;
  attribute ram_slice_begin of ram_reg_0_63_10_10 : label is 10;
  attribute ram_slice_end of ram_reg_0_63_10_10 : label is 10;
  attribute ram_addr_begin of ram_reg_0_63_11_11 : label is 0;
  attribute ram_addr_end of ram_reg_0_63_11_11 : label is 63;
  attribute ram_offset of ram_reg_0_63_11_11 : label is 0;
  attribute ram_slice_begin of ram_reg_0_63_11_11 : label is 11;
  attribute ram_slice_end of ram_reg_0_63_11_11 : label is 11;
  attribute ram_addr_begin of ram_reg_0_63_12_12 : label is 0;
  attribute ram_addr_end of ram_reg_0_63_12_12 : label is 63;
  attribute ram_offset of ram_reg_0_63_12_12 : label is 0;
  attribute ram_slice_begin of ram_reg_0_63_12_12 : label is 12;
  attribute ram_slice_end of ram_reg_0_63_12_12 : label is 12;
  attribute ram_addr_begin of ram_reg_0_63_13_13 : label is 0;
  attribute ram_addr_end of ram_reg_0_63_13_13 : label is 63;
  attribute ram_offset of ram_reg_0_63_13_13 : label is 0;
  attribute ram_slice_begin of ram_reg_0_63_13_13 : label is 13;
  attribute ram_slice_end of ram_reg_0_63_13_13 : label is 13;
  attribute ram_addr_begin of ram_reg_0_63_14_14 : label is 0;
  attribute ram_addr_end of ram_reg_0_63_14_14 : label is 63;
  attribute ram_offset of ram_reg_0_63_14_14 : label is 0;
  attribute ram_slice_begin of ram_reg_0_63_14_14 : label is 14;
  attribute ram_slice_end of ram_reg_0_63_14_14 : label is 14;
  attribute ram_addr_begin of ram_reg_0_63_15_15 : label is 0;
  attribute ram_addr_end of ram_reg_0_63_15_15 : label is 63;
  attribute ram_offset of ram_reg_0_63_15_15 : label is 0;
  attribute ram_slice_begin of ram_reg_0_63_15_15 : label is 15;
  attribute ram_slice_end of ram_reg_0_63_15_15 : label is 15;
  attribute ram_addr_begin of ram_reg_0_63_16_16 : label is 0;
  attribute ram_addr_end of ram_reg_0_63_16_16 : label is 63;
  attribute ram_offset of ram_reg_0_63_16_16 : label is 0;
  attribute ram_slice_begin of ram_reg_0_63_16_16 : label is 16;
  attribute ram_slice_end of ram_reg_0_63_16_16 : label is 16;
  attribute ram_addr_begin of ram_reg_0_63_17_17 : label is 0;
  attribute ram_addr_end of ram_reg_0_63_17_17 : label is 63;
  attribute ram_offset of ram_reg_0_63_17_17 : label is 0;
  attribute ram_slice_begin of ram_reg_0_63_17_17 : label is 17;
  attribute ram_slice_end of ram_reg_0_63_17_17 : label is 17;
  attribute ram_addr_begin of ram_reg_0_63_18_18 : label is 0;
  attribute ram_addr_end of ram_reg_0_63_18_18 : label is 63;
  attribute ram_offset of ram_reg_0_63_18_18 : label is 0;
  attribute ram_slice_begin of ram_reg_0_63_18_18 : label is 18;
  attribute ram_slice_end of ram_reg_0_63_18_18 : label is 18;
  attribute ram_addr_begin of ram_reg_0_63_19_19 : label is 0;
  attribute ram_addr_end of ram_reg_0_63_19_19 : label is 63;
  attribute ram_offset of ram_reg_0_63_19_19 : label is 0;
  attribute ram_slice_begin of ram_reg_0_63_19_19 : label is 19;
  attribute ram_slice_end of ram_reg_0_63_19_19 : label is 19;
  attribute ram_addr_begin of ram_reg_0_63_1_1 : label is 0;
  attribute ram_addr_end of ram_reg_0_63_1_1 : label is 63;
  attribute ram_offset of ram_reg_0_63_1_1 : label is 0;
  attribute ram_slice_begin of ram_reg_0_63_1_1 : label is 1;
  attribute ram_slice_end of ram_reg_0_63_1_1 : label is 1;
  attribute ram_addr_begin of ram_reg_0_63_20_20 : label is 0;
  attribute ram_addr_end of ram_reg_0_63_20_20 : label is 63;
  attribute ram_offset of ram_reg_0_63_20_20 : label is 0;
  attribute ram_slice_begin of ram_reg_0_63_20_20 : label is 20;
  attribute ram_slice_end of ram_reg_0_63_20_20 : label is 20;
  attribute ram_addr_begin of ram_reg_0_63_21_21 : label is 0;
  attribute ram_addr_end of ram_reg_0_63_21_21 : label is 63;
  attribute ram_offset of ram_reg_0_63_21_21 : label is 0;
  attribute ram_slice_begin of ram_reg_0_63_21_21 : label is 21;
  attribute ram_slice_end of ram_reg_0_63_21_21 : label is 21;
  attribute ram_addr_begin of ram_reg_0_63_22_22 : label is 0;
  attribute ram_addr_end of ram_reg_0_63_22_22 : label is 63;
  attribute ram_offset of ram_reg_0_63_22_22 : label is 0;
  attribute ram_slice_begin of ram_reg_0_63_22_22 : label is 22;
  attribute ram_slice_end of ram_reg_0_63_22_22 : label is 22;
  attribute ram_addr_begin of ram_reg_0_63_23_23 : label is 0;
  attribute ram_addr_end of ram_reg_0_63_23_23 : label is 63;
  attribute ram_offset of ram_reg_0_63_23_23 : label is 0;
  attribute ram_slice_begin of ram_reg_0_63_23_23 : label is 23;
  attribute ram_slice_end of ram_reg_0_63_23_23 : label is 23;
  attribute ram_addr_begin of ram_reg_0_63_24_24 : label is 0;
  attribute ram_addr_end of ram_reg_0_63_24_24 : label is 63;
  attribute ram_offset of ram_reg_0_63_24_24 : label is 0;
  attribute ram_slice_begin of ram_reg_0_63_24_24 : label is 24;
  attribute ram_slice_end of ram_reg_0_63_24_24 : label is 24;
  attribute ram_addr_begin of ram_reg_0_63_25_25 : label is 0;
  attribute ram_addr_end of ram_reg_0_63_25_25 : label is 63;
  attribute ram_offset of ram_reg_0_63_25_25 : label is 0;
  attribute ram_slice_begin of ram_reg_0_63_25_25 : label is 25;
  attribute ram_slice_end of ram_reg_0_63_25_25 : label is 25;
  attribute ram_addr_begin of ram_reg_0_63_26_26 : label is 0;
  attribute ram_addr_end of ram_reg_0_63_26_26 : label is 63;
  attribute ram_offset of ram_reg_0_63_26_26 : label is 0;
  attribute ram_slice_begin of ram_reg_0_63_26_26 : label is 26;
  attribute ram_slice_end of ram_reg_0_63_26_26 : label is 26;
  attribute ram_addr_begin of ram_reg_0_63_27_27 : label is 0;
  attribute ram_addr_end of ram_reg_0_63_27_27 : label is 63;
  attribute ram_offset of ram_reg_0_63_27_27 : label is 0;
  attribute ram_slice_begin of ram_reg_0_63_27_27 : label is 27;
  attribute ram_slice_end of ram_reg_0_63_27_27 : label is 27;
  attribute ram_addr_begin of ram_reg_0_63_28_28 : label is 0;
  attribute ram_addr_end of ram_reg_0_63_28_28 : label is 63;
  attribute ram_offset of ram_reg_0_63_28_28 : label is 0;
  attribute ram_slice_begin of ram_reg_0_63_28_28 : label is 28;
  attribute ram_slice_end of ram_reg_0_63_28_28 : label is 28;
  attribute ram_addr_begin of ram_reg_0_63_29_29 : label is 0;
  attribute ram_addr_end of ram_reg_0_63_29_29 : label is 63;
  attribute ram_offset of ram_reg_0_63_29_29 : label is 0;
  attribute ram_slice_begin of ram_reg_0_63_29_29 : label is 29;
  attribute ram_slice_end of ram_reg_0_63_29_29 : label is 29;
  attribute ram_addr_begin of ram_reg_0_63_2_2 : label is 0;
  attribute ram_addr_end of ram_reg_0_63_2_2 : label is 63;
  attribute ram_offset of ram_reg_0_63_2_2 : label is 0;
  attribute ram_slice_begin of ram_reg_0_63_2_2 : label is 2;
  attribute ram_slice_end of ram_reg_0_63_2_2 : label is 2;
  attribute ram_addr_begin of ram_reg_0_63_30_30 : label is 0;
  attribute ram_addr_end of ram_reg_0_63_30_30 : label is 63;
  attribute ram_offset of ram_reg_0_63_30_30 : label is 0;
  attribute ram_slice_begin of ram_reg_0_63_30_30 : label is 30;
  attribute ram_slice_end of ram_reg_0_63_30_30 : label is 30;
  attribute ram_addr_begin of ram_reg_0_63_31_31 : label is 0;
  attribute ram_addr_end of ram_reg_0_63_31_31 : label is 63;
  attribute ram_offset of ram_reg_0_63_31_31 : label is 0;
  attribute ram_slice_begin of ram_reg_0_63_31_31 : label is 31;
  attribute ram_slice_end of ram_reg_0_63_31_31 : label is 31;
  attribute ram_addr_begin of ram_reg_0_63_3_3 : label is 0;
  attribute ram_addr_end of ram_reg_0_63_3_3 : label is 63;
  attribute ram_offset of ram_reg_0_63_3_3 : label is 0;
  attribute ram_slice_begin of ram_reg_0_63_3_3 : label is 3;
  attribute ram_slice_end of ram_reg_0_63_3_3 : label is 3;
  attribute ram_addr_begin of ram_reg_0_63_4_4 : label is 0;
  attribute ram_addr_end of ram_reg_0_63_4_4 : label is 63;
  attribute ram_offset of ram_reg_0_63_4_4 : label is 0;
  attribute ram_slice_begin of ram_reg_0_63_4_4 : label is 4;
  attribute ram_slice_end of ram_reg_0_63_4_4 : label is 4;
  attribute ram_addr_begin of ram_reg_0_63_5_5 : label is 0;
  attribute ram_addr_end of ram_reg_0_63_5_5 : label is 63;
  attribute ram_offset of ram_reg_0_63_5_5 : label is 0;
  attribute ram_slice_begin of ram_reg_0_63_5_5 : label is 5;
  attribute ram_slice_end of ram_reg_0_63_5_5 : label is 5;
  attribute ram_addr_begin of ram_reg_0_63_6_6 : label is 0;
  attribute ram_addr_end of ram_reg_0_63_6_6 : label is 63;
  attribute ram_offset of ram_reg_0_63_6_6 : label is 0;
  attribute ram_slice_begin of ram_reg_0_63_6_6 : label is 6;
  attribute ram_slice_end of ram_reg_0_63_6_6 : label is 6;
  attribute ram_addr_begin of ram_reg_0_63_7_7 : label is 0;
  attribute ram_addr_end of ram_reg_0_63_7_7 : label is 63;
  attribute ram_offset of ram_reg_0_63_7_7 : label is 0;
  attribute ram_slice_begin of ram_reg_0_63_7_7 : label is 7;
  attribute ram_slice_end of ram_reg_0_63_7_7 : label is 7;
  attribute ram_addr_begin of ram_reg_0_63_8_8 : label is 0;
  attribute ram_addr_end of ram_reg_0_63_8_8 : label is 63;
  attribute ram_offset of ram_reg_0_63_8_8 : label is 0;
  attribute ram_slice_begin of ram_reg_0_63_8_8 : label is 8;
  attribute ram_slice_end of ram_reg_0_63_8_8 : label is 8;
  attribute ram_addr_begin of ram_reg_0_63_9_9 : label is 0;
  attribute ram_addr_end of ram_reg_0_63_9_9 : label is 63;
  attribute ram_offset of ram_reg_0_63_9_9 : label is 0;
  attribute ram_slice_begin of ram_reg_0_63_9_9 : label is 9;
  attribute ram_slice_end of ram_reg_0_63_9_9 : label is 9;
begin
  dpo(31 downto 0) <= \^dpo\(31 downto 0);
  spo(31 downto 0) <= \^spo\(31 downto 0);
\qdpo_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^dpo\(0),
      Q => qdpo_int(0),
      R => '0'
    );
\qdpo_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^dpo\(10),
      Q => qdpo_int(10),
      R => '0'
    );
\qdpo_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^dpo\(11),
      Q => qdpo_int(11),
      R => '0'
    );
\qdpo_int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^dpo\(12),
      Q => qdpo_int(12),
      R => '0'
    );
\qdpo_int_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^dpo\(13),
      Q => qdpo_int(13),
      R => '0'
    );
\qdpo_int_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^dpo\(14),
      Q => qdpo_int(14),
      R => '0'
    );
\qdpo_int_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^dpo\(15),
      Q => qdpo_int(15),
      R => '0'
    );
\qdpo_int_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^dpo\(16),
      Q => qdpo_int(16),
      R => '0'
    );
\qdpo_int_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^dpo\(17),
      Q => qdpo_int(17),
      R => '0'
    );
\qdpo_int_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^dpo\(18),
      Q => qdpo_int(18),
      R => '0'
    );
\qdpo_int_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^dpo\(19),
      Q => qdpo_int(19),
      R => '0'
    );
\qdpo_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^dpo\(1),
      Q => qdpo_int(1),
      R => '0'
    );
\qdpo_int_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^dpo\(20),
      Q => qdpo_int(20),
      R => '0'
    );
\qdpo_int_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^dpo\(21),
      Q => qdpo_int(21),
      R => '0'
    );
\qdpo_int_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^dpo\(22),
      Q => qdpo_int(22),
      R => '0'
    );
\qdpo_int_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^dpo\(23),
      Q => qdpo_int(23),
      R => '0'
    );
\qdpo_int_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^dpo\(24),
      Q => qdpo_int(24),
      R => '0'
    );
\qdpo_int_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^dpo\(25),
      Q => qdpo_int(25),
      R => '0'
    );
\qdpo_int_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^dpo\(26),
      Q => qdpo_int(26),
      R => '0'
    );
\qdpo_int_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^dpo\(27),
      Q => qdpo_int(27),
      R => '0'
    );
\qdpo_int_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^dpo\(28),
      Q => qdpo_int(28),
      R => '0'
    );
\qdpo_int_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^dpo\(29),
      Q => qdpo_int(29),
      R => '0'
    );
\qdpo_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^dpo\(2),
      Q => qdpo_int(2),
      R => '0'
    );
\qdpo_int_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^dpo\(30),
      Q => qdpo_int(30),
      R => '0'
    );
\qdpo_int_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^dpo\(31),
      Q => qdpo_int(31),
      R => '0'
    );
\qdpo_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^dpo\(3),
      Q => qdpo_int(3),
      R => '0'
    );
\qdpo_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^dpo\(4),
      Q => qdpo_int(4),
      R => '0'
    );
\qdpo_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^dpo\(5),
      Q => qdpo_int(5),
      R => '0'
    );
\qdpo_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^dpo\(6),
      Q => qdpo_int(6),
      R => '0'
    );
\qdpo_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^dpo\(7),
      Q => qdpo_int(7),
      R => '0'
    );
\qdpo_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^dpo\(8),
      Q => qdpo_int(8),
      R => '0'
    );
\qdpo_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^dpo\(9),
      Q => qdpo_int(9),
      R => '0'
    );
\qspo_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(0),
      Q => qspo_int(0),
      R => '0'
    );
\qspo_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(10),
      Q => qspo_int(10),
      R => '0'
    );
\qspo_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(11),
      Q => qspo_int(11),
      R => '0'
    );
\qspo_int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(12),
      Q => qspo_int(12),
      R => '0'
    );
\qspo_int_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(13),
      Q => qspo_int(13),
      R => '0'
    );
\qspo_int_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(14),
      Q => qspo_int(14),
      R => '0'
    );
\qspo_int_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(15),
      Q => qspo_int(15),
      R => '0'
    );
\qspo_int_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(16),
      Q => qspo_int(16),
      R => '0'
    );
\qspo_int_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(17),
      Q => qspo_int(17),
      R => '0'
    );
\qspo_int_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(18),
      Q => qspo_int(18),
      R => '0'
    );
\qspo_int_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(19),
      Q => qspo_int(19),
      R => '0'
    );
\qspo_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(1),
      Q => qspo_int(1),
      R => '0'
    );
\qspo_int_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(20),
      Q => qspo_int(20),
      R => '0'
    );
\qspo_int_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(21),
      Q => qspo_int(21),
      R => '0'
    );
\qspo_int_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(22),
      Q => qspo_int(22),
      R => '0'
    );
\qspo_int_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(23),
      Q => qspo_int(23),
      R => '0'
    );
\qspo_int_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(24),
      Q => qspo_int(24),
      R => '0'
    );
\qspo_int_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(25),
      Q => qspo_int(25),
      R => '0'
    );
\qspo_int_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(26),
      Q => qspo_int(26),
      R => '0'
    );
\qspo_int_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(27),
      Q => qspo_int(27),
      R => '0'
    );
\qspo_int_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(28),
      Q => qspo_int(28),
      R => '0'
    );
\qspo_int_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(29),
      Q => qspo_int(29),
      R => '0'
    );
\qspo_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(2),
      Q => qspo_int(2),
      R => '0'
    );
\qspo_int_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(30),
      Q => qspo_int(30),
      R => '0'
    );
\qspo_int_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(31),
      Q => qspo_int(31),
      R => '0'
    );
\qspo_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(3),
      Q => qspo_int(3),
      R => '0'
    );
\qspo_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(4),
      Q => qspo_int(4),
      R => '0'
    );
\qspo_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(5),
      Q => qspo_int(5),
      R => '0'
    );
\qspo_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(6),
      Q => qspo_int(6),
      R => '0'
    );
\qspo_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(7),
      Q => qspo_int(7),
      R => '0'
    );
\qspo_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(8),
      Q => qspo_int(8),
      R => '0'
    );
\qspo_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(9),
      Q => qspo_int(9),
      R => '0'
    );
ram_reg_0_63_0_0: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000FFFFFF"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      D => d(0),
      DPO => \^dpo\(0),
      DPRA0 => dpra(0),
      DPRA1 => dpra(1),
      DPRA2 => dpra(2),
      DPRA3 => dpra(3),
      DPRA4 => dpra(4),
      DPRA5 => dpra(5),
      SPO => \^spo\(0),
      WCLK => clk,
      WE => we
    );
ram_reg_0_63_10_10: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000986AD5"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      D => d(10),
      DPO => \^dpo\(10),
      DPRA0 => dpra(0),
      DPRA1 => dpra(1),
      DPRA2 => dpra(2),
      DPRA3 => dpra(3),
      DPRA4 => dpra(4),
      DPRA5 => dpra(5),
      SPO => \^spo\(10),
      WCLK => clk,
      WE => we
    );
ram_reg_0_63_11_11: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000080204"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      D => d(11),
      DPO => \^dpo\(11),
      DPRA0 => dpra(0),
      DPRA1 => dpra(1),
      DPRA2 => dpra(2),
      DPRA3 => dpra(3),
      DPRA4 => dpra(4),
      DPRA5 => dpra(5),
      SPO => \^spo\(11),
      WCLK => clk,
      WE => we
    );
ram_reg_0_63_12_12: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000804080"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      D => d(12),
      DPO => \^dpo\(12),
      DPRA0 => dpra(0),
      DPRA1 => dpra(1),
      DPRA2 => dpra(2),
      DPRA3 => dpra(3),
      DPRA4 => dpra(4),
      DPRA5 => dpra(5),
      SPO => \^spo\(12),
      WCLK => clk,
      WE => we
    );
ram_reg_0_63_13_13: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000B45DBB"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      D => d(13),
      DPO => \^dpo\(13),
      DPRA0 => dpra(0),
      DPRA1 => dpra(1),
      DPRA2 => dpra(2),
      DPRA3 => dpra(3),
      DPRA4 => dpra(4),
      DPRA5 => dpra(5),
      SPO => \^spo\(13),
      WCLK => clk,
      WE => we
    );
ram_reg_0_63_14_14: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000804080"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      D => d(14),
      DPO => \^dpo\(14),
      DPRA0 => dpra(0),
      DPRA1 => dpra(1),
      DPRA2 => dpra(2),
      DPRA3 => dpra(3),
      DPRA4 => dpra(4),
      DPRA5 => dpra(5),
      SPO => \^spo\(14),
      WCLK => clk,
      WE => we
    );
ram_reg_0_63_15_15: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000B6DDBA"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      D => d(15),
      DPO => \^dpo\(15),
      DPRA0 => dpra(0),
      DPRA1 => dpra(1),
      DPRA2 => dpra(2),
      DPRA3 => dpra(3),
      DPRA4 => dpra(4),
      DPRA5 => dpra(5),
      SPO => \^spo\(15),
      WCLK => clk,
      WE => we
    );
ram_reg_0_63_16_16: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000CB62C4"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      D => d(16),
      DPO => \^dpo\(16),
      DPRA0 => dpra(0),
      DPRA1 => dpra(1),
      DPRA2 => dpra(2),
      DPRA3 => dpra(3),
      DPRA4 => dpra(4),
      DPRA5 => dpra(5),
      SPO => \^spo\(16),
      WCLK => clk,
      WE => we
    );
ram_reg_0_63_17_17: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000CA62C4"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      D => d(17),
      DPO => \^dpo\(17),
      DPRA0 => dpra(0),
      DPRA1 => dpra(1),
      DPRA2 => dpra(2),
      DPRA3 => dpra(3),
      DPRA4 => dpra(4),
      DPRA5 => dpra(5),
      SPO => \^spo\(17),
      WCLK => clk,
      WE => we
    );
ram_reg_0_63_18_18: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000B45DBA"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      D => d(18),
      DPO => \^dpo\(18),
      DPRA0 => dpra(0),
      DPRA1 => dpra(1),
      DPRA2 => dpra(2),
      DPRA3 => dpra(3),
      DPRA4 => dpra(4),
      DPRA5 => dpra(5),
      SPO => \^spo\(18),
      WCLK => clk,
      WE => we
    );
ram_reg_0_63_19_19: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000804080"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      D => d(19),
      DPO => \^dpo\(19),
      DPRA0 => dpra(0),
      DPRA1 => dpra(1),
      DPRA2 => dpra(2),
      DPRA3 => dpra(3),
      DPRA4 => dpra(4),
      DPRA5 => dpra(5),
      SPO => \^spo\(19),
      WCLK => clk,
      WE => we
    );
ram_reg_0_63_1_1: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000FFFFFF"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      D => d(1),
      DPO => \^dpo\(1),
      DPRA0 => dpra(0),
      DPRA1 => dpra(1),
      DPRA2 => dpra(2),
      DPRA3 => dpra(3),
      DPRA4 => dpra(4),
      DPRA5 => dpra(5),
      SPO => \^spo\(1),
      WCLK => clk,
      WE => we
    );
ram_reg_0_63_20_20: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000904090"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      D => d(20),
      DPO => \^dpo\(20),
      DPRA0 => dpra(0),
      DPRA1 => dpra(1),
      DPRA2 => dpra(2),
      DPRA3 => dpra(3),
      DPRA4 => dpra(4),
      DPRA5 => dpra(5),
      SPO => \^spo\(20),
      WCLK => clk,
      WE => we
    );
ram_reg_0_63_21_21: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000108800"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      D => d(21),
      DPO => \^dpo\(21),
      DPRA0 => dpra(0),
      DPRA1 => dpra(1),
      DPRA2 => dpra(2),
      DPRA3 => dpra(3),
      DPRA4 => dpra(4),
      DPRA5 => dpra(5),
      SPO => \^spo\(21),
      WCLK => clk,
      WE => we
    );
ram_reg_0_63_22_22: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000100408"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      D => d(22),
      DPO => \^dpo\(22),
      DPRA0 => dpra(0),
      DPRA1 => dpra(1),
      DPRA2 => dpra(2),
      DPRA3 => dpra(3),
      DPRA4 => dpra(4),
      DPRA5 => dpra(5),
      SPO => \^spo\(22),
      WCLK => clk,
      WE => we
    );
ram_reg_0_63_23_23: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000804488"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      D => d(23),
      DPO => \^dpo\(23),
      DPRA0 => dpra(0),
      DPRA1 => dpra(1),
      DPRA2 => dpra(2),
      DPRA3 => dpra(3),
      DPRA4 => dpra(4),
      DPRA5 => dpra(5),
      SPO => \^spo\(23),
      WCLK => clk,
      WE => we
    );
ram_reg_0_63_24_24: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000A451A2"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      D => d(24),
      DPO => \^dpo\(24),
      DPRA0 => dpra(0),
      DPRA1 => dpra(1),
      DPRA2 => dpra(2),
      DPRA3 => dpra(3),
      DPRA4 => dpra(4),
      DPRA5 => dpra(5),
      SPO => \^spo\(24),
      WCLK => clk,
      WE => we
    );
ram_reg_0_63_25_25: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000C84284"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      D => d(25),
      DPO => \^dpo\(25),
      DPRA0 => dpra(0),
      DPRA1 => dpra(1),
      DPRA2 => dpra(2),
      DPRA3 => dpra(3),
      DPRA4 => dpra(4),
      DPRA5 => dpra(5),
      SPO => \^spo\(25),
      WCLK => clk,
      WE => we
    );
ram_reg_0_63_26_26: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000C84284"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      D => d(26),
      DPO => \^dpo\(26),
      DPRA0 => dpra(0),
      DPRA1 => dpra(1),
      DPRA2 => dpra(2),
      DPRA3 => dpra(3),
      DPRA4 => dpra(4),
      DPRA5 => dpra(5),
      SPO => \^spo\(26),
      WCLK => clk,
      WE => we
    );
ram_reg_0_63_27_27: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000C84284"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      D => d(27),
      DPO => \^dpo\(27),
      DPRA0 => dpra(0),
      DPRA1 => dpra(1),
      DPRA2 => dpra(2),
      DPRA3 => dpra(3),
      DPRA4 => dpra(4),
      DPRA5 => dpra(5),
      SPO => \^spo\(27),
      WCLK => clk,
      WE => we
    );
ram_reg_0_63_28_28: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000C84284"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      D => d(28),
      DPO => \^dpo\(28),
      DPRA0 => dpra(0),
      DPRA1 => dpra(1),
      DPRA2 => dpra(2),
      DPRA3 => dpra(3),
      DPRA4 => dpra(4),
      DPRA5 => dpra(5),
      SPO => \^spo\(28),
      WCLK => clk,
      WE => we
    );
ram_reg_0_63_29_29: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000C84284"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      D => d(29),
      DPO => \^dpo\(29),
      DPRA0 => dpra(0),
      DPRA1 => dpra(1),
      DPRA2 => dpra(2),
      DPRA3 => dpra(3),
      DPRA4 => dpra(4),
      DPRA5 => dpra(5),
      SPO => \^spo\(29),
      WCLK => clk,
      WE => we
    );
ram_reg_0_63_2_2: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000804080"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      D => d(2),
      DPO => \^dpo\(2),
      DPRA0 => dpra(0),
      DPRA1 => dpra(1),
      DPRA2 => dpra(2),
      DPRA3 => dpra(3),
      DPRA4 => dpra(4),
      DPRA5 => dpra(5),
      SPO => \^spo\(2),
      WCLK => clk,
      WE => we
    );
ram_reg_0_63_30_30: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000C84284"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      D => d(30),
      DPO => \^dpo\(30),
      DPRA0 => dpra(0),
      DPRA1 => dpra(1),
      DPRA2 => dpra(2),
      DPRA3 => dpra(3),
      DPRA4 => dpra(4),
      DPRA5 => dpra(5),
      SPO => \^spo\(30),
      WCLK => clk,
      WE => we
    );
ram_reg_0_63_31_31: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000C84284"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      D => d(31),
      DPO => \^dpo\(31),
      DPRA0 => dpra(0),
      DPRA1 => dpra(1),
      DPRA2 => dpra(2),
      DPRA3 => dpra(3),
      DPRA4 => dpra(4),
      DPRA5 => dpra(5),
      SPO => \^spo\(31),
      WCLK => clk,
      WE => we
    );
ram_reg_0_63_3_3: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000804080"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      D => d(3),
      DPO => \^dpo\(3),
      DPRA0 => dpra(0),
      DPRA1 => dpra(1),
      DPRA2 => dpra(2),
      DPRA3 => dpra(3),
      DPRA4 => dpra(4),
      DPRA5 => dpra(5),
      SPO => \^spo\(3),
      WCLK => clk,
      WE => we
    );
ram_reg_0_63_4_4: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000038000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      D => d(4),
      DPO => \^dpo\(4),
      DPRA0 => dpra(0),
      DPRA1 => dpra(1),
      DPRA2 => dpra(2),
      DPRA3 => dpra(3),
      DPRA4 => dpra(4),
      DPRA5 => dpra(5),
      SPO => \^spo\(4),
      WCLK => clk,
      WE => we
    );
ram_reg_0_63_5_5: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000DBEAD4"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      D => d(5),
      DPO => \^dpo\(5),
      DPRA0 => dpra(0),
      DPRA1 => dpra(1),
      DPRA2 => dpra(2),
      DPRA3 => dpra(3),
      DPRA4 => dpra(4),
      DPRA5 => dpra(5),
      SPO => \^spo\(5),
      WCLK => clk,
      WE => we
    );
ram_reg_0_63_6_6: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000C862C4"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      D => d(6),
      DPO => \^dpo\(6),
      DPRA0 => dpra(0),
      DPRA1 => dpra(1),
      DPRA2 => dpra(2),
      DPRA3 => dpra(3),
      DPRA4 => dpra(4),
      DPRA5 => dpra(5),
      SPO => \^spo\(6),
      WCLK => clk,
      WE => we
    );
ram_reg_0_63_7_7: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"000000000049820D"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      D => d(7),
      DPO => \^dpo\(7),
      DPRA0 => dpra(0),
      DPRA1 => dpra(1),
      DPRA2 => dpra(2),
      DPRA3 => dpra(3),
      DPRA4 => dpra(4),
      DPRA5 => dpra(5),
      SPO => \^spo\(7),
      WCLK => clk,
      WE => we
    );
ram_reg_0_63_8_8: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"0000000000269522"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      D => d(8),
      DPO => \^dpo\(8),
      DPRA0 => dpra(0),
      DPRA1 => dpra(1),
      DPRA2 => dpra(2),
      DPRA3 => dpra(3),
      DPRA4 => dpra(4),
      DPRA5 => dpra(5),
      SPO => \^spo\(8),
      WCLK => clk,
      WE => we
    );
ram_reg_0_63_9_9: unisim.vcomponents.RAM64X1D
    generic map(
      INIT => X"00000000006C9326"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      D => d(9),
      DPO => \^dpo\(9),
      DPRA0 => dpra(0),
      DPRA1 => dpra(1),
      DPRA2 => dpra(2),
      DPRA3 => dpra(3),
      DPRA4 => dpra(4),
      DPRA5 => dpra(5),
      SPO => \^spo\(9),
      WCLK => clk,
      WE => we
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dist_mem_gen_0_dist_mem_gen_v8_0_13_synth is
  port (
    dpo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    spo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    d : in STD_LOGIC_VECTOR ( 31 downto 0 );
    we : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 5 downto 0 );
    dpra : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dist_mem_gen_0_dist_mem_gen_v8_0_13_synth : entity is "dist_mem_gen_v8_0_13_synth";
end dist_mem_gen_0_dist_mem_gen_v8_0_13_synth;

architecture STRUCTURE of dist_mem_gen_0_dist_mem_gen_v8_0_13_synth is
begin
\gen_dp_ram.dpram_inst\: entity work.dist_mem_gen_0_dpram
     port map (
      a(5 downto 0) => a(5 downto 0),
      clk => clk,
      d(31 downto 0) => d(31 downto 0),
      dpo(31 downto 0) => dpo(31 downto 0),
      dpra(5 downto 0) => dpra(5 downto 0),
      spo(31 downto 0) => spo(31 downto 0),
      we => we
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dist_mem_gen_0_dist_mem_gen_v8_0_13 is
  port (
    a : in STD_LOGIC_VECTOR ( 5 downto 0 );
    d : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dpra : in STD_LOGIC_VECTOR ( 5 downto 0 );
    clk : in STD_LOGIC;
    we : in STD_LOGIC;
    i_ce : in STD_LOGIC;
    qspo_ce : in STD_LOGIC;
    qdpo_ce : in STD_LOGIC;
    qdpo_clk : in STD_LOGIC;
    qspo_rst : in STD_LOGIC;
    qdpo_rst : in STD_LOGIC;
    qspo_srst : in STD_LOGIC;
    qdpo_srst : in STD_LOGIC;
    spo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dpo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    qspo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    qdpo : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute C_ADDR_WIDTH : integer;
  attribute C_ADDR_WIDTH of dist_mem_gen_0_dist_mem_gen_v8_0_13 : entity is 6;
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of dist_mem_gen_0_dist_mem_gen_v8_0_13 : entity is "0";
  attribute C_DEPTH : integer;
  attribute C_DEPTH of dist_mem_gen_0_dist_mem_gen_v8_0_13 : entity is 64;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of dist_mem_gen_0_dist_mem_gen_v8_0_13 : entity is "./";
  attribute C_FAMILY : string;
  attribute C_FAMILY of dist_mem_gen_0_dist_mem_gen_v8_0_13 : entity is "artix7";
  attribute C_HAS_CLK : integer;
  attribute C_HAS_CLK of dist_mem_gen_0_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_HAS_D : integer;
  attribute C_HAS_D of dist_mem_gen_0_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_HAS_DPO : integer;
  attribute C_HAS_DPO of dist_mem_gen_0_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_HAS_DPRA : integer;
  attribute C_HAS_DPRA of dist_mem_gen_0_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_HAS_I_CE : integer;
  attribute C_HAS_I_CE of dist_mem_gen_0_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO : integer;
  attribute C_HAS_QDPO of dist_mem_gen_0_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO_CE : integer;
  attribute C_HAS_QDPO_CE of dist_mem_gen_0_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO_CLK : integer;
  attribute C_HAS_QDPO_CLK of dist_mem_gen_0_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO_RST : integer;
  attribute C_HAS_QDPO_RST of dist_mem_gen_0_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO_SRST : integer;
  attribute C_HAS_QDPO_SRST of dist_mem_gen_0_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QSPO : integer;
  attribute C_HAS_QSPO of dist_mem_gen_0_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QSPO_CE : integer;
  attribute C_HAS_QSPO_CE of dist_mem_gen_0_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QSPO_RST : integer;
  attribute C_HAS_QSPO_RST of dist_mem_gen_0_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QSPO_SRST : integer;
  attribute C_HAS_QSPO_SRST of dist_mem_gen_0_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_SPO : integer;
  attribute C_HAS_SPO of dist_mem_gen_0_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_HAS_WE : integer;
  attribute C_HAS_WE of dist_mem_gen_0_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_MEM_INIT_FILE : string;
  attribute C_MEM_INIT_FILE of dist_mem_gen_0_dist_mem_gen_v8_0_13 : entity is "dist_mem_gen_0.mif";
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of dist_mem_gen_0_dist_mem_gen_v8_0_13 : entity is 2;
  attribute C_PARSER_TYPE : integer;
  attribute C_PARSER_TYPE of dist_mem_gen_0_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_PIPELINE_STAGES : integer;
  attribute C_PIPELINE_STAGES of dist_mem_gen_0_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_QCE_JOINED : integer;
  attribute C_QCE_JOINED of dist_mem_gen_0_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_QUALIFY_WE : integer;
  attribute C_QUALIFY_WE of dist_mem_gen_0_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_READ_MIF : integer;
  attribute C_READ_MIF of dist_mem_gen_0_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_REG_A_D_INPUTS : integer;
  attribute C_REG_A_D_INPUTS of dist_mem_gen_0_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_REG_DPRA_INPUT : integer;
  attribute C_REG_DPRA_INPUT of dist_mem_gen_0_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_SYNC_ENABLE : integer;
  attribute C_SYNC_ENABLE of dist_mem_gen_0_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_WIDTH : integer;
  attribute C_WIDTH of dist_mem_gen_0_dist_mem_gen_v8_0_13 : entity is 32;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dist_mem_gen_0_dist_mem_gen_v8_0_13 : entity is "dist_mem_gen_v8_0_13";
end dist_mem_gen_0_dist_mem_gen_v8_0_13;

architecture STRUCTURE of dist_mem_gen_0_dist_mem_gen_v8_0_13 is
  signal \<const0>\ : STD_LOGIC;
begin
  qdpo(31) <= \<const0>\;
  qdpo(30) <= \<const0>\;
  qdpo(29) <= \<const0>\;
  qdpo(28) <= \<const0>\;
  qdpo(27) <= \<const0>\;
  qdpo(26) <= \<const0>\;
  qdpo(25) <= \<const0>\;
  qdpo(24) <= \<const0>\;
  qdpo(23) <= \<const0>\;
  qdpo(22) <= \<const0>\;
  qdpo(21) <= \<const0>\;
  qdpo(20) <= \<const0>\;
  qdpo(19) <= \<const0>\;
  qdpo(18) <= \<const0>\;
  qdpo(17) <= \<const0>\;
  qdpo(16) <= \<const0>\;
  qdpo(15) <= \<const0>\;
  qdpo(14) <= \<const0>\;
  qdpo(13) <= \<const0>\;
  qdpo(12) <= \<const0>\;
  qdpo(11) <= \<const0>\;
  qdpo(10) <= \<const0>\;
  qdpo(9) <= \<const0>\;
  qdpo(8) <= \<const0>\;
  qdpo(7) <= \<const0>\;
  qdpo(6) <= \<const0>\;
  qdpo(5) <= \<const0>\;
  qdpo(4) <= \<const0>\;
  qdpo(3) <= \<const0>\;
  qdpo(2) <= \<const0>\;
  qdpo(1) <= \<const0>\;
  qdpo(0) <= \<const0>\;
  qspo(31) <= \<const0>\;
  qspo(30) <= \<const0>\;
  qspo(29) <= \<const0>\;
  qspo(28) <= \<const0>\;
  qspo(27) <= \<const0>\;
  qspo(26) <= \<const0>\;
  qspo(25) <= \<const0>\;
  qspo(24) <= \<const0>\;
  qspo(23) <= \<const0>\;
  qspo(22) <= \<const0>\;
  qspo(21) <= \<const0>\;
  qspo(20) <= \<const0>\;
  qspo(19) <= \<const0>\;
  qspo(18) <= \<const0>\;
  qspo(17) <= \<const0>\;
  qspo(16) <= \<const0>\;
  qspo(15) <= \<const0>\;
  qspo(14) <= \<const0>\;
  qspo(13) <= \<const0>\;
  qspo(12) <= \<const0>\;
  qspo(11) <= \<const0>\;
  qspo(10) <= \<const0>\;
  qspo(9) <= \<const0>\;
  qspo(8) <= \<const0>\;
  qspo(7) <= \<const0>\;
  qspo(6) <= \<const0>\;
  qspo(5) <= \<const0>\;
  qspo(4) <= \<const0>\;
  qspo(3) <= \<const0>\;
  qspo(2) <= \<const0>\;
  qspo(1) <= \<const0>\;
  qspo(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\synth_options.dist_mem_inst\: entity work.dist_mem_gen_0_dist_mem_gen_v8_0_13_synth
     port map (
      a(5 downto 0) => a(5 downto 0),
      clk => clk,
      d(31 downto 0) => d(31 downto 0),
      dpo(31 downto 0) => dpo(31 downto 0),
      dpra(5 downto 0) => dpra(5 downto 0),
      spo(31 downto 0) => spo(31 downto 0),
      we => we
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dist_mem_gen_0 is
  port (
    a : in STD_LOGIC_VECTOR ( 5 downto 0 );
    d : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dpra : in STD_LOGIC_VECTOR ( 5 downto 0 );
    clk : in STD_LOGIC;
    we : in STD_LOGIC;
    spo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dpo : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of dist_mem_gen_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of dist_mem_gen_0 : entity is "dist_mem_gen_0,dist_mem_gen_v8_0_13,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of dist_mem_gen_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of dist_mem_gen_0 : entity is "dist_mem_gen_v8_0_13,Vivado 2019.1";
end dist_mem_gen_0;

architecture STRUCTURE of dist_mem_gen_0 is
  signal NLW_U0_qdpo_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_qspo_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_HAS_CLK : integer;
  attribute C_HAS_CLK of U0 : label is 1;
  attribute C_HAS_D : integer;
  attribute C_HAS_D of U0 : label is 1;
  attribute C_HAS_WE : integer;
  attribute C_HAS_WE of U0 : label is 1;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 2;
  attribute c_addr_width : integer;
  attribute c_addr_width of U0 : label is 6;
  attribute c_default_data : string;
  attribute c_default_data of U0 : label is "0";
  attribute c_depth : integer;
  attribute c_depth of U0 : label is 64;
  attribute c_elaboration_dir : string;
  attribute c_elaboration_dir of U0 : label is "./";
  attribute c_has_dpo : integer;
  attribute c_has_dpo of U0 : label is 1;
  attribute c_has_dpra : integer;
  attribute c_has_dpra of U0 : label is 1;
  attribute c_has_i_ce : integer;
  attribute c_has_i_ce of U0 : label is 0;
  attribute c_has_qdpo : integer;
  attribute c_has_qdpo of U0 : label is 0;
  attribute c_has_qdpo_ce : integer;
  attribute c_has_qdpo_ce of U0 : label is 0;
  attribute c_has_qdpo_clk : integer;
  attribute c_has_qdpo_clk of U0 : label is 0;
  attribute c_has_qdpo_rst : integer;
  attribute c_has_qdpo_rst of U0 : label is 0;
  attribute c_has_qdpo_srst : integer;
  attribute c_has_qdpo_srst of U0 : label is 0;
  attribute c_has_qspo : integer;
  attribute c_has_qspo of U0 : label is 0;
  attribute c_has_qspo_ce : integer;
  attribute c_has_qspo_ce of U0 : label is 0;
  attribute c_has_qspo_rst : integer;
  attribute c_has_qspo_rst of U0 : label is 0;
  attribute c_has_qspo_srst : integer;
  attribute c_has_qspo_srst of U0 : label is 0;
  attribute c_has_spo : integer;
  attribute c_has_spo of U0 : label is 1;
  attribute c_mem_init_file : string;
  attribute c_mem_init_file of U0 : label is "dist_mem_gen_0.mif";
  attribute c_parser_type : integer;
  attribute c_parser_type of U0 : label is 1;
  attribute c_pipeline_stages : integer;
  attribute c_pipeline_stages of U0 : label is 0;
  attribute c_qce_joined : integer;
  attribute c_qce_joined of U0 : label is 0;
  attribute c_qualify_we : integer;
  attribute c_qualify_we of U0 : label is 0;
  attribute c_read_mif : integer;
  attribute c_read_mif of U0 : label is 1;
  attribute c_reg_a_d_inputs : integer;
  attribute c_reg_a_d_inputs of U0 : label is 0;
  attribute c_reg_dpra_input : integer;
  attribute c_reg_dpra_input of U0 : label is 0;
  attribute c_sync_enable : integer;
  attribute c_sync_enable of U0 : label is 1;
  attribute c_width : integer;
  attribute c_width of U0 : label is 32;
begin
U0: entity work.dist_mem_gen_0_dist_mem_gen_v8_0_13
     port map (
      a(5 downto 0) => a(5 downto 0),
      clk => clk,
      d(31 downto 0) => d(31 downto 0),
      dpo(31 downto 0) => dpo(31 downto 0),
      dpra(5 downto 0) => dpra(5 downto 0),
      i_ce => '1',
      qdpo(31 downto 0) => NLW_U0_qdpo_UNCONNECTED(31 downto 0),
      qdpo_ce => '1',
      qdpo_clk => '0',
      qdpo_rst => '0',
      qdpo_srst => '0',
      qspo(31 downto 0) => NLW_U0_qspo_UNCONNECTED(31 downto 0),
      qspo_ce => '1',
      qspo_rst => '0',
      qspo_srst => '0',
      spo(31 downto 0) => spo(31 downto 0),
      we => we
    );
end STRUCTURE;
