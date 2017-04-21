----------------------------------------------------------------------------------
-- Company: UTP
-- Engineer: David Escamilla Gutiérrez
-- 
-- Create Date:    19:25:50 04/04/2017 
-- Design Name: 
-- Module Name:    SEU - ArqSEU 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Unidad de Extension de Signos.
--	Me permite completar hasta 13 bits para inmediatos. 
-- Convierte los 13 bits en 32 bits. 0=no lectura, 1=hago lectura.
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

entity SEU is
    Port ( imm13bits : in  STD_LOGIC_VECTOR (12 downto 0);
           SEUout : out  STD_LOGIC_VECTOR (31 downto 0));
end SEU;

architecture ArqSEU of SEU is

begin

process(imm13bits)

begin

	if(imm13bits(12) = '1')then
			SEUout(12 downto 0) <= imm13bits;
			SEUout(31 downto 13) <= (others=>'1');
			
		else
		
			SEUout(12 downto 0) <= imm13bits;
			SEUout(31 downto 13) <= (others=>'0');
			
	end if;
	
end process; 

end ArqSEU;

