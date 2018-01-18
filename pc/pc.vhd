----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:21:31 11/23/2017 
-- Design Name: 
-- Module Name:    pc - Behavioral 
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

entity pc is
port(
pc_in    : in std_logic_vector(15 downto 0);
pc_inc   : in std_logic; 
pc_load  : in std_logic; 
pc_reset : in std_logic;
pc_clock : in std_logic;
pc_out   : out std_logic_vector(15 downto 0)
);
end pc;

architecture Behavioral of pc is

component mux16 is
Port(
	a : in std_logic_vector(15 downto 0);
	b : in std_logic_vector(15 downto 0);
	sel: in std_logic;
	c : out std_logic_vector(15 downto 0)
	);
end component mux16;

component inc16 is
port(
	a : in std_logic_vector(15 downto 0);
	b : out std_logic_vector(15 downto 0)
	
);
end component inc16;

component register_16 is
port(
	clock  : in std_logic;
	load   : in std_logic;
	d      : in std_logic_vector(15 downto 0);
	q      : out std_logic_vector(15 downto 0)
);
end component register_16;

signal in_inc : std_logic_vector(15 downto 0);
signal out_inc: std_logic_vector(15 downto 0);

signal out_mux1  : std_logic_vector(15 downto 0);
signal out_mux2  : std_logic_vector(15 downto 0);

signal out_or1  : std_logic;
signal out_or2  : std_logic;

begin
--"0000000000000000" 
inc1 : inc16 port map(a => in_inc, b => out_inc  );

mux1 : mux16 port map(a => out_inc, b => pc_in , sel => pc_load, c => out_mux1 );

mux2 : mux16 port map(a => out_mux1, b =>"0000000000000000" , sel => pc_reset, c => out_mux2 );

out_or1 <= pc_inc or pc_load;

out_or2 <= out_or1 or pc_reset;

reg1 : register_16 port map(clock => pc_clock, load => out_or2, d => out_mux2, q=> in_inc );

pc_out <= in_inc;
--in_inc
end Behavioral;

