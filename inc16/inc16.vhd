----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:45:19 10/24/2017 
-- Design Name: 
-- Module Name:    inc16 - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity inc16 is
port(
	a : in std_logic_vector(15 downto 0);
	b : out std_logic_vector(15 downto 0)
	
);
end inc16;

architecture inc16_behave of inc16 is
	
begin
	process (a)
	constant sig1_dec : integer:=65536;

	begin
	--variable cnt : integer:=1;
	b <=std_logic_vector( to_unsigned(sig1_dec-to_integer(unsigned(a)),b'length));
	end process;
end inc16_behave;

