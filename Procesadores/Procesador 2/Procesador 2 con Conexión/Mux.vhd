----------------------------------------------------------------------------------
-- Company: UTP
-- Engineer: David Escamilla Gutiérrez
-- 
-- Create Date:    19:23:48 04/04/2017 
-- Design Name: 
-- Module Name:    Mux - ArqMux 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Permite el paso de un cero y un uno.
--	Es como un switch, enciende o apaga.
--	Permite el paso del contenido o de los inmediatos.
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

entity Mux is
    Port ( i : in  STD_LOGIC;
			  Rs2in : in  STD_LOGIC_VECTOR (31 downto 0);
           SEUint : in  STD_LOGIC_VECTOR (31 downto 0);
           MUXout : out  STD_LOGIC_VECTOR (31 downto 0));
end Mux;

architecture ArqMux of Mux is

begin

process(i, Rs2in, SEUint)

begin

	if(i = '1')then
		MUXout<= SEUint;
		
	else 
		if(i='0')then
			MUXout <= Rs2in;
		
		end if ;
		
	end if; 	
	
end process; 

end ArqMux;

