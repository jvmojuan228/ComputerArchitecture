----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:00:55 12/02/2022 
-- Design Name: 
-- Module Name:    ext_sig_rjmp - Behavioral 
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

entity ext_sig_rjmp is
    Port ( ent_rjmp : in  STD_LOGIC_VECTOR (15 downto 0);
           sal_rjmp : out  STD_LOGIC_VECTOR (15 downto 0));
end ext_sig_rjmp;

architecture Behavioral of ext_sig_rjmp is
begin
		sal_rjmp(11 downto 0)<= ent_rjmp(11 downto 0);
		sal_rjmp(12)<=ent_rjmp(11);
		sal_rjmp(13)<=ent_rjmp(11);
		sal_rjmp(14)<=ent_rjmp(11);
		sal_rjmp(15)<=ent_rjmp(11);

end Behavioral;

