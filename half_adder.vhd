----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:15:48 11/07/2022 
-- Design Name: 
-- Module Name:    half_adder - Design 
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

entity half_adder is
    port ( x_ha, y_ha: in std_logic;
           s_ha, c_ha: out std_logic);
end half_adder;

architecture Design of half_adder is
    
	 begin
        s_ha <= x_ha XOR y_ha;
        c_ha <= x_ha AND y_ha;

end Design;