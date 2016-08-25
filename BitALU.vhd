library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

use work.Mpackage.all;

entity BitALU is
    Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           O : out  STD_LOGIC;
           Cin : in  STD_LOGIC;
           Cout : out  STD_LOGIC;
           OP : in  STD_LOGIC_VECTOR (3 downto 0);
			  set : out STD_LOGIC;
			  less : in STD_LOGIC);
end BitALU;


architecture Behavioral of BitALU is

	signal andResult : std_logic;
	signal orResult : STD_LOGIC;
	signal muxOut : STD_LOGIC;
	signal adderOut : STD_LOGIC;
	signal OpMUX4Select : STD_LOGIC_VECTOR (1 downto 0);
	signal invert : std_logic;
	signal invertI0 : std_logic;
	signal muxoutI0 : std_logic;
	
begin


	invert <= not I1;
	--andResult <= I0 AND I1; -- case bta3t test 7  el mafrod el out  NOR 
	andResult <= muxoutI0 AND muxOut;
	--orResult <= I0 or I1;	 -- case bta3t test 7
	orResult <=muxoutI0 or muxOut;
	
	invertI0 <= not I0;
	
	OpMUX4Select(0) <= OP(0);
	OpMUX4Select(1) <= OP(1);
muxsm1 : muxsmall port map (I0, invertI0, muxoutI0, OP(3));	
muxSm : muxSmall port map (I1, invert, muxOut, OP(2));

adderResult : BitAdder port map (muxoutI0, muxOut, adderOut, Cout, Cin );
set <= adderOut;
muxBi : muxBig port map (andResult, orResult, adderOut, less, OpMUX4Select, O);

end Behavioral;

