----------------------------------------------------------------------------------
-- Company: UTP
-- Engineer: David Escamilla Gutiérrez
--
-- Create Date:   14:25:06 04/24/2017
-- Design Name:   
-- Module Name:   G:/Arquitectura Computadores/Procesadores/Procesador 3/sparcv8/PSRModifier_TB.vhd
-- Project Name:  sparcv8
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PSR_Modifier
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
 
ENTITY PSRModifier_TB IS
END PSRModifier_TB;
 
ARCHITECTURE behavior OF PSRModifier_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PSR_Modifier
    PORT(
         cont_RS1 : IN  std_logic_vector(31 downto 0);
         cont_RS2 : IN  std_logic_vector(31 downto 0);
         reset : IN  std_logic;
         ALU_op : IN  std_logic_vector(5 downto 0);
         Resultado_ALU : IN  std_logic_vector(31 downto 0);
         icc_PSR : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal cont_RS1 : std_logic_vector(31 downto 0) := (others => '0');
   signal cont_RS2 : std_logic_vector(31 downto 0) := (others => '0');
   signal reset : std_logic := '0';
   signal ALU_op : std_logic_vector(5 downto 0) := (others => '0');
   signal Resultado_ALU : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal icc_PSR : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PSR_Modifier PORT MAP (
          cont_RS1 => cont_RS1,
          cont_RS2 => cont_RS2,
          reset => reset,
          ALU_op => ALU_op,
          Resultado_ALU => Resultado_ALU,
          icc_PSR => icc_PSR
        );

   -- Stimulus process
   stim_proc: process
  begin		
		reset <= '1';
      -- hold reset state for 100 ns.
      wait for 100 ns;
			reset <='0';
			ALU_op<= "000101";
			cont_RS1 <= x"00010000";
			cont_RS2 <= x"00010001";
			Resultado_ALU<="11111111111111111111111111110011";
			
      wait;
   end process;

END;
