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
-- Description: Permite conocer qué tipo de formato estoy utilizando
--	al igual de qué tipo de operación estoy realizando.
--	Identifica la instrucción y operación a realizar, mira el op y el op3.
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
		
					when "000000" => -- ADD (Suma)
					UCout <= "000001";
					
					when "010000" => -- ADDcc (Suma y modifica el ICC)
					UCout <= "000010";
					
					when "011000" => -- ADDXcc (Suma con Acarreo y modifica el ICC)
					UCout <= "000011";
			  
					when "000100" => -- SUB (Resta)
					UCout <= "000100";
					
					when "010100" => -- SUBcc (Resta y modifica el ICC)
					UCout <= "000101";
					
					when "011100" => -- SUBXcc (Resta con Acarreo y modifica el ICC)
					UCout <= "000110";
				  
					when "000001" => -- AND (Operacion AND)
					UCout <= "000111";
					
					when "010001" => -- ANDcc (AND y modifica el ICC)
					UCout <= "001000";
			
					when "000101" => -- ANDN (AND Negada)
					UCout <= "001001";
					
					when "010101" => -- ANDNcc (AND Negada y modifica el ICC)
					UCout <= "001010";
			
					when "000010" => -- OR (Operacion OR)
					UCout <= "001011";
					
					when "010010" => -- ORcc (OR y modifica el ICC)
					UCout <= "001100";
			
					when "000110" => -- ORN (Or Negado)
					UCout <= "001101";
					
					when "010110" => -- ORNcc (Or Negado y modifica el ICC)
					UCout <= "001110";
			
					when "000011" => -- XOR (Operacion XOR)
					UCout <= "001111";
					
					when "010011" => -- XORcc (XOR y modifica el ICC)
					UCout <= "010000";
				  
					when "000111" => -- XORN (XOR Negado)
					UCout <= "010001";
					
					when "010111" => -- XORNcc (XOR Negado y modifica el ICC)
					UCout <= "010010";
					
					when others => -- Otras instrucciones
					UCout <= "111111";
				  
				end case;

			end if; 

	end process; 

end ArqUC;

