--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:33:26 05/04/2017
-- Design Name:   
-- Module Name:   G:/Arquitectura Computadores/Procesadores/Procesador 4/sparcv8/WindowsManager_TB.vhd
-- Project Name:  sparcv8
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: WindowsManager
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
 
ENTITY WindowsManager_TB IS
END WindowsManager_TB;
 
ARCHITECTURE behavior OF WindowsManager_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT WindowsManager
    PORT(
         Rs1 : IN  std_logic_vector(4 downto 0);
         Rs2 : IN  std_logic_vector(4 downto 0);
         Rd : IN  std_logic_vector(4 downto 0);
         op : IN  std_logic_vector(1 downto 0);
         op3 : IN  std_logic_vector(5 downto 0);
         CWP : IN  std_logic;
         NuevoRs1 : OUT  std_logic_vector(5 downto 0);
         NuevoRs2 : OUT  std_logic_vector(5 downto 0);
         NuevoRd : OUT  std_logic_vector(5 downto 0);
         NuevoCWP : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Rs1 : std_logic_vector(4 downto 0) := (others => '0');
   signal Rs2 : std_logic_vector(4 downto 0) := (others => '0');
   signal Rd : std_logic_vector(4 downto 0) := (others => '0');
   signal op : std_logic_vector(1 downto 0) := (others => '0');
   signal op3 : std_logic_vector(5 downto 0) := (others => '0');
   signal CWP : std_logic := '0';

 	--Outputs
   signal NuevoRs1 : std_logic_vector(5 downto 0);
   signal NuevoRs2 : std_logic_vector(5 downto 0);
   signal NuevoRd : std_logic_vector(5 downto 0);
   signal NuevoCWP : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: WindowsManager PORT MAP (
          Rs1 => Rs1,
          Rs2 => Rs2,
          Rd => Rd,
          op => op,
          op3 => op3,
          CWP => CWP,
          NuevoRs1 => NuevoRs1,
          NuevoRs2 => NuevoRs2,
          NuevoRd => NuevoRd,
          NuevoCWP => NuevoCWP
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      Rs1 <= "10000";
		Rs2 <= "10001";
		Rd <= "10010";
		CWP  <= '0';
		op <= "10";
		op3 <="000000";
		
		wait for 100 ns;
		CWP <= '1';
		
		wait for 100 ns;
		Rs1 <= "11000";
		Rs2 <= "11001";
		Rd <= "11010";
		
		wait for 100 ns;	
		CWP <= '0';
		
		wait for 100 ns;
		Rs1 <= "00000";
		Rs2 <= "00001";
		Rd <= "00010";
		
		wait for 20 ns;
		CWP <= '1';
		
      wait;
   end process;

END;
