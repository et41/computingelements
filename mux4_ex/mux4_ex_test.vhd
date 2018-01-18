--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:08:45 10/19/2017
-- Design Name:   
-- Module Name:   C:/Users/41/Desktop/FPGA/mux4_ex/mux4_ex_test.vhd
-- Project Name:  mux4_ex
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux4_ex
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
 
ENTITY mux4_ex_test IS
END mux4_ex_test;
 
ARCHITECTURE behavior OF mux4_ex_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux4_ex
    PORT(
         a : IN  std_logic_vector(15 downto 0);
         b : IN  std_logic_vector(15 downto 0);
         c : IN  std_logic_vector(15 downto 0);
         d : IN  std_logic_vector(15 downto 0);
         sel : IN  std_logic_vector(1 downto 0);
         e_out : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(15 downto 0) :=   (others => '0');
   signal b : std_logic_vector(15 downto 0) :=   (others => '0');
   signal c : std_logic_vector(15 downto 0) :=   (others => '0');
   signal d : std_logic_vector(15 downto 0) :=   (others => '0');
   signal sel : std_logic_vector(1 downto 0) :=   (others => '0');

 	--Outputs
   signal e_out : std_logic_vector(15 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mux4_ex PORT MAP (
          a => a,
          b => b,
          c => c,
          d => d,
          sel => sel,
          e_out => e_out
        );



  stim_proc: process
   begin		
   wait for 200 ns;	
	a <= not a;
   end process;
	
   stim_proc1: process
   begin		
   wait for 150 ns;	
	b <= not b;
   end process;
	   stim_proc2: process
   begin		
   wait for 100 ns;	
	c <= not c;
   end process;
	   stim_proc3: process
   begin		
   wait for 50 ns;	
	d <= not d;
   end process;
	stim_proc4: process
   begin		
   wait for 25 ns;	
	sel <= not sel;
   end process;
	
END;
