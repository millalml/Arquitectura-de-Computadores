----------------------------------------------------------------------------------
-- Company: UTP
-- Engineer: David Escamilla Gutiérrez
-- 
-- Create Date:    19:12:16 04/04/2017 
-- Design Name: 
-- Module Name:    RegisterFile - ArqRF 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RegisterFile is
    Port ( Rs1 : in  STD_LOGIC_VECTOR (4 downto 0);
           Rs2 : in  STD_LOGIC_VECTOR (4 downto 0);
           Rd : in  STD_LOGIC_VECTOR (4 downto 0);
           DWR : in  STD_LOGIC_VECTOR (31 downto 0);
           reset : in  STD_LOGIC;
           Rs1out : out  STD_LOGIC_VECTOR (31 downto 0);
           Rs2out : out  STD_LOGIC_VECTOR (31 downto 0));
end RegisterFile;

architecture ArqRF of RegisterFile is

type ram_type is array (0 to 39) of std_logic_vector (31 downto 0);
	signal Reg : ram_type :=(others => x"00000000");

begin

	process(Rs1, Rs2, DWR, reset, Rd)
	
begin
	if(reset = '1')then
		Rs1out <= (others=>'0');
		Rs2out <= (others=>'0');
			
		Reg <= (others => x"00000000");
		
		else
			Rs1out <= Reg(conv_integer(Rs1));
			Rs2out <= Reg(conv_integer(Rs2));
				
		if(Rd  /= "000000")then
			Reg(conv_integer(Rd)) <= DWR;
				
		end if;
			
	end if;
	
	end process; 

end ArqRF;


