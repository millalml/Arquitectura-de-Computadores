
-- VHDL Instantiation Created from source file PSR.vhd -- 14:56:23 04/24/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT PSR
	PORT(
		clk : IN std_logic;
		reset : IN std_logic;
		icc_PSRM : IN std_logic_vector(3 downto 0);          
		ALU_acarreo : OUT std_logic
		);
	END COMPONENT;

	Inst_PSR: PSR PORT MAP(
		clk => ,
		reset => ,
		icc_PSRM => ,
		ALU_acarreo => 
	);


