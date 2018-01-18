--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:03:03 11/17/2017
-- Design Name:   
-- Module Name:   C:/Users/41/Desktop/FPGA/dmux8way/dmux8way_test.vhd
-- Project Name:  dmux8way
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: dmux8way
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
 
ENTITY dmux8way_test IS
END dmux8way_test;
 
ARCHITECTURE behavior OF dmux8way_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT dmux8way
    PORT(
         dmux_in : IN  std_logic;
         sel : IN  std_logic_vector(2 downto 0);
         a : OUT  std_logic;
         b : OUT  std_logic;
         c : OUT  std_logic;
         d : OUT  std_logic;
         e : OUT  std_logic;
         f : OUT  std_logic;
         g : OUT  std_logic;
         h : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal dmux_in : std_logic := '0';
   signal sel : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal a : std_logic;
   signal b : std_logic;
   signal c : std_logic;
   signal d : std_logic;
   signal e : std_logic;
   signal f : std_logic;
   signal g : std_logic;
   signal h : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: dmux8way PORT MAP (
          dmux_in => dmux_in,
          sel => sel,
          a => a,
          b => b,
          c => c,
          d => d,
          e => e,
          f => f,
          g => g,
          h => h
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
