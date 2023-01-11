----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:19:16 11/19/2022 
-- Design Name: 
-- Module Name:    B_input_logic - Behavioral 
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

entity B_input_logic is
	Port(B_BL  : in std_logic;
		  S0_BL : in std_logic;
		  S1_BL : in std_logic;
		  Y_BL  : out std_logic);
end B_input_logic;

architecture Behavioral of B_input_logic is
begin
	Y_BL <=  (((S1_BL) and (not B_BL)) or ((S0_BL) and (B_BL)));

end Behavioral;

