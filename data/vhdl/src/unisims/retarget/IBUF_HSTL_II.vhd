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
--  /   /                  Input Buffer with HSTL_II I/O Standard (Discontinue in 13.1)
-- /___/   /\     Filename : IBUF_HSTL_II.vhd
-- \   \  /  \    Timestamp : Wed Jun  2 15:43:53 PDT 2010

--  \___\/\___\
--
-- Revision:
--    05/28/04 - Initial version.

----- CELL IBUF_HSTL_II-----
library IEEE;
use IEEE.STD_LOGIC_1164.all;


library unisim;
use unisim.VPKG.all;
use unisim.VCOMPONENTS.all;

entity IBUF_HSTL_II is
  port(
    O : out std_ulogic;

    I : in std_ulogic
    );

end IBUF_HSTL_II;

architecture IBUF_HSTL_II_V of IBUF_HSTL_II is
begin
    I0 : IBUF
    generic map (
      IOSTANDARD => "HSTL_II"
    )
    port map (
      O  => O,
      I => I
);

end IBUF_HSTL_II_V;