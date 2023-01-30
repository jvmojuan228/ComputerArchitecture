----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:40:40 11/30/2022 
-- Design Name: 
-- Module Name:    procesador - Behavioral 
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

entity procesador is
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           portb : out  STD_LOGIC_VECTOR (7 downto 0));
end procesador;


architecture Behavioral of procesador is
component Decodificador_instruccion is
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
end component;
component program_counter is
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           I_PC : in  STD_LOGIC_VECTOR (15 downto 0);
           O_PC : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

---AGREGAR LA ROM
component rom is
    Port ( cs : in  STD_LOGIC;
           A : in  STD_LOGIC_VECTOR (15 downto 0);
           O : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component archivo_reg is
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           en_w : in  STD_LOGIC;
           sel_w_d : in  STD_LOGIC_VECTOR (4 downto 0);
           sel_read_d : in  STD_LOGIC_VECTOR (4 downto 0);
           sel_read_r : in  STD_LOGIC_VECTOR (4 downto 0);
           dato_I : in  STD_LOGIC_VECTOR (7 downto 0);
           O_d : out  STD_LOGIC_VECTOR (7 downto 0);
           O_r : out  STD_LOGIC_VECTOR (7 downto 0));
end component;
component registro is
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           I : in  STD_LOGIC_VECTOR (7 downto 0);
           Q : out  STD_LOGIC_VECTOR (7 downto 0);
           en : in  STD_LOGIC);
end component;
component ALU is
    Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
           B : in  STD_LOGIC_VECTOR (7 downto 0);
			  S : in STD_LOGIC_VECTOR (2 downto 0);
           Z : out  STD_LOGIC;
           F : out  STD_LOGIC_VECTOR (7 downto 0));
end component;
component sreg is
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           en_sreg : in  STD_LOGIC;
           ent : in  STD_LOGIC;
           sal : out  STD_LOGIC);
end component;
component ext_sig_br is
    Port ( ent_br : in  STD_LOGIC_VECTOR (15 downto 0);
           sal_br : out  STD_LOGIC_VECTOR (15 downto 0));
end component;
component ext_sig_rjmp is
    Port ( ent_rjmp : in  STD_LOGIC_VECTOR (15 downto 0);
           sal_rjmp : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

signal I_aux, PC_aux, I_PC_aux, off_br_aux, off_rjmp_aux, offset_aux: std_logic_vector(15 downto 0);
signal dato_I_aux, O_r_aux, O_d_aux, F_aux: std_logic_vector(7 downto 0);
signal sel_read_d_aux, sel_read_r_aux, sel_w_d_aux: std_logic_vector(4 downto 0);
signal sel_alu_aux:std_logic_vector(2 downto 0);
signal ld_aux, sel_rel_aux, br_aux, bn_aux, en_w_aux, en_port_aux, en_sreg_aux, ld_mov_aux, branch_aux, s_sreg_aux, ent_sreg_aux,cs_aux:std_logic;
begin
	cs_aux<='0';
	--sumador
	I_PC_aux<=offset_aux+PC_aux;
	
	--multiplexores
	--		mux offset
	offset_aux <= x"0001" when (sel_rel_aux='0' and branch_aux='0') else				--sel_rel_aux&branch_aux="00") else
					  off_br_aux+1 when (sel_rel_aux='0' and branch_aux='1') else		--sel_rel_aux&branch_aux="01") else
					  off_rjmp_aux+1 when (sel_rel_aux='1' and branch_aux='0') else	--sel_rel_aux&branch_aux="10") else
					  x"0001";
	--		mux dato_I 
	dato_I_aux<= I_aux(11 downto 8)&I_aux(3 downto 0) when (ld_mov_aux='0' and ld_aux='0') else	--ld_mov_aux&ld_aux="00") else
					 O_r_aux when (ld_mov_aux='0' and ld_aux='1') else											--ld_mov_aux&ld_aux="01") else
					 F_aux when (ld_mov_aux='1' and ld_aux='0') else											--ld_mov_aux&ld_aux="10") else
					 "00000000";
					 
	--branch_aux
	--branch_aux<= br_aux and s_sreg_aux;
	
	branch_aux<= (bn_aux and not(s_sreg_aux)) or (br_aux and s_sreg_aux);
	----CHECAR PARA BRANCH
	----AGREGAR LA SEÑAL bn AL DECODIFICADOR
	----AGREGAR LAS COMPUERTAS Y LAS SEÑALES QUE SE NECESITEN
	
	
	----PLACA
	----SPARTAN 6
	
	cto1: Decodificador_instruccion port map(I=>I_aux,l_d=>ld_aux,sel_rel=>sel_rel_aux,Br=>br_aux, Bn=>bn_aux ,en_w=>en_w_aux,en_port=>en_port_aux,en_sreg=>en_sreg_aux,ld_mov=>ld_mov_aux,sel_alu=>sel_alu_aux,sel_read_d=>sel_read_d_aux,sel_read_r=>sel_read_r_aux,sel_w_d=>sel_w_d_aux);

	cto2: program_counter port map(clk=>clk,clr=>clr,I_PC=>I_PC_aux,O_PC=>PC_aux);
	
	cto3: rom port map(cs=>cs_aux, A=>PC_aux, O=>I_aux);
	
	cto4: archivo_reg port map( clk=>clk, clr=>clr, en_w => en_w_aux, sel_w_d=>sel_w_d_aux, sel_read_d=>sel_read_d_aux, sel_read_r=>sel_read_r_aux,dato_I=>dato_I_aux,O_d=>O_d_aux,O_r=>O_r_aux);

	cto5: registro port map (clk=>clk, clr=>clr, I=>O_r_aux, Q=>portb, en=>en_port_aux); --puertoB
	
	cto6: ALU port map(A=>O_d_aux,B=>O_r_aux,S=>sel_alu_aux,Z=>ent_sreg_aux,F=>F_aux);
	
	cto7: sreg port map( clk=>clk,clr=>clr,en_sreg=>en_sreg_aux, ent=>ent_sreg_aux,sal=>s_sreg_aux);
	
	cto8: ext_sig_br port map(ent_br=>I_aux, sal_br=>off_br_aux);
	
	cto9: ext_sig_rjmp port map(ent_rjmp=>I_aux, sal_rjmp=>off_rjmp_aux);
	
end Behavioral;

