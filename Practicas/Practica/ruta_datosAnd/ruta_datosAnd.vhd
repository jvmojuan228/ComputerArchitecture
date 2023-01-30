----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:33:04 10/25/2022 
-- Design Name: 
-- Module Name:    ruta_datosAnd - Behavioral 
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

entity ruta_datosAnd is
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           id : in  STD_LOGIC_VECTOR (7 downto 0);
           ir : in  STD_LOGIC_VECTOR (7 downto 0);
           sr : in  STD_LOGIC;
           sd : in  STD_LOGIC;
           sel : in  STD_LOGIC;
           C : out  STD_LOGIC;
           N : out  STD_LOGIC;
           Z : out  STD_LOGIC;
           V : out  STD_LOGIC;
           qd : out  STD_LOGIC_VECTOR (7 downto 0));
end ruta_datosAnd;

architecture Behavioral of ruta_datosAnd is
component registro is
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           S : in  STD_LOGIC;
           I : in  STD_LOGIC_VECTOR (7 downto 0);
           Q : out  STD_LOGIC_VECTOR (7 downto 0));
end component;
signal mux_aux, qd_aux, qr_aux: std_logic_vector(7 downto 0);
signal s_aux: std_logic_vector(8 downto 0);
begin
	s_aux<= ('0'&qd_aux) + ('0'&qr_aux);
	
	mux_aux<= id when sel='0'
						else s_aux(3 downto 0);
	
	qd<=qd_aux;
	
	C<=s_aux(4);
	N<=s_aux(3);
	Z<=not(s_aux(3) or s_aux(2) or s_aux(1) or s_aux(0));
	V<=(qd_aux(3) and qr_aux(3) and not(s_aux(3))) or (s_aux(3) and not(qd_aux(3)) and not(qr_aux(3)));
	
	registro_D: registro port map(clk=>clk, clr=>clr, S=>sd, I=>mux_aux, Q=>qd_aux);
	registro_R: registro port map(clk=>clk, clr=>clr, S=>sr, I=>ir, Q=>qr_aux);

end Behavioral;

