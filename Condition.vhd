----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:47:02 04/21/2016 
-- Design Name: 
-- Module Name:    Condition - Behavioral 
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

entity Condition is
    Port ( Input : in  STD_LOGIC_VECTOR (5 downto 0);
           Output : out  STD_LOGIC);
end Condition;

architecture Behavioral of Condition is

begin
Output<= '1' when Input="000000"
	else   '0';

end Behavioral;

