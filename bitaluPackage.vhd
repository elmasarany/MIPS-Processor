library IEEE;
use IEEE.STD_LOGIC_1164.all;

package bitaluPackage is

component BitALU is
    Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           O : out  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Cout : out  STD_LOGIC;
           OP : in  STD_LOGIC_VECTOR (3 downto 0);
			  set : out STD_LOGIC;
			  less : in STD_LOGIC);
end component;

end bitaluPackage;

package body bitaluPackage is

end bitaluPackage;