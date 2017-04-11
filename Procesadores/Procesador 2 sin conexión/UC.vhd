----------------------------------------------------------------------------------
-- Company: UTP
-- Engineer: David Escamilla Gutiérrez
-- 
-- Create Date:    19:28:58 04/04/2017 
-- Design Name: 
-- Module Name:    UC - ArqUC 
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

entity UC is
    Port ( op : in  STD_LOGIC_VECTOR (1 downto 0);
           op3 : in  STD_LOGIC_VECTOR (5 downto 0);
           UCout : out  STD_LOGIC_VECTOR (5 downto 0));
end UC;

architecture ArqUC of UC is

begin

	process(op, op3)

		begin

			if (op = "10")then
			
				case op3 is
		
					when "000000" => -- ADD
					UCout <= "000001";
			  
					when "000100" => -- SUB
					UCout <= "000010";
				  
					when "000001" => -- AND
					UCout <= "000011";
			
					when "000101" => -- ANDN
					UCout <= "000100";
			
					when "000010" => -- OR
					UCout <= "000101";
			
					when "000110" => -- ORN
					UCout <= "000110";
			
					when "000011" => -- XOR
					UCout <= "000111";
				  
					when "000111" => -- XORN
					UCout <= "001000";
					
					when others => -- not
					UCout <= "000000";
				  
				end case;
				
			else
			
				UCout <= "111111";

			end if; 

	end process; 

end ArqUC;

