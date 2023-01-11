----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:26:01 11/19/2022 
-- Design Name: 
-- Module Name:    One_stage_of_logic_circuit - Behavioral 
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

entity One_stage_of_logic_circuit is
	Port( A : in STD_LOGIC;
			B : in STD_LOGIC;
			G : out STD_LOGIC;
			S1 : in STD_LOGIC;
			S0 : in STD_LOGIC);
end One_stage_of_logic_circuit;

architecture Behavioral of One_stage_of_logic_circuit is

begin
	MUX: process(A, B, S0, S1)
	begin
	if (S0 = '0' and S1 = '0') then
		G <= A and B;
	elsif (S0 = '0' and S1 = '1') then
		G <= A or B;
	elsif (S0 = '1' and S1 = '0') then
		G <= A XOR B;
	else
		G <= (not A);
	end if;
	end process;
		

end Behavioral;

