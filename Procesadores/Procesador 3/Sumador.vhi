
-- VHDL Instantiation Created from source file Sumador.vhd -- 08:22:13 04/13/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Sumador
	PORT(
		Sumadorin : IN std_logic_vector(31 downto 0);
		Sumador2in : IN std_logic_vector(31 downto 0);          
		Sumador_out : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_Sumador: Sumador PORT MAP(
		Sumadorin => ,
		Sumador2in => ,
		Sumador_out => 
	);


