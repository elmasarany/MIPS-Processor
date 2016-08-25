library IEEE;
use IEEE.STD_LOGIC_1164.all;

package Mpackage is
component muxBig is
    Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           I2 : in  STD_LOGIC;
           I3 : in  STD_LOGIC;
           S : in  STD_LOGIC_VECTOR(1 downto 0);
           
           O : out  STD_LOGIC);
end component;

component muxSmall is
    Port ( b1 : in  STD_LOGIC;
           b2 : in  STD_LOGIC;
           O : out  STD_LOGIC;
           S : in  STD_LOGIC);
end component;

component BitAdder is
    Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           Result : out  STD_LOGIC;
           Cout : out  STD_LOGIC;
			  Cin : in STD_LOGIC);
			  
end component;

end Mpackage;

package body Mpackage is
 
end Mpackage;
