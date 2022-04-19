----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:35:17 04/11/2021 
-- Design Name: 
-- Module Name:    ctrl - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ctrl is
    Port ( OP : in  STD_LOGIC_VECTOR (5 downto 0);
           Funct : in  STD_LOGIC_VECTOR (5 downto 0);
           ALUSrc : out  STD_LOGIC;
           ALUOP : out  STD_LOGIC_VECTOR (1 downto 0);
           MemWr : out  STD_LOGIC;
           Mem2Reg : out  STD_LOGIC;
           RegWr : out  STD_LOGIC;
           RegDest : out  STD_LOGIC;
			  Branch : out STD_LOGIC
			  );
end ctrl;

architecture Behavioral of ctrl is

begin
ALUSrc <= '0' when OP = "000000" or OP ="000100" else '1';

ALUOP <= "00" when OP = "000000" and Funct = "100000" else
         "01" when OP = "000000" and Funct = "100010" else
            "10" when OP = "000000" and Funct = "100100" else
            "11" when OP = "000000" and Funct = "100101" else
            "00";

MemWr <= '1' when OP = "101011" else '0';

Mem2Reg <= '1' when OP = "100011" else '0';

RegWr <= '0' when OP = "101011" or OP = "000100" else '1';

RegDest <= '1' when OP = "000000" else '0';

Branch <= '1' when OP = "000100" else '0';
end Behavioral;

