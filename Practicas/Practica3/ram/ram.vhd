----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:40:23 10/19/2022 
-- Design Name: 
-- Module Name:    ram - Behavioral 
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

entity ram is
    Port ( cs : in  STD_LOGIC; --chip select
           rw : in  STD_LOGIC; --read/write
           A : in  STD_LOGIC_VECTOR (3 downto 0); --direcciones (stack pointer)
           I : in  STD_LOGIC_VECTOR (15 downto 0); --dato de entrada (program counter)
           O : out  STD_LOGIC_VECTOR (15 downto 0)); --salida
end ram;
--Recordar que hay que reducir de 2048 ya que no queremos ocupar toda la memoria, y las entradas de 16 bits? reducir a ...?
architecture Behavioral of ram is
type ram is array(15 downto 0) of std_logic_vector(15 downto 0); --(2047 0)  (7 0)
signal dato: ram;

signal clk_r, clk_w: std_logic;

begin

	clk_w<= not(rw) and not(cs);
	clk_r<= rw and not(cs);
	
	escritura:process(clk_w)
		begin
			if(clk_w'event and clk_w='1')then
				dato(conv_integer(A))<=I;
			end if;
		end process;	
	lectura: process(clk_r,cs)
	begin
		if(cs='1') then O<="ZZZZZZZZZZZZZZZZ";
		elsif(clk_r'event and clk_r='1')then O<=dato(conv_integer(A));
		end if;
	end process;
end Behavioral;

