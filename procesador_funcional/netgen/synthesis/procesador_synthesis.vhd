--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: procesador_synthesis.vhd
-- /___/   /\     Timestamp: Thu Jan 12 23:47:00 2023
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm procesador -w -dir netgen/synthesis -ofmt vhdl -sim procesador.ngc procesador_synthesis.vhd 
-- Device	: xc7a100t-2-csg324
-- Input file	: procesador.ngc
-- Output file	: C:\Users\Alan\Desktop\procesador\netgen\synthesis\procesador_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: procesador
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity procesador is
  port (
    clk : in STD_LOGIC := 'X'; 
    clr : in STD_LOGIC := 'X'; 
    portb : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end procesador;

architecture Structure of procesador is
  signal clk_BUFGP_0 : STD_LOGIC; 
  signal clr_IBUF_1 : STD_LOGIC; 
  signal I_aux_11_Q : STD_LOGIC; 
  signal I_aux_10_Q : STD_LOGIC; 
  signal I_aux_1_Q : STD_LOGIC; 
  signal I_aux_12_Q : STD_LOGIC; 
  signal I_aux_4_Q : STD_LOGIC; 
  signal cto1_sel_alu_2_33 : STD_LOGIC; 
  signal cto1_sel_alu_1_34 : STD_LOGIC; 
  signal cto1_sel_alu_0_35 : STD_LOGIC; 
  signal cto1_sel_read_d_0_36 : STD_LOGIC; 
  signal cto1_sel_read_r_4_37 : STD_LOGIC; 
  signal cto1_sel_read_r_1_38 : STD_LOGIC; 
  signal cto1_sel_read_r_0_39 : STD_LOGIC; 
  signal cto1_en_w_40 : STD_LOGIC; 
  signal cto1_en_port_41 : STD_LOGIC; 
  signal cto1_ld_mov_42 : STD_LOGIC; 
  signal cto3_n0033 : STD_LOGIC; 
  signal Mmux_GND_5_o_off_br_aux_15_mux_4_OUT_rs_B_8_1 : STD_LOGIC; 
  signal cto1_Mmux_I_15_I_4_Mux_67_o12 : STD_LOGIC; 
  signal cto1_Mmux_I_15_I_8_Mux_59_o111 : STD_LOGIC; 
  signal cto1_I_15_GND_6_o_Mux_41_o : STD_LOGIC; 
  signal cto1_I_15_PWR_7_o_Mux_36_o : STD_LOGIC; 
  signal cto1_I_15_I_0_Mux_77_o : STD_LOGIC; 
  signal cto1_I_15_I_1_Mux_75_o : STD_LOGIC; 
  signal cto1_I_15_I_9_Mux_69_o : STD_LOGIC; 
  signal cto1_I_15_PWR_6_o_Mux_57_o : STD_LOGIC; 
  signal cto1_I_15_PWR_6_o_Mux_55_o : STD_LOGIC; 
  signal cto1_I_15_PWR_6_o_Mux_53_o : STD_LOGIC; 
  signal cto1_I_15_I_4_Mux_67_o : STD_LOGIC; 
  signal cto3_n0033_15_1_154 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
  signal N9 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal cto6_Mmux_F_aux77 : STD_LOGIC; 
  signal cto6_Mmux_F_aux771_162 : STD_LOGIC; 
  signal cto6_Mmux_F_aux76 : STD_LOGIC; 
  signal cto6_Mmux_F_aux761_164 : STD_LOGIC; 
  signal cto6_Mmux_F_aux75 : STD_LOGIC; 
  signal cto6_Mmux_F_aux751_166 : STD_LOGIC; 
  signal cto6_Mmux_F_aux74 : STD_LOGIC; 
  signal cto6_Mmux_F_aux741_168 : STD_LOGIC; 
  signal cto6_Mmux_F_aux73 : STD_LOGIC; 
  signal cto6_Mmux_F_aux731_170 : STD_LOGIC; 
  signal cto6_Mmux_F_aux72 : STD_LOGIC; 
  signal cto6_Mmux_F_aux721_172 : STD_LOGIC; 
  signal cto2_Maccum_q_PC_cy_2_rt_183 : STD_LOGIC; 
  signal cto2_Maccum_q_PC_cy_3_rt_184 : STD_LOGIC; 
  signal cto2_Maccum_q_PC_cy_4_rt_185 : STD_LOGIC; 
  signal N23 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal N27 : STD_LOGIC; 
  signal N35 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal N43 : STD_LOGIC; 
  signal cto2_Maccum_q_PC_cy_1_rt_193 : STD_LOGIC; 
  signal cto2_Maccum_q_PC_cy_5_rt_194 : STD_LOGIC; 
  signal cto2_Maccum_q_PC_cy_6_rt_195 : STD_LOGIC; 
  signal cto2_Maccum_q_PC_cy_7_rt_196 : STD_LOGIC; 
  signal cto2_Maccum_q_PC_cy_8_rt_197 : STD_LOGIC; 
  signal cto2_Maccum_q_PC_cy_9_rt_198 : STD_LOGIC; 
  signal cto2_Maccum_q_PC_cy_10_rt_199 : STD_LOGIC; 
  signal cto2_Maccum_q_PC_cy_11_rt_200 : STD_LOGIC; 
  signal cto2_Maccum_q_PC_cy_12_rt_201 : STD_LOGIC; 
  signal cto2_Maccum_q_PC_cy_13_rt_202 : STD_LOGIC; 
  signal cto2_Maccum_q_PC_cy_14_rt_203 : STD_LOGIC; 
  signal cto2_Maccum_q_PC_xor_15_rt_204 : STD_LOGIC; 
  signal N45 : STD_LOGIC; 
  signal N46 : STD_LOGIC; 
  signal N47 : STD_LOGIC; 
  signal N48 : STD_LOGIC; 
  signal N49 : STD_LOGIC; 
  signal N50 : STD_LOGIC; 
  signal cto2_q_PC : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal O_r_aux : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal O_d_aux : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal cto5_qaux : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal F_aux : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal dato_I_aux : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal cto2_Maccum_q_PC_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal cto2_Maccum_q_PC_cy : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal cto4_cto17_qaux : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal cto4_cto16_qaux : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal cto4_O_aux : STD_LOGIC_VECTOR ( 17 downto 16 ); 
  signal cto6_Mmux_F_aux1_rs_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal cto6_Mmux_F_aux1_rs_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal cto6_Mmux_F_aux1_split : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal cto1_GND_6_o_PWR_6_o_mux_3_OUT : STD_LOGIC_VECTOR ( 2 downto 2 ); 
  signal cto3_n0033_0 : STD_LOGIC_VECTOR ( 15 downto 15 ); 
begin
  XST_GND : GND
    port map (
      G => Mmux_GND_5_o_off_br_aux_15_mux_4_OUT_rs_B_8_1
    );
  cto2_q_PC_0 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => clr_IBUF_1,
      D => Result(0),
      Q => cto2_q_PC(0)
    );
  cto2_q_PC_1 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => clr_IBUF_1,
      D => Result(1),
      Q => cto2_q_PC(1)
    );
  cto2_q_PC_2 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => clr_IBUF_1,
      D => Result(2),
      Q => cto2_q_PC(2)
    );
  cto2_q_PC_3 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => clr_IBUF_1,
      D => Result(3),
      Q => cto2_q_PC(3)
    );
  cto2_q_PC_4 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => clr_IBUF_1,
      D => Result(4),
      Q => cto2_q_PC(4)
    );
  cto2_q_PC_5 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => clr_IBUF_1,
      D => Result(5),
      Q => cto2_q_PC(5)
    );
  cto2_q_PC_6 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => clr_IBUF_1,
      D => Result(6),
      Q => cto2_q_PC(6)
    );
  cto2_q_PC_7 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => clr_IBUF_1,
      D => Result(7),
      Q => cto2_q_PC(7)
    );
  cto2_q_PC_8 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => clr_IBUF_1,
      D => Result(8),
      Q => cto2_q_PC(8)
    );
  cto2_q_PC_9 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => clr_IBUF_1,
      D => Result(9),
      Q => cto2_q_PC(9)
    );
  cto2_q_PC_10 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => clr_IBUF_1,
      D => Result(10),
      Q => cto2_q_PC(10)
    );
  cto2_q_PC_11 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => clr_IBUF_1,
      D => Result(11),
      Q => cto2_q_PC(11)
    );
  cto2_q_PC_12 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => clr_IBUF_1,
      D => Result(12),
      Q => cto2_q_PC(12)
    );
  cto2_q_PC_13 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => clr_IBUF_1,
      D => Result(13),
      Q => cto2_q_PC(13)
    );
  cto2_q_PC_14 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => clr_IBUF_1,
      D => Result(14),
      Q => cto2_q_PC(14)
    );
  cto2_q_PC_15 : FDC
    port map (
      C => clk_BUFGP_0,
      CLR => clr_IBUF_1,
      D => Result(15),
      Q => cto2_q_PC(15)
    );
  cto2_Maccum_q_PC_cy_0_Q : MUXCY
    port map (
      CI => Mmux_GND_5_o_off_br_aux_15_mux_4_OUT_rs_B_8_1,
      DI => cto2_q_PC(0),
      S => cto2_Maccum_q_PC_lut(0),
      O => cto2_Maccum_q_PC_cy(0)
    );
  cto2_Maccum_q_PC_xor_0_Q : XORCY
    port map (
      CI => Mmux_GND_5_o_off_br_aux_15_mux_4_OUT_rs_B_8_1,
      LI => cto2_Maccum_q_PC_lut(0),
      O => Result(0)
    );
  cto2_Maccum_q_PC_cy_1_Q : MUXCY
    port map (
      CI => cto2_Maccum_q_PC_cy(0),
      DI => cto2_q_PC(1),
      S => cto2_Maccum_q_PC_cy_1_rt_193,
      O => cto2_Maccum_q_PC_cy(1)
    );
  cto2_Maccum_q_PC_xor_1_Q : XORCY
    port map (
      CI => cto2_Maccum_q_PC_cy(0),
      LI => cto2_Maccum_q_PC_cy_1_rt_193,
      O => Result(1)
    );
  cto2_Maccum_q_PC_cy_2_Q : MUXCY
    port map (
      CI => cto2_Maccum_q_PC_cy(1),
      DI => cto2_q_PC(2),
      S => cto2_Maccum_q_PC_cy_2_rt_183,
      O => cto2_Maccum_q_PC_cy(2)
    );
  cto2_Maccum_q_PC_xor_2_Q : XORCY
    port map (
      CI => cto2_Maccum_q_PC_cy(1),
      LI => cto2_Maccum_q_PC_cy_2_rt_183,
      O => Result(2)
    );
  cto2_Maccum_q_PC_cy_3_Q : MUXCY
    port map (
      CI => cto2_Maccum_q_PC_cy(2),
      DI => cto2_q_PC(3),
      S => cto2_Maccum_q_PC_cy_3_rt_184,
      O => cto2_Maccum_q_PC_cy(3)
    );
  cto2_Maccum_q_PC_xor_3_Q : XORCY
    port map (
      CI => cto2_Maccum_q_PC_cy(2),
      LI => cto2_Maccum_q_PC_cy_3_rt_184,
      O => Result(3)
    );
  cto2_Maccum_q_PC_cy_4_Q : MUXCY
    port map (
      CI => cto2_Maccum_q_PC_cy(3),
      DI => cto2_q_PC(4),
      S => cto2_Maccum_q_PC_cy_4_rt_185,
      O => cto2_Maccum_q_PC_cy(4)
    );
  cto2_Maccum_q_PC_xor_4_Q : XORCY
    port map (
      CI => cto2_Maccum_q_PC_cy(3),
      LI => cto2_Maccum_q_PC_cy_4_rt_185,
      O => Result(4)
    );
  cto2_Maccum_q_PC_cy_5_Q : MUXCY
    port map (
      CI => cto2_Maccum_q_PC_cy(4),
      DI => cto2_q_PC(5),
      S => cto2_Maccum_q_PC_cy_5_rt_194,
      O => cto2_Maccum_q_PC_cy(5)
    );
  cto2_Maccum_q_PC_xor_5_Q : XORCY
    port map (
      CI => cto2_Maccum_q_PC_cy(4),
      LI => cto2_Maccum_q_PC_cy_5_rt_194,
      O => Result(5)
    );
  cto2_Maccum_q_PC_cy_6_Q : MUXCY
    port map (
      CI => cto2_Maccum_q_PC_cy(5),
      DI => cto2_q_PC(6),
      S => cto2_Maccum_q_PC_cy_6_rt_195,
      O => cto2_Maccum_q_PC_cy(6)
    );
  cto2_Maccum_q_PC_xor_6_Q : XORCY
    port map (
      CI => cto2_Maccum_q_PC_cy(5),
      LI => cto2_Maccum_q_PC_cy_6_rt_195,
      O => Result(6)
    );
  cto2_Maccum_q_PC_cy_7_Q : MUXCY
    port map (
      CI => cto2_Maccum_q_PC_cy(6),
      DI => cto2_q_PC(7),
      S => cto2_Maccum_q_PC_cy_7_rt_196,
      O => cto2_Maccum_q_PC_cy(7)
    );
  cto2_Maccum_q_PC_xor_7_Q : XORCY
    port map (
      CI => cto2_Maccum_q_PC_cy(6),
      LI => cto2_Maccum_q_PC_cy_7_rt_196,
      O => Result(7)
    );
  cto2_Maccum_q_PC_cy_8_Q : MUXCY
    port map (
      CI => cto2_Maccum_q_PC_cy(7),
      DI => cto2_q_PC(8),
      S => cto2_Maccum_q_PC_cy_8_rt_197,
      O => cto2_Maccum_q_PC_cy(8)
    );
  cto2_Maccum_q_PC_xor_8_Q : XORCY
    port map (
      CI => cto2_Maccum_q_PC_cy(7),
      LI => cto2_Maccum_q_PC_cy_8_rt_197,
      O => Result(8)
    );
  cto2_Maccum_q_PC_cy_9_Q : MUXCY
    port map (
      CI => cto2_Maccum_q_PC_cy(8),
      DI => cto2_q_PC(9),
      S => cto2_Maccum_q_PC_cy_9_rt_198,
      O => cto2_Maccum_q_PC_cy(9)
    );
  cto2_Maccum_q_PC_xor_9_Q : XORCY
    port map (
      CI => cto2_Maccum_q_PC_cy(8),
      LI => cto2_Maccum_q_PC_cy_9_rt_198,
      O => Result(9)
    );
  cto2_Maccum_q_PC_cy_10_Q : MUXCY
    port map (
      CI => cto2_Maccum_q_PC_cy(9),
      DI => cto2_q_PC(10),
      S => cto2_Maccum_q_PC_cy_10_rt_199,
      O => cto2_Maccum_q_PC_cy(10)
    );
  cto2_Maccum_q_PC_xor_10_Q : XORCY
    port map (
      CI => cto2_Maccum_q_PC_cy(9),
      LI => cto2_Maccum_q_PC_cy_10_rt_199,
      O => Result(10)
    );
  cto2_Maccum_q_PC_cy_11_Q : MUXCY
    port map (
      CI => cto2_Maccum_q_PC_cy(10),
      DI => cto2_q_PC(11),
      S => cto2_Maccum_q_PC_cy_11_rt_200,
      O => cto2_Maccum_q_PC_cy(11)
    );
  cto2_Maccum_q_PC_xor_11_Q : XORCY
    port map (
      CI => cto2_Maccum_q_PC_cy(10),
      LI => cto2_Maccum_q_PC_cy_11_rt_200,
      O => Result(11)
    );
  cto2_Maccum_q_PC_cy_12_Q : MUXCY
    port map (
      CI => cto2_Maccum_q_PC_cy(11),
      DI => cto2_q_PC(12),
      S => cto2_Maccum_q_PC_cy_12_rt_201,
      O => cto2_Maccum_q_PC_cy(12)
    );
  cto2_Maccum_q_PC_xor_12_Q : XORCY
    port map (
      CI => cto2_Maccum_q_PC_cy(11),
      LI => cto2_Maccum_q_PC_cy_12_rt_201,
      O => Result(12)
    );
  cto2_Maccum_q_PC_cy_13_Q : MUXCY
    port map (
      CI => cto2_Maccum_q_PC_cy(12),
      DI => cto2_q_PC(13),
      S => cto2_Maccum_q_PC_cy_13_rt_202,
      O => cto2_Maccum_q_PC_cy(13)
    );
  cto2_Maccum_q_PC_xor_13_Q : XORCY
    port map (
      CI => cto2_Maccum_q_PC_cy(12),
      LI => cto2_Maccum_q_PC_cy_13_rt_202,
      O => Result(13)
    );
  cto2_Maccum_q_PC_cy_14_Q : MUXCY
    port map (
      CI => cto2_Maccum_q_PC_cy(13),
      DI => cto2_q_PC(14),
      S => cto2_Maccum_q_PC_cy_14_rt_203,
      O => cto2_Maccum_q_PC_cy(14)
    );
  cto2_Maccum_q_PC_xor_14_Q : XORCY
    port map (
      CI => cto2_Maccum_q_PC_cy(13),
      LI => cto2_Maccum_q_PC_cy_14_rt_203,
      O => Result(14)
    );
  cto2_Maccum_q_PC_xor_15_Q : XORCY
    port map (
      CI => cto2_Maccum_q_PC_cy(14),
      LI => cto2_Maccum_q_PC_xor_15_rt_204,
      O => Result(15)
    );
  cto4_cto17_qaux_7 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => cto4_O_aux(17),
      CLR => clr_IBUF_1,
      D => dato_I_aux(7),
      Q => cto4_cto17_qaux(7)
    );
  cto4_cto17_qaux_6 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => cto4_O_aux(17),
      CLR => clr_IBUF_1,
      D => dato_I_aux(6),
      Q => cto4_cto17_qaux(6)
    );
  cto4_cto17_qaux_5 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => cto4_O_aux(17),
      CLR => clr_IBUF_1,
      D => dato_I_aux(5),
      Q => cto4_cto17_qaux(5)
    );
  cto4_cto17_qaux_4 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => cto4_O_aux(17),
      CLR => clr_IBUF_1,
      D => dato_I_aux(4),
      Q => cto4_cto17_qaux(4)
    );
  cto4_cto17_qaux_3 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => cto4_O_aux(17),
      CLR => clr_IBUF_1,
      D => dato_I_aux(3),
      Q => cto4_cto17_qaux(3)
    );
  cto4_cto17_qaux_2 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => cto4_O_aux(17),
      CLR => clr_IBUF_1,
      D => dato_I_aux(2),
      Q => cto4_cto17_qaux(2)
    );
  cto4_cto17_qaux_1 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => cto4_O_aux(17),
      CLR => clr_IBUF_1,
      D => dato_I_aux(1),
      Q => cto4_cto17_qaux(1)
    );
  cto4_cto17_qaux_0 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => cto4_O_aux(17),
      CLR => clr_IBUF_1,
      D => dato_I_aux(0),
      Q => cto4_cto17_qaux(0)
    );
  cto4_cto16_qaux_7 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => cto4_O_aux(16),
      CLR => clr_IBUF_1,
      D => dato_I_aux(7),
      Q => cto4_cto16_qaux(7)
    );
  cto4_cto16_qaux_6 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => cto4_O_aux(16),
      CLR => clr_IBUF_1,
      D => dato_I_aux(6),
      Q => cto4_cto16_qaux(6)
    );
  cto4_cto16_qaux_5 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => cto4_O_aux(16),
      CLR => clr_IBUF_1,
      D => dato_I_aux(5),
      Q => cto4_cto16_qaux(5)
    );
  cto4_cto16_qaux_4 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => cto4_O_aux(16),
      CLR => clr_IBUF_1,
      D => dato_I_aux(4),
      Q => cto4_cto16_qaux(4)
    );
  cto4_cto16_qaux_3 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => cto4_O_aux(16),
      CLR => clr_IBUF_1,
      D => dato_I_aux(3),
      Q => cto4_cto16_qaux(3)
    );
  cto4_cto16_qaux_2 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => cto4_O_aux(16),
      CLR => clr_IBUF_1,
      D => dato_I_aux(2),
      Q => cto4_cto16_qaux(2)
    );
  cto4_cto16_qaux_1 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => cto4_O_aux(16),
      CLR => clr_IBUF_1,
      D => dato_I_aux(1),
      Q => cto4_cto16_qaux(1)
    );
  cto4_cto16_qaux_0 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => cto4_O_aux(16),
      CLR => clr_IBUF_1,
      D => dato_I_aux(0),
      Q => cto4_cto16_qaux(0)
    );
  cto5_qaux_7 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => cto1_en_port_41,
      CLR => clr_IBUF_1,
      D => O_r_aux(7),
      Q => cto5_qaux(7)
    );
  cto5_qaux_6 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => cto1_en_port_41,
      CLR => clr_IBUF_1,
      D => O_r_aux(6),
      Q => cto5_qaux(6)
    );
  cto5_qaux_5 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => cto1_en_port_41,
      CLR => clr_IBUF_1,
      D => O_r_aux(5),
      Q => cto5_qaux(5)
    );
  cto5_qaux_4 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => cto1_en_port_41,
      CLR => clr_IBUF_1,
      D => O_r_aux(4),
      Q => cto5_qaux(4)
    );
  cto5_qaux_3 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => cto1_en_port_41,
      CLR => clr_IBUF_1,
      D => O_r_aux(3),
      Q => cto5_qaux(3)
    );
  cto5_qaux_2 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => cto1_en_port_41,
      CLR => clr_IBUF_1,
      D => O_r_aux(2),
      Q => cto5_qaux(2)
    );
  cto5_qaux_1 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => cto1_en_port_41,
      CLR => clr_IBUF_1,
      D => O_r_aux(1),
      Q => cto5_qaux(1)
    );
  cto5_qaux_0 : FDCE
    port map (
      C => clk_BUFGP_0,
      CE => cto1_en_port_41,
      CLR => clr_IBUF_1,
      D => O_r_aux(0),
      Q => cto5_qaux(0)
    );
  cto6_Mmux_F_aux1_rs_xor_7_Q : XORCY
    port map (
      CI => cto6_Mmux_F_aux1_rs_cy(6),
      LI => cto6_Mmux_F_aux1_rs_lut(7),
      O => cto6_Mmux_F_aux1_split(7)
    );
  cto6_Mmux_F_aux1_rs_lut_7_Q : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => cto1_sel_alu_0_35,
      I1 => O_r_aux(7),
      I2 => O_d_aux(7),
      O => cto6_Mmux_F_aux1_rs_lut(7)
    );
  cto6_Mmux_F_aux1_rs_xor_6_Q : XORCY
    port map (
      CI => cto6_Mmux_F_aux1_rs_cy(5),
      LI => cto6_Mmux_F_aux1_rs_lut(6),
      O => cto6_Mmux_F_aux1_split(6)
    );
  cto6_Mmux_F_aux1_rs_cy_6_Q : MUXCY
    port map (
      CI => cto6_Mmux_F_aux1_rs_cy(5),
      DI => O_d_aux(6),
      S => cto6_Mmux_F_aux1_rs_lut(6),
      O => cto6_Mmux_F_aux1_rs_cy(6)
    );
  cto6_Mmux_F_aux1_rs_xor_5_Q : XORCY
    port map (
      CI => cto6_Mmux_F_aux1_rs_cy(4),
      LI => cto6_Mmux_F_aux1_rs_lut(5),
      O => cto6_Mmux_F_aux1_split(5)
    );
  cto6_Mmux_F_aux1_rs_cy_5_Q : MUXCY
    port map (
      CI => cto6_Mmux_F_aux1_rs_cy(4),
      DI => O_d_aux(5),
      S => cto6_Mmux_F_aux1_rs_lut(5),
      O => cto6_Mmux_F_aux1_rs_cy(5)
    );
  cto6_Mmux_F_aux1_rs_xor_4_Q : XORCY
    port map (
      CI => cto6_Mmux_F_aux1_rs_cy(3),
      LI => cto6_Mmux_F_aux1_rs_lut(4),
      O => cto6_Mmux_F_aux1_split(4)
    );
  cto6_Mmux_F_aux1_rs_cy_4_Q : MUXCY
    port map (
      CI => cto6_Mmux_F_aux1_rs_cy(3),
      DI => O_d_aux(4),
      S => cto6_Mmux_F_aux1_rs_lut(4),
      O => cto6_Mmux_F_aux1_rs_cy(4)
    );
  cto6_Mmux_F_aux1_rs_xor_3_Q : XORCY
    port map (
      CI => cto6_Mmux_F_aux1_rs_cy(2),
      LI => cto6_Mmux_F_aux1_rs_lut(3),
      O => cto6_Mmux_F_aux1_split(3)
    );
  cto6_Mmux_F_aux1_rs_cy_3_Q : MUXCY
    port map (
      CI => cto6_Mmux_F_aux1_rs_cy(2),
      DI => O_d_aux(3),
      S => cto6_Mmux_F_aux1_rs_lut(3),
      O => cto6_Mmux_F_aux1_rs_cy(3)
    );
  cto6_Mmux_F_aux1_rs_xor_2_Q : XORCY
    port map (
      CI => cto6_Mmux_F_aux1_rs_cy(1),
      LI => cto6_Mmux_F_aux1_rs_lut(2),
      O => cto6_Mmux_F_aux1_split(2)
    );
  cto6_Mmux_F_aux1_rs_cy_2_Q : MUXCY
    port map (
      CI => cto6_Mmux_F_aux1_rs_cy(1),
      DI => O_d_aux(2),
      S => cto6_Mmux_F_aux1_rs_lut(2),
      O => cto6_Mmux_F_aux1_rs_cy(2)
    );
  cto6_Mmux_F_aux1_rs_xor_1_Q : XORCY
    port map (
      CI => cto6_Mmux_F_aux1_rs_cy(0),
      LI => cto6_Mmux_F_aux1_rs_lut(1),
      O => cto6_Mmux_F_aux1_split(1)
    );
  cto6_Mmux_F_aux1_rs_cy_1_Q : MUXCY
    port map (
      CI => cto6_Mmux_F_aux1_rs_cy(0),
      DI => O_d_aux(1),
      S => cto6_Mmux_F_aux1_rs_lut(1),
      O => cto6_Mmux_F_aux1_rs_cy(1)
    );
  cto6_Mmux_F_aux1_rs_xor_0_Q : XORCY
    port map (
      CI => cto1_sel_alu_0_35,
      LI => cto6_Mmux_F_aux1_rs_lut(0),
      O => cto6_Mmux_F_aux1_split(0)
    );
  cto6_Mmux_F_aux1_rs_cy_0_Q : MUXCY
    port map (
      CI => cto1_sel_alu_0_35,
      DI => O_d_aux(0),
      S => cto6_Mmux_F_aux1_rs_lut(0),
      O => cto6_Mmux_F_aux1_rs_cy(0)
    );
  cto1_sel_alu_0 : LD
    port map (
      D => cto1_I_15_PWR_6_o_Mux_57_o,
      G => cto1_I_15_PWR_7_o_Mux_36_o,
      Q => cto1_sel_alu_0_35
    );
  cto1_sel_alu_1 : LD
    port map (
      D => cto1_I_15_PWR_6_o_Mux_55_o,
      G => cto1_I_15_PWR_7_o_Mux_36_o,
      Q => cto1_sel_alu_1_34
    );
  cto1_ld_mov : LD
    port map (
      D => I_aux_11_Q,
      G => cto1_I_15_PWR_7_o_Mux_36_o,
      Q => cto1_ld_mov_42
    );
  cto1_sel_alu_2 : LD
    port map (
      D => cto1_I_15_PWR_6_o_Mux_53_o,
      G => cto1_I_15_PWR_7_o_Mux_36_o,
      Q => cto1_sel_alu_2_33
    );
  cto1_sel_read_r_0 : LD
    port map (
      D => cto1_I_15_I_0_Mux_77_o,
      G => cto1_I_15_PWR_7_o_Mux_36_o,
      Q => cto1_sel_read_r_0_39
    );
  cto1_sel_read_r_1 : LD
    port map (
      D => cto1_I_15_I_1_Mux_75_o,
      G => cto1_I_15_PWR_7_o_Mux_36_o,
      Q => cto1_sel_read_r_1_38
    );
  cto1_sel_read_r_4 : LD
    port map (
      D => cto1_I_15_I_9_Mux_69_o,
      G => cto1_I_15_PWR_7_o_Mux_36_o,
      Q => cto1_sel_read_r_4_37
    );
  cto1_sel_read_d_0 : LD
    port map (
      D => cto1_I_15_I_4_Mux_67_o,
      G => cto1_I_15_PWR_7_o_Mux_36_o,
      Q => cto1_sel_read_d_0_36
    );
  cto1_en_w : LD
    port map (
      D => cto1_I_15_GND_6_o_Mux_41_o,
      G => cto1_I_15_PWR_7_o_Mux_36_o,
      Q => cto1_en_w_40
    );
  cto1_en_port : LD
    port map (
      D => I_aux_12_Q,
      G => cto1_I_15_PWR_7_o_Mux_36_o,
      Q => cto1_en_port_41
    );
  Mmux_dato_I_aux11 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => cto1_ld_mov_42,
      I1 => F_aux(0),
      O => dato_I_aux(0)
    );
  cto1_GND_6_o_PWR_6_o_mux_3_OUT_2_51 : LUT5
    generic map(
      INIT => X"04000004"
    )
    port map (
      I0 => I_aux_1_Q,
      I1 => I_aux_4_Q,
      I2 => I_aux_12_Q,
      I3 => I_aux_11_Q,
      I4 => I_aux_10_Q,
      O => cto1_GND_6_o_PWR_6_o_mux_3_OUT(2)
    );
  cto3_n0033_15_1 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => cto2_q_PC(7),
      I1 => cto2_q_PC(6),
      I2 => cto2_q_PC(9),
      I3 => cto2_q_PC(8),
      I4 => cto2_q_PC(11),
      I5 => cto2_q_PC(10),
      O => cto3_n0033_0(15)
    );
  cto3_n0033_15_2 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => cto2_q_PC(15),
      I1 => cto2_q_PC(14),
      I2 => cto2_q_PC(3),
      I3 => cto2_q_PC(2),
      I4 => cto2_q_PC(5),
      I5 => cto2_q_PC(4),
      O => cto3_n0033_15_1_154
    );
  cto3_n0033_15_3 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => cto2_q_PC(12),
      I1 => cto2_q_PC(13),
      I2 => cto3_n0033_15_1_154,
      I3 => cto3_n0033_0(15),
      O => cto3_n0033
    );
  cto6_Mmux_F_aux78_SW0 : LUT5
    generic map(
      INIT => X"0C382810"
    )
    port map (
      I0 => cto1_sel_alu_0_35,
      I1 => cto1_sel_alu_1_34,
      I2 => cto1_sel_alu_2_33,
      I3 => O_d_aux(7),
      I4 => O_r_aux(7),
      O => N4
    );
  cto6_Mmux_F_aux78_SW1 : LUT5
    generic map(
      INIT => X"8CA8B890"
    )
    port map (
      I0 => cto1_sel_alu_0_35,
      I1 => cto1_sel_alu_1_34,
      I2 => cto1_sel_alu_2_33,
      I3 => O_r_aux(7),
      I4 => O_d_aux(7),
      O => N5
    );
  cto6_Mmux_F_aux71_SW0 : LUT5
    generic map(
      INIT => X"979FF5FD"
    )
    port map (
      I0 => cto1_sel_alu_2_33,
      I1 => cto1_sel_alu_1_34,
      I2 => cto1_sel_alu_0_35,
      I3 => O_d_aux(1),
      I4 => O_d_aux(0),
      O => N9
    );
  cto6_Mmux_F_aux71_SW1 : LUT5
    generic map(
      INIT => X"B3BB959D"
    )
    port map (
      I0 => cto1_sel_alu_2_33,
      I1 => cto1_sel_alu_1_34,
      I2 => cto1_sel_alu_0_35,
      I3 => O_d_aux(1),
      I4 => O_d_aux(0),
      O => N10
    );
  cto6_Mmux_F_aux71_SW2 : LUT5
    generic map(
      INIT => X"868EE4EC"
    )
    port map (
      I0 => cto1_sel_alu_2_33,
      I1 => cto1_sel_alu_1_34,
      I2 => cto1_sel_alu_0_35,
      I3 => O_d_aux(1),
      I4 => O_d_aux(0),
      O => N11
    );
  cto6_Mmux_F_aux71_SW3 : LUT5
    generic map(
      INIT => X"B084F0C4"
    )
    port map (
      I0 => cto1_sel_alu_0_35,
      I1 => cto1_sel_alu_1_34,
      I2 => cto1_sel_alu_2_33,
      I3 => O_d_aux(0),
      I4 => O_d_aux(1),
      O => N12
    );
  cto6_Mmux_F_aux71 : LUT6
    generic map(
      INIT => X"0055AAFF27272727"
    )
    port map (
      I0 => O_r_aux(0),
      I1 => N10,
      I2 => N9,
      I3 => N11,
      I4 => N12,
      I5 => cto6_Mmux_F_aux1_split(0),
      O => F_aux(0)
    );
  cto6_Mmux_F_aux771 : LUT6
    generic map(
      INIT => X"CE468A02FD75B931"
    )
    port map (
      I0 => cto1_sel_alu_0_35,
      I1 => cto1_sel_alu_1_34,
      I2 => O_r_aux(6),
      I3 => O_d_aux(5),
      I4 => O_d_aux(7),
      I5 => O_d_aux(6),
      O => cto6_Mmux_F_aux77
    );
  cto6_Mmux_F_aux772 : LUT3
    generic map(
      INIT => X"E8"
    )
    port map (
      I0 => O_r_aux(6),
      I1 => cto1_sel_alu_0_35,
      I2 => O_d_aux(6),
      O => cto6_Mmux_F_aux771_162
    );
  cto6_Mmux_F_aux761 : LUT6
    generic map(
      INIT => X"CE46FD758A02B931"
    )
    port map (
      I0 => cto1_sel_alu_0_35,
      I1 => cto1_sel_alu_1_34,
      I2 => O_r_aux(5),
      I3 => O_d_aux(4),
      I4 => O_d_aux(5),
      I5 => O_d_aux(6),
      O => cto6_Mmux_F_aux76
    );
  cto6_Mmux_F_aux751 : LUT6
    generic map(
      INIT => X"CE468A02FD75B931"
    )
    port map (
      I0 => cto1_sel_alu_0_35,
      I1 => cto1_sel_alu_1_34,
      I2 => O_r_aux(4),
      I3 => O_d_aux(3),
      I4 => O_d_aux(5),
      I5 => O_d_aux(4),
      O => cto6_Mmux_F_aux75
    );
  cto6_Mmux_F_aux741 : LUT6
    generic map(
      INIT => X"BEBBBE1114BB1411"
    )
    port map (
      I0 => cto1_sel_alu_1_34,
      I1 => O_d_aux(3),
      I2 => O_r_aux(3),
      I3 => cto1_sel_alu_0_35,
      I4 => O_d_aux(4),
      I5 => O_d_aux(2),
      O => cto6_Mmux_F_aux74
    );
  cto6_Mmux_F_aux742 : LUT3
    generic map(
      INIT => X"E8"
    )
    port map (
      I0 => O_r_aux(3),
      I1 => cto1_sel_alu_0_35,
      I2 => O_d_aux(3),
      O => cto6_Mmux_F_aux741_168
    );
  cto6_Mmux_F_aux731 : LUT6
    generic map(
      INIT => X"CE8AFDB946027531"
    )
    port map (
      I0 => cto1_sel_alu_0_35,
      I1 => cto1_sel_alu_1_34,
      I2 => O_r_aux(2),
      I3 => O_d_aux(3),
      I4 => O_d_aux(2),
      I5 => O_d_aux(1),
      O => cto6_Mmux_F_aux73
    );
  cto6_Mmux_F_aux732 : LUT3
    generic map(
      INIT => X"E8"
    )
    port map (
      I0 => O_r_aux(2),
      I1 => cto1_sel_alu_0_35,
      I2 => O_d_aux(2),
      O => cto6_Mmux_F_aux731_170
    );
  cto6_Mmux_F_aux721 : LUT6
    generic map(
      INIT => X"CE8A4602FDB97531"
    )
    port map (
      I0 => cto1_sel_alu_0_35,
      I1 => cto1_sel_alu_1_34,
      I2 => O_r_aux(1),
      I3 => O_d_aux(2),
      I4 => O_d_aux(0),
      I5 => O_d_aux(1),
      O => cto6_Mmux_F_aux72
    );
  clr_IBUF : IBUF
    port map (
      I => clr,
      O => clr_IBUF_1
    );
  portb_7_OBUF : OBUF
    port map (
      I => cto5_qaux(7),
      O => portb(7)
    );
  portb_6_OBUF : OBUF
    port map (
      I => cto5_qaux(6),
      O => portb(6)
    );
  portb_5_OBUF : OBUF
    port map (
      I => cto5_qaux(5),
      O => portb(5)
    );
  portb_4_OBUF : OBUF
    port map (
      I => cto5_qaux(4),
      O => portb(4)
    );
  portb_3_OBUF : OBUF
    port map (
      I => cto5_qaux(3),
      O => portb(3)
    );
  portb_2_OBUF : OBUF
    port map (
      I => cto5_qaux(2),
      O => portb(2)
    );
  portb_1_OBUF : OBUF
    port map (
      I => cto5_qaux(1),
      O => portb(1)
    );
  portb_0_OBUF : OBUF
    port map (
      I => cto5_qaux(0),
      O => portb(0)
    );
  cto2_Maccum_q_PC_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cto2_q_PC(2),
      O => cto2_Maccum_q_PC_cy_2_rt_183
    );
  cto2_Maccum_q_PC_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cto2_q_PC(3),
      O => cto2_Maccum_q_PC_cy_3_rt_184
    );
  cto2_Maccum_q_PC_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cto2_q_PC(4),
      O => cto2_Maccum_q_PC_cy_4_rt_185
    );
  Mmux_dato_I_aux41 : LUT6
    generic map(
      INIT => X"F0D03010E0C02000"
    )
    port map (
      I0 => cto1_sel_alu_1_34,
      I1 => cto1_sel_alu_2_33,
      I2 => cto1_ld_mov_42,
      I3 => cto6_Mmux_F_aux741_168,
      I4 => cto6_Mmux_F_aux74,
      I5 => cto6_Mmux_F_aux1_split(3),
      O => dato_I_aux(3)
    );
  cto6_Mmux_F_aux78_SW4 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => O_d_aux(6),
      I1 => N5,
      I2 => N4,
      O => N23
    );
  Mmux_dato_I_aux71 : LUT5
    generic map(
      INIT => X"FFD82700"
    )
    port map (
      I0 => cto1_sel_alu_1_34,
      I1 => cto6_Mmux_F_aux771_162,
      I2 => cto6_Mmux_F_aux1_split(6),
      I3 => N26,
      I4 => N27,
      O => dato_I_aux(6)
    );
  cto6_Mmux_F_aux733_SW0 : LUT6
    generic map(
      INIT => X"BBBB3333B8883000"
    )
    port map (
      I0 => cto1_sel_alu_2_33,
      I1 => cto1_ld_mov_42,
      I2 => cto2_q_PC(0),
      I3 => cto2_q_PC(1),
      I4 => cto6_Mmux_F_aux73,
      I5 => cto3_n0033,
      O => N35
    );
  cto6_Mmux_F_aux733_SW1 : LUT6
    generic map(
      INIT => X"FFFF7777FCCC7444"
    )
    port map (
      I0 => cto1_sel_alu_2_33,
      I1 => cto1_ld_mov_42,
      I2 => cto2_q_PC(0),
      I3 => cto2_q_PC(1),
      I4 => cto6_Mmux_F_aux73,
      I5 => cto3_n0033,
      O => N36
    );
  Mmux_dato_I_aux31 : LUT5
    generic map(
      INIT => X"FFD82700"
    )
    port map (
      I0 => cto1_sel_alu_1_34,
      I1 => cto6_Mmux_F_aux731_170,
      I2 => cto6_Mmux_F_aux1_split(2),
      I3 => N35,
      I4 => N36,
      O => dato_I_aux(2)
    );
  Mmux_dato_I_aux81 : LUT6
    generic map(
      INIT => X"FE54FE54FEFE5454"
    )
    port map (
      I0 => cto1_ld_mov_42,
      I1 => cto2_q_PC(1),
      I2 => cto3_n0033,
      I3 => N24,
      I4 => N23,
      I5 => cto6_Mmux_F_aux1_split(7),
      O => dato_I_aux(7)
    );
  cto6_Mmux_F_aux773_SW0 : LUT6
    generic map(
      INIT => X"888800008B880300"
    )
    port map (
      I0 => cto1_sel_alu_2_33,
      I1 => cto1_ld_mov_42,
      I2 => cto2_q_PC(0),
      I3 => cto2_q_PC(1),
      I4 => cto6_Mmux_F_aux77,
      I5 => cto3_n0033,
      O => N26
    );
  cto6_Mmux_F_aux773_SW1 : LUT6
    generic map(
      INIT => X"CCCC4444CFCC4744"
    )
    port map (
      I0 => cto1_sel_alu_2_33,
      I1 => cto1_ld_mov_42,
      I2 => cto2_q_PC(0),
      I3 => cto2_q_PC(1),
      I4 => cto6_Mmux_F_aux77,
      I5 => cto3_n0033,
      O => N27
    );
  cto3_O_11_1 : LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => cto2_q_PC(12),
      I1 => cto2_q_PC(13),
      I2 => cto2_q_PC(1),
      I3 => cto3_n0033_15_1_154,
      I4 => cto3_n0033_0(15),
      O => I_aux_11_Q
    );
  cto3_O_10_1 : LUT6
    generic map(
      INIT => X"0000000000000100"
    )
    port map (
      I0 => cto2_q_PC(12),
      I1 => cto2_q_PC(13),
      I2 => cto2_q_PC(0),
      I3 => cto2_q_PC(1),
      I4 => cto3_n0033_15_1_154,
      I5 => cto3_n0033_0(15),
      O => I_aux_10_Q
    );
  cto3_Mmux_GND_35_o_PWR_35_o_select_4_OUT81 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => cto3_n0033_0(15),
      I1 => cto2_q_PC(13),
      I2 => cto2_q_PC(12),
      I3 => cto3_n0033_15_1_154,
      I4 => cto2_q_PC(1),
      I5 => cto2_q_PC(0),
      O => I_aux_1_Q
    );
  cto3_Mmux_GND_35_o_PWR_35_o_select_4_OUT101 : LUT6
    generic map(
      INIT => X"0000000100000000"
    )
    port map (
      I0 => cto3_n0033_0(15),
      I1 => cto2_q_PC(13),
      I2 => cto2_q_PC(12),
      I3 => cto3_n0033_15_1_154,
      I4 => cto2_q_PC(1),
      I5 => cto2_q_PC(0),
      O => I_aux_4_Q
    );
  cto1_Mmux_I_15_I_4_Mux_67_o11 : LUT6
    generic map(
      INIT => X"FFFFFFFFAAAA2220"
    )
    port map (
      I0 => I_aux_4_Q,
      I1 => cto1_GND_6_o_PWR_6_o_mux_3_OUT(2),
      I2 => I_aux_10_Q,
      I3 => I_aux_11_Q,
      I4 => cto1_Mmux_I_15_I_8_Mux_59_o111,
      I5 => cto1_Mmux_I_15_I_4_Mux_67_o12,
      O => cto1_I_15_I_4_Mux_67_o
    );
  cto1_Mmux_I_15_PWR_6_o_Mux_53_o12 : LUT6
    generic map(
      INIT => X"EEEEFEEEEEEEEEEE"
    )
    port map (
      I0 => I_aux_12_Q,
      I1 => cto1_Mmux_I_15_I_8_Mux_59_o111,
      I2 => I_aux_11_Q,
      I3 => I_aux_4_Q,
      I4 => I_aux_1_Q,
      I5 => I_aux_10_Q,
      O => cto1_I_15_PWR_6_o_Mux_57_o
    );
  cto1_Mmux_I_15_I_4_Mux_67_o121 : LUT6
    generic map(
      INIT => X"0010000000000000"
    )
    port map (
      I0 => cto2_q_PC(0),
      I1 => cto3_n0033,
      I2 => cto2_q_PC(1),
      I3 => I_aux_12_Q,
      I4 => cto1_GND_6_o_PWR_6_o_mux_3_OUT(2),
      I5 => I_aux_11_Q,
      O => cto1_Mmux_I_15_I_4_Mux_67_o12
    );
  cto1_n0189_2_1 : LUT6
    generic map(
      INIT => X"FFFFFFFEFFFEFFFE"
    )
    port map (
      I0 => cto2_q_PC(12),
      I1 => cto3_n0033_15_1_154,
      I2 => cto3_n0033_0(15),
      I3 => cto2_q_PC(13),
      I4 => cto2_q_PC(1),
      I5 => cto2_q_PC(0),
      O => I_aux_12_Q
    );
  cto1_Mmux_I_15_PWR_6_o_Mux_53_o1 : LUT4
    generic map(
      INIT => X"FFEF"
    )
    port map (
      I0 => cto3_n0033,
      I1 => cto2_q_PC(0),
      I2 => cto2_q_PC(1),
      I3 => cto1_GND_6_o_PWR_6_o_mux_3_OUT(2),
      O => cto1_I_15_PWR_6_o_Mux_53_o
    );
  cto1_Mmux_I_15_PWR_6_o_Mux_53_o1_SW0 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
    port map (
      I0 => cto2_q_PC(1),
      I1 => cto3_n0033_0(15),
      I2 => cto2_q_PC(13),
      I3 => cto2_q_PC(12),
      I4 => cto3_n0033_15_1_154,
      I5 => cto2_q_PC(0),
      O => cto1_Mmux_I_15_I_8_Mux_59_o111
    );
  cto1_Mmux_I_15_PWR_6_o_Mux_53_o111_SW0 : LUT5
    generic map(
      INIT => X"FFFFBBBF"
    )
    port map (
      I0 => cto3_n0033,
      I1 => cto1_GND_6_o_PWR_6_o_mux_3_OUT(2),
      I2 => I_aux_10_Q,
      I3 => I_aux_11_Q,
      I4 => cto2_q_PC(0),
      O => N43
    );
  cto1_Mmux_I_15_PWR_6_o_Mux_53_o111 : LUT6
    generic map(
      INIT => X"00000001AAAAAAAB"
    )
    port map (
      I0 => cto2_q_PC(1),
      I1 => cto3_n0033_15_1_154,
      I2 => cto2_q_PC(12),
      I3 => cto2_q_PC(13),
      I4 => cto3_n0033_0(15),
      I5 => N43,
      O => cto1_I_15_PWR_6_o_Mux_55_o
    );
  cto1_Mmux_I_15_PWR_7_o_Mux_36_o11 : LUT4
    generic map(
      INIT => X"FFEF"
    )
    port map (
      I0 => cto2_q_PC(0),
      I1 => I_aux_10_Q,
      I2 => cto2_q_PC(1),
      I3 => cto3_n0033,
      O => cto1_I_15_PWR_7_o_Mux_36_o
    );
  cto1_Mmux_I_15_GND_6_o_Mux_41_o11 : LUT6
    generic map(
      INIT => X"0000000100010001"
    )
    port map (
      I0 => cto3_n0033_0(15),
      I1 => cto2_q_PC(13),
      I2 => cto2_q_PC(12),
      I3 => cto3_n0033_15_1_154,
      I4 => cto2_q_PC(1),
      I5 => cto2_q_PC(0),
      O => cto1_I_15_GND_6_o_Mux_41_o
    );
  cto1_Mmux_I_15_I_1_Mux_75_o11 : LUT4
    generic map(
      INIT => X"0222"
    )
    port map (
      I0 => I_aux_1_Q,
      I1 => cto3_n0033,
      I2 => cto2_q_PC(1),
      I3 => cto2_q_PC(0),
      O => cto1_I_15_I_1_Mux_75_o
    );
  cto1_Mmux_I_15_I_9_Mux_69_o11 : LUT6
    generic map(
      INIT => X"A8BBA888ABBBA888"
    )
    port map (
      I0 => I_aux_11_Q,
      I1 => cto3_n0033,
      I2 => cto2_q_PC(0),
      I3 => cto2_q_PC(1),
      I4 => I_aux_10_Q,
      I5 => cto1_GND_6_o_PWR_6_o_mux_3_OUT(2),
      O => cto1_I_15_I_9_Mux_69_o
    );
  cto1_Mmux_I_15_I_0_Mux_77_o11 : LUT5
    generic map(
      INIT => X"A8ABBBBB"
    )
    port map (
      I0 => I_aux_4_Q,
      I1 => cto3_n0033,
      I2 => cto2_q_PC(0),
      I3 => cto1_GND_6_o_PWR_6_o_mux_3_OUT(2),
      I4 => cto2_q_PC(1),
      O => cto1_I_15_I_0_Mux_77_o
    );
  cto4_cto_dec_Mmux_O911 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => cto1_en_w_40,
      I1 => cto1_sel_read_d_0_36,
      O => cto4_O_aux(17)
    );
  cto4_cto_dec_Mmux_O811 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => cto1_sel_read_d_0_36,
      I1 => cto1_en_w_40,
      O => cto4_O_aux(16)
    );
  cto2_Maccum_q_PC_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cto2_q_PC(1),
      O => cto2_Maccum_q_PC_cy_1_rt_193
    );
  cto2_Maccum_q_PC_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cto2_q_PC(5),
      O => cto2_Maccum_q_PC_cy_5_rt_194
    );
  cto2_Maccum_q_PC_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cto2_q_PC(6),
      O => cto2_Maccum_q_PC_cy_6_rt_195
    );
  cto2_Maccum_q_PC_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cto2_q_PC(7),
      O => cto2_Maccum_q_PC_cy_7_rt_196
    );
  cto2_Maccum_q_PC_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cto2_q_PC(8),
      O => cto2_Maccum_q_PC_cy_8_rt_197
    );
  cto2_Maccum_q_PC_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cto2_q_PC(9),
      O => cto2_Maccum_q_PC_cy_9_rt_198
    );
  cto2_Maccum_q_PC_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cto2_q_PC(10),
      O => cto2_Maccum_q_PC_cy_10_rt_199
    );
  cto2_Maccum_q_PC_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cto2_q_PC(11),
      O => cto2_Maccum_q_PC_cy_11_rt_200
    );
  cto2_Maccum_q_PC_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cto2_q_PC(12),
      O => cto2_Maccum_q_PC_cy_12_rt_201
    );
  cto2_Maccum_q_PC_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cto2_q_PC(13),
      O => cto2_Maccum_q_PC_cy_13_rt_202
    );
  cto2_Maccum_q_PC_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cto2_q_PC(14),
      O => cto2_Maccum_q_PC_cy_14_rt_203
    );
  cto2_Maccum_q_PC_xor_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => cto2_q_PC(15),
      O => cto2_Maccum_q_PC_xor_15_rt_204
    );
  cto4_cto_mux_d_Mmux_O_2_f71 : LUT4
    generic map(
      INIT => X"A280"
    )
    port map (
      I0 => cto1_ld_mov_42,
      I1 => cto1_sel_read_d_0_36,
      I2 => cto4_cto17_qaux(0),
      I3 => cto4_cto16_qaux(0),
      O => O_d_aux(0)
    );
  cto4_cto_mux_d_Mmux_O_2_f7_01 : LUT4
    generic map(
      INIT => X"A280"
    )
    port map (
      I0 => cto1_ld_mov_42,
      I1 => cto1_sel_read_d_0_36,
      I2 => cto4_cto17_qaux(1),
      I3 => cto4_cto16_qaux(1),
      O => O_d_aux(1)
    );
  cto4_cto_mux_d_Mmux_O_2_f7_51 : LUT4
    generic map(
      INIT => X"A280"
    )
    port map (
      I0 => cto1_ld_mov_42,
      I1 => cto1_sel_read_d_0_36,
      I2 => cto4_cto17_qaux(6),
      I3 => cto4_cto16_qaux(6),
      O => O_d_aux(6)
    );
  cto4_cto_mux_d_Mmux_O_2_f7_11 : LUT4
    generic map(
      INIT => X"A280"
    )
    port map (
      I0 => cto1_ld_mov_42,
      I1 => cto1_sel_read_d_0_36,
      I2 => cto4_cto17_qaux(2),
      I3 => cto4_cto16_qaux(2),
      O => O_d_aux(2)
    );
  cto4_cto_mux_d_Mmux_O_2_f7_31 : LUT4
    generic map(
      INIT => X"A280"
    )
    port map (
      I0 => cto1_ld_mov_42,
      I1 => cto1_sel_read_d_0_36,
      I2 => cto4_cto17_qaux(4),
      I3 => cto4_cto16_qaux(4),
      O => O_d_aux(4)
    );
  cto4_cto_mux_d_Mmux_O_2_f7_41 : LUT4
    generic map(
      INIT => X"A280"
    )
    port map (
      I0 => cto1_ld_mov_42,
      I1 => cto1_sel_read_d_0_36,
      I2 => cto4_cto17_qaux(5),
      I3 => cto4_cto16_qaux(5),
      O => O_d_aux(5)
    );
  cto4_cto_mux_d_Mmux_O_2_f7_21 : LUT4
    generic map(
      INIT => X"A280"
    )
    port map (
      I0 => cto1_ld_mov_42,
      I1 => cto1_sel_read_d_0_36,
      I2 => cto4_cto17_qaux(3),
      I3 => cto4_cto16_qaux(3),
      O => O_d_aux(3)
    );
  cto4_cto_mux_r_Mmux_O_2_f7_01 : LUT5
    generic map(
      INIT => X"22022000"
    )
    port map (
      I0 => cto1_sel_read_r_4_37,
      I1 => cto1_sel_read_r_1_38,
      I2 => cto1_sel_read_r_0_39,
      I3 => cto4_cto17_qaux(1),
      I4 => cto4_cto16_qaux(1),
      O => O_r_aux(1)
    );
  cto4_cto_mux_r_Mmux_O_2_f7_11 : LUT5
    generic map(
      INIT => X"22022000"
    )
    port map (
      I0 => cto1_sel_read_r_4_37,
      I1 => cto1_sel_read_r_1_38,
      I2 => cto1_sel_read_r_0_39,
      I3 => cto4_cto17_qaux(2),
      I4 => cto4_cto16_qaux(2),
      O => O_r_aux(2)
    );
  cto4_cto_mux_r_Mmux_O_2_f7_51 : LUT5
    generic map(
      INIT => X"22022000"
    )
    port map (
      I0 => cto1_sel_read_r_4_37,
      I1 => cto1_sel_read_r_1_38,
      I2 => cto1_sel_read_r_0_39,
      I3 => cto4_cto17_qaux(6),
      I4 => cto4_cto16_qaux(6),
      O => O_r_aux(6)
    );
  cto4_cto_mux_r_Mmux_O_2_f71 : LUT5
    generic map(
      INIT => X"22022000"
    )
    port map (
      I0 => cto1_sel_read_r_4_37,
      I1 => cto1_sel_read_r_1_38,
      I2 => cto1_sel_read_r_0_39,
      I3 => cto4_cto17_qaux(0),
      I4 => cto4_cto16_qaux(0),
      O => O_r_aux(0)
    );
  cto4_cto_mux_r_Mmux_O_2_f7_31 : LUT5
    generic map(
      INIT => X"22022000"
    )
    port map (
      I0 => cto1_sel_read_r_4_37,
      I1 => cto1_sel_read_r_1_38,
      I2 => cto1_sel_read_r_0_39,
      I3 => cto4_cto17_qaux(4),
      I4 => cto4_cto16_qaux(4),
      O => O_r_aux(4)
    );
  cto4_cto_mux_r_Mmux_O_2_f7_41 : LUT5
    generic map(
      INIT => X"22022000"
    )
    port map (
      I0 => cto1_sel_read_r_4_37,
      I1 => cto1_sel_read_r_1_38,
      I2 => cto1_sel_read_r_0_39,
      I3 => cto4_cto17_qaux(5),
      I4 => cto4_cto16_qaux(5),
      O => O_r_aux(5)
    );
  cto4_cto_mux_r_Mmux_O_2_f7_21 : LUT5
    generic map(
      INIT => X"22022000"
    )
    port map (
      I0 => cto1_sel_read_r_4_37,
      I1 => cto1_sel_read_r_1_38,
      I2 => cto1_sel_read_r_0_39,
      I3 => cto4_cto17_qaux(3),
      I4 => cto4_cto16_qaux(3),
      O => O_r_aux(3)
    );
  cto4_cto_mux_d_Mmux_O_2_f7_61 : LUT4
    generic map(
      INIT => X"A280"
    )
    port map (
      I0 => cto1_ld_mov_42,
      I1 => cto1_sel_read_d_0_36,
      I2 => cto4_cto17_qaux(7),
      I3 => cto4_cto16_qaux(7),
      O => O_d_aux(7)
    );
  cto4_cto_mux_r_Mmux_O_2_f7_61 : LUT5
    generic map(
      INIT => X"22022000"
    )
    port map (
      I0 => cto1_sel_read_r_4_37,
      I1 => cto1_sel_read_r_1_38,
      I2 => cto1_sel_read_r_0_39,
      I3 => cto4_cto17_qaux(7),
      I4 => cto4_cto16_qaux(7),
      O => O_r_aux(7)
    );
  cto6_Mmux_F_aux78_SW5 : LUT6
    generic map(
      INIT => X"F4E075DF544075DF"
    )
    port map (
      I0 => cto1_sel_alu_2_33,
      I1 => O_r_aux(7),
      I2 => cto1_sel_alu_0_35,
      I3 => O_d_aux(7),
      I4 => cto1_sel_alu_1_34,
      I5 => O_d_aux(6),
      O => N24
    );
  cto6_Mmux_F_aux762 : LUT6
    generic map(
      INIT => X"FAEABAAAA0802000"
    )
    port map (
      I0 => cto1_sel_alu_0_35,
      I1 => cto1_sel_read_d_0_36,
      I2 => cto1_ld_mov_42,
      I3 => cto4_cto16_qaux(5),
      I4 => cto4_cto17_qaux(5),
      I5 => O_r_aux(5),
      O => cto6_Mmux_F_aux761_164
    );
  cto6_Mmux_F_aux752 : LUT6
    generic map(
      INIT => X"FAEABAAAA0802000"
    )
    port map (
      I0 => cto1_sel_alu_0_35,
      I1 => cto1_sel_read_d_0_36,
      I2 => cto1_ld_mov_42,
      I3 => cto4_cto16_qaux(4),
      I4 => cto4_cto17_qaux(4),
      I5 => O_r_aux(4),
      O => cto6_Mmux_F_aux751_166
    );
  cto6_Mmux_F_aux722 : LUT6
    generic map(
      INIT => X"FAEABAAAA0802000"
    )
    port map (
      I0 => cto1_sel_alu_0_35,
      I1 => cto1_sel_read_d_0_36,
      I2 => cto1_ld_mov_42,
      I3 => cto4_cto16_qaux(1),
      I4 => cto4_cto17_qaux(1),
      I5 => O_r_aux(1),
      O => cto6_Mmux_F_aux721_172
    );
  cto6_Mmux_F_aux1_rs_lut_1_Q : LUT6
    generic map(
      INIT => X"A59565555A6A9AAA"
    )
    port map (
      I0 => cto1_sel_alu_0_35,
      I1 => cto1_sel_read_d_0_36,
      I2 => cto1_ld_mov_42,
      I3 => cto4_cto16_qaux(1),
      I4 => cto4_cto17_qaux(1),
      I5 => O_r_aux(1),
      O => cto6_Mmux_F_aux1_rs_lut(1)
    );
  cto6_Mmux_F_aux1_rs_lut_2_Q : LUT6
    generic map(
      INIT => X"A59565555A6A9AAA"
    )
    port map (
      I0 => cto1_sel_alu_0_35,
      I1 => cto1_sel_read_d_0_36,
      I2 => cto1_ld_mov_42,
      I3 => cto4_cto16_qaux(2),
      I4 => cto4_cto17_qaux(2),
      I5 => O_r_aux(2),
      O => cto6_Mmux_F_aux1_rs_lut(2)
    );
  cto6_Mmux_F_aux1_rs_lut_3_Q : LUT6
    generic map(
      INIT => X"A59565555A6A9AAA"
    )
    port map (
      I0 => cto1_sel_alu_0_35,
      I1 => cto1_sel_read_d_0_36,
      I2 => cto1_ld_mov_42,
      I3 => cto4_cto16_qaux(3),
      I4 => cto4_cto17_qaux(3),
      I5 => O_r_aux(3),
      O => cto6_Mmux_F_aux1_rs_lut(3)
    );
  cto6_Mmux_F_aux1_rs_lut_4_Q : LUT6
    generic map(
      INIT => X"A59565555A6A9AAA"
    )
    port map (
      I0 => cto1_sel_alu_0_35,
      I1 => cto1_sel_read_d_0_36,
      I2 => cto1_ld_mov_42,
      I3 => cto4_cto16_qaux(4),
      I4 => cto4_cto17_qaux(4),
      I5 => O_r_aux(4),
      O => cto6_Mmux_F_aux1_rs_lut(4)
    );
  cto6_Mmux_F_aux1_rs_lut_5_Q : LUT6
    generic map(
      INIT => X"A59565555A6A9AAA"
    )
    port map (
      I0 => cto1_sel_alu_0_35,
      I1 => cto1_sel_read_d_0_36,
      I2 => cto1_ld_mov_42,
      I3 => cto4_cto16_qaux(5),
      I4 => cto4_cto17_qaux(5),
      I5 => O_r_aux(5),
      O => cto6_Mmux_F_aux1_rs_lut(5)
    );
  cto6_Mmux_F_aux1_rs_lut_6_Q : LUT6
    generic map(
      INIT => X"A59565555A6A9AAA"
    )
    port map (
      I0 => cto1_sel_alu_0_35,
      I1 => cto1_sel_read_d_0_36,
      I2 => cto1_ld_mov_42,
      I3 => cto4_cto16_qaux(6),
      I4 => cto4_cto17_qaux(6),
      I5 => O_r_aux(6),
      O => cto6_Mmux_F_aux1_rs_lut(6)
    );
  cto6_Mmux_F_aux1_rs_lut_0_Q : LUT6
    generic map(
      INIT => X"A59565555A6A9AAA"
    )
    port map (
      I0 => cto1_sel_alu_0_35,
      I1 => cto1_sel_read_d_0_36,
      I2 => cto1_ld_mov_42,
      I3 => cto4_cto16_qaux(0),
      I4 => cto4_cto17_qaux(0),
      I5 => O_r_aux(0),
      O => cto6_Mmux_F_aux1_rs_lut(0)
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_0
    );
  cto2_Maccum_q_PC_lut_0_1_INV_0 : INV
    port map (
      I => cto2_q_PC(0),
      O => cto2_Maccum_q_PC_lut(0)
    );
  Mmux_dato_I_aux51 : MUXF7
    port map (
      I0 => N45,
      I1 => N46,
      S => cto6_Mmux_F_aux1_split(4),
      O => dato_I_aux(4)
    );
  Mmux_dato_I_aux51_F : LUT6
    generic map(
      INIT => X"FDDD7555A8882000"
    )
    port map (
      I0 => cto1_ld_mov_42,
      I1 => cto1_sel_alu_2_33,
      I2 => cto6_Mmux_F_aux751_166,
      I3 => cto1_sel_alu_1_34,
      I4 => cto6_Mmux_F_aux75,
      I5 => I_aux_11_Q,
      O => N45
    );
  Mmux_dato_I_aux51_G : LUT6
    generic map(
      INIT => X"FFDF7757AA8A2202"
    )
    port map (
      I0 => cto1_ld_mov_42,
      I1 => cto1_sel_alu_2_33,
      I2 => cto1_sel_alu_1_34,
      I3 => cto6_Mmux_F_aux751_166,
      I4 => cto6_Mmux_F_aux75,
      I5 => I_aux_11_Q,
      O => N46
    );
  Mmux_dato_I_aux61 : MUXF7
    port map (
      I0 => N47,
      I1 => N48,
      S => cto6_Mmux_F_aux1_split(5),
      O => dato_I_aux(5)
    );
  Mmux_dato_I_aux61_F : LUT6
    generic map(
      INIT => X"FDDD7555A8882000"
    )
    port map (
      I0 => cto1_ld_mov_42,
      I1 => cto1_sel_alu_2_33,
      I2 => cto6_Mmux_F_aux761_164,
      I3 => cto1_sel_alu_1_34,
      I4 => cto6_Mmux_F_aux76,
      I5 => I_aux_10_Q,
      O => N47
    );
  Mmux_dato_I_aux61_G : LUT6
    generic map(
      INIT => X"FFDF7757AA8A2202"
    )
    port map (
      I0 => cto1_ld_mov_42,
      I1 => cto1_sel_alu_2_33,
      I2 => cto1_sel_alu_1_34,
      I3 => cto6_Mmux_F_aux761_164,
      I4 => cto6_Mmux_F_aux76,
      I5 => I_aux_10_Q,
      O => N48
    );
  Mmux_dato_I_aux21 : MUXF7
    port map (
      I0 => N49,
      I1 => N50,
      S => cto1_ld_mov_42,
      O => dato_I_aux(1)
    );
  Mmux_dato_I_aux21_F : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => cto2_q_PC(1),
      I1 => cto2_q_PC(0),
      I2 => cto3_n0033,
      O => N49
    );
  Mmux_dato_I_aux21_G : LUT5
    generic map(
      INIT => X"FBEA5140"
    )
    port map (
      I0 => cto1_sel_alu_2_33,
      I1 => cto1_sel_alu_1_34,
      I2 => cto6_Mmux_F_aux721_172,
      I3 => cto6_Mmux_F_aux1_split(1),
      I4 => cto6_Mmux_F_aux72,
      O => N50
    );

end Structure;

