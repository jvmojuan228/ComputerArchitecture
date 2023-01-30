----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:33:34 11/30/2022 
-- Design Name: 
-- Module Name:    sreg - Behavioral 
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

entity sreg is
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           en_sreg : in  STD_LOGIC;
           ent : in  STD_LOGIC;
           sal : out  STD_LOGIC);
end sreg;

architecture Behavioral of sreg is
signal sal_sreg_aux: std_logic;
begin
	process(clk, clr, en_sreg)
	begin
		if(clr='1')then sal_sreg_aux<='0';
		elsif(clk'event and clk='1' and en_sreg='1')then
			sal_sreg_aux<=ent;
		end if;
	end process;
	
			sal<=sal_sreg_aux;
end Behavioral;

