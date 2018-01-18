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

entity inc4 is

port(

	a : in std_logic_vector(3 downto 0);
	b : out std_logic_vector(3 downto 0)
	
);

end inc4;

architecture inc4_behave of inc4 is

	signal sig1_dec : integer:=16;
	
begin
	inc4_proc : process(a)
	
	begin
	
	b <=std_logic_vector( to_unsigned(sig1_dec-to_integer(unsigned(a)),b'length));
	
	end process inc4_proc;
	
end inc4_behave;

