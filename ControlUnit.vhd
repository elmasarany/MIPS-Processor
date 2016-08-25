library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ControlUnit is

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
	
	------------------------------------------
	------------------------------------------
	--	 OPCode(6)		--		rs 	--	rt 	--			--
	----------------------------------------------

end ControlUnit;

architecture Behavioral of ControlUnit is
	signal RFormat : STD_LOGIC;
	signal LW 		: STD_LOGIC;
	signal SW 		: STD_LOGIC;
	signal beq 		: STD_LOGIC;
	signal bne 		: STD_LOGIC;
	signal jmp		: STD_LOGIC;

begin

RFormat  <= not(OPCode(5)) AND not(OPCode(4)) AND not(OPCode(3)) AND not(OPCode(2)) AND not(OPCode(1)) AND not(OPCode(0));
LW  		<= OPCode(5) AND not(OPCode(4)) AND not(OPCode(3)) AND not(OPCode(2)) AND OPCode(1) AND OPCode(0);
SW  		<= OPCode(5) AND not(OPCode(4)) AND OPCode(3) AND not(OPCode(2)) AND OPCode(1) AND OPCode(0); 
beq 		<= not(OPCode(5)) AND not(OPCode(4)) AND not(OPCode(3)) AND OPCode(2) AND not(OPCode(1)) AND not(OPCode(0)); 
bne 	   <= not(OPCode(5)) AND not(OPCode(4)) AND not(OPCode(3)) AND OPCode(2) AND not(OPCode(1)) AND (OPCode(0));
jmp		<= not(OPCode(5)) AND not(OPCode(4)) AND not(OPCode(3)) AND not(OPCode(2)) AND OPCode(1) AND not(OPCode(0));

RegDst 	<= RFormat;
ALUSrc 	<= LW OR SW ;
MemtoReg <= LW ;
RegWrite <= RFormat OR LW ;
MemRead 	<= LW ;
MemWrite	<= SW;
Branch	<= beq;
ALUOp(1)	<= RFormat;
ALUOp(0)	<= beq  or bne;
BranchNotEqual <= bne;
Jump		<= jmp;
end Behavioral;

