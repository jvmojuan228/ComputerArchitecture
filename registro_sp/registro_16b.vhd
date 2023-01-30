----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:08:10 11/16/2022 
-- Design Name: 
-- Module Name:    registro_16b - Behavioral 
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

entity registro_sp is --este archivo de registros sera especial para el stack pointer o apuntdor de pila
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           I_sp : in  STD_LOGIC_VECTOR (3 downto 0);
           O_sp : out  STD_LOGIC_VECTOR (3 downto 0));
end registro_sp;

architecture Behavioral of registro_sp is
signal Osp_aux: std_logic_vector(3 downto 0);
begin
	process(clk, clr, Osp_aux)
	begin
		if(clr='1') then Osp_aux<= "1111";
		elsif(clk'event and clk='1') then 
			Osp_aux<=I_sp;
		end if;
	end process;
	
	O_sp<=Osp_aux;
end Behavioral;

