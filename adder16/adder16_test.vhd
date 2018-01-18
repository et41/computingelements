--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:07:16 10/20/2017
-- Design Name:   
-- Module Name:   C:/Users/41/Desktop/FPGA/adder16/adder16_test.vhd
-- Project Name:  adder16
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: adder16
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
 
ENTITY adder16_test IS
END adder16_test;
 
ARCHITECTURE behavior OF adder16_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT adder16
    PORT(
         a_in : IN  std_logic_vector(3 downto 0);
         b_in : IN  std_logic_vector(3 downto 0);
         sum_4 : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a_in : std_logic_vector(3 downto 0) := (others => '0');
   signal b_in : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal sum_4 : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: adder16 PORT MAP (
          a_in => a_in ,
          b_in => b_in,
          sum_4 => sum_4
        );


   -- Stimulus process
   stim_proc: process
   begin		
   wait for 50 ns;	
	a_in<="0011";
	b_in<="1001";
	wait for 50 ns;
	a_in<="1100";
	b_in<="1001";	
	wait for 50 ns;
	a_in<="0001";
	b_in<="0011";		
	
   end process;
	


END;
