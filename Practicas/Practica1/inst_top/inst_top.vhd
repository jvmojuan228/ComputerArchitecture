----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:42:57 09/07/2022 
-- Design Name: 
-- Module Name:    instruccion_top - Behavioral 
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

entity instruccion_top is
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           inicio : in  STD_LOGIC;
           id : in  STD_LOGIC_VECTOR (3 downto 0);
           ir : in  STD_LOGIC_VECTOR (3 downto 0);
           C : out  STD_LOGIC;
           N : out  STD_LOGIC;
           Z : out  STD_LOGIC;
           V : out  STD_LOGIC;
           qd : out  STD_LOGIC_VECTOR (3 downto 0));
end instruccion_top;

architecture Behavioral of instruccion_top is
component ruta_datos is
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           id : in  STD_LOGIC_VECTOR (3 downto 0);
           ir : in  STD_LOGIC_VECTOR (3 downto 0);
           sr : in  STD_LOGIC;
           sd : in  STD_LOGIC;
           sel : in  STD_LOGIC;
           C : out  STD_LOGIC;
           N : out  STD_LOGIC;
           V : out  STD_LOGIC;
           Z : out  STD_LOGIC;
           qd : out  STD_LOGIC_VECTOR (3 downto 0));
end component;
component u_control is
    Port ( clk : in  STD_LOGIC;
           clr : in  STD_LOGIC;
           inicio : in  STD_LOGIC;
           sd : out  STD_LOGIC;
           sr : out  STD_LOGIC;
           sel : out  STD_LOGIC);
end component;
Signal Sd_Aux,Sr_aux,Sel_Aux: std_logic;
begin

cto1: ruta_datos port map(clk=>clk,clr=>clr, id=>id, ir=>ir, sr=>Sr_Aux,sd=>Sd_Aux, sel=>Sel_Aux, C=>C, N=>N, V=>V, Z=>Z);

cto2: u_control port map(clk=>clk, clr=>clr, inicio=>inicio, sd=>Sd_Aux, sr=>Sr_Aux, sel=>Sel_Aux);

end Behavioral;

