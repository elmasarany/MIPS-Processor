
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ShiftLeft1 is
    Port ( Input  : in  STD_LOGIC_VECTOR (25 downto 0);
           Output : out  STD_LOGIC_VECTOR (27 downto 0));
end ShiftLeft1;

architecture Behavioral of ShiftLeft1 is

begin
 
Output <= Input & "00";

end Behavioral;

