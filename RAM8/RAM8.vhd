----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:35:11 11/16/2017 
-- Design Name: 
-- Module Name:    RAM8 - Behavioral 
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

entity RAM8 is
port(
	ram_in : in std_logic_vector(15 downto 0);
	ram_load: in std_logic;
	ram_adress: in std_logic_vector(2 downto 0);
	ram_clock : in std_logic;
	ram_out: out std_logic_vector(15 downto 0)
);
end RAM8;

architecture Behavioral of RAM8 is

component dmux8way is
port(
	dmux_in : in std_logic;
	sel     : in std_logic_vector(2 downto 0);
	a,b,c,d,e,f,g,h : out std_logic);
end component dmux8way;

component register_16 is
port(
	clock  : in std_logic;
	load   : in std_logic;
	d      : in std_logic_vector(15 downto 0);
	q      : out std_logic_vector(15 downto 0)
);
end component register_16;
component mux8way16 is
port(
a					 : in std_logic_vector(127 downto 0);
sel             : in std_logic_vector(2 downto 0 );
mux_out         : out std_logic_vector(15 downto 0)
);
end component mux8way16;

signal load_a,load_b,load_c,load_d,load_e,load_f,load_g,load_h : std_logic; 
signal c_a,c_b,c_c,c_d,c_e,c_f,c_g,c_h : std_logic; 
signal out_a,out_b,out_c,out_d,out_e,out_f,out_g,out_h : std_logic_vector(15 downto 0); 

begin
dmux_load : dmux8way port map(dmux_in => ram_load, sel=>ram_adress, a=>load_a, b=>load_b, c=>load_c, d=>load_d, e=>load_e, f=>load_f, g=>load_g, h=>load_h );
dmux_clock: dmux8way port map(dmux_in => ram_clock, sel=>ram_adress, a=>c_a, b=>c_b, c=>c_c, d=>c_d, e=>c_e, f=>c_f, g=>c_g, h=>c_h );

reg_a: register_16 port map(clock=>c_a, load=>load_a, d=>ram_in, q=>out_a);
reg_b: register_16 port map(clock=>c_b, load=>load_b, d=>ram_in, q=>out_b);
reg_c: register_16 port map(clock=>c_c, load=>load_c, d=>ram_in, q=>out_c);
reg_d: register_16 port map(clock=>c_d, load=>load_d, d=>ram_in, q=>out_d);
reg_e: register_16 port map(clock=>c_e, load=>load_e, d=>ram_in, q=>out_e);
reg_f: register_16 port map(clock=>c_f, load=>load_f, d=>ram_in, q=>out_f);
reg_g: register_16 port map(clock=>c_g, load=>load_g, d=>ram_in, q=>out_g);
reg_h: register_16 port map(clock=>c_h, load=>load_h, d=>ram_in, q=>out_h);

m_out : mux8way16 port map(a(15 downto 0)=>out_a, a(31 downto 16)=>out_b,a(47 downto 32)=>out_c,a(63 downto 48)=>out_d,a(79 downto 64)=>out_e,a(95 downto 80)=>out_f,a(111 downto 96)=>out_g,a(127 downto 112)=>out_h,sel=>ram_adress,mux_out=>ram_out);
end Behavioral;

