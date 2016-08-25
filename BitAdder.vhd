library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.all;

entity BitAdder is
    Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           Result : out  STD_LOGIC;
           Cout : out  STD_LOGIC;
			  Cin : in STD_LOGIC);
			  
end BitAdder;

architecture Behavioral of BitAdder is
	Signal tmp : STD_LOGIC_VECTOR(1 downto 0);
begin
  tmp <= ('0' & I0) + ('0' & I1) + ('0' & Cin);
  Result <= tmp(0);
  Cout <= tmp(1);
  
end Behavioral;

