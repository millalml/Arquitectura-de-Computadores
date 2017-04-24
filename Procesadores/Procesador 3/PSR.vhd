----------------------------------------------------------------------------------
-- Company: UTP
-- Engineer: David Escamilla Gutiérrez
-- 
-- Create Date:    14:54:33 04/21/2017 
-- Design Name: 
-- Module Name:    PSR - Arq_PSR 
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

entity PSR is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           icc_PSRM : in  STD_LOGIC_VECTOR (3 downto 0);
           ALU_acarreo : out  STD_LOGIC);
end PSR;

architecture Arq_PSR of PSR is

begin

	process(reset, clk, icc_PSRM)
		begin
		
			if (reset = '1') then 		
				 ALU_acarreo <= '0';
			elsif (rising_edge(clk)) then
				ALU_acarreo <= icc_PSRM(0);
				
			end if;
	end process;

end Arq_PSR;

