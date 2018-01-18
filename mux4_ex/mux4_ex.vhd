----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:46:59 09/08/2017 
-- Design Name: 
-- Module Name:    mux4_ex - Behavioral 
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

entity mux4_ex is
port(
	a,b,c,d : in std_logic_vector(15 downto 0);
	sel     : in std_logic_vector(1 downto 0);
	e_out   : out std_logic_vector(15 downto 0));
end mux4_ex;

architecture mux4_ex_func of mux4_ex is
begin
	mux4_proc : process(a,b,c,d,sel)
	begin
		if sel = "00" then 
			e_out <= a;
		elsif sel = "01" then
			e_out <= b;
		elsif sel = "10" then 
			e_out <= c;
		else 
			e_out <= d;
		end if;
	end process mux4_proc;
end mux4_ex_func;