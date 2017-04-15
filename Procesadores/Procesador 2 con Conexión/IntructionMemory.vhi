
-- VHDL Instantiation Created from source file IntructionMemory.vhd -- 08:38:38 04/13/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT IntructionMemory
	PORT(
		PCint : IN std_logic_vector(31 downto 0);
		reset : IN std_logic;          
		IMout : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_IntructionMemory: IntructionMemory PORT MAP(
		PCint => ,
		reset => ,
		IMout => 
	);


