----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:19:53 10/21/2022 
-- Design Name: 
-- Module Name:    clk_div - Behavioral 
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
use ieee.std_logic_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity clk_div is
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           q27 : out  STD_LOGIC);
end clk_div;

architecture Behavioral of clk_div is
signal q_aux: std_logic_vector(17 downto 0);
begin
	process(clk, clr)
	begin
		if(clr='1') then q_aux <= (others =>'0');
		elsif(clk'event and clk='1')then
			q_aux<=q_aux +1;
		end if;
		
	end process;
	q27<=q_aux(17);
end Behavioral;

