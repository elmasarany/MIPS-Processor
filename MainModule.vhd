
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.all;

use work.Mypack.all;
use work.RegisterFilePack.all;
use work.Mpackage.all;
use work.shiftmux.all;

entity MainModule is
    Port ( START : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           RegFileOut1 : out  STD_LOGIC_VECTOR (31 downto 0);
           RegFileOut2 : out  STD_LOGIC_VECTOR (31 downto 0);
           ALUOut : out  STD_LOGIC_VECTOR (31 downto 0);
			  PCOut: OUT STD_LOGIC_VECTOR(31 downto 0);
			  DataMemOut: OUT STD_LOGIC_VECTOR(31 downto 0));

end MainModule;

architecture Behavioral of MainModule is
		  
		  signal regdata1 : STD_LOGIC_vector(31 downto 0);		--out flags from  reg to alu 
		  signal regdata2 : STD_LOGIC_vector(31 downto 0);  	 --out flags from  reg to alu 
		  
		  signal Alu_Out :STD_LOGIC_VECTOR(31 downto 0); 		--alu output to reg write data (ismail ely 2al )
		  
		 -- signal  WriteEnable : STD_LOGIC;							--5ARG MN CONDITION TO Register file 
		  signal instruction	: STD_LOGIC_VECTOR (31 downto 0);	--gy mn IM 
		 -- signal address : std_logic_vector(31 downto 0); 			--gy mn el pc w mul *4 and in IM 
		  signal  cflag : STD_LOGIC;
        signal  zflag : STD_LOGIC;
        signal  oflag : STD_LOGIC;
		  signal	 cin	 :	std_logic;
		  
		  signal ALUop :	STD_LOGIC_Vector(3 downto 0);			--input operatoin for ALU 
		  signal Func 	: 	STD_LOGIC_Vector(5 downto 0);			--function input to control circuit 
		  signal OP		: 	STD_LOGIC_VECTOR (5 downto 0);   	--OPcode input to condition
		  signal rs 	:	STD_LOGIC_Vector(4 downto 0);			--input register R-type
		  signal rt	 	:	STD_LOGIC_Vector(4 downto 0);			--input register R-type
		 -- signal rd 	:	STD_LOGIC_Vector(4 downto 0);			--input register R-type
		  signal PC_out : 	std_logic_vector(31 downto 0);		--	 program counter output          
		  
--		  Control unit -
		  signal	 RegDst	 		 :	std_logic;
		  signal	 Jump	 			 :	std_logic;
		  signal	 Branch	 		 :	std_logic;
		  signal	 BranchNtEQ		 :	std_logic;
		  signal	 MemRead			 :	std_logic;
		  signal	 MemToReg		 :	std_logic;
		  signal	 MemWrite		 :	std_logic;
		  signal	 ALUSrc		 	 : std_logic;
		  signal	 RegWrite		 :	std_logic;
		  signal  ALUOp_2   		 : STD_LOGIC_VECTOR(1 downto 0);
		  
		  signal Extend : std_logic_vector(31 downto 0); 
		  
		  signal Mux1Out : 	std_logic_vector(4 downto 0);
		  signal Mux2Out : 	std_logic_vector(31 downto 0);
		  signal Mux3Out : 	std_logic_vector(31 downto 0);
		  signal Mux4Out : 	std_logic_vector(31 downto 0);
		  signal muxreginput :STD_LOGIC_VECTOR(31 downto 0);
		  
		  signal DataMem_Out: std_logic_vector (31 downto 0);
		  
		  signal ADD4Out: std_logic_vector (31 downto 0);
		  
		  signal shift_1 : std_logic_vector (27 downto 0);
		  signal shift_2 : std_logic_vector (31 downto 0);
		  
		  signal JumpAddress : std_logic_vector (31 downto 0);
		  		  
		  signal NWFullADDOut : std_logic_vector (31 downto 0);
		  
		  signal	 ntstart		 :	std_logic;
		  signal	 and_out		 :	std_logic;
		  signal instrToShift : std_logic_vector(25 downto 0);

begin

	RegFileOut1 <= regdata1;
	RegFileOut2 <= regdata2;
	ALUOut <= Alu_Out;
	PCOut <= Pc_out;
	DataMemOut<= DataMem_Out;
	--DataMemOut<= AlUop_2 & func & "000000000000000000000000" ;
	
	
	func <= instruction(5 downto 0);
--	ALUop <= ;
	ALUCon : ALUControl port map (ALUOp_2,func,ALUop);
	
	--Cont : ControlCircuit port map (Func,ALUop);
	Control : ControlUnit port map (RegDst,Jump,Branch,BranchNtEQ,MemRead,MemToReg,ALUOp_2,MemWrite,ALUSrc,RegWrite,op);
	
	op	<=	instruction(31 downto 26);
	
	And_out <=( Branch and zflag) or (not(zflag) and BranchNtEQ );
	
		--cond : Condition port map (OP,WriteEnable);
   Muxreg 		: muxSmall_2 	port map (instruction(20 downto 16), instruction (15 downto 11) , Mux1Out , RegDst);	
	Muxalu 		: muxSmall_1 	port map (regdata2,Extend,Mux2Out,ALUSrc);
	MuxDM 		: muxsmall_1 	port maP (Alu_out,DataMem_Out,muxreginput,MemToReg);
	
	Muxfirst 	: muxSmall_1 	port map (ADD4Out,NWFullADDOut,Mux3Out,And_out);
	Muxsecond 	: muxSmall_1 	port map (Mux3Out,JumpAddress,Mux4Out,Jump);
   
	--instrToShift <= instruction(25 downto 0);
	Shift1 : ShiftLeft1 port map (instruction(25 downto 0),shift_1);
	
	
	JumpAddress <= ADD4Out(31 downto 28) & shift_1;
	
	Shift2_new : ShiftLeft2 Port Map (Extend,shift_2);
	
	NWFullADD : FullADD Port map (ADD4Out, shift_2,NWFullADDOut);
	
	Data_Memory : DATAMEMORY port map (ntstart,regdata2,DataMem_Out,MemRead,MemWrite,Alu_Out,CLK);
	
	SignEX : SignExted port map (instruction (15 downto 0),Extend);
	
	--pc : ProgramCounter Generic MAP (32) port map (Mux4Out,CLK, START,'0','0',PC_out);
	--pc : ProgramCounter Generic MAP (32) port map (Mux4Out,CLK, START,ntstart,PC_out); --  step +4 
		--address <= "000000000000000000000000"&PCout&"00";
   pc : reg Generic MAP (32)  PORT MAP (Mux4Out,clk,START ,'0',ntstart,PC_out);
   ntstart <= not(start);
	add_NEW : ADD4 port map (PC_out,ADD4Out);
	im : INSTRMEMORY port map (ntstart,instruction,PC_out,CLK);
	
	rs <= instruction(25 downto 21);
	rt <= instruction(20 downto 16);
--	rd <= instruction (15 downto 11);
	Cin <= ALUop(2);
	alu32 : ALU port map (regdata1, Mux2Out ,ALUop,Cin,Alu_Out,cflag,zflag,oflag);
	reg32 : Registerfile port map (rs,rt,Mux1Out,muxreginput,RegWrite,CLK,regdata1,regdata2);

end Behavioral;
