----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:39:03 10/20/2017 
-- Design Name: 
-- Module Name:    alu - Behavioral 
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

entity alu is
port(
--inputs
	x : in std_logic_vector(3 downto 0);
	y : in std_logic_vector(3 downto 0);
--control inputs
	zx : in std_logic;
	nx : in std_logic;
	zy : in std_logic;
	ny : in std_logic;
--	f  : in std_logic;
--	no : in std_logic;
--outputs
	c_out : out std_logic_vector(3 downto 0)
	--zr : out std_logic;
	--ng : out std_logic
);
end alu;

architecture alu_behav of alu is

	signal  var_zx: std_logic_vector(3 downto 0);
	signal  var_zy: std_logic_vector(3 downto 0);
--	signal sig_f : std_logic_vector(3 downto 0):="0000";
--negated output
--	signal sig_no : std_logic_vector(3 downto 0);
	
begin

	alu_proc : process(x,y,zx,nx,zy,ny) is

	begin
		var_zx <= x;
	var_zy <= y;
		if zx = '1' then 
		   
			var_zx <="0000";
--		else
--			var_zx <= x;
		end if;
		if nx = '1' then 
			var_zx <= not var_zx;
		end if;
		if zy = '1' then 
			var_zy <="0000";
--		else 
--			var_zy <= y;
		end if;
		if ny = '1' then 
			var_zy <= not var_zy;
		end if;
		c_out <= var_zx xor var_zy;
--		if f = '1' then 
--			sig_f <= var_zx xor var_zy;
--		else 
--			sig_f <= var_zx and var_zy;
--		end if;
--		if no = '1' then
--			c_out <= not sig_f;
--		else
--			c_out <= sig_f;
--		end if;
		
	end process alu_proc;
end alu_behav;

