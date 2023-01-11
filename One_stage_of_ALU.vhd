----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:57:41 11/19/2022 
-- Design Name: 
-- Module Name:    One_stage_of_ALU - Behavioral 
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

entity One_stage_of_ALU is
	Port( A : in std_logic;
			B : in std_logic;
			Cin : in std_logic;
			S0 : in std_logic;
			S1 :in std_logic;
			S2 : in std_logic;
			G : out std_logic;
			c_out: out std_logic);
end One_stage_of_ALU;

architecture Behavioral of One_stage_of_ALU is
component One_stage_of_Arithmetic_circuit
	port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           S0 : in  STD_LOGIC;
           S1 : in  STD_LOGIC;
			  Cin : in STD_LOGIC;
           G : out  STD_LOGIC;
           c_out : out  STD_LOGIC);
end component;
signal s_outA, c_outA : std_logic;

component One_stage_of_logic_circuit
	port( A : in STD_LOGIC;
			B : in STD_LOGIC;
			G : out STD_LOGIC;
			S0 : in STD_LOGIC;
			S1 : in STD_LOGIC);
end component;
signal s_outL: std_logic;

begin
	AC: One_stage_of_Arithmetic_circuit
		port map(A, B, S0, S1, Cin, s_outA, c_outA);
	LC: One_stage_of_logic_circuit
		port map(A, B, s_outL, S1, S0);
	MUX: process(S2)
	begin
	if (S2 = '0') then
		G <= s_outA;
		c_out <= c_outA;
	else
		G <= s_outL;
		c_out <= '0';
	end if;
	end process;

end Behavioral;

