----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:10:00 09/08/2017 
-- Design Name: 
-- Module Name:    mux_ex - Behavioral 
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

entity mux_ex is
Port(
	a : in std_logic;
	b : in std_logic;
	sel: in std_logic;
	c : out std_logic);
end mux_ex;

architecture mux_ex_func of mux_ex is
begin
	mux_proc : process(a,b,sel)
	begin
		if sel = '0' then
			c <= a;
		else
			c <= b;
		end if;
	end process mux_proc;
end mux_ex_func;

