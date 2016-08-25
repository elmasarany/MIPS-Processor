----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:25:13 03/31/2016 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use work.bitaluPackage.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    Port ( data1 : in  STD_LOGIC_VECTOR (31 downto 0);
           data2 : in  STD_LOGIC_VECTOR (31 downto 0);
           aluop : in  STD_LOGIC_VECTOR (3 downto 0);
           cin : in  STD_LOGIC;
           dataout : out  STD_LOGIC_VECTOR (31 downto 0);
           cflag : out  STD_LOGIC;
           zflag : out  STD_LOGIC;
           oflag : out  STD_LOGIC);
end ALU;

architecture Behavioral of ALU is

		signal tempzft : STD_LOGIC_VECTOR(31 downto 0);
		signal zflagTemp : STD_LOGIC_VECTOR(31 downto 0);
		signal set : STD_LOGIC_VECTOR(31 downto 0);
begin


		alu0: BitALU port map (data1(0), data2(0), zflagTemp(0), cin , tempzft(0), aluop, set(0), set(31));
		alu1: BitALU port map (data1(1), data2(1), zflagTemp(1), tempzft(0) , tempzft(1), aluop, set(1),'0');
		alu2: BitALU port map (data1(2), data2(2), zflagTemp(2), tempzft(1) , tempzft(2), aluop, set(2),'0');
		alu3: BitALU port map (data1(3), data2(3), zflagTemp(3), tempzft(2) , tempzft(3), aluop, set(3),'0');
		alu4: BitALU port map (data1(4), data2(4), zflagTemp(4), tempzft(3) , tempzft(4), aluop, set(4),'0');
		alu5: BitALU port map (data1(5), data2(5), zflagTemp(5), tempzft(4) , tempzft(5), aluop, set(5),'0');
		alu6: BitALU port map (data1(6), data2(6), zflagTemp(6), tempzft(5) , tempzft(6), aluop, set(6),'0');
		alu7: BitALU port map (data1(7), data2(7), zflagTemp(7), tempzft(6) , tempzft(7), aluop, set(7),'0');
		alu8: BitALU port map (data1(8), data2(8), zflagTemp(8), tempzft(7) , tempzft(8), aluop, set(8),'0');
		alu9: BitALU port map (data1(9), data2(9), zflagTemp(9), tempzft(8) , tempzft(9), aluop, set(9),'0');
		alu10: BitALU port map (data1(10), data2(10), zflagTemp(10), tempzft(9) , tempzft(10), aluop,set(10),'0');
		alu11: BitALU port map (data1(11), data2(11), zflagTemp(11), tempzft(10) , tempzft(11), aluop,set(11),'0');
		alu12: BitALU port map (data1(12), data2(12), zflagTemp(12), tempzft(11) , tempzft(12), aluop,set(12),'0');
		alu13: BitALU port map (data1(13), data2(13), zflagTemp(13), tempzft(12) , tempzft(13), aluop,set(13),'0');
		alu14: BitALU port map (data1(14), data2(14), zflagTemp(14), tempzft(13) , tempzft(14), aluop,set(14),'0');
		alu15: BitALU port map (data1(15), data2(15), zflagTemp(15), tempzft(14) , tempzft(15), aluop,set(15),'0');
		alu16: BitALU port map (data1(16), data2(16), zflagTemp(16), tempzft(15) , tempzft(16), aluop,set(16),'0');
		alu17: BitALU port map (data1(17), data2(17), zflagTemp(17), tempzft(16) , tempzft(17), aluop,set(17),'0');
		alu18: BitALU port map (data1(18), data2(18), zflagTemp(18), tempzft(17) , tempzft(18), aluop,set(18),'0');
		alu19: BitALU port map (data1(19), data2(19), zflagTemp(19), tempzft(18) , tempzft(19), aluop,set(19),'0');
		alu20: BitALU port map (data1(20), data2(20), zflagTemp(20), tempzft(19) , tempzft(20), aluop,set(20),'0');
		alu21: BitALU port map (data1(21), data2(21), zflagTemp(21), tempzft(20) , tempzft(21), aluop,set(21),'0');
		alu22: BitALU port map (data1(22), data2(22), zflagTemp(22), tempzft(21) , tempzft(22), aluop,set(22),'0');
		alu23: BitALU port map (data1(23), data2(23), zflagTemp(23), tempzft(22) , tempzft(23), aluop,set(23),'0');
		alu24: BitALU port map (data1(24), data2(24), zflagTemp(24), tempzft(23) , tempzft(24), aluop,set(24),'0');
		alu25: BitALU port map (data1(25), data2(25), zflagTemp(25), tempzft(24) , tempzft(25), aluop,set(25),'0');
		alu26: BitALU port map (data1(26), data2(26), zflagTemp(26), tempzft(25) , tempzft(26), aluop,set(26),'0');
		alu27: BitALU port map (data1(27), data2(27), zflagTemp(27), tempzft(26) , tempzft(27), aluop,set(27),'0');
		alu28: BitALU port map (data1(28), data2(28), zflagTemp(28), tempzft(27) , tempzft(28), aluop,set(28),'0');
		alu29: BitALU port map (data1(29), data2(29), zflagTemp(29), tempzft(28) , tempzft(29), aluop,set(29),'0');
		alu30: BitALU port map (data1(30), data2(30), zflagTemp(30), tempzft(29) , tempzft(30), aluop,set(30),'0');
		alu31: BitALU port map (data1(31), data2(31), zflagTemp(31), tempzft(30) , tempzft(31), aluop, set(31), '0');
		
		dataout <= zflagTemp;
		
		zflag <= '1' WHEN zflagTemp = "00000000000000000000000000000000"
		else '0';
		cflag <= tempzft(31);
		
		
		oflag <=((tempzft(30) AND (not tempzft(31)))or((not tempzft(30)) AND tempzft(31)));
		

end Behavioral;

