----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:41:19 10/19/2022 
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
	  if(cs='1') then O<= (others =>'Z');
	  else case A is
	  
			when X"0000"=>O<=X"e801";
         when X"0001"=>O<=X"b905";
			when X"0002"=>O<=X"e011";
			when X"0003"=>O<=X"e15f";
			when X"0004"=>O<=X"ec38"; ---
			when X"0005"=>O<=X"ec48";
			when X"0006"=>O<=X"0000";
			when X"0007"=>O<=X"0000";
			when X"0008"=>O<=X"0000";
			when X"0009"=>O<=X"0000";
			when X"000A"=>O<=X"0000";
			when X"000B"=>O<=X"0000";
			when X"000C"=>O<=X"0000";
			when X"000D"=>O<=X"0000";
			when X"000E"=>O<=X"1b41";
			when X"000F"=>O<=X"f7b1";
			when X"0010"=>O<=X"1b31"; ---
			when X"0011"=>O<=X"f799";
			when X"0012"=>O<=X"1b51"; ---
			when X"0013"=>O<=X"f781"; ---
			when X"0014"=>O<=X"e402";
			when X"0015"=>O<=X"b905";
			when X"0016"=>O<=X"e011";
			when X"0017"=>O<=X"e061";
			when X"0018"=>O<=X"e072";
			when X"0019"=>O<=X"e082";
			when X"001A"=>O<=X"0000";
			when X"001B"=>O<=X"0000";
			when X"001C"=>O<=X"0000";
			when X"001D"=>O<=X"0000";
			when X"001E"=>O<=X"0000";
			when X"001F"=>O<=X"0000";
			when X"0020"=>O<=X"0000";
			when X"0021"=>O<=X"0000";
			when X"0022"=>O<=X"1b81";
			when X"0023"=>O<=X"f7b1";
			when X"0024"=>O<=X"1b71";
			when X"0025"=>O<=X"f799";
			when X"0026"=>O<=X"1b61";
			when X"0027"=>O<=X"f781";
			when X"0028"=>O<=X"e204";
			when X"0029"=>O<=X"b905";
			when X"002A"=>O<=X"e011";
			when X"002B"=>O<=X"e19f";
			when X"002C"=>O<=X"eca8";
			when X"002D"=>O<=X"ecb8";
			when X"002E"=>O<=X"0000";
			when X"002F"=>O<=X"0000";
			when X"0030"=>O<=X"0000";
			when X"0031"=>O<=X"0000";
			when X"0032"=>O<=X"0000";
			when X"0033"=>O<=X"0000";
			when X"0034"=>O<=X"0000";
			when X"0035"=>O<=X"0000";
			when X"0036"=>O<=X"1bb1";
			when X"0037"=>O<=X"f7b1";
			when X"0038"=>O<=X"1ba1";
			when X"0039"=>O<=X"f799";
			when X"003A"=>O<=X"1b91";
			when X"003B"=>O<=X"f781";
			when X"003C"=>O<=X"e108";
			when X"003D"=>O<=X"b905";
			when X"003E"=>O<=X"f209";
			when others=>O<=X"0000";
		end case;
		end if;
	end process;

end Behavioral;

