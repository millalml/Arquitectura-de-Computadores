----------------------------------------------------------------------------------
-- Company: UTP
-- Engineer: David Escamilla Gutiérrez
--
-- Create Date:    14:59:06 04/21/2017 
-- Design Name: 
-- Module Name:    PSR_Modifier - Arq_PSRModifier 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Modifica los 4 bits que tengo en los registros de estado del procesador
--					 PSR (Processor State Register). Modificando el resultado de la ALU.
--					 Los bits del ICC (Integer Conditional Code) son: NZVC.
--					 N=Negativo, Z=Cero, V=OverFlow, C=Carry.
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
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;
use std.textio.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PSR_Modifier is
    Port ( cont_RS1 : in  STD_LOGIC_VECTOR (31 downto 0); 
           cont_RS2 : in  STD_LOGIC_VECTOR (31 downto 0);
			  reset : in  STD_LOGIC;
           ALU_op : in  STD_LOGIC_VECTOR (5 downto 0); -- Para saber que tipo de operacion se va a realizar.
           Resultado_ALU : in  STD_LOGIC_VECTOR (31 downto 0); -- Para saber que bit se debe modificar, se lo asigna al Registro Destino.
           icc_PSR : out  STD_LOGIC_VECTOR (3 downto 0)); -- Recibe el resultado de la ALU, para modificar los 4 bits NZVC.
end PSR_Modifier;

architecture Arq_PSRModifier of PSR_Modifier is

begin

	process (reset, ALU_op, Resultado_ALU, cont_RS1, cont_RS2)
		begin
			if reset = '1' then 
				icc_PSR <= (others => '0');
			else
				-- ANDcc or ANDNcc or ORcc or ORNcc or XORcc or XNORcc
				if ALU_op = "001000" or ALU_op = "001010" or ALU_op = "001100" or ALU_op = "001110" or ALU_op = "010000" or ALU_op = "010010" then 
					icc_PSR(3) <= Resultado_ALU(31); -- El signo que traiga.
					if Resultado_ALU = "00000000000000000000000000000000" then 
						icc_PSR(2) <= '1'; -- Porque el resultado da cero.
					else
						icc_PSR(2) <= '0';
					end if;
					icc_PSR(1) <= '0'; -- Los operadores logicos no generan overflow ni carry.
					icc_PSR(0) <= '0';
				end if;
				
				-- ADDcc or ADDxcc
				if ALU_op = "000010" or ALU_op = "000011" then
					icc_PSR(3) <= Resultado_ALU(31);
					if Resultado_ALU = "00000000000000000000000000000000" then 
						icc_PSR(2) <= '1';
					else
						icc_PSR(2) <= '0';
					end if;
					icc_PSR(1) <= (cont_RS1(31) and cont_RS2(31) and (not Resultado_ALU(31))) or ((not cont_RS1(31)) and (not cont_RS2(31)) and Resultado_ALU(31));
					icc_PSR(0) <= (cont_RS1(31) and cont_RS2(31)) or ((not Resultado_ALU(31)) and (cont_RS1(31) or cont_RS2(31)));
				end if;
				
				--SUBcc or SUBxcc
				if ALU_op = "000101" or ALU_op = "000110" then
					icc_PSR(3) <= Resultado_ALU(31);
					if (conv_integer(Resultado_ALU)=0)then 
						icc_PSR(2) <= '1';
					else
						icc_PSR(2) <= '0';
					end if;
					icc_PSR(1) <= (cont_RS1(31) and (not cont_RS2(31)) and (not Resultado_ALU(31))) or ((not cont_RS1(31)) and cont_RS2(31) and Resultado_ALU(31));
					icc_PSR(0) <= ((not cont_RS1(31)) and cont_RS2(31)) or (Resultado_ALU(31) and ((not cont_RS1(31)) or cont_RS2(31)));
				end if;
				
			end if;
	end process;

end Arq_PSRModifier;

