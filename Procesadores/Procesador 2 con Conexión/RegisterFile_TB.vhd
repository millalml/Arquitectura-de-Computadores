----------------------------------------------------------------------------------
-- Company: UTP
-- Engineer: David Escamilla Gutiérrez
--
-- Create Date:   12:20:33 04/10/2017
-- Design Name:   
-- Module Name:   G:/Arquitectura Computadores/sparcv8/RegisterFile_TB.vhd
-- Project Name:  sparcv8
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RegisterFile
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
 
ENTITY RegisterFile_TB IS
END RegisterFile_TB;
 
ARCHITECTURE behavior OF RegisterFile_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RegisterFile
    PORT(
         Rs1 : IN  std_logic_vector(4 downto 0);
         Rs2 : IN  std_logic_vector(4 downto 0);
         Rd : IN  std_logic_vector(4 downto 0);
         DWR : IN  std_logic_vector(31 downto 0);
         reset : IN  std_logic;
         Rs1out : OUT  std_logic_vector(31 downto 0);
         Rs2out : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Rs1 : std_logic_vector(4 downto 0) := (others => '0');
   signal Rs2 : std_logic_vector(4 downto 0) := (others => '0');
   signal Rd : std_logic_vector(4 downto 0) := (others => '0');
   signal DWR : std_logic_vector(31 downto 0) := (others => '0');
   signal reset : std_logic := '0';

 	--Outputs
   signal Rs1out : std_logic_vector(31 downto 0);
   signal Rs2out : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RegisterFile PORT MAP (
          Rs1 => Rs1,
          Rs2 => Rs2,
          Rd => Rd,
          DWR => DWR,
          reset => reset,
          Rs1out => Rs1out,
          Rs2out => Rs2out
        );
		  
   -- Stimulus process
   stim_proc: process
	begin		
      reset<= '1';
      wait for 100 ns;
		reset <= '0';
		Rs1 <= "00000";
		Rs2 <= "10010";
		Rd <= "01000";
		DWR <= x"00000000";
     
		wait for 100 ns;
		reset <= '0';
		Rs1 <= "10000";
		Rs2 <= "10001";
		Rd  <= "10010";
		DWR <= x"00000000";
		
      wait;
   end process;

END;
