----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:03:39 11/22/2017 
-- Design Name: 
-- Module Name:    RAM64 - Behavioral 
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

entity RAM64 is
port(
	ram_in64 : in std_logic_vector(15 downto 0);
	ram_load64: in std_logic;
	ram_adress64: in std_logic_vector(5 downto 0);
	ram_clock64 : in std_logic;
	ram_out64: out std_logic_vector(15 downto 0)
);
end RAM64;

architecture Behavioral of RAM64 is
component dmux8way is
port(
	dmux_in : in std_logic;
	sel     : in std_logic_vector(2 downto 0);
	a,b,c,d,e,f,g,h : out std_logic);
end component dmux8way;
component mux8way16 is
port(
a					 : in std_logic_vector(127 downto 0);
sel             : in std_logic_vector(2 downto 0 );
mux_out         : out std_logic_vector(15 downto 0)
);
end component mux8way16;
component RAM8 is
port(
	ram_in : in std_logic_vector(15 downto 0);
	ram_load: in std_logic;
	ram_adress: in std_logic_vector(2 downto 0);
	ram_clock : in std_logic;
	ram_out: out std_logic_vector(15 downto 0)
);
end component RAM8;
signal load_a,load_b,load_c,load_d,load_e,load_f,load_g,load_h : std_logic; 
signal c_a,c_b,c_c,c_d,c_e,c_f,c_g,c_h : std_logic; 
signal out_a,out_b,out_c,out_d,out_e,out_f,out_g,out_h : std_logic_vector(15 downto 0); 
begin
dmux_load64 : dmux8way port map(dmux_in => ram_load64, sel=>ram_adress64(5 downto 3), a=>load_a, b=>load_b, c=>load_c, d=>load_d, e=>load_e, f=>load_f, g=>load_g, h=>load_h );
dmux_clock64: dmux8way port map(dmux_in => ram_clock64, sel=>ram_adress64(5 downto 3), a=>c_a, b=>c_b, c=>c_c, d=>c_d, e=>c_e, f=>c_f, g=>c_g, h=>c_h );
ram_a: RAM8 port map(ram_in=>ram_in64, ram_clock=>c_a, ram_load=>load_a, ram_adress=>ram_adress64(2 downto 0), ram_out=>out_a);
ram_b: RAM8 port map(ram_in=>ram_in64,ram_clock=>c_b, ram_load=>load_b,  ram_adress=>ram_adress64(2 downto 0), ram_out=>out_b);
ram_c: RAM8 port map(ram_in=>ram_in64,ram_clock=>c_c, ram_load=>load_c,  ram_adress=>ram_adress64(2 downto 0), ram_out=>out_c);
ram_d: RAM8 port map(ram_in=>ram_in64,ram_clock=>c_d, ram_load=>load_d, ram_adress=>ram_adress64(2 downto 0), ram_out=>out_d);
ram_e: RAM8 port map(ram_in=>ram_in64,ram_clock=>c_e, ram_load=>load_e,  ram_adress=>ram_adress64(2 downto 0), ram_out=>out_e);
ram_f: RAM8 port map(ram_in=>ram_in64,ram_clock=>c_f, ram_load=>load_f, ram_adress=>ram_adress64(2 downto 0), ram_out=>out_f);
ram_g: RAM8 port map(ram_in=>ram_in64,ram_clock=>c_g, ram_load=>load_g,  ram_adress=>ram_adress64(2 downto 0), ram_out=>out_g);
ram_h: RAM8 port map(ram_in=>ram_in64,ram_clock=>c_h, ram_load=>load_h,  ram_adress=>ram_adress64(2 downto 0), ram_out=>out_h);
m_out64 : mux8way16 port map(a(15 downto 0)=>out_a, a(31 downto 16)=>out_b,a(47 downto 32)=>out_c,a(63 downto 48)=>out_d,a(79 downto 64)=>out_e,a(95 downto 80)=>out_f,a(111 downto 96)=>out_g,a(127 downto 112)=>out_h,sel=>ram_adress64(5 downto 3),mux_out=>ram_out64);

end Behavioral;

