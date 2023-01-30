library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ext_sig_rjmp is
    Port ( ent_rjmp : in  STD_LOGIC_VECTOR (15 downto 0);
           sal_rjmp : out  STD_LOGIC_VECTOR (15 downto 0));
end ext_sig_rjmp;

architecture Behavioral of ext_sig_rjmp is

begin

	sal_rjmp(11 downto 0)<=ent_rjmp(11 downto 0);
	sal_rjmp(12)<=ent_rjmp(11);
	sal_rjmp(13)<=ent_rjmp(11);
	sal_rjmp(14)<=ent_rjmp(11);
	sal_rjmp(15)<=ent_rjmp(11);

end Behavioral;

