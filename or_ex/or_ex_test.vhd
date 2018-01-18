--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:40:43 09/06/2017
-- Design Name:   
-- Module Name:   C:/Users/41/Desktop/FPGA/or_ex/or_ex_test.vhd
-- Project Name:  or_ex
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: or_ex
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
 
ENTITY or_ex_test IS
END or_ex_test;
 
ARCHITECTURE behavior OF or_ex_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT or_ex
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         c : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';

 	--Outputs
   signal c : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: or_ex PORT MAP (
          a => a,
          b => b,
          c => c
        );

   stim_proc: process
   begin		
   wait for 100 ns;
	a <= not a;
   end process;
	
   stim_proc1: process
   begin		
   wait for 50 ns;
	b <= not b;
   end process;

END;
