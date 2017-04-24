----------------------------------------------------------------------------------
-- Company: UTP
-- Engineer: David Escamilla Gutiérrez
--
-- Create Date:   12:21:25 04/10/2017
-- Design Name:   
-- Module Name:   G:/Arquitectura Computadores/sparcv8/Mux_TB.vhd
-- Project Name:  sparcv8
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Mux
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
 
ENTITY Mux_TB IS
END Mux_TB;
 
ARCHITECTURE behavior OF Mux_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Mux
    PORT(
         i : IN  std_logic;
         Rs2in : IN  std_logic_vector(31 downto 0);
         SEUint : IN  std_logic_vector(31 downto 0);
         MUXout : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal i : std_logic := '0';
   signal Rs2in : std_logic_vector(31 downto 0) := (others => '0');
   signal SEUint : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal MUXout : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Mux PORT MAP (
          i => i,
          Rs2in => Rs2in,
          SEUint => SEUint,
          MUXout => MUXout
        );
		  
   -- Stimulus process
   stim_proc: process
   begin	
		i <='1';
		SEUint <= x"00000004";
		Rs2in <= x"00000008";
	
      wait;
   end process;
END;
