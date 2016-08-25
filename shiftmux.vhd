
library IEEE;
use IEEE.STD_LOGIC_1164.all;

package shiftmux is

 component  muxSmall_1 is
-- GENERIC(n:NATURAL := 31);
    Port (
			  B1 : in  STD_LOGIC_vector(31 downto 0);
           B2 : in  STD_LOGIC_vector(31 downto 0);
           O : out  STD_LOGIC_vector(31 downto 0);
           S : in  STD_LOGIC);

end component;

component muxSmall_2 is
    Port ( B1 : in  STD_LOGIC_vector(4 downto 0);
           B2 : in  STD_LOGIC_vector(4 downto 0);
           O : out  STD_LOGIC_vector(4 downto 0);
           S : in  STD_LOGIC);
end component ;


 component ShiftLeft1 is
    Port ( Input : in  STD_LOGIC_VECTOR (25 downto 0);
           Output : out  STD_LOGIC_VECTOR (27 downto 0));
			  
end component;

component ShiftLeft2 is
    Port ( Input : in  STD_LOGIC_VECTOR (31 downto 0);
           Output : out  STD_LOGIC_VECTOR (31 downto 0));
			  
end component;

end shiftmux;

package body shiftmux is
 
end shiftmux;
