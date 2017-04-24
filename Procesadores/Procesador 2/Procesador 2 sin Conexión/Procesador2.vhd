----------------------------------------------------------------------------------
-- Company: UTP
-- Engineer: David Escamilla Gutiérrez
-- 
-- Create Date:    17:40:54 04/10/2017 
-- Design Name: 
-- Module Name:    Procesador2 - ArqProcesador2 
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

entity Procesador2 is
    Port ( reset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           ResultadoFinal : out  STD_LOGIC_VECTOR (31 downto 0));
end Procesador2;

architecture ArqProcesador2 of Procesador2 is

COMPONENT Sumador
	PORT(
		Sumadorin : IN std_logic_vector(31 downto 0);
		Sumador2in : IN std_logic_vector(31 downto 0);          
		Sumador_out : OUT std_logic_vector(31 downto 0)
		);
END COMPONENT;

COMPONENT nPC
	PORT(
		Din : IN std_logic_vector(31 downto 0);
		reset : IN std_logic;
		clk : IN std_logic;          
		Dout : OUT std_logic_vector(31 downto 0)
		);
END COMPONENT;

COMPONENT PC
	PORT(
		Entrada : IN std_logic_vector(31 downto 0);
		reset : IN std_logic;
		clk : IN std_logic;          
		Salida : OUT std_logic_vector(31 downto 0)
		);
END COMPONENT;

COMPONENT IntructionMemory
	PORT(
		PCint : IN std_logic_vector(31 downto 0);
		reset : IN std_logic;          
		IMout : OUT std_logic_vector(31 downto 0)
		);
END COMPONENT;
	
signal SumadorToNPC, NPCToPC, PCToIM, ImToURS:STD_LOGIC_VECTOR (31 downto 0);

begin

Inst_Sumador: Sumador PORT MAP(
		Sumadorin => x"00000001" ,
		Sumador2in => NPCToPC ,
		Sumador_out => SumadorToNPC
	);
	
Inst_nPC: nPC PORT MAP(
		Din => SumadorToNPC ,
		reset => reset ,
		clk => clk ,
		Dout => NPCToPC
	);
	
Inst_PC: PC PORT MAP(
		Entrada => NPCToPC ,
		reset => reset ,
		clk => clk ,
		Salida => PCToIM 
	);

Inst_IntructionMemory: IntructionMemory PORT MAP(
		PCint => PCToIM ,
		reset => reset ,
		IMout => ImToURS
	);



end ArqProcesador2;

