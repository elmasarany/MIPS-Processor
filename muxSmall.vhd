library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity muxSmall is
    
    Port ( b1 : in  STD_LOGIC;
           b2 : in  STD_LOGIC;
           O : out  STD_LOGIC;
           S : in  STD_LOGIC);
end muxSmall;

architecture Behavioral of muxSmall is

begin
 O <= b1 WHEN S = '0' else 
		b2 WHEN S = '1';

end Behavioral;







