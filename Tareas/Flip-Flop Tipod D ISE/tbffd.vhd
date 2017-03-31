--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:02:43 03/31/2017
-- Design Name:   
-- Module Name:   C:/Xilinx/14.7/ISE_DS/David Escamilla/flipfloptipod/tbffd.vhd
-- Project Name:  flipfloptipod
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ffd
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
 
ENTITY tbffd IS
END tbffd;
 
ARCHITECTURE behavior OF tbffd IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ffd
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         D : IN  std_logic;
         Q : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal D : std_logic := '0';

 	--Outputs
   signal Q : std_logic;

   -- Clock period definitions
   constant clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ffd PORT MAP (
          clk => clk,
          reset => reset,
          D => D,
          Q => Q
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
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
