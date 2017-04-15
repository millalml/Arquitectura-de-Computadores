----------------------------------------------------------------------------------
-- Company: UTP
-- Engineer: David Escamilla Guti�rrez
-- 
-- Create Date:    18:04:23 04/10/2017 
-- Design Name: 
-- Module Name:    PC - ArqPC 
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

entity PC is
    Port ( Entrada : in  STD_LOGIC_VECTOR (31 downto 0);
           reset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           Salida : out  STD_LOGIC_VECTOR (31 downto 0));
end PC;

architecture ArqPC of PC is

begin
		process(clk)
			begin
				if (rising_edge(clk))then
					if(reset = '1')then
						Salida <= (others => '0');
					else
						Salida <= Entrada;
					end if;
				end if;
		end process;
		
end ArqPC;

