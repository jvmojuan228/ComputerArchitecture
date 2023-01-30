----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:09:11 11/29/2022 
-- Design Name: 
-- Module Name:    contador - Behavioral 
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
use ieee.std_logic_arith.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity contador is
    Port ( clk : in  STD_LOGIC;
			  clr : in  STD_LOGIC;
           sal : out  STD_LOGIC_VECTOR(4 downto 0));
end contador;

architecture Behavioral of contador is
signal aux: std_logic_vector(4 downto 0):="00000";
begin
	process(clk,clr,aux)
	begin
		if(clr='1')then aux<="00000";sal<="00000";
		elsif(clk'event and clk='1')then
			aux<=aux+1;
		end if;
		sal<=aux;
	end process;
	
end Behavioral;

