--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:58:29 11/13/2017
-- Design Name:   
-- Module Name:   C:/Users/41/Desktop/FPGA/bit_register/bit_register_test.vhd
-- Project Name:  bit_register
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: bit_register
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY bit_register_test IS
END bit_register_test;
 
ARCHITECTURE behavior OF bit_register_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT bit_register
    PORT(
         d : IN  std_logic;
			         load: IN  std_logic;

         clock : IN  std_logic;
         q : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal d : std_logic := '0';
	   signal load: std_logic := '0';

   signal clock : std_logic := '0';
 	--Outputs
   signal q : std_logic;

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: bit_register PORT MAP (
          d => d,
          clock => clock,
			           load => load,

          q => q
			 
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		d<='0';
		wait for 200 ns;
		load<='1';
      wait for clock_period*10;
		d<='1';
		wait for 200 ns;

		load<='0';
      wait for 100 ns;
		
   end process;

END;
