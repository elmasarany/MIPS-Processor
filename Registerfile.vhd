library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.Mypack.all;
use work.Reg0pack.all;
entity Registerfile is
PORT (Read_sel1,Read_sel2,write_sel: in std_logic_vector(4 downto 0);
		write_data : in std_logic_vector(31 downto 0); 
      write_ena,clk: in std_logic;
		data1,data2: out std_logic_vector(31 downto 0)); 
end Registerfile;

architecture Behavioral of Registerfile is
signal Decoder_Out: std_logic_vector (31 downto 0);
SIGNAL RegTmpOut0: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL RegTmpOut1: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL RegTmpOut2: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL RegTmpOut3: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL RegTmpOut4: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL RegTmpOut5: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL RegTmpOut6: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL RegTmpOut7: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL RegTmpOut8: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL RegTmpOut9: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL RegTmpOut10: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL RegTmpOut11: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL RegTmpOut12: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL RegTmpOut13: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL RegTmpOut14: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL RegTmpOut15: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL RegTmpOut16: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL RegTmpOut17: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL RegTmpOut18: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL RegTmpOut19: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL RegTmpOut20: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL RegTmpOut21: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL RegTmpOut22: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL RegTmpOut23: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL RegTmpOut24: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL RegTmpOut25: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL RegTmpOut26: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL RegTmpOut27: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL RegTmpOut28: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL RegTmpOut29: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL RegTmpOut30: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL RegTmpOut31: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL Load: STD_LOGIC_VECTOR (31 DOWNTO 0); 
begin
MyDecoder:DeCoder port map (write_sel,Decoder_Out(31 downto 0),write_ena);

