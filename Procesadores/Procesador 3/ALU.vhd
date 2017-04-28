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
-- Description: Unidad Aritmético-Lógica.
--	Recibe el contenido del registro fuente 1 y fuente 2 en 32 bits.
--	Me recibe en 32 bits, ya que me recibe el contenido de RF (Archivo Registro).
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
           ALU_op : in  STD_LOGIC_VECTOR (5 downto 0); -- Reasignación de los valores, para saber más adelante que voy hacer.
           Carry : in STD_LOGIC;
			  Alu_out : out  STD_LOGIC_VECTOR (31 downto 0)); -- Es diferente a %g0, voy y lo escribo, lo guardo en el RF, de lo contrario no lo guardo.
end ALU;

architecture ArqAlu of ALU is

begin
process(Rs1in, Mux_in, ALU_op)
begin
	
	case(ALU_op) is
	
			when "000001" => -- ADD
				Alu_out <= Rs1in + Mux_in;
				
			when "000010" => -- ADDcc
				Alu_out <= Rs1in + Mux_in;
				
			when "000011" => -- ADDXcc
				Alu_out <= Rs1in + Mux_in + Carry;
				
			when "000100" => -- SUB
				Alu_out <= Rs1in - Mux_in;
			
			when "000101" => -- SUBcc
				Alu_out <= Rs1in - Mux_in;
				
			when "000110" => -- SUBXcc
				Alu_out <= Rs1in - Mux_in - Carry;
				
			when "000111" => -- AND
				Alu_out <= Rs1in and Mux_in;
			
			when "001000" => -- ANDcc
				Alu_out <= Rs1in and Mux_in;
				
			when "001001" => -- ANDN
				Alu_out <= Rs1in nand Mux_in;
				
			when "001010" => -- ANDNcc
				Alu_out <= Rs1in nand Mux_in;
				
			when "001011" => -- OR
				Alu_out <= Rs1in or Mux_in;
				
			when "001100" => -- ORcc
				Alu_out <= Rs1in or Mux_in;
				
			when "001101" => -- ORN
				Alu_out <= Rs1in nor Mux_in;
				
			when "001110" => -- ORNcc
				Alu_out <= Rs1in nor Mux_in;
				
			when "001111" => -- XOR
				Alu_out <= Rs1in xor Mux_in;
				
			when "010000" => -- XORcc
				Alu_out <= Rs1in xor Mux_in;
				
			when "010001" => -- XNOR
				Alu_out <= Rs1in xnor Mux_in;
				
			when "010010" => -- XNORcc
				Alu_out <= Rs1in xnor Mux_in;
		
			when others => -- Otras instrucciones.
				Alu_out <= (others=>'0'); -- Completa los 32 bits con '0'.
			
		end case;

end process;

end ArqAlu;

