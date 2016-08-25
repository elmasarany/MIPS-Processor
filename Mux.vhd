
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux is
    Port ( I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,I11,I12,I13,I14,I15,I16,I17,I18,I19,I20,I21,I22,I23,I24,I25,I26,I27,I28,I29,I30,I31 : in  STD_LOGIC_VECTOR (31 downto 0);
           s : in  STD_LOGIC_VECTOR (4 downto 0);
           O : out  STD_LOGIC_VECTOR (31 downto 0));
end Mux;

architecture Behavioral of Mux is

begin
o<=i0 when s="00000" else
   i1 when s="00001" else
   i2 when s="00010" else
   i3 when s="00011" else
   i4 when s="00100" else
   i5 when s="00101" else
   i6 when s="00110" else
   i7 when s="00111" else
   i8 when s="01000" else
   i9 when s="01001" else
   i10 when s="01010" else
   i11 when s="01011" else
   i12 when s="01100" else
   i13 when s="01101" else
   i14 when s="01110" else
   i15 when s="01111" else
   i16 when s="10000" else
   i17 when s="10001" else              
   i18 when s="10010" else
	i19 when s="10011" else
	i20 when s="10100" else
	i21 when s="10101" else
	i22 when s="10110" else
	i23 when s="10111" else
	i24 when s="11000" else
	i25 when s="11001" else
	i26 when s="11010" else
	i27 when s="11011" else
	i28 when s="11100" else
	i29 when s="11101" else
	i30 when s="11110" else
	i31 when s="11111" ;

end Behavioral;

