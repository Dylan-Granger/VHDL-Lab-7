----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    04:10:26 11/19/2022 
-- Design Name: 
-- Module Name:    four_bit_ALU - Behavioral 
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

entity four_bit_ALU is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           S0 : in  STD_LOGIC;
           S1 : in  STD_LOGIC;
           S2 : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Cout : out  STD_LOGIC;
			  LED_Segment : out STD_LOGIC_VECTOR (6 downto 0));
end four_bit_ALU;

architecture Behavioral of four_bit_ALU is
component One_stage_of_ALU
	port( A : in std_logic;
			B : in std_logic;
			Cin : in std_logic;
			S0 : in std_logic;
			S1 :in std_logic;
			S2 : in std_logic;
			G : out std_logic;
			c_out: out std_logic);
end component;
signal G_out, c_outA: std_logic_Vector(3 downto 0);


component Seven_segment_led
	Port ( X : in STD_LOGIC_VECTOR(3 downto 0);
           LED_Segment : out  STD_LOGIC_VECTOR (6 downto 0));  
end component;
signal segment_out : std_logic_vector (6 downto 0);

begin
	A1: One_stage_of_ALU
		port map(A(0), B(0), Cin, S0, S1, S2, G_out(0), c_outA(0));
	A2: One_stage_of_ALU
		port map(A(1), B(1), c_outA(0), S0, S1, S2, G_out(1), c_outA(1));
	A3: One_stage_of_ALU
		port map(A(2), B(2), c_outA(1), S0, S1, S2, G_out(2), c_outA(2));
	A4: One_stage_of_ALU
		port map(A(3), B(3), c_outA(2), S0, S1, S2, G_out(3), c_outA(3));
	LED: Seven_segment_led
		port map(G_out, segment_out);
	LED_Segment <= segment_out;
	Cout <= C_outA(3);
	
end Behavioral;

