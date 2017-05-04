----------------------------------------------------------------------------------
-- Company: UTP
-- Engineer: David Escamilla Gutiérrez
--
-- Create Date:   12:19:22 04/10/2017
-- Design Name:   
-- Module Name:   G:/Arquitectura Computadores/sparcv8/Sumador_TB.vhd
-- Project Name:  sparcv8
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Sumador
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
 
ENTITY Sumador_TB IS
END Sumador_TB;
 
ARCHITECTURE behavior OF Sumador_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Sumador
    PORT(
         Sumadorin : IN  std_logic_vector(31 downto 0);
         Sumador2in : IN  std_logic_vector(31 downto 0);
         Sumador_out : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Sumadorin : std_logic_vector(31 downto 0) := (others => '0');
   signal Sumador2in : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal Sumador_out : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Sumador PORT MAP (
          Sumadorin => Sumadorin,
          Sumador2in => Sumador2in,
          Sumador_out => Sumador_out
        );

   -- Stimulus process
   stim_proc: process
   begin		
		Sumadorin <= x"00000001";
		Sumador2in <= x"00000011";
		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		Sumadorin <= x"00000100";
		Sumador2in <= x"00000101";
		
      wait for 100 ns;
		Sumadorin <= x"00000110";
		Sumador2in <= x"00000011";
		
      -- insert stimulus here  

      wait;
   end process;

END;
