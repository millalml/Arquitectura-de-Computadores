----------------------------------------------------------------------------------
-- Company: UTP
-- Engineer: David Escamilla Gutiérrez
-- 
-- Create Date:    14:54:33 04/21/2017 
-- Design Name: 
-- Module Name:    PSR - Arq_PSR 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Recibe la señal del PSR Modifier (NZVC), la modifica y se la manda
--					 a la ALU con el CARRY.
--					 Donde el CWP ingresa al WM y a su vez devuelve una nueva señal
--					 del CWP, la cual igresa al PSR.
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

entity PSR is
    Port ( clk : in  STD_LOGIC; -- Se utiliza con los flancos de subida, es sincrono.
           reset : in  STD_LOGIC;
           icc_PSRM : in  STD_LOGIC_VECTOR (3 downto 0);
			  NuevoCWP : in  STD_LOGIC;
           ALU_acarreo : out  STD_LOGIC; -- Va a la ALU.
			  CWP : out  STD_LOGIC);
end PSR;

architecture Arq_PSR of PSR is

begin

	process(clk)
		begin
		if(rising_edge(clk))then
			if(reset = '1') then
				CWP<= '0';
				ALU_acarreo<= '0';
			else
				if NuevoCWP= '1' then
					CWP<= '1';
				else
					CWP<= '0';
				end if;
				if icc_PSRM(0) = '1' then
					ALU_acarreo<= '1';
				else 
					ALU_acarreo<= '0';
				end if;
			end if;
		end if;
	end process;

end Arq_PSR;

