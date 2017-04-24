----------------------------------------------------------------------------------
-- Company: UTP
-- Engineer: David Escamilla Gutiérrez
-- 
-- Create Date:    08:25:45 04/13/2017 
-- Design Name: 
-- Module Name:    Procesador2 - Arq_Procesador2 
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
           ResultadoProcesador : out  STD_LOGIC_VECTOR (31 downto 0));
end Procesador2;

architecture Arq_Procesador2 of Procesador2 is

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

COMPONENT UC
	PORT(
		op : IN std_logic_vector(1 downto 0);
		op3 : IN std_logic_vector(5 downto 0);          
		UCout : OUT std_logic_vector(5 downto 0)
		);
	END COMPONENT;

COMPONENT RegisterFile
	PORT(
		Rs1 : IN std_logic_vector(4 downto 0);
		Rs2 : IN std_logic_vector(4 downto 0);
		Rd : IN std_logic_vector(4 downto 0);
		DWR : IN std_logic_vector(31 downto 0);
		reset : IN std_logic;          
		Rs1out : OUT std_logic_vector(31 downto 0);
		Rs2out : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	
COMPONENT Mux
	PORT(
		i : IN std_logic;
		Rs2in : IN std_logic_vector(31 downto 0);
		SEUint : IN std_logic_vector(31 downto 0);          
		MUXout : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

COMPONENT SEU
	PORT(
		imm13bits : IN std_logic_vector(12 downto 0);          
		SEUout : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

COMPONENT ALU
	PORT(
		Rs1in : IN std_logic_vector(31 downto 0);
		Mux_in : IN std_logic_vector(31 downto 0);
		ALU_op : IN std_logic_vector(5 downto 0);
		Carry : IN std_logic;          
		Alu_out : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

COMPONENT PSR_Modifier
	PORT(
		cont_RS1 : IN std_logic_vector(31 downto 0);
		cont_RS2 : IN std_logic_vector(31 downto 0);
		reset : IN std_logic;
		ALU_op : IN std_logic_vector(5 downto 0);
		Resultado_ALU : IN std_logic_vector(31 downto 0);          
		icc_PSR : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;
	
COMPONENT PSR
	PORT(
		clk : IN std_logic;
		reset : IN std_logic;
		icc_PSRM : IN std_logic_vector(3 downto 0);          
		ALU_acarreo : OUT std_logic
		);
	END COMPONENT;

signal SumadorTonPC, nPCToPC, PCToIM, IMToURS, ALUresult, RFToALU1, RFToMUX, SEUToMUX, MUXToALU:STD_LOGIC_VECTOR (31 downto 0);
signal ALUop1:STD_LOGIC_VECTOR (5 downto 0);
signal NZVC : std_logic_vector(3 downto 0);
signal Carry : std_logic;
begin

Inst_Sumador: Sumador PORT MAP(
		Sumadorin => x"00000001",
		Sumador2in => nPCToPC,
		Sumador_out => SumadorTonPC
	);

Inst_nPC: nPC PORT MAP(
		Din => SumadorTonPC,
		reset => reset,
		clk => clk,
		Dout => nPCToPC
	);
	
Inst_PC: PC PORT MAP(
		Entrada => nPCToPC,
		reset => reset,
		clk => clk,
		Salida => PCToIM
	);

Inst_IntructionMemory: IntructionMemory PORT MAP(
		PCint => PCToIM,
		reset => reset,
		IMout => IMToURS
	);

Inst_UC: UC PORT MAP(
		op => IMToURS(31 downto 30),
		op3 => IMToURS(24 downto 19),
		UCout => ALUop1
	);
	
Inst_RegisterFile: RegisterFile PORT MAP(
		Rs1 => IMToURS(18 downto 14),
		Rs2 => IMToURS(4 downto 0),
		Rd => IMToURS(29 downto 25),
		DWR => ALUresult,
		reset => reset,
		Rs1out => RFToALU1,
		Rs2out => RFToMUX
	);

Inst_Mux: Mux PORT MAP(
		i => IMToURS(13),
		Rs2in => RFToMUX,
		SEUint => SEUToMUX,
		MUXout => MUXToALU
	);
	
Inst_SEU: SEU PORT MAP(
		imm13bits => IMToURS(12 downto 0),
		SEUout => SEUToMUX
	);

Inst_ALU: ALU PORT MAP(
		Rs1in => RFToALU1,
		Mux_in => MUXToALU,
		ALU_op => ALUop1,
		Carry => Carry,
		Alu_out => ALUresult
	);

Inst_PSR_Modifier: PSR_Modifier PORT MAP(
		cont_RS1 => RFToALU1,
		cont_RS2 => MUXToALU,
		reset => reset,
		ALU_op => ALUop1,
		Resultado_ALU => ALUresult,
		icc_PSR => NZVC
	);

Inst_PSR: PSR PORT MAP(
		clk => clk,
		reset => reset,
		icc_PSRM => NZVC,
		ALU_acarreo => Carry
	);

ResultadoProcesador <= ALUresult;

end Arq_Procesador2;

