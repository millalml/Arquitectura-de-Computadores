----------------------------------------------------------------------------------
-- Company: UTP
-- Engineer: David Escamilla Gutiérrez
-- 
-- Create Date:    12:34:24 03/31/2017 
-- Design Name: 	 Flip-Flop Tipo D de un bit
-- Module Name:    flipfloptipod - Behavioral 
-- Project Name: 	 Flip-Flop Tipo D
-- Target Devices: 
-- Tool versions: 
-- Description: Flip-Flop Tipo D de un bit, con 3 entradas
--   				 y con una salida.
-- Dependencies: 
--
-- Revision: Version 2.0
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ffd is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           D : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end ffd;

architecture Behavioral of ffd is

begin

process (clk)
begin
   if clk'event and clk='1' then  
      if reset='1' then   
         Q <= '0';
      else
         Q <= D;
      end if;
   end if;
end process;

end Behavioral;

