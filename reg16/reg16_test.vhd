--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:05:48 11/15/2017
-- Design Name:   
-- Module Name:   C:/Users/41/Desktop/FPGA/reg16/reg16_test.vhd
-- Project Name:  reg16
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: register_16
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
 
ENTITY reg16_test IS
END reg16_test;
 
ARCHITECTURE behavior OF reg16_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT register_16
    PORT(
         load : IN  std_logic;
         d : IN  std_logic_vector(15 downto 0);
         q : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';
   signal load : std_logic := '0';
   signal d : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal q : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: register_16 PORT MAP (
          clock => clock,
          load => load,
          d => d,
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
  wait for 100 ns;	
		d<="0000000000111111";
		      wait for 100 ns;

		load<='1';
      wait for clock_period*10;
		d<="1111111111111111";
		      wait for 100 ns;

		load<='0';
      wait for 100 ns;
   end process;

END;
