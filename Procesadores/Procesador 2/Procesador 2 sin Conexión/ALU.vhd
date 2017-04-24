----------------------------------------------------------------------------------
-- Company: UTP
-- Engineer: David Escamilla Gutiérrez
-- 
-- Create Date:    19:35:17 04/04/2017 
-- Design Name: 
-- Module Name:    ALU - ArqAlu 
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

entity ALU is
    Port ( Rs1in : in  STD_LOGIC_VECTOR (31 downto 0);
           Mux_in : in  STD_LOGIC_VECTOR (31 downto 0);
           ALU_op : in  STD_LOGIC_VECTOR (5 downto 0);
           Alu_out : out  STD_LOGIC_VECTOR (31 downto 0));
end ALU;

architecture ArqAlu of ALU is

begin
process(Rs1in, Mux_in, ALU_op)
begin
	
	case(ALU_op) is
	
			when "000001" => -- ADD
				Alu_out <= Rs1in + Mux_in;
				
			when "000010" => -- SUB
				Alu_out <= Rs1in - Mux_in;
				
			when "000011" => -- AND
				Alu_out <= Rs1in and Mux_in;
				
			when "000100" => -- ANDN
				Alu_out <= not(Rs1in and Mux_in);
				
			when "000101" => -- OR
				Alu_out <= Rs1in or Mux_in;
				
			when "000110" => -- ORN
				Alu_out <= not(Rs1in or Mux_in);
				
			when "000111" => -- XOR
				Alu_out <= Rs1in xor Mux_in;
				
			when "001000" => -- XNOR
				Alu_out <= not(Rs1in xor Mux_in);
		
			when others => 
			
			Alu_out <= (others=>'0');
			
		end case;

		
end process;

end ArqAlu;

