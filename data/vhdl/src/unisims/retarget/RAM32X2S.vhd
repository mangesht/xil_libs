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
--  /   /                  Static Synchronous RAM 32-Deep by 2-Wide (Discontinue in 13.1)
-- /___/   /\     Filename : RAM32X2S.vhd
-- \   \  /  \    Timestamp : Thu Oct 21 10:12:02 PDT 2010
--  \___\/\___\
--
-- Revision:
--    10/21/10 - Initial version.
--    11/28/11 - Change bit attribute to std_logic (CR591750)
--    01/16/12 - 591750, 586884 - revert change severe IP impact.
--    08/23/13 - PR683925 - add invertible pin support.
-- End Revision:

----- CELL RAM32X2S-----
library IEEE;
use IEEE.STD_LOGIC_1164.all;


library unisim;
use unisim.VPKG.all;
use unisim.VCOMPONENTS.all;

entity RAM32X2S is
  generic (
    INIT_00 : bit_vector(31 downto 0) := X"00000000";
    INIT_01 : bit_vector(31 downto 0) := X"00000000";
    IS_WCLK_INVERTED : bit := '0'
    );

  port (
    O0 : out std_ulogic;
    O1 : out std_ulogic;

    A0   : in std_ulogic;
    A1   : in std_ulogic;
    A2   : in std_ulogic;
    A3   : in std_ulogic;
    A4   : in std_ulogic;
    D0   : in std_ulogic;
    D1   : in std_ulogic;
    WCLK : in std_ulogic;
    WE   : in std_ulogic
    );
end RAM32X2S;

architecture RAM32X2S_V of RAM32X2S is
begin
    R3_1 : RAM32X1S
    generic map (
      INIT => INIT_00,
      IS_WCLK_INVERTED => IS_WCLK_INVERTED
    )
    port map (
      O  => O0,
      A0  => A0,
      A1  => A1,
      A2  => A2,
      A3  => A3,
      A4  => A4,
      D  => D0,
      WCLK  => WCLK,
      WE  => WE
);
    R3_2 : RAM32X1S
    generic map (
      INIT => INIT_01,
      IS_WCLK_INVERTED => IS_WCLK_INVERTED
    )
    port map (
      O  => O1,
      A0  => A0,
      A1  => A1,
      A2  => A2,
      A3  => A3,
      A4  => A4,
      D  => D1,
      WCLK  => WCLK,
      WE  => WE
);

end RAM32X2S_V;
