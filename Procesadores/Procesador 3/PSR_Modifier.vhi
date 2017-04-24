
-- VHDL Instantiation Created from source file PSR_Modifier.vhd -- 14:50:48 04/24/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

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

	Inst_PSR_Modifier: PSR_Modifier PORT MAP(
		cont_RS1 => ,
		cont_RS2 => ,
		reset => ,
		ALU_op => ,
		Resultado_ALU => ,
		icc_PSR => 
	);


