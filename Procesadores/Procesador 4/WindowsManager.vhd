----------------------------------------------------------------------------------
-- Company: UTP
-- Engineer: David Escamilla Gutiérrez
-- 
-- Create Date:    18:38:29 05/02/2017 
-- Design Name: 
-- Module Name:    WindowsManager - Arq_WindowsManager 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Se encarga de revisar si esta en la ventana actual
--					 o en la siguiente.
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity WindowsManager is
    Port ( Rs1 : in  STD_LOGIC_VECTOR (4 downto 0);
           Rs2 : in  STD_LOGIC_VECTOR (4 downto 0);
           Rd : in  STD_LOGIC_VECTOR (4 downto 0);
           op : in  STD_LOGIC_VECTOR (1 downto 0); -- Indica el tipo de instruccion.
           op3 : in  STD_LOGIC_VECTOR (5 downto 0); -- Indica la operacion que voy a realizar.
           CWP : in  STD_LOGIC; -- Current Windows Pointer. Va al PSR.
           NuevoRs1 : out  STD_LOGIC_VECTOR (5 downto 0); -- Va al RegisterFile.
           NuevoRs2 : out  STD_LOGIC_VECTOR (5 downto 0); -- Va al RegisterFile.
           NuevoRd : out  STD_LOGIC_VECTOR (5 downto 0); -- Va al RegisterFile.
           NuevoCWP : out  STD_LOGIC := '0'); -- Indica la nueva ventana, es decir indica en que ventana estoy.
end WindowsManager;

architecture Arq_WindowsManager of WindowsManager is
	signal Rs1int, Rs2int, Rdint: integer range 0 to 39 := 0;
	signal CoCWP : integer := conv_integer(CWP);
	
begin
	process(Rs1, Rs2, Rd, op, op3, CWP, Rs1int, Rs2int, Rdint)
	begin
			if(op = "10" and op3 = "111100") then -- SAVE
				if CWP = '1' then
					NuevoCWP <= '1';
					CoCWP <= 0;
				else
					NuevoCWP <= '0';
					CoCWP <= 1;
				end if;
			else
				if(op = "10" and op3 = "111101") then -- RESTORE
					if CWP = '1' then
						NuevoCWP <= '0';
						CoCWP <= 0;
					else
						NuevoCWP <= '1';
						CoCWP <= 1;
					end if;
				end if;
			end if;
		
		if(Rs1>="00000" and Rs1<="00111") then -- Globales
			Rs1int <= conv_integer(Rs1);
		else
			if(Rs1>="11000" and Rs1<="11111") then -- Entrada
				Rs1int <= conv_integer(Rs1)-(conv_integer(CoCWP)*16);
			else
				if(Rs1>="10000" and Rs1<="10111") then -- Locales
					Rs1int <= conv_integer(Rs1)+(conv_integer(CoCWP)*16);
				else
					if(Rs1>="01000" and Rs1<="01111") then -- Salida
						Rs1int <= conv_integer(Rs1)+ (conv_integer(CoCWP)*16);
					end if;
				end if;
			end if;
		end if;
	
		if(Rs2>="00000" and Rs2<="00111") then -- Globales
			Rs2int <= conv_integer(Rs2);
		else
			if(Rs2>="11000" and Rs2<="11111") then
				Rs2int <= conv_integer(Rs2) - (conv_integer(CoCWP)*16); -- Entrada
			else
				if(Rs2>="10000" and rs2<="10111") then
					Rs2int <= conv_integer(Rs2)+ (conv_integer(CoCWP)*16); -- Locales
				else
					if(Rs2>="01000" and Rs2<="01111") then
						Rs2int <= conv_integer(Rs2)+ (conv_integer(CoCWP)*16); -- Salida
					end if;
				end if;
			end if;
		end if;
		
		if(Rd>="00000" and Rd<="00111") then -- Globales
			Rdint <= conv_integer(Rd);
		else
			if(Rd>="11000" and rd<="11111") then -- Entrada
				Rdint <= conv_integer(Rd)  - (conv_integer(CoCWP)*16);
			else
				if(Rd>="10000" and rd<="10111") then -- Locales
					Rdint <= conv_integer(Rd)+ (conv_integer(CoCWP)*16);
				else
					if(Rd>="01000" and rd<="01111") then -- Salida
						Rdint <= conv_integer(Rd)+ (conv_integer(CoCWP)*16);
					end if;
				end if;
			end if;
		end if; 
	end process;
	
	NuevoRs1 <= conv_std_logic_vector(Rs1int, 6);
	NuevoRs2 <= conv_std_logic_vector(Rs2int, 6);
	NuevoRd <= conv_std_logic_vector(Rdint, 6);
	
end Arq_WindowsManager;

