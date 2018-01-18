--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:15:23 10/24/2017
-- Design Name:   
-- Module Name:   C:/Users/41/Desktop/FPGA/inc16/inc16_test.vhd
-- Project Name:  inc16
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: inc16
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
 
ENTITY inc16_test IS
END inc16_test;
 
ARCHITECTURE behavior OF inc16_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT inc16
    PORT(
         a : IN  std_logic_vector(15 downto 0);
         b : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal b : std_logic_vector(15 downto 0);
	
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: inc16 PORT MAP (
          a => a,
          b => b
        );

   -- Clock process definitions

 

   -- Stimulus process
 stim_proc: process
 begin
 -- hold reset state for 100 ns.
 wait for 100 ns; 
 
 -- insert stimulus here
 a <= "0000000000011110";

 wait for 20 ns;
 
 a <= "0000000001000101";
 
 wait for 20 ns;
 
 a <= "0000000000001100";

 wait for 20 ns;
 
 a <= "0000000001100101";
 
 wait for 20 ns;
 
 a <= "0110000011110001";

 wait for 20 ns;
 
 a <= "0011000010110011";

 wait for 20 ns;
 
 a <= "1111000011110001";

 wait for 20 ns;
 
 end process;


END;
