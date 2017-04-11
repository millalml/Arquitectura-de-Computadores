----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:46:35 03/28/2017 
-- Design Name: 
-- Module Name:    RF - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RF is
    Port ( Rs1 : in  STD_LOGIC_VECTOR (18 downto 13);
           Rs2 : in  STD_LOGIC_VECTOR (4 downto 0);
           Rd : in  STD_LOGIC_VECTOR (29 downto 24);
           DWR : in  STD_LOGIC_VECTOR (31 downto 0);
           reset : in  STD_LOGIC;
           contRs1 : out  STD_LOGIC_VECTOR (31 downto 0);
           contRs2 : out  STD_LOGIC_VECTOR (31 downto 0));
end RF;

architecture Behavioral of RF is

begin


end Behavioral;

