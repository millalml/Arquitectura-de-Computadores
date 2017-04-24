----------------------------------------------------------------------------------
-- Company: UTP
-- Engineer: David Escamilla Gutiérrez
-- 
-- Create Date:    19:32:25 04/04/2017 
-- Design Name: 
-- Module Name:    Sumador - ArqSumador 
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

entity Sumador is
    Port ( Sumadorin : in  STD_LOGIC_VECTOR (31 downto 0);
           Sumador2in : in  STD_LOGIC_VECTOR (31 downto 0);
           Sumador_out : out  STD_LOGIC_VECTOR (31 downto 0));
end Sumador;

architecture ArqSumador of Sumador is

begin

	process(Sumadorin, Sumador2in)
	
	begin
	
		Sumador_out <= Sumadorin + Sumador2in; 
		
	end process; 

end ArqSumador;

