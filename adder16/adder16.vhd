----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:55:20 10/20/2017 
-- Design Name: 
-- Module Name:    adder16 - Behavioral 
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

entity adder16 is
port(

	a_in,b_in : in std_logic_vector (15 downto 0);
	sum_4: out std_logic_vector (15 downto 0)

);
end adder16;

architecture Behavioral of adder16 is
signal c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16: std_logic;
--c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15 : bit;
	component full_adder is
	port(
	a,b,c_in : in std_logic;
	c_out,sum : out std_logic
);
end component full_adder;
begin
 FA  : full_adder port map(a=>a_in(0),b=>b_in(0),c_in=>'0',c_out=>c1,sum=>sum_4(0));
 FA1 : full_adder port map(a=>a_in(1),b=>b_in(1),c_in=>c1,c_out=>c2,sum=>sum_4(1));
 FA2 : full_adder port map(a=>a_in(2),b=>b_in(2),c_in=>c2,c_out=>c3,sum=>sum_4(2));
 FA3 : full_adder port map(a=>a_in(3),b=>b_in(3),c_in=>c3,c_out=>c4,sum=>sum_4(3));
 FA4 : full_adder port map(a=>a_in(4),b=>b_in(4),c_in=>c4,c_out=>c5,sum=>sum_4(4));
 FA5 : full_adder port map(a=>a_in(5),b=>b_in(5),c_in=>c5,c_out=>c6,sum=>sum_4(5));
 FA6 : full_adder port map(a=>a_in(6),b=>b_in(6),c_in=>c6,c_out=>c7,sum=>sum_4(6));
 FA7 : full_adder port map(a=>a_in(7),b=>b_in(7),c_in=>c7,c_out=>c8,sum=>sum_4(7));
 FA8 : full_adder port map(a=>a_in(8),b=>b_in(8),c_in=>c8,c_out=>c9,sum=>sum_4(8));
 FA9 : full_adder port map(a=>a_in(9),b=>b_in(9),c_in=>c9,c_out=>c10,sum=>sum_4(9));
 FA10 : full_adder port map(a=>a_in(10),b=>b_in(10),c_in=>c10,c_out=>c11,sum=>sum_4(10));
 FA11 : full_adder port map(a=>a_in(11),b=>b_in(11),c_in=>c11,c_out=>c12,sum=>sum_4(11));
 FA12 : full_adder port map(a=>a_in(12),b=>b_in(12),c_in=>c12,c_out=>c13,sum=>sum_4(12));
 FA13 : full_adder port map(a=>a_in(13),b=>b_in(13),c_in=>c13,c_out=>c14,sum=>sum_4(13));
 FA14 : full_adder port map(a=>a_in(14),b=>b_in(14),c_in=>c14,c_out=>c15,sum=>sum_4(14));
 FA15 : full_adder port map(a=>a_in(15),b=>b_in(15),c_in=>c15,c_out=>c16,sum=>sum_4(15));
end Behavioral;

