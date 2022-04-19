--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 9.2.04i
--  \   \         Application : sch2vhdl
--  /   /         Filename : as4.vhf
-- /___/   /\     Timestamp : 03/06/2021 20:20:07
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: C:\Xilinx92i\bin\nt\sch2vhdl.exe -intstyle ise -family aspartan3 -flat -suppress -w C:/Users/rober/OneDrive/Desktop/Labs_CSO/Lab2/as4/as4.sch as4.vhf
--Design Name: as4
--Device: aspartan3
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesis and simulted, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity as4 is
   port ( a  : in    std_logic_vector (3 downto 0); 
          b  : in    std_logic_vector (3 downto 0); 
          Co : out   std_logic; 
          r  : out   std_logic_vector (3 downto 0));
end as4;

architecture BEHAVIORAL of as4 is
   attribute BOX_TYPE   : string ;
   signal XLXN_1  : std_logic;
   signal XLXN_30 : std_logic;
   signal XLXN_31 : std_logic;
   signal XLXN_46 : std_logic;
   component sum1g
      port ( Ci : in    std_logic; 
             Co : out   std_logic; 
             S  : out   std_logic; 
             B  : in    std_logic; 
             A  : in    std_logic);
   end component;
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
begin
   XLXI_1 : sum1g
      port map (A=>a(3),
                B=>b(3),
                Ci=>XLXN_1,
                Co=>Co,
                S=>r(3));
   
   XLXI_2 : sum1g
      port map (A=>a(2),
                B=>b(2),
                Ci=>XLXN_30,
                Co=>XLXN_1,
                S=>r(2));
   
   XLXI_3 : sum1g
      port map (A=>a(1),
                B=>b(1),
                Ci=>XLXN_31,
                Co=>XLXN_30,
                S=>r(1));
   
   XLXI_4 : sum1g
      port map (A=>a(0),
                B=>b(0),
                Ci=>XLXN_46,
                Co=>XLXN_31,
                S=>r(0));
   
   XLXI_5 : GND
      port map (G=>XLXN_46);
   
end BEHAVIORAL;


