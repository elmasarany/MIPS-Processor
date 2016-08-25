library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity muxBig is
    Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           I2 : in  STD_LOGIC;
           I3 : in  STD_LOGIC;
           S : in  STD_LOGIC_VECTOR(1 downto 0);
           
           O : out  STD_LOGIC);
end muxBig;

architecture Behavioral of muxBig is

begin
	o <= I0 When S = "00"
		else I1 When S = "01"
		else I2 WHEN S = "10"
		else I3 WHen S = "11";


end Behavioral;

