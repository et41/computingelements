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
	x : in std_logic_vector(15 downto 0);
	y : in std_logic_vector(15 downto 0);
--control inputs
	zx : in std_logic;
	nx : in std_logic;
	zy : in std_logic;
	ny : in std_logic;
	f  : in std_logic;
	no : in std_logic;
--outputs
	c_out : out std_logic_vector(15 downto 0)
	--zr : out std_logic;
	--ng : out std_logic
);
end alu;

architecture alu_behav of alu is
--medium signal for input x
	signal out_zeromux_x : std_logic_vector(15 downto 0);
	signal out_negmux_x  : std_logic_vector(15 downto 0);
	signal out_zeromux_y : std_logic_vector(15 downto 0);
	signal out_negmux_y 	: std_logic_vector(15 downto 0);
	signal out_andxy  : std_logic_vector(15 downto 0);
	signal out_addxy  : std_logic_vector(15 downto 0);
	signal out_f 		: std_logic_vector(15 downto 0);
	
--medium signal for input x
--	signal s2 : std_logic_vector(15 downto 0);
--medium signal for output c_out	
	--signal s3 :std_logic_vector(15 downto 0);
	
	component mux16 is
	port(
	a  : in std_logic_vector(15 downto 0);
	b  : in std_logic_vector(15 downto 0);
	sel: in std_logic;
	c  : out std_logic_vector(15 downto 0)
	);
	end component mux16;

	component adder16 is
	port(
	a_in,b_in : in std_logic_vector (15 downto 0);
	sum_4: out std_logic_vector (15 downto 0)
	);
	end component adder16;
	
	begin
	
		--mux for assigning zero to x
		zerox_mux: mux16 port map(a=>x,b=>"0000000000000000",sel=>zx,c=>out_zeromux_x);
		--mux for negating x
		Negx_mux: mux16 port map(a=>out_zeromux_x, b=>not out_zeromux_x, sel=>nx, c=>out_negmux_x);
		--mux for assigning zero to y
		Zeroy_mux: mux16 port map(a=>y, b=>"0000000000000000", sel=>zy, c=>out_zeromux_y);
		--mux for negating y
		Negy_mux: mux16 port map(a=>out_zeromux_y, b=>not out_zeromux_y, sel=>ny, c=>out_negmux_y);
		--and process
		out_andxy <= out_negmux_x and out_negmux_y;
		--add process
		Add_comp   : adder16 port map(a_in=>out_negmux_x, b_in=>out_negmux_y, sum_4=>out_addxy);
		--f
		F_mux      : mux16 port map(a=>out_andxy, b=>out_addxy, sel=>f, c=>out_f);
		--no
		No_mux      : mux16 port map(a=>out_f, b=>not out_f, sel=>no, c=>c_out);
end alu_behav;

