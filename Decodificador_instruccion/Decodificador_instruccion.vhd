----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:58:53 11/25/2022 
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
      --     cs : out  STD_LOGIC;
      --     r_w : out  STD_LOGIC;
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
		when "0000" =>   -- add, lsl, nop
				if(I(11 downto 10)="00")then -- nop
					l_d <='0';
					sel_rel <='0';
					Br <='0';
					en_w <='0';
					en_port <='0';
					en_sreg <='0';
					ld_mov <='0';
				--	cs <='1';
				--	r_w <='1';
					sel_alu <="000";
					sel_read_d <="00000";
					sel_read_r <="00000";
					sel_w_d <="00000";
					Bn<='0';
				elsif(I(11 downto 10)="11")then -- add o lsl (nota comparar todos los bits de los registros)
					if(I(9)&I(7 downto 4) = I(8)&I(3 downto 0))then -------lsl  comparando para evitar que sea una suma con dos registros prosiblemente distintos
							l_d <='0';
							sel_rel <='0';
							Br <='0';
							en_w <='1';
							en_port <='0';
							en_sreg <='1'; --se modifican las banderas. {Z}
							ld_mov <='1';
					--		cs <='1';
					--		r_w <='1';
							sel_alu <="110"; 						--corrimiento a la izq en la ALU
							sel_read_d <=I(8)&I(3 downto 0); --|
							sel_read_r <="00000";--				  |-- mismos registros ---- nota cambiar
							sel_w_d <=I(8)&I(3 downto 0);	 	--|
							Bn<='0';
					else  --------add
							l_d <='0';
							sel_rel <='0';
							Br <='0';
							en_w <='1';
							en_port <='0';
							en_sreg <='1'; 
							ld_mov <='1';
					--		cs <='1';
					--		r_w <='1';
							sel_alu <="000"; 						--suma en la ALU
							sel_read_d <=I(8)&I(7 downto 4);
							sel_read_r <=I(9)&I(3 downto 0);			 
							sel_w_d <=I(8)&I(7 downto 4);	 	 ---SE CAMBIO
							Bn<='0';
					end if;
				end if;
				
		when "0001" =>  ----- resta
				l_d <='0';
				sel_rel <='0';
				Br <='0';
				en_w <='1';
				en_port <='0';
				en_sreg <='1'; 
				ld_mov <='1';
			--	cs <='1';
			--	r_w <='1';
				sel_alu <="001"; 						--resta en la ALU
				sel_read_d <=I(8)&I(7 downto 4);
				sel_read_r <=I(9)&I(3 downto 0);			 
				sel_w_d <=I(8)&I(7 downto 4);	 	
				Bn<='0';
		when "0010"=>  --- and, or, xor, mov
				if(I(11 downto 10)="00")then ------and
					l_d <='0';
					sel_rel <='0';
					Br <='0';
					en_w <='1';
					en_port <='0';
					en_sreg <='1'; 
					ld_mov <='1';
				--	cs <='1';
				--	r_w <='1';
					sel_alu <="010"; 						--AND en la ALU
					sel_read_d <=I(8)&I(7 downto 4);
					sel_read_r <=I(9)&I(3 downto 0);			 
					sel_w_d <=I(8)&I(7 downto 4);
					Bn<='0';
				elsif(I(11 downto 10)="10")then -----or
					l_d <='0';
					sel_rel <='0';
					Br <='0';
					en_w <='1';
					en_port <='0';
					en_sreg <='1'; 
					ld_mov <='1';
				--	cs <='1';
				--	r_w <='1';
					sel_alu <="011"; 						--OR en la ALU
					sel_read_d <=I(8)&I(7 downto 4);
					sel_read_r <=I(9)&I(3 downto 0);			 
					sel_w_d <=I(8)&I(7 downto 4);
					Bn<='0';
				elsif(I(11 downto 10)="01")then -----Xor
					l_d <='0';
					sel_rel <='0';
					Br <='0';
					en_w <='1';
					en_port <='0';
					en_sreg <='1'; 
					ld_mov <='1';
			--		cs <='1';
			--		r_w <='1';
					sel_alu <="100"; 						--XOR en la ALU
					sel_read_d <=I(8)&I(7 downto 4);
					sel_read_r <=I(9)&I(3 downto 0);			 
					sel_w_d <=I(8)&I(7 downto 4);
					Bn<='0';
				else  -----mov
					l_d <='1';
					sel_rel <='0';
					Br <='0';
					en_w <='1';
					en_port <='0';
					en_sreg <='0'; 
					ld_mov <='0';
				--	cs <='1';
				--	r_w <='1';
					sel_alu <="100"; 						--no importa que de
					sel_read_d <=I(8)&I(7 downto 4);
					sel_read_r <=I(9)&I(3 downto 0);			 
					sel_w_d <=I(8)&I(7 downto 4);
					Bn<='0';
				end if;
				
		when "1001"=> --- com o lsr
				if(I(3 downto 0)="0000")then --- com
					l_d <='0';
					sel_rel <='0';
					Br <='0';
					en_w <='1';
					en_port <='0';
					en_sreg <='1'; 
					ld_mov <='1';
			--		cs <='1';
			--		r_w <='1';
					sel_alu <="101"; 						--- ALU :=> not(rd)
					sel_read_d <=I(8)&I(7 downto 4);
					sel_read_r <=I(9)&I(3 downto 0);			 
					sel_w_d <=I(8)&I(7 downto 4);
					Bn<='0';
				else   						---- lsr
					l_d <='0';
					sel_rel <='0';
					Br <='0';
					en_w <='1';
					en_port <='0';
					en_sreg <='1';
					ld_mov <='1';
			--		cs <='1';
			--		r_w <='1';
					sel_alu <="111"; 						--- ALU  lsr
					sel_read_d <=I(8)&I(7 downto 4);
					sel_read_r <=I(9)&I(3 downto 0);			 
					sel_w_d <=I(8)&I(7 downto 4);
					Bn<='0';
				end if;
				
		when "1110"=> ----ldi: carga inmediata. Registros 16 al 31
				l_d <='0';
				sel_rel <='0';
				Br <='0';
				en_w <='1';
				en_port <='0';
				en_sreg <='0';
				ld_mov <='0';   --- l_d y ld_mov deben de estar en 0 para que la k se obtenga de la palabra 
			--	cs <='1';
			--	r_w <='1';
				sel_alu <="111"; 						
				sel_read_d <=I(8)&I(7 downto 4);
				sel_read_r <=I(9)&I(3 downto 0);
				sel_w_d <='1'&I(7 downto 4);
				Bn<='0';
				
		when "1111"=> ---breq o brne.  branch
				if(I(11 downto 10) = "00")then --breq
					l_d <='0';    ---.....
					sel_rel <='0';
					Br <='1';     --- la k se obtiene del 9 al 3, asi sel_rel = 0 y br = 1 para que entre la k en el multiplexor
					en_w <='0';
					en_port <='0';
					en_sreg <='0';
					ld_mov <='0';   ---.....
				--	cs <='1';
				--	r_w <='1';
					sel_alu <="111"; 						--- ....	
					sel_read_d <=I(8)&I(7 downto 4); --- ....
					sel_read_r <=I(9)&I(3 downto 0);	--- ....
					sel_w_d <='1'&I(7 downto 4); ------- extension de signo
					Bn<='0';
					
				else --brne
					l_d <='0';    ---.....
					sel_rel <='0';
					Br <='0';     --- la k se obtiene del 9 al 3, asi sel_rel = 0 y br = 1 para que entre la k en el multiplexor
					en_w <='0';
					en_port <='0';
					en_sreg <='0';
					ld_mov <='0';   ---.....
				--	cs <='1';
				--	r_w <='1';
					sel_alu <="111"; 						--- ....	
					sel_read_d <=I(8)&I(7 downto 4); --- ....
					sel_read_r <=I(9)&I(3 downto 0);	--- ....
					sel_w_d <='1'&I(7 downto 4); ------- extension de signo
					Bn<='1';
					
				end if;
				
				
		when "1100"=>   ----  rjmp.   salto relativo
				l_d <='0';    ---.....
				sel_rel <='1';
				Br <='0';     --- sel_r=1 y br=0 por el multiplexor
				en_w <='0';
				en_port <='0';
				en_sreg <='0';
				ld_mov <='0';   ---.....
			--	cs <='1';
			--	r_w <='1';
				sel_alu <="111"; 						--- ....	
				sel_read_d <=I(8)&I(7 downto 4); --- ....
				sel_read_r <=I(9)&I(3 downto 0);	--- ....
				sel_w_d <='1'&I(7 downto 4);    ------- extension de signo
				Bn<='0';
				
		when others=>   --- "1011" out.  escritura en el registro puerto
				l_d <='0';    ---.....
				sel_rel <='0';
				Br <='0';
				en_w <='0';
				en_port <='1';
				en_sreg <='0';
				ld_mov <='0';   ---.....
			--	cs <='1';
			--	r_w <='1';
				sel_alu <="111"; 						--- ....	
				sel_read_d <=I(8)&I(7 downto 4); --- ....
				sel_read_r <=I(8)&I(7 downto 4);	--- registro fuente
				sel_w_d <=I(8)&I(7 downto 4);    --- ....
				Bn<='0';
				
		end case;
	end process;

end Behavioral;

