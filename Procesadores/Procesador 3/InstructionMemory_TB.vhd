----------------------------------------------------------------------------------
-- Company: UTP
-- Engineer: David Escamilla Gutiérrez
--
-- Create Date:   12:22:02 04/10/2017
-- Design Name:   
-- Module Name:   G:/Arquitectura Computadores/sparcv8/InstructionMemory_TB.vhd
-- Project Name:  sparcv8
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: IntructionMemory
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
 
ENTITY InstructionMemory_TB IS
END InstructionMemory_TB;
 
ARCHITECTURE behavior OF InstructionMemory_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT IntructionMemory
    PORT(
         PCint : IN  std_logic_vector(31 downto 0);
         reset : IN  std_logic;
         IMout : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal PCint : std_logic_vector(31 downto 0) := (others => '0');
   signal reset : std_logic := '0';

 	--Outputs
   signal IMout : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: IntructionMemory PORT MAP (
          PCint => PCint,
          reset => reset,
          IMout => IMout
        );

   -- Stimulus process
   stim_proc: process
   begin	
		reset <='1';
		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		reset <='0';
		PCint <= "00000000000000000000000000000000";

      -- insert stimulus here 

      wait;
   end process;

END;
