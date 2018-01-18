----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:21:54 11/20/2017 
-- Design Name: 
-- Module Name:    mux8way16 - Behavioral 
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

entity mux8way16 is
port(
a : in std_logic_vector(127 downto 0);
sel             : in std_logic_vector(2 downto 0 );
mux_out         : out std_logic_vector(15 downto 0)
);
end mux8way16;

architecture Behavioral of mux8way16 is
begin
 process(a,sel)
	begin
		if sel = "000"  then 
			mux_out <= a(15 downto 0);			
	  elsif sel = "001" then
			mux_out <= a(31 downto 16);
	  elsif sel = "010" then
				mux_out <= a(47 downto 32);
	  elsif sel = "100" then
			mux_out <= a(63 downto 48);
	  elsif sel = "011" then
			mux_out <= a(79 downto 64);
	  elsif sel = "101" then
			mux_out <= a(95 downto 80);
	 elsif sel = "110" then
			mux_out <= a(111 downto 96);
		elsif sel = "111" then
			mux_out <= a(127 downto 112);
			end if;
			end process;
end Behavioral;

