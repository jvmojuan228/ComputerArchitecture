----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:01:01 11/22/2022 
-- Design Name: 
-- Module Name:    instruccion_top - Behavioral 
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

-- Uncomment 
-- the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity instruccion_top is
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           boton : in  STD_LOGIC_VECTOR (15 downto 0);
           Q : out  STD_LOGIC_VECTOR (15 downto 0));
end instruccion_top;

architecture Behavioral of instruccion_top is

begin
				


end Behavioral;

