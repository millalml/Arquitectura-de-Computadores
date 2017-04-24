----------------------------------------------------------------------------------
-- Company: UTP
-- Engineer: David Escamilla Gutiérrez
--
-- Create Date:   12:22:22 04/10/2017
-- Design Name:   
-- Module Name:   G:/Arquitectura Computadores/sparcv8/ALU_TB.vhd
-- Project Name:  sparcv8
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY ALU_TB IS
END ALU_TB;
 
ARCHITECTURE behavior OF ALU_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         Rs1in : IN  std_logic_vector(31 downto 0);
         Mux_in : IN  std_logic_vector(31 downto 0);
         ALU_op : IN  std_logic_vector(5 downto 0);
			Carry : IN  std_logic;
         Alu_out : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Rs1in : std_logic_vector(31 downto 0) := (others => '0');
   signal Mux_in : std_logic_vector(31 downto 0) := (others => '0');
   signal ALU_op : std_logic_vector(5 downto 0) := (others => '0');
	signal Carry : std_logic := '0';
	
 	--Outputs
   signal Alu_out : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          Rs1in => Rs1in,
          Mux_in => Mux_in,
          ALU_op => ALU_op,
			 Carry => Carry,
          Alu_out => Alu_out
        );

   -- Stimulus process
   stim_proc: process
   begin		
		-- hold reset state for 100 ns.
      wait for 100 ns;	
		
      Rs1in <= x"0000002A";
		Mux_in <= x"0000000F";
   	Carry <= '1';
		
		-- insert stimulus here 
		ALU_op <= "000001";
		wait for 100 ns;
	
		ALU_op <= "000010";
		wait for 100 ns;

      wait;
   end process;

END;
