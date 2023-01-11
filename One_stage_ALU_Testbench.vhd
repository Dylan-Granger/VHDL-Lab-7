--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:45:20 11/28/2022
-- Design Name:   
-- Module Name:   /home/ise/ISE/ENGG_MON_Group13_Lab7/One_stage_ALU_Testbench.vhd
-- Project Name:  ENGG_MON_Group13_Lab7
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: One_stage_of_ALU
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
 
ENTITY One_stage_ALU_Testbench IS
END One_stage_ALU_Testbench;
 
ARCHITECTURE behavior OF One_stage_ALU_Testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT One_stage_of_ALU
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         Cin : IN  std_logic;
         S0 : IN  std_logic;
         S1 : IN  std_logic;
         S2 : IN  std_logic;
         G : OUT  std_logic;
         c_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A_tb : std_logic := '0';
   signal B_tb : std_logic := '0';
   signal Cin_tb : std_logic := '0';
   signal S0_tb : std_logic := '0';
   signal S1_tb : std_logic := '0';
   signal S2_tb : std_logic := '0';

 	--Outputs
   signal G_tb : std_logic;
   signal c_out_tb : std_logic; 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: One_stage_of_ALU PORT MAP (
          A => A_tb,
          B => B_tb,
          Cin => Cin_tb,
          S0 => S0_tb,
          S1 => S1_tb,
          S2 => S2_tb,
          G => G_tb,
          c_out => c_out_tb
        );


 

   -- Stimulus process
   tb: process
		constant period: time:= 20ns;
   begin
	
		A_tb <= '1';
		B_tb <= '0';
		Cin_tb <= '0';
		S0_tb <= '0';
		S1_tb <= '0';
		S2_tb <= '0';
		wait for period;
		assert(G_tb = '1' and c_out_tb = '0')
		report("Test failed for input 'Cin = 0', 'S0 = 0', 'S1 = 0', 'S2 = 0'") severity error;
		
		A_tb <= '1';
		B_tb <= '0';
		Cin_tb <= '1';
		S0_tb <= '0';
		S1_tb <= '0';
		S2_tb <= '0';
		wait for period;
		assert(G_tb = '0' and c_out_tb = '1')
		report("Test failed for input 'Cin = 1', 'S0 = 0', 'S1 = 0', 'S2 = 0'") severity error;

      A_tb <= '1';
		B_tb <= '0';
		Cin_tb <= '0';
		S0_tb <= '1';
		S1_tb <= '0';
		S2_tb <= '0';
		wait for period;
		assert(G_tb = '1' and c_out_tb = '0')
		report("Test failed for input 'Cin = 0', 'S0 = 1', 'S1 = 0', 'S2 = 0'") severity error;
		
		A_tb <= '1';
		B_tb <= '0';
		Cin_tb <= '1';
		S0_tb <= '1';
		S1_tb <= '0';
		S2_tb <= '0';
		wait for period;
		assert(G_tb = '0' and c_out_tb = '1')
		report("Test failed for input 'Cin = 1', 'S0 = 1', 'S1 = 0', 'S2 = 0'") severity error;
		
		A_tb <= '1';
		B_tb <= '0';
		Cin_tb <= '0';
		S0_tb <= '0';
		S1_tb <= '1';
		S2_tb <= '0';
		wait for period;
		assert(G_tb = '0' and c_out_tb = '1')
		report("Test failed for input 'Cin = 0', 'S0 = 0', 'S1 = 1', 'S2 = 0'") severity error;
		
		A_tb <= '1';
		B_tb <= '0';
		Cin_tb <= '1';
		S0_tb <= '0';
		S1_tb <= '1';
		S2_tb <= '0';
		wait for period;
		assert(G_tb = '1' and c_out_tb = '1')
		report("Test failed for input 'Cin = 1', 'S0 = 0', 'S1 = 1', 'S2 = 0'") severity error;
		
		A_tb <= '1';
		B_tb <= '0';
		Cin_tb <= '0';
		S0_tb <= '1';
		S1_tb <= '1';
		S2_tb <= '0';
		wait for period;
		assert(G_tb = '0' and c_out_tb = '0')
		report("Test failed for input 'Cin = 0', 'S0 = 1', 'S1 = 1', 'S2 = 0'") severity error;
		
		A_tb <= '1';
		B_tb <= '0';
		Cin_tb <= '1';
		S0_tb <= '1';
		S1_tb <= '1';
		S2_tb <= '0';
		wait for period;
		assert(G_tb = '1' and c_out_tb = '0')
		report("Test failed for input 'Cin = 1', 'S0 = 1', 'S1 = 1', 'S2 = 0'") severity error;
		
		A_tb <= '1';
		B_tb <= '0';
		Cin_tb <= '0';
		S0_tb <= '0';
		S1_tb <= '0';
		S2_tb <= '1';
		wait for period;
		assert(G_tb = '0' and c_out_tb = '0')
		report("Test failed for input 'Cin = 0', 'S0 = 0', 'S1 = 0', 'S2 = 1'") severity error;
		
		A_tb <= '1';
		B_tb <= '0';
		Cin_tb <= '0';
		S0_tb <= '1';
		S1_tb <= '0';
		S2_tb <= '1';
		wait for period;
		assert(G_tb = '1' and c_out_tb = '0')
		report("Test failed for input 'Cin = 0', 'S0 = 1', 'S1 = 0', 'S2 = 1'") severity error;
		
		A_tb <= '1';
		B_tb <= '0';
		Cin_tb <= '0';
		S0_tb <= '0';
		S1_tb <= '1';
		S2_tb <= '1';
		wait for period;
		assert(G_tb = '1' and c_out_tb = '0')
		report("Test failed for input 'Cin = 0', 'S0 = 0', 'S1 = 1', 'S2 = 1'") severity error;
		
		A_tb <= '1';
		B_tb <= '0';
		Cin_tb <= '0';
		S0_tb <= '1';
		S1_tb <= '1';
		S2_tb <= '1';
		wait for period;
		assert(G_tb = '0' and c_out_tb = '0')
		report("Test failed for input 'Cin = 0', 'S0 = 1', 'S1 = 1', 'S2 = 1'") severity error;
		
   end process;

END;
