
library IEEE;
use IEEE.STD_LOGIC_1164.all;

package RegisterFilePack is

component Registerfile is
PORT (Read_sel1,Read_sel2,write_sel: in std_logic_vector(4 downto 0);
		write_data : in std_logic_vector(31 downto 0); 
      write_ena,clk: in std_logic;
		data1,data2: out std_logic_vector(31 downto 0)); 
end component;

component ALU is
    Port ( data1 : in  STD_LOGIC_VECTOR (31 downto 0);
           data2 : in  STD_LOGIC_VECTOR (31 downto 0);
           aluop : in  STD_LOGIC_VECTOR (3 downto 0);
           cin : in  STD_LOGIC;
           dataout : out  STD_LOGIC_VECTOR (31 downto 0);
           cflag : out  STD_LOGIC;
           zflag : out  STD_LOGIC;
           oflag : out  STD_LOGIC);
  end component ;

component ControlCircuit is
    Port ( Input : in  STD_LOGIC_VECTOR (5 downto 0);
           Output : out  STD_LOGIC_VECTOR (3 downto 0));
  end component ;

component Condition is
    Port ( Input : in  STD_LOGIC_VECTOR (5 downto 0);
           Output : out  STD_LOGIC);
  end component ;
  
  component ProgramCounter is
		GENERIC(n:NATURAL );
	PORT (
	I: IN  STD_LOGIC_VECTOR (n-1 DOWNTO 0);
	CLK, LOD, CLR: IN STD_LOGIC;
	O: OUT  STD_LOGIC_VECTOR (n-1 DOWNTO 0));
	end component ;
  
  component INSTRMEMORY is
	Generic(words : natural :=64;wordsize: natural :=32; addresssize: natural := 32);
  port(
    LoadIt: in Std_logic ;
	 DATA: out STD_LOGIC_VECTOR(wordsize-1 downto 0);
    ADDRESS: in STD_LOGIC_VECTOR(addresssize-1 downto 0);
    CLK: in STD_LOGIC
    );
  end component ;
  
 component ALUControl is
    Port ( ALUOp : in  STD_LOGIC_VECTOR (1 downto 0);
           Func : in  STD_LOGIC_VECTOR (5 downto 0);
           Operation : out  STD_LOGIC_VECTOR (3 downto 0));
			  
end component;

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
			  
end component;


 component DATAMEMORY is
  Generic(words : natural :=64;wordsize: natural :=32; addresssize: natural := 32);
  port ( 
         LoadIt: in STD_LOGIC;
  			INPUT     : in STD_LOGIC_VECTOR (wordsize-1 downto 0);
			OUTPUT    : out STD_LOGIC_VECTOR (wordsize-1 downto 0);
         MEM_READ : in STD_LOGIC;
			MEM_WRITE : in STD_LOGIC;
			ADDRESS   : in STD_LOGIC_VECTOR (addresssize-1 downto 0);
			CLK       : in STD_LOGIC
			);

end component;

 component SignExted is port 
(
	MSB: IN STD_LOGIC_VECTOR(15 downto 0);
	rest: OUT STD_LOGIC_VECTOR(31 downto 0));
			 
end component;

 component ADD4 is
    Port ( Input : in  STD_LOGIC_VECTOR (31 downto 0);
           Output : out  STD_LOGIC_VECTOR (31 downto 0));
			  
end component;

component FullADD is
    Port ( Input1 : in  STD_LOGIC_VECTOR (31 downto 0);
           Input2 : in  STD_LOGIC_VECTOR (31 downto 0);
           Output : out  STD_LOGIC_VECTOR (31 downto 0));
			  
end component;



end RegisterFilePack;

package body RegisterFilePack is


 
end RegisterFilePack;
