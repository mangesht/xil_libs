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
--  /   /                  Transparent Data Latch with Gate Enable and Inverted Gate (Discontinue in 13.1)
-- /___/   /\     Filename : LDE_1.vhd
-- \   \  /  \    Timestamp : Tue Aug  17 05:25:18 PDT 2010
--  \___\/\___\
--
-- Revision:
--    08/17/10 - Initial version.

----- CELL LDE_1-----
library IEEE;
use IEEE.STD_LOGIC_1164.all;


library unisim;
use unisim.VPKG.all;
use unisim.VCOMPONENTS.all;

entity LDE_1 is
  generic(
    INIT : bit := '0'
    );

  port(
    Q : out std_ulogic;

    D  : in std_ulogic;
    G  : in std_ulogic;
    GE : in std_ulogic
    );
end LDE_1;

architecture LDE_1_V of LDE_1 is
signal not_G : std_ulogic;
begin
    not_G <= not G;
    L7 : LDCE
    generic map (
      INIT => INIT
    )
    port map (
      Q  => Q,
      G  => not_G,
      GE  => GE,
      CLR  => '0',
      D => D
);
end LDE_1_V;
