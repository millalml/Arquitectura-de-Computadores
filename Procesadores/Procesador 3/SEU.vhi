
-- VHDL Instantiation Created from source file SEU.vhd -- 08:59:12 04/13/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT SEU
	PORT(
		imm13bits : IN std_logic_vector(12 downto 0);          
		SEUout : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_SEU: SEU PORT MAP(
		imm13bits => ,
		SEUout => 
	);


