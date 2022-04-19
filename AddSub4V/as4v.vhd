----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:07:47 03/21/2021 
-- Design Name: 
-- Module Name:    as4v - Behavioral 
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

entity as4v is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           S1A0 : in  STD_LOGIC;
           R : out  STD_LOGIC_VECTOR (3 downto 0));
end as4v;

architecture Behavioral of as4v is
	signal BNB : std_logic_vector (3 downto 0);

begin
  R <= A + BNB + S1A0;
  BNB <= B when S1A0 = '0' else not B;
  
end Behavioral;

