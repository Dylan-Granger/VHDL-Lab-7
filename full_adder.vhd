----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:17:31 11/07/2022 
-- Design Name: 
-- Module Name:    full_adder - Design 
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

entity full_adder is
    port (x_fa, y_fa, z_fa: in std_logic;
          s_fa, c_fa: out std_logic);
end full_adder;

architecture Design of full_adder is
    component half_adder
        port (x_ha, y_ha: in std_logic;
              s_ha, c_ha: out std_logic);
    end component;
    signal hs, hc, tc: std_logic;

    begin
        HA1: half_adder
            port map(x_fa, y_fa, hs, hc);
        HA2: half_adder
            port map (hs, z_fa, s_fa, tc);
        c_fa <= tc OR hc;
end Design;