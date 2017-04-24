
-- VHDL Instantiation Created from source file ALU.vhd -- 15:19:27 04/24/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT ALU
	PORT(
		Rs1in : IN std_logic_vector(31 downto 0);
		Mux_in : IN std_logic_vector(31 downto 0);
		ALU_op : IN std_logic_vector(5 downto 0);
		Carry : IN std_logic;          
		Alu_out : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_ALU: ALU PORT MAP(
		Rs1in => ,
		Mux_in => ,
		ALU_op => ,
		Carry => ,
		Alu_out => 
	);


