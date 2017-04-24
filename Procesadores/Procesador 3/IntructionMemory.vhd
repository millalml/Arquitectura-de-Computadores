----------------------------------------------------------------------------------
-- Company: UTP
-- Engineer: David Escamilla Gutiérrez
-- 
-- Create Date:    18:51:20 04/04/2017 
-- Design Name: 
-- Module Name:    IntructionMemory - ArqIM 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Memoria de Instrucciones (tiene lenguaje binario).
--	Lee un archivo de texto donde se pone el lenguaje de máquina, lo lee
--	y realiza la instrucción.
--	Guardo el programa de 1 y 0. Mira las direcciones, saca la instrucción de 32 bits.
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
use std.textio.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity IntructionMemory is
    Port ( PCint : in  STD_LOGIC_VECTOR (31 downto 0);
			  reset : in  STD_LOGIC;
           IMout : out  STD_LOGIC_VECTOR (31 downto 0));
end IntructionMemory;

architecture ArqIM of IntructionMemory is

	-- Variable que almacenara una matriz de 32*32.
	type rom_type is array (0 to 31) of std_logic_vector (31 downto 0);
	-- Funcion que devuelve los mismos resultados siempre y cuando se evalue con los mismos argumentos.
	impure function InitRomFromFile (RomFileName : in string) return rom_type is
		FILE RomFile: text open read_mode is RomFileName; -- Abre un archivo de tipo text en modo lectura.
		variable RomFileLine :line;  -- Variable para capturar cada linea del archivo abierto.
		variable temp_bv : bit_vector(31 downto 0); -- Variable que almacena bit a bit el valor de la fila.
		variable temp_mem : rom_type; -- Variable que almacena todo el fichero en un array.
		begin
			for I in rom_type'range loop
				readline (RomFile, RomFileLine); -- Leyendo cada linea del fichero.
				read(RomFileLine,temp_bv); -- Leyendo y capturando los bits de cada linea.
				temp_mem(i) := to_stdlogicvector(temp_bv);
			end loop;
		return temp_mem;
	end function;
	signal instructions : rom_type := InitRomFromFile("parcial2.data");

begin

	process(PCint, reset, instructions)
	begin
		if(reset = '1')then
			IMout <= (others=>'0');
			
		else
			IMout <= instructions(conv_integer(PCint(4 downto 0)));
			
		end if;

	end process; 

end ArqIM;

