----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:41:19 11/16/2017 
-- Design Name: 
-- Module Name:    dmux8way - Behavioral 
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

entity dmux8way is
port(
	dmux_in : in std_logic;

	sel     : in std_logic_vector(2 downto 0);
	a,b,c,d,e,f,g,h : out std_logic
);
end dmux8way;

architecture Behavioral of dmux8way is

begin
	process(dmux_in,sel)
	begin
	  if sel = "000"  then 
			a <= dmux_in;
		   b<='0';c<='0';d<='0';e<='0';f<='0';g<='0';h<='0';
			
	  elsif sel = "001" then
			b <= dmux_in;
		   a<='0';c<='0';d<='0';e<='0';f<='0';g<='0';h<='0';
			
	  elsif sel = "010" then
			c <= dmux_in;
		   b<='0';a<='0';d<='0';e<='0';f<='0';g<='0';h<='0';

	  elsif sel = "100" then
			d <= dmux_in;
		   b<='0';c<='0';a<='0';e<='0';f<='0';g<='0';h<='0';

	  elsif sel = "011" then
			e <= dmux_in;	
		   b<='0';c<='0';d<='0';a<='0';f<='0';g<='0';h<='0';

	  elsif sel = "101" then
			f <= dmux_in;	
		   b<='0';c<='0';d<='0';e<='0';a<='0';g<='0';h<='0';

		elsif sel = "110" then
			g <= dmux_in;
		   b<='0';c<='0';d<='0';e<='0';f<='0';a<='0';h<='0';

		elsif sel = "111" then
			h <= dmux_in;
			   b<='0';c<='0';d<='0';e<='0';f<='0';g<='0';a<='0';

	  end if;
	end process;
end Behavioral;

