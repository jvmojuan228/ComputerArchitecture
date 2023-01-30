library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ext_sig_br is
    Port ( ent_br : in  STD_LOGIC_VECTOR (15 downto 0);
           sal_br : out  STD_LOGIC_VECTOR (15 downto 0));
end ext_sig_br;

architecture Behavioral of ext_sig_br is

--signal sal_br_aux : std_logic_vector(15 downto 0);

begin

	--process(ent_br)
	--begin
	
		sal_br(6 downto 0)<=ent_br(9 downto 3);
		sal_br(7)<=ent_br(9);
		sal_br(8)<=ent_br(9);
		sal_br(9)<=ent_br(9);
		sal_br(10)<=ent_br(9);
		sal_br(11)<=ent_br(9);
		sal_br(12)<=ent_br(9);
		sal_br(13)<=ent_br(9);
		sal_br(14)<=ent_br(9);
		sal_br(15)<=ent_br(9);
	
	--end process;

	--sal_br<=sal_br_aux;

end Behavioral;