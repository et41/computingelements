----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:15:45 09/08/2017 
-- Design Name: 
-- Module Name:    demux_ex - Behavioral 
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

entity demux_ex is
port(
	a : in std_logic;
	sel : in std_logic;
	b : out std_logic;
	c : out std_logic);

end demux_ex;

architecture demux_ex_func of demux_ex is
begin
	demux : process(a,sel)
	begin
		if sel = '0' then 
			b <= a;
			c <= '0';
		else 
			c <= a;
			b <= '0';
		end if;
	
	end process demux;


end demux_ex_func;

