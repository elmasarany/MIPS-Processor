library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity muxSmall_2 is

    Port ( B1 : in  STD_LOGIC_vector(4 downto 0);
           B2 : in  STD_LOGIC_vector(4 downto 0);
           O : out  STD_LOGIC_vector(4 downto 0);
           S : in  STD_LOGIC);
end muxSmall_2;

architecture Behavioral of muxSmall_2 is

begin
 O <= B1 WHEN S = '0' else 
		B2 WHEN S = '1';

end Behavioral;







