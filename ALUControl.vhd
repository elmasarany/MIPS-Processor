----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:30:18 04/29/2016 
-- Design Name: 
-- Module Name:    ALUControl - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALUControl is
    Port ( ALUOp : in  STD_LOGIC_VECTOR (1 downto 0);
           Func : in  STD_LOGIC_VECTOR (5 downto 0);
           Operation : out  STD_LOGIC_VECTOR (3 downto 0));
end ALUControl;

architecture Behavioral of ALUControl is

begin

Operation(0) <= (not(ALUOp(1) and (Func(0) and Func(1)))) and (ALUOp(1) and (Func(0) or Func(3)));
Operation(1) <= (not(Func(2)) or not(ALUOp(1)));
Operation(2) <= (ALUOp(0) or (ALUOp(1) and Func(1)));
Operation(3) <= (ALUOp(1) and (Func(0) and Func(1)));

end Behavioral;

