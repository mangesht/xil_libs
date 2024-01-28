-- $Header:  $
-------------------------------------------------------------------------------
-- Copyright (c) 1995/2004 Xilinx, Inc.
-- All Right Reserved.
-------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor : Xilinx
-- \   \   \/     Version : 12.1
--  \   \         Description : Xilinx Functional Simulation Library Component
--  /   /                  3-State Output Buffer with FAST Slew 2 ma Drive (Discontinue in 13.1)
-- /___/   /\     Filename : OBUFT_F_2.vhd
-- \   \  /  \    Timestamp : Fri Aug 13 11:14:33 PDT 2010

--  \___\/\___\
--
-- Revision:
--    08/13/10 - Initial version.

----- CELL OBUFT_F_2-----
library IEEE;
use IEEE.STD_LOGIC_1164.all;


library unisim;
use unisim.VPKG.all;
use unisim.VCOMPONENTS.all;

entity OBUFT_F_2 is
  port(
    O : out std_ulogic;

    T : in std_ulogic;

    I : in std_ulogic
    );

end OBUFT_F_2;

architecture OBUFT_F_2_V of OBUFT_F_2 is
begin
    O1 : OBUFT
    generic map (
      
      SLEW => "FAST",
      DRIVE => 2
    )
    port map (
      O  => O,
      T => T,
      I => I
);

end OBUFT_F_2_V;
