----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:41:31 12/02/2022 
-- Design Name: 
-- Module Name:    rom - Behavioral 
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

entity rom is
    Port ( cs : in  STD_LOGIC;
           A : in  STD_LOGIC_VECTOR (15 downto 0);
           O : out  STD_LOGIC_VECTOR (15 downto 0));
end rom;

architecture Behavioral of rom is

begin

	process(cs,A)
	begin
		if(cs='1') then O<= (others => 'Z');
		else
			case A is
				--when x"0000"=>O<=x"e003";
				--when x"0001"=>O<=x"e012";
				--when x"0002"=>O<=x"0f10";
				--when x"0003"=>O<=x"b915";
				--when others=>O<=x"0000";
				--when x"0000"=>O<=x"e002";
				--when x"0001"=>O<=x"e011";
				--when x"0002"=>O<=x"1b01";
				--when x"0003"=>O<=x"b905";
				--when others=>O<=x"0000";

when x"0000"=>O<=x"e001";
when x"0001"=>O<=x"b905";
when x"0002"=>O<=x"0f00";
when x"0003"=>O<=x"b905";
when x"0004"=>O<=x"e850";
when x"0005"=>O<=x"1b05";
when x"0006"=>O<=x"f019";
when x"0007"=>O<=x"0f05";
when x"0008"=>O<=x"0f00";
when x"0009"=>O<=x"cff7";
when x"000A"=>O<=x"e400";
when x"000B"=>O<=x"b905";
when x"000C"=>O<=x"e051";
when x"000D"=>O<=x"1b05";
when x"000E"=>O<=x"f019";
when x"000F"=>O<=x"0f05";
when x"0010"=>O<=x"9506";
when x"0011"=>O<=x"cff9";
when x"0012"=>O<=x"e002";
when x"0013"=>O<=x"cfed";

				when others=>O<=x"0000";
			end case;
		end if;
	end process;


end Behavioral;

