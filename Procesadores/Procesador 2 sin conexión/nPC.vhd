----------------------------------------------------------------------------------
-- Company: UTP
-- Engineer: David Escamilla Gutiérrez
-- 
-- Create Date:    18:48:35 04/04/2017 
-- Design Name: 
-- Module Name:    nPC - ArqnPC 
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

entity nPC is
    Port ( Din : in  STD_LOGIC_VECTOR (31 downto 0);
           reset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           Dout : out  STD_LOGIC_VECTOR (31 downto 0));
end nPC;

architecture ArqnPC of nPC is

begin

process (Din, reset, clk)

begin
   if clk'event and clk='1' then  
      if reset='1' then   
         Dout <= x"00000000";
      else
         Dout <= Din;
      end if;
   end if;
end process;					

end ArqnPC;

