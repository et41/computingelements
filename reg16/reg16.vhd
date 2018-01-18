----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:48:42 11/13/2017 
-- Design Name: 
-- Module Name:    bit_register - Behavioral 
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

entity register_16 is
port(
	clock   : in std_logic;

	load   : in std_logic;
	d      : in std_logic_vector(15 downto 0);
	q      : out std_logic_vector(15 downto 0)

);
end register_16;

architecture Behavioral of register_16 is
begin

	process (clock,load)
	begin
	if(load='1') then
		if(clock='1'  and CLOCK'EVENT) then 
		q <= d;
		end if;
		end if;
	end process;
	
	
end Behavioral;

