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
-- /___/   /\     Filename : USR_ACCESS_VIRTEX4.vhd
-- \   \  /  \    Timestamp : Mon Oct 11 02:30:56 PDT 2010

--  \___\/\___\
--
-- Revision:
--    10/11/10 - Initial version.

----- CELL USR_ACCESS_VIRTEX4 -----

library IEEE;
use IEEE.STD_LOGIC_1164.all;

library unisim;
use unisim.VPKG.all;
use unisim.VCOMPONENTS.all;

entity USR_ACCESS_VIRTEX4 is
  port(
    DATA : out std_logic_vector(31 downto 0);
    DATAVALID	: out std_ulogic
    );
end USR_ACCESS_VIRTEX4;

architecture USR_ACCESS_VIRTEX4_V of USR_ACCESS_VIRTEX4 is
begin
    U7 : USR_ACCESSE2
     port map (
      CFGCLK  => open,
      DATA => DATA,
      DATAVALID => DATAVALID
);
end USR_ACCESS_VIRTEX4_V;

