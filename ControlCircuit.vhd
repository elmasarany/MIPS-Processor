----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:38:54 04/21/2016 
-- Design Name: 
-- Module Name:    ControlCircuit - Behavioral 
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

entity ControlCircuit is
    Port ( Input : in  STD_LOGIC_VECTOR (5 downto 0);
           Output : out  STD_LOGIC_VECTOR (3 downto 0));
end ControlCircuit;

architecture Behavioral of ControlCircuit is

begin
Output<= "0000" when Input= "100100" else 
     "0001" when Input= "100101" else 
	  "0010" when Input= "100000" else 
	  "0110" when Input= "100010" else
	  "0111" when Input= "101010" else 
	  "1100" when Input= "100111" ;

end Behavioral;