Load(0)<= Decoder_Out(0) and write_ena;
Load(1)<= Decoder_Out(1) and write_ena;
Load(2)<= Decoder_Out(2) and write_ena;
Load(3)<= Decoder_Out(3) and write_ena;
Load(4)<= Decoder_Out(4) and write_ena;
Load(5)<= Decoder_Out(5) and write_ena;
Load(6)<= Decoder_Out(6) and write_ena;
Load(7)<= Decoder_Out(7) and write_ena;
Load(8)<= Decoder_Out(8) and write_ena;
Load(9)<= Decoder_Out(9) and write_ena;
Load(10)<= Decoder_Out(10) and write_ena;
Load(11)<= Decoder_Out(11) and write_ena;
Load(12)<= Decoder_Out(12) and write_ena;
Load(13)<= Decoder_Out(13) and write_ena;
Load(14)<= Decoder_Out(14) and write_ena;
Load(15)<= Decoder_Out(15) and write_ena;
Load(16)<= Decoder_Out(16) and write_ena;
Load(17)<= Decoder_Out(17) and write_ena;
Load(18)<= Decoder_Out(18) and write_ena;
Load(19)<= Decoder_Out(19) and write_ena;
Load(20)<= Decoder_Out(20) and write_ena;
Load(21)<= Decoder_Out(21) and write_ena;
Load(22)<= Decoder_Out(22) and write_ena;
Load(23)<= Decoder_Out(23) and write_ena;
Load(24)<= Decoder_Out(24) and write_ena;
Load(25)<= Decoder_Out(25) and write_ena;
Load(26)<= Decoder_Out(26) and write_ena;
Load(27)<= Decoder_Out(27) and write_ena;
Load(28)<= Decoder_Out(28) and write_ena;
Load(29)<= Decoder_Out(29) and write_ena;
Load(30)<= Decoder_Out(30) and write_ena;
Load(31)<= Decoder_Out(31) and write_ena;
-- Reg
r0:reg GENERIC MAP (32) port map (write_data,clk,Load(0),'0','0',RegTmpOut0);
r1:reg GENERIC MAP (32) port map (write_data,clk,Load(1),'0','0',RegTmpOut1);
r2:Reg GENERIC MAP (32) port map (write_data,clk,Load(2),'0','0',RegTmpOut2);
r3:Reg GENERIC MAP (32) port map (write_data,clk,Load(3),'0','0',RegTmpOut3);
r4:Reg GENERIC MAP (32) port map (write_data,clk,Load(4),'0','0',RegTmpOut4);
r5:Reg GENERIC MAP (32) port map (write_data,clk,Load(5),'0','0',RegTmpOut5);
r6:Reg GENERIC MAP (32) port map (write_data,clk,Load(6),'0','0',RegTmpOut6);
r7:Reg GENERIC MAP (32) port map (write_data,clk,Load(7),'0','0',RegTmpOut7);
r8:Reg GENERIC MAP (32) port map (write_data,clk,Load(8),'0','0',RegTmpOut8);
r9:Reg GENERIC MAP (32) port map (write_data,clk,Load(9),'0','0',RegTmpOut9);
r10:Reg GENERIC MAP (32) port map (write_data,clk,Load(10),'0','0',RegTmpOut10);
r11:Reg GENERIC MAP (32) port map (write_data,clk,Load(11),'0','0',RegTmpOut11);
r12:Reg GENERIC MAP (32) port map (write_data,clk,Load(12),'0','0',RegTmpOut12);
r13:Reg GENERIC MAP (32) port map (write_data,clk,Load(13),'0','0',RegTmpOut13);
r14:Reg GENERIC MAP (32) port map (write_data,clk,Load(14),'0','0',RegTmpOut14);
r15:Reg GENERIC MAP (32) port map (write_data,clk,Load(15),'0','0',RegTmpOut15);
r16:Reg GENERIC MAP (32) port map (write_data,clk,Load(16),'0','0',RegTmpOut16);
r17:Reg GENERIC MAP (32) port map (write_data,clk,Load(17),'0','0',RegTmpOut17);
r18:Reg GENERIC MAP (32) port map (write_data,clk,Load(18),'0','0',RegTmpOut18);
r19:Reg GENERIC MAP (32) port map (write_data,clk,Load(19),'0','0',RegTmpOut19);
r20:Reg GENERIC MAP (32) port map (write_data,clk,Load(20),'0','0',RegTmpOut20);
r21:Reg GENERIC MAP (32) port map (write_data,clk,Load(21),'0','0',RegTmpOut21);
r22:Reg GENERIC MAP (32) port map (write_data,clk,Load(22),'0','0',RegTmpOut22);
r23:Reg GENERIC MAP (32) port map (write_data,clk,Load(23),'0','0',RegTmpOut23);
r24:Reg GENERIC MAP (32) port map (write_data,clk,Load(24),'0','0',RegTmpOut24);
r25:Reg GENERIC MAP (32) port map (write_data,clk,Load(25),'0','0',RegTmpOut25);
r26:Reg GENERIC MAP (32) port map (write_data,clk,Load(26),'0','0',RegTmpOut26);
r27:Reg GENERIC MAP (32) port map (write_data,clk,Load(27),'0','0',RegTmpOut27);
r28:Reg GENERIC MAP (32) port map (write_data,clk,Load(28),'0','0',RegTmpOut28);
r29:Reg GENERIC MAP (32) port map (write_data,clk,Load(29),'0','0',RegTmpOut29);
r30:Reg GENERIC MAP (32) port map (write_data,clk,Load(30),'0','0',RegTmpOut30);
r31:Reg GENERIC MAP (32) port map (write_data,clk,Load(31),'0','0',RegTmpOut31);

--Mux
Mux1 : Mux PORT MAP(RegTmpOut0,RegTmpOut1,RegTmpOut2,RegTmpOut3,RegTmpOut4,RegTmpOut5,RegTmpOut6,
RegTmpOut7,RegTmpOut8,RegTmpOut9,RegTmpOut10,RegTmpOut11,RegTmpOut12,RegTmpOut13,RegTmpOut14,
RegTmpOut15,RegTmpOut16,RegTmpOut17,RegTmpOut18,RegTmpOut19,RegTmpOut20,RegTmpOut21,RegTmpOut22,
RegTmpOut23,RegTmpOut24,RegTmpOut25,RegTmpOut26,RegTmpOut27,RegTmpOut28,RegTmpOut29,RegTmpOut30,
RegTmpOut31,Read_sel1,data1);

Mux2 : Mux PORT MAP(RegTmpOut0,RegTmpOut1,RegTmpOut2,RegTmpOut3,RegTmpOut4,RegTmpOut5,RegTmpOut6,
RegTmpOut7,RegTmpOut8,RegTmpOut9,RegTmpOut10,RegTmpOut11,RegTmpOut12,RegTmpOut13,RegTmpOut14,
RegTmpOut15,RegTmpOut16,RegTmpOut17,RegTmpOut18,RegTmpOut19,RegTmpOut20,RegTmpOut21,RegTmpOut22,
RegTmpOut23,RegTmpOut24,RegTmpOut25,RegTmpOut26,RegTmpOut27,RegTmpOut28,RegTmpOut29,RegTmpOut30,
RegTmpOut31,Read_sel2,data2);


end Behavioral;

