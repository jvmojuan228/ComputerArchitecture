----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:25:11 11/28/2022 
-- Design Name: 
-- Module Name:    Decodificador_instruccion - Behavioral 
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

entity Decodificador_instruccion is
    Port ( I : in  STD_LOGIC_VECTOR (15 downto 0);
			  
           l_d : out  STD_LOGIC;
           sel_rel : out  STD_LOGIC;
           Br : out  STD_LOGIC;
			  Bn : out STD_LOGIC;
           en_w : out  STD_LOGIC;
           en_port : out  STD_LOGIC;
           en_sreg : out  STD_LOGIC;
           ld_mov : out  STD_LOGIC;
           cs : out  STD_LOGIC;
           r_w : out  STD_LOGIC;
           sel_alu : out  STD_LOGIC_VECTOR (2 downto 0);
           sel_read_d : out  STD_LOGIC_VECTOR (4 downto 0);
           sel_read_r : out  STD_LOGIC_VECTOR (4 downto 0);
           sel_w_d : out  STD_LOGIC_VECTOR (4 downto 0));
end Decodificador_instruccion;

architecture Behavioral of Decodificador_instruccion is

begin
process(I)
	begin
		case I(15 downto 12) is
		when "0000"=> -- add, lsl,nop
			if(I(11 downto 10) ="00") then ---nop
			
			  l_d <='0';
			  sel_rel <='0';
           Br <='0';
			  Bn <='0';
           en_w <= '0';
           en_port <='0';
           en_sreg <='0';
           ld_mov <='0';
           cs <='1';
           r_w <='1';
           sel_alu <="000";
           sel_read_d <="00000";
           sel_read_r <="00000";
           sel_w_d <="00000";
			  
			elsif(I(11 downto 10)="11") then ---lsl o add
					if(I(9)& I(7 downto 4) =I(8)&I(3 downto 0)) then -----lsl
							  l_d <='0';
							  sel_rel <='0';
							  Br <='0';
							  Bn <='0';
							  en_w <= '1';
							  en_port <='0';
							  en_sreg <='1';
							  ld_mov <='1';
							 -- cs <='1';
							  --r_w <='1';
							  sel_alu <="111";
							  sel_read_d <=I(8)&I(3 downto 0);
							  sel_read_r <="00000";
							  sel_w_d <=I(8)&I(3 downto 0);
							  
							  
					else -----------add
					        l_d <='0';
							  sel_rel <='0';
							  Br <='0';
							  Bn <='0';
							  en_w <= '1';
							  en_port <='0';
							  en_sreg <='1';
							  ld_mov <='1';
						--	  cs <='1';
						--	  r_w <='1';
							  sel_alu <="000";
							  sel_read_d <=I(8)&I(7 downto 4);
							  sel_read_r <=I(9)&I(3 downto 0);
							  sel_w_d <=I(8)&I(7 downto 4);
							end if;
						end if;
			when"0001"=> ---------sub
							  l_d <='0';
							  sel_rel <='0';
							  Br <='0';
							  Bn <='0';
							  en_w <= '1';
							  en_port <='0';
							  en_sreg <='1';
							  ld_mov <='1';
							 -- cs <='1';
							  --r_w <='1';
							  sel_alu <="001";
							  sel_read_d <=I(8)&I(7 downto 4);
							  sel_read_r <=I(9)&I(3 downto 0);
							  sel_w_d <=I(8)&I(7 downto 4);
			when"0010"=> --------and,or, eor, mov
			
							if(I(11 downto 10)="00")then ------ and
							  l_d <='0';
							  sel_rel <='0';
							  Br <='0';
							  Bn <='0';
							  en_w <= '1';
							  en_port <='0';
							  en_sreg <='1';
							  ld_mov <='1';
							  --cs <='1';
							 -- r_w <='1';
							  sel_alu <="010";
							  sel_read_d <=I(8)&I(7 downto 4);
							  sel_read_r <=I(9)&I(3 downto 0);
							  sel_w_d <=I(8)&I(7 downto 4);
							  
							  
						elsif(I(11 downto 10)="10") then ------or
						
						     l_d <='0';
							  sel_rel <='0';
							  Br <='0';
							  Bn <='0';
							  en_w <= '1';
							  en_port <='0';
							  en_sreg <='1';
							  ld_mov <='1';
							 -- cs <='1';
							  --r_w <='1';
							  sel_alu <="011";
							sel_read_d <=I(8)&I(7 downto 4);
							  sel_read_r <=I(9)&I(3 downto 0);
							  sel_w_d <=I(8)&I(7 downto 4);
						
						elsif(I(11 downto 10)="01") then ------eor
						
							  l_d <='0';
							  sel_rel <='0';
							  Br <='0';
							  Bn <='0';
							  en_w <= '1';
							  en_port <='0';
							  en_sreg <='1';
							  ld_mov <='1';
							 -- cs <='1';
							--  r_w <='1';
							  sel_alu <="100";
							  sel_read_d <=I(8)&I(7 downto 4);
							  sel_read_r <=I(9)&I(3 downto 0);
							  sel_w_d <=I(8)&I(7 downto 4); 
							  
						else -----mov
						     l_d <='1';
							  sel_rel <='0';
							  Br <='0';
							  Bn <='0';
							  en_w <= '1';
							  en_port <='0';
							  en_sreg <='0';
							  ld_mov <='0';
							  --cs <='1';
							 -- r_w <='1';
							  sel_alu <="010";
							  sel_read_d <=I(8)&I(7 downto 4);
							  sel_read_r <=I(9)&I(3 downto 0);
							  sel_w_d <=I(8)&I(7 downto 4); 
							  
						
					end if;
					
					     when "1001"=> ---com ,lsr   
									if(I(3 downto 0)="0000")then -----com
									
										  l_d <='0';
										  sel_rel <='0';
										  Br <='0';
										  Bn <='0';
										  en_w <= '1';
										  en_port <='0';
										  en_sreg <='1';
										  ld_mov <='1';
										 -- cs <='1';
										 -- r_w <='1';
										  sel_alu <="101";
										  sel_read_d <=I(8)&I(7 downto 4);
										  sel_read_r <=I(9)&I(3 downto 0);
										  sel_w_d <=I(8)&I(7 downto 4); 
										  
										  
									else ---lsr
									
									
										  l_d <='0';
										  sel_rel <='0';
										  Br <='0';
										  Bn <='0';
										  en_w <= '1';
										  en_port <='0';
										  en_sreg <='1';
										  ld_mov <='1';
										 -- cs <='1';
										 -- r_w <='1';
										  sel_alu <="110";
										  sel_read_d <=I(8)&I(7 downto 4);
										  sel_read_r <=I(9)&I(3 downto 0);
										  sel_w_d <=I(8)&I(7 downto 4);
										  
									end if;
										  
										  
						when "1110"=> ----ldi
						
						              l_d <='0';
										  sel_rel <='0';
										  Br <='0';
										  Bn <='0';
										  en_w <= '1';
										  en_port <='0';
										  en_sreg <='0';
										  ld_mov <='0';
										 -- cs <='1';
										 -- r_w <='1';
										  sel_alu <="111";
										  sel_read_d <=I(8)&I(7 downto 4);
										  sel_read_r <=I(9)&I(3 downto 0);
										  sel_w_d <='1'&I(7 downto 4);
										  
										  
										  
						when "1111"=> ----breq, brne
							if(I(11 downto 10)="01") then --brne
									 l_d <='0';
										  sel_rel <='0';
										  Bn <='1';
										  Br <='0';
										  en_w <= '0';
										  en_port <='0';
										  en_sreg <='0';
										  ld_mov <='1';
										 -- cs <='1';
										 -- r_w <='1';
										  sel_alu <="111";
										  sel_read_d <=I(8)&I(7 downto 4);
										  sel_read_r <=I(9)&I(3 downto 0);
										  sel_w_d <='1'&I(7 downto 4);
							else --breq			  

						              	 l_d <='0';
										  sel_rel <='0';
										  Br <='1';
										  Bn <='0';
										  en_w <= '0';
										  en_port <='0';
										  en_sreg <='0';
										  ld_mov <='1';
										 -- cs <='1';
										 -- r_w <='1';
										  sel_alu <="111";
										  sel_read_d <=I(8)&I(7 downto 4);
										  sel_read_r <=I(9)&I(3 downto 0);
										  sel_w_d <='1'&I(7 downto 4);
							end if;
										  
						 when "1100" => ----- rjmp
						 
						              l_d <='0';
										  sel_rel <='1';
										  Br <='0';
										  Bn <='0';
										  en_w <= '0';
										  en_port <='0';
										  en_sreg <='0';
										  ld_mov <='1';
										 -- cs <='1';
										 -- r_w <='1';
										  sel_alu <="101";
										  sel_read_d <=I(8)&I(7 downto 4);
										  sel_read_r <=I(9)&I(3 downto 0);
										  sel_w_d <='1'&I(7 downto 4);
										  
										  
							when others => -----out
							
							           l_d <='0';
										  sel_rel <='0';
										  Br <='0';
										  Bn <='0';
										  en_w <= '0';
										  en_port <='1';
										  en_sreg <='0';
										  ld_mov <='1';
										 -- cs <='1';
										 -- r_w <='1';
										  sel_alu <="101";
										  sel_read_d <=I(8)&I(7 downto 4);
										  sel_read_r <=I(8)&I(7 downto 4);
										  sel_w_d <=I(8)&I(7 downto 4);
										  
				end case;
end process;				
								
										  
												

end Behavioral;

