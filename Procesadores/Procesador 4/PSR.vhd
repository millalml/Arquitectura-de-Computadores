----------------------------------------------------------------------------------
-- Company: UTP
-- Engineer: David Escamilla Guti�rrez
-- 
-- Create Date:    14:54:33 04/21/2017 
-- Design Name: 
-- Module Name:    PSR - Arq_PSR 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Recibe la se�al del PSR Modifier (NZVC), la modifica y se la manda
--					 a la ALU con el CARRY.
--					 Donde el CWP ingresa al WM y a su vez devuelve una nueva se�al
--					 del CWP, la cual igresa al PSR.
--					 La salida CWP: Esta entrada me indica en que ventana estoy y envia
--					 la se�al al WM.
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
			  NuevoCWP : in  STD_LOGIC; -- Va al Windows Manager.
           ALU_acarreo : out  STD_LOGIC; -- Va a la ALU.
			  CWP : out  STD_LOGIC); -- Un contador que identifica la ventana actual en los registros.
											 -- Disminuye el CWP y guarda (Save), e incrementa en instrucciones (Restore).
end PSR;

architecture Arq_PSR of PSR is

begin

	process(clk, reset, icc_PSRM)
	begin
		if(reset = '1') then
			ALU_acarreo <= '0'; 
			CWP <= '0'; 
		else
			if(rising_edge(clk)) then
				ALU_acarreo <= icc_PSRM(0);
				CWP <= NuevoCWP; 
			end if;
		end if;
	end process;

end Arq_PSR;

