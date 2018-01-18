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

entity bit_register is
port(
	d,clock,load : in std_logic;
	q       : out std_logic

);
end bit_register;

architecture Behavioral of bit_register is

begin
	process (clock,load)
	begin
	if(clock='1' and CLOCK'EVENT and load='1' ) then 
	q <= d;
	end if;
	end process;
end Behavioral;

