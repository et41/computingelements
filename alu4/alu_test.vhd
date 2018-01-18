--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:46:58 10/20/2017
-- Design Name:   
-- Module Name:   C:/Users/41/Desktop/FPGA/alu/alu_test.vhd
-- Project Name:  alu
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: alu
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY alu_test IS
END alu_test;
 
ARCHITECTURE behavior OF alu_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT alu
    PORT(
         x : IN  std_logic_vector(3 downto 0);
         y : IN  std_logic_vector(3 downto 0);
         zx : IN  std_logic;
         nx : IN  std_logic;
         zy : IN  std_logic;
         ny : IN  std_logic;
    --     f : IN  std_logic;
	--		no : IN std_logic;
         c_out : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal x : std_logic_vector(3 downto 0) := (others => '0');
   signal y : std_logic_vector(3 downto 0) := (others => '0');
   signal zx : std_logic := '0';
   signal nx : std_logic := '0';
   signal zy : std_logic := '0';
   signal ny : std_logic := '0';
--   signal f : std_logic := '0';
--	signal no : std_logic := '0';

 	--Outputs
   signal c_out : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: alu PORT MAP (
          x => x,
          y => y,
          zx => zx,
          nx => nx,
          zy => zy,
          ny => ny,
        --  f => f,
			--  no => no,
          c_out => c_out
			
        );


   -- Stimulus process
 stim_proc: process
 begin
   wait for 50 ns;	
	x<="1111";
	y<="1111";
	zx<='1';
	nx<='0';
	zy<='1';
	ny<='0';
--	f<='1';
--	no<='0';
	wait for 20 ns;
	x<="0000";
	y<="1001";
	zx<='0';
	nx<='0';
	zy<='0';
	ny<='1';
--	f<='1';
--	no<='1';
	wait for 20 ns;
	x<="1111";
	y<="0000";
	zx<='0';
	nx<='0';
	zy<='1';
	ny<='1';
--	f<='1';
--	no<='0';	

   end process;
	

END;
