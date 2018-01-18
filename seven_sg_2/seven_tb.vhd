----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:48:19 09/09/2016 
-- Design Name: 
-- Module Name:    seven_tb - Behavioral 
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
use IEEE.numeric_std.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity seven_tb is
	port(
		clk: in std_logic;
		sw: in std_logic_vector(7 downto 0 );
		an: out std_logic_vector(3 downto 0);
		sseg: out std_logic_vector(7 downto 0)
	);

end seven_tb;

architecture arch of seven_tb is
	signal inc:std_logic_vector(7 downto 0);
	signal led3,led2,led1,led0: std_logic_vector(7 downto 0);
begin
	inc <= std_logic_vector(unsigned(sw)+1);
	sseg_unit_0:entity work.seven_sg
		port map(hex=>sw(3 downto 0), dp=>'0', sseg=>led0);
	sseg_unit_1:entity work.seven_sg
		port map(hex=>sw(7 downto 4), dp=>'0', sseg=>led1);
	sseg_unit_2:entity work.seven_sg
		port map(hex=>inc(3 downto 0), dp=>'1', sseg=>led2);
	sseg_unit_3:entity work.seven_sg
		port map(hex=>inc(7 downto 4), dp=>'1', sseg=>led3);
	disp_unit: entity work.disp_mux
		port map(
			clk=>clk, reset=>'0',
			in0=>led0, in1=>led1, in2=>led2, in3=>led3,
			an=>an,sseg=>sseg);
end arch;

