----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:38:17 11/01/2022 
-- Design Name: 
-- Module Name:    Alu - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Alu is
    Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
           B : in  STD_LOGIC_VECTOR (7 downto 0);
           S : in  STD_LOGIC_VECTOR (2 downto 0);
           Z : out  STD_LOGIC;
           F : out  STD_LOGIC_VECTOR (7 downto 0));
end Alu;

architecture Behavioral of Alu is
signal F_aux : STD_LOGIC_VECTOR(7 downto 0);
begin

	process(A,B,S,F_aux)
		begin
		
		case S is
			when "000" => F_aux <=(A+B);
			when "001" => F_aux <=(A-B);
			when "010" => F_aux <=(A and B);
			when "011" => F_aux <=(A or B);
			when "100" => F_aux <=(not(A));
			when "101" => F_aux <=(A xor B);
			when "110" => F_aux(6 downto 0) <= A(7 downto 1); F_aux(7)<='0'; --corriemiento a la derecha 
			when others => F_aux(7 downto 1)<= A(6 downto 0); F_aux(0)<='1'; --corriemiento a la izq
		end case;
		Z <= not(F_aux(7) or F_aux(6) or F_aux(5) or F_aux(4) or F_aux(4) or F_aux(3) or F_aux(2) or F_aux(1) or F_aux(0));
	end process;
	
	F<=F_aux;

end Behavioral;

