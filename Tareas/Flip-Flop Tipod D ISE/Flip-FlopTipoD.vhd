----------------------------------------------------------------------------------
-- Company: UTP
-- Engineer: David Escamilla Gutiérrez
-- 
-- Create Date:    22:35:50 03/26/2017 
-- Design Name: 	 Flip-Flop Tipo D de un bit
-- Module Name:    Flip-FlopTipoD - Behavioral 
-- Project Name: 	 Flip-Flop Tipo D
-- Target Devices: 
-- Tool versions: 
-- Description: Primer ejercicio en ISE para la materia Arquitectura de Computadores.
--					 El ejercicio consta en crear un Flip-Flop Tipo D de un bit.
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: Version 1.0
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

entity Flip-FlopTipoD is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           D : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end Flip-FlopTipoD;

architecture Behavioral of Flip-FlopTipoD is

begin

process (clk) --Se activa el Flip-Flop en ambos campos.
begin
   if clk'event and clk='1' then  --Activa el Flip-Flop en el flanco de subida.
      if reset='1' then   
         Q <= '0';
      else
         Q <= D;
      end if;
   end if;
end process;
 			

end Behavioral;

