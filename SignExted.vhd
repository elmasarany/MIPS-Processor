----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:16:04 04/29/2016 
-- Design Name: 
-- Module Name:    SignExted - Behavioral 
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

entity SignExted is port 
(
	MSB: IN STD_LOGIC_VECTOR(15 downto 0);
	rest: OUT STD_LOGIC_VECTOR(31 downto 0));
end SignExted;

architecture Behavioral of SignExted is

begin

rest <= "0000000000000000" & MSB when (MSB(15)='0' )
		else 
		"1111111111111111" & MSB when (MSB(15)='1')
		else 
		"ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";

end Behavioral;

