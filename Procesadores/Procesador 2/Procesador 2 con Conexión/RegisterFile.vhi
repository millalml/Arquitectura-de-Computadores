
-- VHDL Instantiation Created from source file RegisterFile.vhd -- 08:49:19 04/13/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

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

	Inst_RegisterFile: RegisterFile PORT MAP(
		Rs1 => ,
		Rs2 => ,
		Rd => ,
		DWR => ,
		reset => ,
		Rs1out => ,
		Rs2out => 
	);


