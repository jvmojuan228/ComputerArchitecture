----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:05:45 11/11/2022 
-- Design Name: 
-- Module Name:    program_counter - Behavioral 
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

entity program_counter is
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           I_PC : in  STD_LOGIC_VECTOR (15 downto 0);
           O_PC : out  STD_LOGIC_VECTOR (15 downto 0));
end program_counter;

architecture Behavioral of program_counter is
signal q_PC:std_logic_vector(15 downto 0);

begin
	process(clk,clr)
		begin
			if(clr='1') then q_PC<=(others =>'0');
			elsif(clk'event and clk='1') then
				q_PC<=I_PC;
			end if;
	end process;
	
	O_PC <= q_PC;


end Behavioral;

