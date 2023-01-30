----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:27:57 11/16/2022 
-- Design Name: 
-- Module Name:    pila - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity pila is
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           cs : in  STD_LOGIC;
           r_w : in  STD_LOGIC;
           bn : in  STD_LOGIC_VECTOR (15 downto 0); --- k del manual de instrucciones 
           sal : out  STD_LOGIC_VECTOR (15 downto 0)); --- al program counter
end pila;

architecture Behavioral of pila is
component program_counter is
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           I_PC : in  STD_LOGIC_VECTOR (15 downto 0);
           O_PC : out  STD_LOGIC_VECTOR (15 downto 0));
end component;

component registro_sp is
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           I_sp : in  STD_LOGIC_VECTOR (3 downto 0);
           O_sp : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component ram is
    Port ( cs : in  STD_LOGIC; --chip select
           rw : in  STD_LOGIC; --read/write
           A : in  STD_LOGIC_VECTOR (3 downto 0); --direcciones (stack pointer)
           I : in  STD_LOGIC_VECTOR (15 downto 0); --dato de entrada (program counter)
           O : out  STD_LOGIC_VECTOR (15 downto 0)); --salida
end component;
--Señales conectar componentes.
signal Opc_aux, Ipc_aux, PCmas_aux, Oram_aux: STD_LOGIC_VECTOR(15 downto 0); --señales entre program counter y la ram
signal A_aux: STD_LOGIC_VECTOR(15 downto 0); 				--direccion de salto
signal Osp_aux, Isp_aux: STD_LOGIC_VECTOR(3 downto 0); 	-- i/o del stack pointer
signal opndo_aux: STD_LOGIC_VECTOR(3 downto 0); 			--operando del mux +2 cuando se saca de la pila, -2 cuando se hace un rcall (o al reves?)
signal sp_mas_menos_aux: STD_LOGIC_VECTOR(3 downto 0); 	--señal despues de la ALU con sp
begin
	
	sal<=Opc_aux; --para visualizar el comportamiento de la pila
	
	--sumadores
	PCmas_aux<=Opc_aux+1;
	sp_mas_menos_aux<=opndo_aux + Osp_aux;
	
	--multiplexores
	Ipc_aux<= PCmas_aux when cs='1' 
										else A_aux;
	A_aux<= Oram_aux when r_w='1'
										else bn;
	Isp_aux<= Osp_aux when cs='1'
										else sp_mas_menos_aux;
	opndo_aux<= "0010" when r_w='1' 				-- +2
										else "1110";  	-- -2
	--componentes
	cto1: program_counter port map(clk=>clk, clr=>clr, I_PC=>Ipc_aux, O_PC=>Opc_aux);
	cto2: registro_sp port map(clk=>clk, clr=>clr, I_sp=>Isp_aux, O_sp=>Osp_aux);
	cto3: ram port map(cs=>cs, rw=>r_w, A=>Osp_aux, I=>Opc_aux, O=>Oram_aux);
	
end Behavioral;

