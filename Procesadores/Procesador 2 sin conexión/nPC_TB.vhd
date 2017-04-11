----------------------------------------------------------------------------------
-- Company: UTP
-- Engineer: David Escamilla Gutiérrez
-- 
-- Create Date:   19:38:37 04/04/2017
-- Design Name:   
-- Module Name:   C:/Users/utp/Desktop/Arquitectura Computadores/sparcv8/nPC_TB.vhd
-- Project Name:  sparcv8
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: nPC
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
 
ENTITY nPC_TB IS
END nPC_TB;
 
ARCHITECTURE behavior OF nPC_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT nPC
    PORT(
         Din : IN  std_logic_vector(31 downto 0);
         reset : IN  std_logic;
         clk : IN  std_logic;
         Dout : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Din : std_logic_vector(31 downto 0) := (others => '0');
   signal reset : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal Dout : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: nPC PORT MAP (
          Din => Din,
          reset => reset,
          clk => clk,
          Dout => Dout
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin
		reset <= '1';
      -- hold reset state for 100 ns.
      wait for 100 ns;
		reset <= '0';
	   Din <= x"00000100";
		
		wait for 100 ns;
	   Din <= x"00000101";
		
		wait for 100 ns;
	   Din <= x"00001001";
     
      wait;
   end process;

END;
