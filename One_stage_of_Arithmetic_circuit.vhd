----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:48:51 11/19/2022 
-- Design Name: 
-- Module Name:    One_stage_of_Arithmetic_circuit - Behavioral 
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

entity One_stage_of_Arithmetic_circuit is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           S0 : in  STD_LOGIC;
           S1 : in  STD_LOGIC;
			  Cin : in STD_LOGIC;
           G : out  STD_LOGIC;
           c_out : out  STD_LOGIC);
end One_stage_of_Arithmetic_circuit;

architecture Behavioral of One_stage_of_Arithmetic_circuit is

component full_adder
	port ( x_fa, y_fa, z_fa: in std_logic;
          s_fa, c_fa: out std_logic);
end component;
signal sout, cout : std_logic;

component B_input_logic
	port(B_BL  : in std_logic;
		  S0_BL : in std_logic;
		  S1_BL : in std_logic;
		  Y_BL  : out std_logic);
end component;
signal Y : std_logic;
begin
	BL: B_input_logic
		port map(B, S0, S1, Y);
	FA: full_adder
		port map(A, Y, Cin, sout, cout);
	G <= sout;
	c_out <= cout;

end Behavioral;

