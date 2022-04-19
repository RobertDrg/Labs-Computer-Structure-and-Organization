--------------------------------------------------------------------------------
-- Copyright (c) 1995-2007 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: J.40
--  \   \         Application: netgen
--  /   /         Filename: as4_timesim.vhd
-- /___/   /\     Timestamp: Sat Mar 06 20:37:41 2021
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -s 4 -pcf as4.pcf -rpw 100 -tpw 0 -ar Structure -tm as4 -insert_pp_buffers false -w -dir netgen/par -ofmt vhdl -sim as4.ncd as4_timesim.vhd 
-- Device	: xa3s50vqg100-4 (PRODUCTION 1.39 2007-10-19)
-- Input file	: as4.ncd
-- Output file	: C:\Users\rober\OneDrive\Desktop\Labs_CSO\Lab2\as4\netgen\par\as4_timesim.vhd
-- # of Entities	: 1
-- Design Name	: as4
-- Xilinx	: C:\Xilinx92i
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Development System Reference Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity as4 is
  port (
    Co : out STD_LOGIC; 
    r : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    a : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    b : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end as4;

architecture Structure of as4 is
  signal a_0_IBUF_0 : STD_LOGIC; 
  signal a_1_IBUF_1 : STD_LOGIC; 
  signal a_2_IBUF_2 : STD_LOGIC; 
  signal a_3_IBUF_3 : STD_LOGIC; 
  signal b_0_IBUF_4 : STD_LOGIC; 
  signal b_1_IBUF_5 : STD_LOGIC; 
  signal b_2_IBUF_6 : STD_LOGIC; 
  signal b_3_IBUF_7 : STD_LOGIC; 
  signal XLXN_1 : STD_LOGIC; 
  signal XLXN_30 : STD_LOGIC; 
  signal r_2_O : STD_LOGIC; 
  signal r_3_O : STD_LOGIC; 
  signal Co_O : STD_LOGIC; 
  signal a_0_INBUF : STD_LOGIC; 
  signal a_1_INBUF : STD_LOGIC; 
  signal a_2_INBUF : STD_LOGIC; 
  signal a_3_INBUF : STD_LOGIC; 
  signal b_0_INBUF : STD_LOGIC; 
  signal b_1_INBUF : STD_LOGIC; 
  signal b_2_INBUF : STD_LOGIC; 
  signal b_3_INBUF : STD_LOGIC; 
  signal r_0_O : STD_LOGIC; 
  signal r_1_O : STD_LOGIC; 
  signal Co_OBUF_8 : STD_LOGIC; 
  signal XLXN_1_pack_1 : STD_LOGIC; 
  signal r_0_OBUF_9 : STD_LOGIC; 
  signal r_1_OBUF_10 : STD_LOGIC; 
  signal r_2_OBUF_11 : STD_LOGIC; 
  signal XLXN_30_pack_1 : STD_LOGIC; 
  signal r_3_OBUF_12 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
begin
  r_2_OBUF : X_OBUF
    generic map(
      LOC => "PAD48"
    )
    port map (
      I => r_2_O,
      O => r(2)
    );
  r_3_OBUF : X_OBUF
    generic map(
      LOC => "PAD109"
    )
    port map (
      I => r_3_O,
      O => r(3)
    );
  Co_OBUF : X_OBUF
    generic map(
      LOC => "PAD110"
    )
    port map (
      I => Co_O,
      O => Co
    );
  a_0_IBUF : X_BUF
    generic map(
      LOC => "PAD43",
      PATHPULSE => 757 ps
    )
    port map (
      I => a(0),
      O => a_0_INBUF
    );
  a_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD43",
      PATHPULSE => 757 ps
    )
    port map (
      I => a_0_INBUF,
      O => a_0_IBUF_0
    );
  a_1_IBUF : X_BUF
    generic map(
      LOC => "PAD38",
      PATHPULSE => 757 ps
    )
    port map (
      I => a(1),
      O => a_1_INBUF
    );
  a_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD38",
      PATHPULSE => 757 ps
    )
    port map (
      I => a_1_INBUF,
      O => a_1_IBUF_1
    );
  a_2_IBUF : X_BUF
    generic map(
      LOC => "PAD106",
      PATHPULSE => 757 ps
    )
    port map (
      I => a(2),
      O => a_2_INBUF
    );
  a_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD106",
      PATHPULSE => 757 ps
    )
    port map (
      I => a_2_INBUF,
      O => a_2_IBUF_2
    );
  a_3_IBUF : X_BUF
    generic map(
      LOC => "PAD105",
      PATHPULSE => 757 ps
    )
    port map (
      I => a(3),
      O => a_3_INBUF
    );
  a_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD105",
      PATHPULSE => 757 ps
    )
    port map (
      I => a_3_INBUF,
      O => a_3_IBUF_3
    );
  b_0_IBUF : X_BUF
    generic map(
      LOC => "PAD47",
      PATHPULSE => 757 ps
    )
    port map (
      I => b(0),
      O => b_0_INBUF
    );
  b_0_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD47",
      PATHPULSE => 757 ps
    )
    port map (
      I => b_0_INBUF,
      O => b_0_IBUF_4
    );
  b_1_IBUF : X_BUF
    generic map(
      LOC => "PAD37",
      PATHPULSE => 757 ps
    )
    port map (
      I => b(1),
      O => b_1_INBUF
    );
  b_1_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD37",
      PATHPULSE => 757 ps
    )
    port map (
      I => b_1_INBUF,
      O => b_1_IBUF_5
    );
  b_2_IBUF : X_BUF
    generic map(
      LOC => "PAD107",
      PATHPULSE => 757 ps
    )
    port map (
      I => b(2),
      O => b_2_INBUF
    );
  b_2_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD107",
      PATHPULSE => 757 ps
    )
    port map (
      I => b_2_INBUF,
      O => b_2_IBUF_6
    );
  b_3_IBUF : X_BUF
    generic map(
      LOC => "PAD108",
      PATHPULSE => 757 ps
    )
    port map (
      I => b(3),
      O => b_3_INBUF
    );
  b_3_IFF_IMUX : X_BUF
    generic map(
      LOC => "PAD108",
      PATHPULSE => 757 ps
    )
    port map (
      I => b_3_INBUF,
      O => b_3_IBUF_7
    );
  r_0_OBUF : X_OBUF
    generic map(
      LOC => "PAD29"
    )
    port map (
      I => r_0_O,
      O => r(0)
    );
  r_1_OBUF : X_OBUF
    generic map(
      LOC => "PAD30"
    )
    port map (
      I => r_1_O,
      O => r(1)
    );
  Co_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X1Y15",
      PATHPULSE => 757 ps
    )
    port map (
      I => XLXN_1_pack_1,
      O => XLXN_1
    );
  XLXI_2_XLXI_5 : X_LUT4
    generic map(
      INIT => X"FCC0",
      LOC => "SLICE_X1Y15"
    )
    port map (
      ADR0 => VCC,
      ADR1 => b_2_IBUF_6,
      ADR2 => XLXN_30,
      ADR3 => a_2_IBUF_2,
      O => XLXN_1_pack_1
    );
  XLXI_3_XLXI_1 : X_LUT4
    generic map(
      INIT => X"956A",
      LOC => "SLICE_X22Y25"
    )
    port map (
      ADR0 => a_1_IBUF_1,
      ADR1 => a_0_IBUF_0,
      ADR2 => b_0_IBUF_4,
      ADR3 => b_1_IBUF_5,
      O => r_1_OBUF_10
    );
  r_2_OBUF_YUSED : X_BUF
    generic map(
      LOC => "SLICE_X22Y14",
      PATHPULSE => 757 ps
    )
    port map (
      I => XLXN_30_pack_1,
      O => XLXN_30
    );
  XLXI_3_XLXI_5 : X_LUT4
    generic map(
      INIT => X"E888",
      LOC => "SLICE_X22Y14"
    )
    port map (
      ADR0 => a_1_IBUF_1,
      ADR1 => b_1_IBUF_5,
      ADR2 => b_0_IBUF_4,
      ADR3 => a_0_IBUF_0,
      O => XLXN_30_pack_1
    );
  XLXI_1_XLXI_1 : X_LUT4
    generic map(
      INIT => X"9966",
      LOC => "SLICE_X0Y14"
    )
    port map (
      ADR0 => XLXN_1,
      ADR1 => b_3_IBUF_7,
      ADR2 => VCC,
      ADR3 => a_3_IBUF_3,
      O => r_3_OBUF_12
    );
  XLXI_1_XLXI_5 : X_LUT4
    generic map(
      INIT => X"FAA0",
      LOC => "SLICE_X1Y15"
    )
    port map (
      ADR0 => a_3_IBUF_3,
      ADR1 => VCC,
      ADR2 => b_3_IBUF_7,
      ADR3 => XLXN_1,
      O => Co_OBUF_8
    );
  XLXI_4_XLXI_1 : X_LUT4
    generic map(
      INIT => X"3C3C",
      LOC => "SLICE_X22Y25"
    )
    port map (
      ADR0 => VCC,
      ADR1 => a_0_IBUF_0,
      ADR2 => b_0_IBUF_4,
      ADR3 => VCC,
      O => r_0_OBUF_9
    );
  XLXI_2_XLXI_1 : X_LUT4
    generic map(
      INIT => X"9966",
      LOC => "SLICE_X22Y14"
    )
    port map (
      ADR0 => XLXN_30,
      ADR1 => a_2_IBUF_2,
      ADR2 => VCC,
      ADR3 => b_2_IBUF_6,
      O => r_2_OBUF_11
    );
  r_2_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD48",
      PATHPULSE => 757 ps
    )
    port map (
      I => r_2_OBUF_11,
      O => r_2_O
    );
  r_3_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD109",
      PATHPULSE => 757 ps
    )
    port map (
      I => r_3_OBUF_12,
      O => r_3_O
    );
  Co_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD110",
      PATHPULSE => 757 ps
    )
    port map (
      I => Co_OBUF_8,
      O => Co_O
    );
  r_0_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD29",
      PATHPULSE => 757 ps
    )
    port map (
      I => r_0_OBUF_9,
      O => r_0_O
    );
  r_1_OUTPUT_OFF_OMUX : X_BUF
    generic map(
      LOC => "PAD30",
      PATHPULSE => 757 ps
    )
    port map (
      I => r_1_OBUF_10,
      O => r_1_O
    );
  NlwBlock_as4_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

