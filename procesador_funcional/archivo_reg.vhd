----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:07:28 11/13/2022 
-- Design Name: 
-- Module Name:    archivo_reg - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity archivo_reg is
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           en_w : in  STD_LOGIC;
           sel_w_d : in  STD_LOGIC_VECTOR (4 downto 0);
           sel_read_d : in  STD_LOGIC_VECTOR (4 downto 0);
           sel_read_r : in  STD_LOGIC_VECTOR (4 downto 0);
           dato_I : in  STD_LOGIC_VECTOR (7 downto 0);
           O_r : out  STD_LOGIC_VECTOR (7 downto 0);
           O_d : out  STD_LOGIC_VECTOR (7 downto 0));
end archivo_reg;

architecture Behavioral of archivo_reg is

component registro is
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           S : in  STD_LOGIC;
           I : in  STD_LOGIC_VECTOR (7 downto 0);
           Q : out  STD_LOGIC_VECTOR (7 downto 0));
end component;

component multiplexor is
    Port ( sel_read : in  STD_LOGIC_VECTOR (4 downto 0);
           I : in  STD_LOGIC_VECTOR (255 downto 0);
           O : out  STD_LOGIC_VECTOR (7 downto 0));
end component;

component decodificador is
    Port ( en_w : in  STD_LOGIC;
           sel_w_d : in  STD_LOGIC_VECTOR (4 downto 0);
           O : out  STD_LOGIC_VECTOR (31 downto 0));
end component;


signal O_aux: std_logic_vector(31 downto 0);

signal Q_aux: std_logic_vector(255 downto 0); 

begin

cto_dec: decodificador port map(en_w=>en_w, sel_w_d=>sel_w_d, O=>O_aux);

cto0: registro port map(clk=>clk, clr=>clr, S=>O_aux(0),I=>dato_I, Q=>Q_aux(7 downto 0));
cto1: registro port map(clk=>clk, clr=>clr, S=>O_aux(1),I=>dato_I, Q=>Q_aux(15 downto 8));
cto2: registro port map(clk=>clk, clr=>clr, S=>O_aux(2),I=>dato_I, Q=>Q_aux(23 downto 16));
cto3: registro port map(clk=>clk, clr=>clr, S=>O_aux(3),I=>dato_I, Q=>Q_aux(31 downto 24));
cto4: registro port map(clk=>clk, clr=>clr, S=>O_aux(4),I=>dato_I, Q=>Q_aux(39 downto 32));
cto5: registro port map(clk=>clk, clr=>clr, S=>O_aux(5),I=>dato_I, Q=>Q_aux(47 downto 40));
cto6: registro port map(clk=>clk, clr=>clr, S=>O_aux(6),I=>dato_I, Q=>Q_aux(55 downto 48));
cto7: registro port map(clk=>clk, clr=>clr, S=>O_aux(7),I=>dato_I, Q=>Q_aux(63 downto 56));
cto8: registro port map(clk=>clk, clr=>clr, S=>O_aux(8),I=>dato_I, Q=>Q_aux(71 downto 64));
cto9: registro port map(clk=>clk, clr=>clr, S=>O_aux(9),I=>dato_I, Q=>Q_aux(79 downto 72));
cto10: registro port map(clk=>clk, clr=>clr, S=>O_aux(10),I=>dato_I, Q=>Q_aux(87 downto 80));
cto11: registro port map(clk=>clk, clr=>clr, S=>O_aux(11),I=>dato_I, Q=>Q_aux(95 downto 88));
cto12: registro port map(clk=>clk, clr=>clr, S=>O_aux(12),I=>dato_I, Q=>Q_aux(103 downto 96));
cto13: registro port map(clk=>clk, clr=>clr, S=>O_aux(13),I=>dato_I, Q=>Q_aux(111 downto 104));
cto14: registro port map(clk=>clk, clr=>clr, S=>O_aux(14),I=>dato_I, Q=>Q_aux(119 downto 112));
cto15: registro port map(clk=>clk, clr=>clr, S=>O_aux(15),I=>dato_I, Q=>Q_aux(127 downto 120));
cto16: registro port map(clk=>clk, clr=>clr, S=>O_aux(16),I=>dato_I, Q=>Q_aux(135 downto 128));
cto17: registro port map(clk=>clk, clr=>clr, S=>O_aux(17),I=>dato_I, Q=>Q_aux(143 downto 136));
cto18: registro port map(clk=>clk, clr=>clr, S=>O_aux(18),I=>dato_I, Q=>Q_aux(151 downto 144));
cto19: registro port map(clk=>clk, clr=>clr, S=>O_aux(19),I=>dato_I, Q=>Q_aux(159 downto 152));
cto20: registro port map(clk=>clk, clr=>clr, S=>O_aux(20),I=>dato_I, Q=>Q_aux(167 downto 160));
cto21: registro port map(clk=>clk, clr=>clr, S=>O_aux(21),I=>dato_I, Q=>Q_aux(175 downto 168));
cto22: registro port map(clk=>clk, clr=>clr, S=>O_aux(22),I=>dato_I, Q=>Q_aux(183 downto 176));
cto23: registro port map(clk=>clk, clr=>clr, S=>O_aux(23),I=>dato_I, Q=>Q_aux(191 downto 184));
cto24: registro port map(clk=>clk, clr=>clr, S=>O_aux(24),I=>dato_I, Q=>Q_aux(199 downto 192));
cto25: registro port map(clk=>clk, clr=>clr, S=>O_aux(25),I=>dato_I, Q=>Q_aux(207 downto 200));
cto26: registro port map(clk=>clk, clr=>clr, S=>O_aux(26),I=>dato_I, Q=>Q_aux(215 downto 208));
cto27: registro port map(clk=>clk, clr=>clr, S=>O_aux(27),I=>dato_I, Q=>Q_aux(223 downto 216));
cto28: registro port map(clk=>clk, clr=>clr, S=>O_aux(28),I=>dato_I, Q=>Q_aux(231 downto 224));
cto29: registro port map(clk=>clk, clr=>clr, S=>O_aux(29),I=>dato_I, Q=>Q_aux(239 downto 232));
cto30: registro port map(clk=>clk, clr=>clr, S=>O_aux(30),I=>dato_I, Q=>Q_aux(247 downto 240));
cto31: registro port map(clk=>clk, clr=>clr, S=>O_aux(31),I=>dato_I, Q=>Q_aux(255 downto 248));

cto_mux_r: multiplexor port map(sel_read=>sel_read_r,I=>Q_aux, O=>O_r);

cto_mux_d: multiplexor port map(sel_read=>sel_read_d,I=>Q_aux, O=>O_d);

end Behavioral;

