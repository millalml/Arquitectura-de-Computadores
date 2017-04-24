
-- VHDL Instantiation Created from source file Mux.vhd -- 08:55:26 04/13/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Mux
	PORT(
		i : IN std_logic;
		Rs2in : IN std_logic_vector(31 downto 0);
		SEUint : IN std_logic_vector(31 downto 0);          
		MUXout : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_Mux: Mux PORT MAP(
		i => ,
		Rs2in => ,
		SEUint => ,
		MUXout => 
	);


