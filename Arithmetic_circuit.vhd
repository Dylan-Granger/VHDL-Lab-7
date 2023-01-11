----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:36:01 11/19/2022 
-- Design Name: 
-- Module Name:    four_bit_Arithmetic_circuit - Behavioral 
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

entity four_bit_Arithmetic_circuit is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           G : out  STD_LOGIC_VECTOR (3 downto 0);
           S1 : in  STD_LOGIC;
           S0 : in  STD_LOGIC;
			  Cin : in STD_LOGIC);
end four_bit_Arithmetic_circuit;

architecture Behavioral of four_bit_Arithmetic_circuit is
component full_adder
	port( x_fa,  y_fa, z_fa : in std_logic;
			s_fa, c_fa : out std_logic);
end component;
signal s_out : std_logic_vector (3 downto 0);
signal c_out : std_logic;

component B_input_logic
	port ( A_BL, B_BL, S1_BL, S0_BL : in std_logic;
			 Y_BL : out std_logic);
end component;
signal Y: std_logic;
begin
	BL: B_input_logic
		port map (B(0), S1, S0, Y);
	FA1: full_adder
		port map (A(0), Y, Cin, s_out(0), c_out);
	BL: B_input_logic
		port map (B(1), S1, S0, Y);
	FA2: full_adder
		port map (A(1), Y, c_out, s_out(1), c_out);
	BL: B_input_logic
		port map (B(2), S1, S0, Y);
	FA3: full_adder
		port map (A(2), Y, c_out, s_out(2), c_out);
	BL: B_input_logic
		port map (B(3), S1, S0, Y);
	FA4: full_adder
		port map (A(3), Y, c_out, s_out(3), c_out);
	
	G <= s_out;
	
end Behavioral;

