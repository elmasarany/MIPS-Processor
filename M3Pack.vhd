library IEEE;
use IEEE.STD_LOGIC_1164.all;

package M3Pack is

component ControlUnit is

port(

	RegDst	:	OUT	STD_LOGIC;
	Jump		: 	OUT	STD_LOGIC;
	Branch	: 	OUT	STD_LOGIC;
	BranchNotEqual: OUT STD_LOGIC;
	MemRead	:	OUT 	STD_LOGIC;
	MemtoReg	:	OUT	STD_LOGIC;
	ALUOp		:	OUT	STD_LOGIC_VECTOR(1 downto 0);
	MemWrite	:	OUT 	STD_LOGIC;
	ALUSrc	:	OUT	STD_LOGIC;
	RegWrite	:	OUT	STD_LOGIC;
	
	OPCode		: IN		STD_LOGIC_VECTOR(5 downto 0)); 
	end component ;

end M3Pack;

package body M3Pack is


end M3Pack;
