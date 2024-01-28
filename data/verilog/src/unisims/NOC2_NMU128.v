///////////////////////////////////////////////////////////////////////////////
//  Copyright (c) 1995/2022 Xilinx, Inc.
//  All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /     Vendor      : Xilinx
// \   \   \/      Version     : 2022.2
//  \   \          Description : Xilinx Unified Simulation Library Component
//  /   /                        NOC2_NMU128
// /___/   /\      Filename    : NOC2_NMU128.v
// \   \  /  \
//  \___\/\___\
//
///////////////////////////////////////////////////////////////////////////////
//  Revision:
//
//  End Revision:
///////////////////////////////////////////////////////////////////////////////

`timescale 1 ps / 1 ps

`celldefine

module NOC2_NMU128 #(
  parameter [17:0] REG_ADDR_DST0 = 18'h00000,
  parameter [17:0] REG_ADDR_DST1 = 18'h00000,
  parameter [17:0] REG_ADDR_DST10 = 18'h00000,
  parameter [17:0] REG_ADDR_DST11 = 18'h00000,
  parameter [17:0] REG_ADDR_DST12 = 18'h00000,
  parameter [17:0] REG_ADDR_DST13 = 18'h00000,
  parameter [17:0] REG_ADDR_DST14 = 18'h00000,
  parameter [17:0] REG_ADDR_DST15 = 18'h00000,
  parameter [17:0] REG_ADDR_DST16 = 18'h00000,
  parameter [17:0] REG_ADDR_DST17 = 18'h00000,
  parameter [17:0] REG_ADDR_DST18 = 18'h00000,
  parameter [17:0] REG_ADDR_DST19 = 18'h00000,
  parameter [17:0] REG_ADDR_DST2 = 18'h00000,
  parameter [17:0] REG_ADDR_DST20 = 18'h00000,
  parameter [17:0] REG_ADDR_DST21 = 18'h00000,
  parameter [17:0] REG_ADDR_DST22 = 18'h00000,
  parameter [17:0] REG_ADDR_DST23 = 18'h00000,
  parameter [17:0] REG_ADDR_DST24 = 18'h00000,
  parameter [17:0] REG_ADDR_DST25 = 18'h00000,
  parameter [17:0] REG_ADDR_DST26 = 18'h00000,
  parameter [17:0] REG_ADDR_DST27 = 18'h00000,
  parameter [17:0] REG_ADDR_DST28 = 18'h00000,
  parameter [17:0] REG_ADDR_DST29 = 18'h00000,
  parameter [17:0] REG_ADDR_DST3 = 18'h00000,
  parameter [17:0] REG_ADDR_DST30 = 18'h00000,
  parameter [17:0] REG_ADDR_DST31 = 18'h00000,
  parameter [17:0] REG_ADDR_DST4 = 18'h00000,
  parameter [17:0] REG_ADDR_DST5 = 18'h00000,
  parameter [17:0] REG_ADDR_DST6 = 18'h00000,
  parameter [17:0] REG_ADDR_DST7 = 18'h00000,
  parameter [17:0] REG_ADDR_DST8 = 18'h00000,
  parameter [17:0] REG_ADDR_DST9 = 18'h00000,
  parameter [31:0] REG_ADDR_ENABLE = 32'h00000000,
  parameter [31:0] REG_ADDR_MADDR0 = 32'h00000000,
  parameter [31:0] REG_ADDR_MADDR1 = 32'h00000000,
  parameter [31:0] REG_ADDR_MADDR10 = 32'h00000000,
  parameter [31:0] REG_ADDR_MADDR11 = 32'h00000000,
  parameter [31:0] REG_ADDR_MADDR12 = 32'h00000000,
  parameter [31:0] REG_ADDR_MADDR13 = 32'h00000000,
  parameter [31:0] REG_ADDR_MADDR14 = 32'h00000000,
  parameter [31:0] REG_ADDR_MADDR15 = 32'h00000000,
  parameter [31:0] REG_ADDR_MADDR16 = 32'h00000000,
  parameter [31:0] REG_ADDR_MADDR17 = 32'h00000000,
  parameter [31:0] REG_ADDR_MADDR18 = 32'h00000000,
  parameter [31:0] REG_ADDR_MADDR19 = 32'h00000000,
  parameter [31:0] REG_ADDR_MADDR2 = 32'h00000000,
  parameter [31:0] REG_ADDR_MADDR20 = 32'h00000000,
  parameter [31:0] REG_ADDR_MADDR21 = 32'h00000000,
  parameter [31:0] REG_ADDR_MADDR22 = 32'h00000000,
  parameter [31:0] REG_ADDR_MADDR23 = 32'h00000000,
  parameter [31:0] REG_ADDR_MADDR24 = 32'h00000000,
  parameter [31:0] REG_ADDR_MADDR25 = 32'h00000000,
  parameter [31:0] REG_ADDR_MADDR26 = 32'h00000000,
  parameter [31:0] REG_ADDR_MADDR27 = 32'h00000000,
  parameter [31:0] REG_ADDR_MADDR28 = 32'h00000000,
  parameter [31:0] REG_ADDR_MADDR29 = 32'h00000000,
  parameter [31:0] REG_ADDR_MADDR3 = 32'h00000000,
  parameter [31:0] REG_ADDR_MADDR30 = 32'h00000000,
  parameter [31:0] REG_ADDR_MADDR31 = 32'h00000000,
  parameter [31:0] REG_ADDR_MADDR4 = 32'h00000000,
  parameter [31:0] REG_ADDR_MADDR5 = 32'h00000000,
  parameter [31:0] REG_ADDR_MADDR6 = 32'h00000000,
  parameter [31:0] REG_ADDR_MADDR7 = 32'h00000000,
  parameter [31:0] REG_ADDR_MADDR8 = 32'h00000000,
  parameter [31:0] REG_ADDR_MADDR9 = 32'h00000000,
  parameter [31:0] REG_ADDR_MASK0 = 32'h00000000,
  parameter [31:0] REG_ADDR_MASK1 = 32'h00000000,
  parameter [31:0] REG_ADDR_MASK10 = 32'h00000000,
  parameter [31:0] REG_ADDR_MASK11 = 32'h00000000,
  parameter [31:0] REG_ADDR_MASK12 = 32'h00000000,
  parameter [31:0] REG_ADDR_MASK13 = 32'h00000000,
  parameter [31:0] REG_ADDR_MASK14 = 32'h00000000,
  parameter [31:0] REG_ADDR_MASK15 = 32'h00000000,
  parameter [31:0] REG_ADDR_MASK16 = 32'h00000000,
  parameter [31:0] REG_ADDR_MASK17 = 32'h00000000,
  parameter [31:0] REG_ADDR_MASK18 = 32'h00000000,
  parameter [31:0] REG_ADDR_MASK19 = 32'h00000000,
  parameter [31:0] REG_ADDR_MASK2 = 32'h00000000,
  parameter [31:0] REG_ADDR_MASK20 = 32'h00000000,
  parameter [31:0] REG_ADDR_MASK21 = 32'h00000000,
  parameter [31:0] REG_ADDR_MASK22 = 32'h00000000,
  parameter [31:0] REG_ADDR_MASK23 = 32'h00000000,
  parameter [31:0] REG_ADDR_MASK24 = 32'h00000000,
  parameter [31:0] REG_ADDR_MASK25 = 32'h00000000,
  parameter [31:0] REG_ADDR_MASK26 = 32'h00000000,
  parameter [31:0] REG_ADDR_MASK27 = 32'h00000000,
  parameter [31:0] REG_ADDR_MASK28 = 32'h00000000,
  parameter [31:0] REG_ADDR_MASK29 = 32'h00000000,
  parameter [31:0] REG_ADDR_MASK3 = 32'h00000000,
  parameter [31:0] REG_ADDR_MASK30 = 32'h00000000,
  parameter [31:0] REG_ADDR_MASK31 = 32'h00000000,
  parameter [31:0] REG_ADDR_MASK4 = 32'h00000000,
  parameter [31:0] REG_ADDR_MASK5 = 32'h00000000,
  parameter [31:0] REG_ADDR_MASK6 = 32'h00000000,
  parameter [31:0] REG_ADDR_MASK7 = 32'h00000000,
  parameter [31:0] REG_ADDR_MASK8 = 32'h00000000,
  parameter [31:0] REG_ADDR_MASK9 = 32'h00000000,
  parameter [31:0] REG_ADDR_REMAP = 32'h00000000,
  parameter [31:0] REG_ADDR_RPADDR0 = 32'h00000000,
  parameter [31:0] REG_ADDR_RPADDR1 = 32'h00000000,
  parameter [31:0] REG_ADDR_RPADDR10 = 32'h00000000,
  parameter [31:0] REG_ADDR_RPADDR11 = 32'h00000000,
  parameter [31:0] REG_ADDR_RPADDR12 = 32'h00000000,
  parameter [31:0] REG_ADDR_RPADDR13 = 32'h00000000,
  parameter [31:0] REG_ADDR_RPADDR14 = 32'h00000000,
  parameter [31:0] REG_ADDR_RPADDR15 = 32'h00000000,
  parameter [31:0] REG_ADDR_RPADDR16 = 32'h00000000,
  parameter [31:0] REG_ADDR_RPADDR17 = 32'h00000000,
  parameter [31:0] REG_ADDR_RPADDR18 = 32'h00000000,
  parameter [31:0] REG_ADDR_RPADDR19 = 32'h00000000,
  parameter [31:0] REG_ADDR_RPADDR2 = 32'h00000000,
  parameter [31:0] REG_ADDR_RPADDR20 = 32'h00000000,
  parameter [31:0] REG_ADDR_RPADDR21 = 32'h00000000,
  parameter [31:0] REG_ADDR_RPADDR22 = 32'h00000000,
  parameter [31:0] REG_ADDR_RPADDR23 = 32'h00000000,
  parameter [31:0] REG_ADDR_RPADDR24 = 32'h00000000,
  parameter [31:0] REG_ADDR_RPADDR25 = 32'h00000000,
  parameter [31:0] REG_ADDR_RPADDR26 = 32'h00000000,
  parameter [31:0] REG_ADDR_RPADDR27 = 32'h00000000,
  parameter [31:0] REG_ADDR_RPADDR28 = 32'h00000000,
  parameter [31:0] REG_ADDR_RPADDR29 = 32'h00000000,
  parameter [31:0] REG_ADDR_RPADDR3 = 32'h00000000,
  parameter [31:0] REG_ADDR_RPADDR30 = 32'h00000000,
  parameter [31:0] REG_ADDR_RPADDR31 = 32'h00000000,
  parameter [31:0] REG_ADDR_RPADDR4 = 32'h00000000,
  parameter [31:0] REG_ADDR_RPADDR5 = 32'h00000000,
  parameter [31:0] REG_ADDR_RPADDR6 = 32'h00000000,
  parameter [31:0] REG_ADDR_RPADDR7 = 32'h00000000,
  parameter [31:0] REG_ADDR_RPADDR8 = 32'h00000000,
  parameter [31:0] REG_ADDR_RPADDR9 = 32'h00000000,
  parameter [14:0] REG_ADR_MAP_CPM = 15'h0000,
  parameter [14:0] REG_ADR_MAP_FPD_AFI_FS_0 = 15'h0000,
  parameter [14:0] REG_ADR_MAP_FPD_AFI_FS_1 = 15'h0000,
  parameter [14:0] REG_ADR_MAP_FPD_GIC = 15'h0000,
  parameter [14:0] REG_ADR_MAP_HNIC = 15'h0000,
  parameter [14:0] REG_ADR_MAP_LPD_AFI_FS = 15'h0000,
  parameter [14:0] REG_ADR_MAP_ME_ARRAY_0 = 15'h0000,
  parameter [14:0] REG_ADR_MAP_ME_ARRAY_1 = 15'h0000,
  parameter [14:0] REG_ADR_MAP_ME_ARRAY_2 = 15'h0000,
  parameter [14:0] REG_ADR_MAP_ME_ARRAY_3 = 15'h0000,
  parameter [14:0] REG_ADR_MAP_OCM = 15'h0000,
  parameter [14:0] REG_ADR_MAP_PCIE = 15'h0000,
  parameter [14:0] REG_ADR_MAP_PMC = 15'h0000,
  parameter [14:0] REG_ADR_MAP_PMC_ALIAS_0 = 15'h0000,
  parameter [14:0] REG_ADR_MAP_PMC_ALIAS_1 = 15'h0000,
  parameter [14:0] REG_ADR_MAP_PMC_ALIAS_2 = 15'h0000,
  parameter [14:0] REG_ADR_MAP_PMC_ALIAS_3 = 15'h0000,
  parameter [14:0] REG_ADR_MAP_XPDS = 15'h0000,
  parameter [14:0] REG_ADR_MAP_XSPI = 15'h0000,
  parameter [0:0] REG_AFWS_EN = 1'h0,
  parameter [0:0] REG_AFWS_INTR_EN = 1'h0,
  parameter [3:0] REG_AFWS_TIMEOUT_ERR_EN = 4'h0,
  parameter [0:0] REG_AXI_NON_MOD_DISABLE = 1'h0,
  parameter [1:0] REG_AXI_PAR_CHK = 2'h0,
  parameter [3:0] REG_CHOPSIZE = 4'hA,
  parameter [31:0] REG_DDR_ADR_MAP0_0 = 32'h00000000,
  parameter [5:0] REG_DDR_ADR_MAP0_1 = 6'h01,
  parameter [31:0] REG_DDR_ADR_MAP1_0 = 32'h00000000,
  parameter [5:0] REG_DDR_ADR_MAP1_1 = 6'h01,
  parameter [31:0] REG_DDR_ADR_MAP2_0 = 32'h00000000,
  parameter [5:0] REG_DDR_ADR_MAP2_1 = 6'h01,
  parameter [31:0] REG_DDR_ADR_MAP3_0 = 32'h00000000,
  parameter [5:0] REG_DDR_ADR_MAP3_1 = 6'h01,
  parameter [31:0] REG_DDR_ADR_MAP4_0 = 32'h00000000,
  parameter [5:0] REG_DDR_ADR_MAP4_1 = 6'h01,
  parameter [31:0] REG_DDR_ADR_MAP5_0 = 32'h00000000,
  parameter [5:0] REG_DDR_ADR_MAP5_1 = 6'h01,
  parameter [31:0] REG_DDR_ADR_MAP6_0 = 32'h00000000,
  parameter [5:0] REG_DDR_ADR_MAP6_1 = 6'h01,
  parameter [31:0] REG_DDR_ADR_MAP7_0 = 32'h00000000,
  parameter [5:0] REG_DDR_ADR_MAP7_1 = 6'h01,
  parameter [11:0] REG_DDR_DST_MAP0 = 12'h000,
  parameter [11:0] REG_DDR_DST_MAP1 = 12'h000,
  parameter [11:0] REG_DDR_DST_MAP10 = 12'h000,
  parameter [11:0] REG_DDR_DST_MAP11 = 12'h000,
  parameter [11:0] REG_DDR_DST_MAP12 = 12'h000,
  parameter [11:0] REG_DDR_DST_MAP13 = 12'h000,
  parameter [11:0] REG_DDR_DST_MAP14 = 12'h000,
  parameter [11:0] REG_DDR_DST_MAP15 = 12'h000,
  parameter [11:0] REG_DDR_DST_MAP2 = 12'h000,
  parameter [11:0] REG_DDR_DST_MAP3 = 12'h000,
  parameter [11:0] REG_DDR_DST_MAP4 = 12'h000,
  parameter [11:0] REG_DDR_DST_MAP5 = 12'h000,
  parameter [11:0] REG_DDR_DST_MAP6 = 12'h000,
  parameter [11:0] REG_DDR_DST_MAP7 = 12'h000,
  parameter [11:0] REG_DDR_DST_MAP8 = 12'h000,
  parameter [11:0] REG_DDR_DST_MAP9 = 12'h000,
  parameter [2:0] REG_DWIDTH = 3'h4,
  parameter [0:0] REG_ECC_CHK_EN = 1'h1,
  parameter [14:0] REG_HBM_MAP_T0_CH0 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T0_CH1 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T0_CH10 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T0_CH11 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T0_CH12 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T0_CH13 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T0_CH14 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T0_CH15 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T0_CH2 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T0_CH3 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T0_CH4 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T0_CH5 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T0_CH6 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T0_CH7 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T0_CH8 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T0_CH9 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T1_CH0 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T1_CH1 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T1_CH10 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T1_CH11 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T1_CH12 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T1_CH13 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T1_CH14 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T1_CH15 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T1_CH2 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T1_CH3 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T1_CH4 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T1_CH5 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T1_CH6 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T1_CH7 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T1_CH8 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T1_CH9 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T2_CH0 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T2_CH1 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T2_CH10 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T2_CH11 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T2_CH12 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T2_CH13 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T2_CH14 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T2_CH15 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T2_CH2 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T2_CH3 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T2_CH4 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T2_CH5 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T2_CH6 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T2_CH7 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T2_CH8 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T2_CH9 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T3_CH0 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T3_CH1 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T3_CH10 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T3_CH11 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T3_CH12 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T3_CH13 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T3_CH14 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T3_CH15 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T3_CH2 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T3_CH3 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T3_CH4 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T3_CH5 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T3_CH6 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T3_CH7 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T3_CH8 = 15'h0000,
  parameter [14:0] REG_HBM_MAP_T3_CH9 = 15'h0000,
  parameter [15:0] REG_MODE_SELECT = 16'h0000,
  parameter [0:0] REG_NMU_BYPASS_EN = 1'h1,
  parameter [6:0] REG_OUTSTANDING_RD_TXN = 7'h40,
  parameter [6:0] REG_OUTSTANDING_WR_TXN = 7'h40,
  parameter [1:0] REG_PRIORITY = 2'h0,
  parameter [5:0] REG_RD_AXPROT_SEL = 6'h00,
  parameter [9:0] REG_RD_RATE_CREDIT_DROP = 10'h005,
  parameter [13:0] REG_RD_RATE_CREDIT_LIMIT = 14'h0100,
  parameter [7:0] REG_RD_VCA_TOKEN0 = 8'h10,
  parameter [11:0] REG_RESP_SRC_ID_MASK = 12'h000,
  parameter [0:0] REG_RPOISON_TO_SLVERR = 1'h0,
  parameter [8:0] REG_RROB_RAM_SETTING = 9'h012,
  parameter [19:0] REG_SMID_SEL = 20'h00000,
  parameter [11:0] REG_SRC = 12'h000,
  parameter [3:0] REG_TBASE_AXI_TIMEOUT = 4'h1,
  parameter [2:0] REG_TBASE_MODE_RLIMIT_RD = 3'h2,
  parameter [2:0] REG_TBASE_MODE_RLIMIT_WR = 3'h2,
  parameter [3:0] REG_TBASE_TRK_TIMEOUT = 4'h1,
  parameter [14:0] REG_USER_DST0 = 15'h0000,
  parameter [14:0] REG_USER_DST1 = 15'h0000,
  parameter [14:0] REG_USER_DST10 = 15'h0000,
  parameter [14:0] REG_USER_DST11 = 15'h0000,
  parameter [14:0] REG_USER_DST12 = 15'h0000,
  parameter [14:0] REG_USER_DST13 = 15'h0000,
  parameter [14:0] REG_USER_DST14 = 15'h0000,
  parameter [14:0] REG_USER_DST15 = 15'h0000,
  parameter [14:0] REG_USER_DST2 = 15'h0000,
  parameter [14:0] REG_USER_DST3 = 15'h0000,
  parameter [14:0] REG_USER_DST4 = 15'h0000,
  parameter [14:0] REG_USER_DST5 = 15'h0000,
  parameter [14:0] REG_USER_DST6 = 15'h0000,
  parameter [14:0] REG_USER_DST7 = 15'h0000,
  parameter [14:0] REG_USER_DST8 = 15'h0000,
  parameter [14:0] REG_USER_DST9 = 15'h0000,
  parameter [0:0] REG_USER_REMAP_CTRL = 1'h0,
  parameter [11:0] REG_VC_MAP = 12'h688,
  parameter [5:0] REG_WBUF_LAUNCH_SIZE = 6'h10,
  parameter [8:0] REG_WBUF_RAM_SETTING = 9'h012,
  parameter [5:0] REG_WR_AXPROT_SEL = 6'h00,
  parameter [9:0] REG_WR_RATE_CREDIT_DROP = 10'h005,
  parameter [13:0] REG_WR_RATE_CREDIT_LIMIT = 14'h0100,
  parameter [7:0] REG_WR_VCA_TOKEN0 = 8'h10
)(
  output IF_NOC_AXI_ARREADY,
  output IF_NOC_AXI_AWREADY,
  output [15:0] IF_NOC_AXI_BID,
  output [1:0] IF_NOC_AXI_BRESP,
  output [15:0] IF_NOC_AXI_BUSER,
  output IF_NOC_AXI_BVALID,
  output [127:0] IF_NOC_AXI_RDATA,
  output [15:0] IF_NOC_AXI_RDATA_PAR,
  output [15:0] IF_NOC_AXI_RID,
  output [0:0] IF_NOC_AXI_RLAST,
  output IF_NOC_AXI_RPOISON,
  output [1:0] IF_NOC_AXI_RRESP,
  output [15:0] IF_NOC_AXI_RUSER,
  output IF_NOC_AXI_RVALID,
  output IF_NOC_AXI_WREADY,
  output [7:0] IF_NOC_NPP_IN_NOC_CREDIT_RETURN,
  output IF_NOC_NPP_IN_NOC_CREDIT_RETURN_EN,
  output IF_NOC_NPP_OUT_NOC_CREDIT_RDY,
  output [181:0] IF_NOC_NPP_OUT_NOC_FLIT,
  output IF_NOC_NPP_OUT_NOC_FLIT_EN,
  output [7:0] IF_NOC_NPP_OUT_NOC_VALID,
  output IF_NOC_NPP_OUT_NOC_VALID_EN,
  output NMU,
  output NMU_FIREWALL_RD_ERR,
  output NMU_FIREWALL_WR_ERR,

  input AXI_IN,
  input CLK,
  input [63:0] IF_NOC_AXI_ARADDR,
  input [7:0] IF_NOC_AXI_ARADDR_PAR,
  input [1:0] IF_NOC_AXI_ARBURST,
  input [3:0] IF_NOC_AXI_ARCACHE,
  input [15:0] IF_NOC_AXI_ARID,
  input [7:0] IF_NOC_AXI_ARLEN,
  input [0:0] IF_NOC_AXI_ARLOCK,
  input [2:0] IF_NOC_AXI_ARPROT,
  input [3:0] IF_NOC_AXI_ARQOS,
  input [3:0] IF_NOC_AXI_ARREGION,
  input [2:0] IF_NOC_AXI_ARSIZE,
  input [15:0] IF_NOC_AXI_ARUSER,
  input IF_NOC_AXI_ARVALID,
  input [63:0] IF_NOC_AXI_AWADDR,
  input [7:0] IF_NOC_AXI_AWADDR_PAR,
  input [1:0] IF_NOC_AXI_AWBURST,
  input [3:0] IF_NOC_AXI_AWCACHE,
  input [15:0] IF_NOC_AXI_AWID,
  input [7:0] IF_NOC_AXI_AWLEN,
  input [0:0] IF_NOC_AXI_AWLOCK,
  input [2:0] IF_NOC_AXI_AWPROT,
  input [3:0] IF_NOC_AXI_AWQOS,
  input [3:0] IF_NOC_AXI_AWREGION,
  input [2:0] IF_NOC_AXI_AWSIZE,
  input [15:0] IF_NOC_AXI_AWUSER,
  input IF_NOC_AXI_AWVALID,
  input IF_NOC_AXI_BREADY,
  input IF_NOC_AXI_RREADY,
  input [9:0] IF_NOC_AXI_TDEST,
  input [127:0] IF_NOC_AXI_WDATA,
  input [15:0] IF_NOC_AXI_WDATA_PAR,
  input [15:0] IF_NOC_AXI_WID,
  input [0:0] IF_NOC_AXI_WLAST,
  input IF_NOC_AXI_WPOISON,
  input [15:0] IF_NOC_AXI_WSTRB,
  input [15:0] IF_NOC_AXI_WUSER,
  input IF_NOC_AXI_WVALID,
  input IF_NOC_NPP_IN_NOC_CREDIT_RDY,
  input [181:0] IF_NOC_NPP_IN_NOC_FLIT,
  input IF_NOC_NPP_IN_NOC_FLIT_EN,
  input [7:0] IF_NOC_NPP_IN_NOC_VALID,
  input IF_NOC_NPP_IN_NOC_VALID_EN,
  input [7:0] IF_NOC_NPP_OUT_NOC_CREDIT_RETURN,
  input IF_NOC_NPP_OUT_NOC_CREDIT_RETURN_EN,
  input NMU_RD_DEST_MODE,
  input [3:0] NMU_RD_USR_DST,
  input [3:0] NMU_USR_INTERRUPT_IN,
  input NMU_WR_DEST_MODE,
  input [3:0] NMU_WR_USR_DST
);

// define constants
  localparam MODULE_NAME = "NOC2_NMU128";
  

      BM_NOC2_NMU128 #(
      .REG_ADDR_DST0 (REG_ADDR_DST0),
      .REG_ADDR_DST1 (REG_ADDR_DST1),
      .REG_ADDR_DST10 (REG_ADDR_DST10),
      .REG_ADDR_DST11 (REG_ADDR_DST11),
      .REG_ADDR_DST12 (REG_ADDR_DST12),
      .REG_ADDR_DST13 (REG_ADDR_DST13),
      .REG_ADDR_DST14 (REG_ADDR_DST14),
      .REG_ADDR_DST15 (REG_ADDR_DST15),
      .REG_ADDR_DST16 (REG_ADDR_DST16),
      .REG_ADDR_DST17 (REG_ADDR_DST17),
      .REG_ADDR_DST18 (REG_ADDR_DST18),
      .REG_ADDR_DST19 (REG_ADDR_DST19),
      .REG_ADDR_DST2 (REG_ADDR_DST2),
      .REG_ADDR_DST20 (REG_ADDR_DST20),
      .REG_ADDR_DST21 (REG_ADDR_DST21),
      .REG_ADDR_DST22 (REG_ADDR_DST22),
      .REG_ADDR_DST23 (REG_ADDR_DST23),
      .REG_ADDR_DST24 (REG_ADDR_DST24),
      .REG_ADDR_DST25 (REG_ADDR_DST25),
      .REG_ADDR_DST26 (REG_ADDR_DST26),
      .REG_ADDR_DST27 (REG_ADDR_DST27),
      .REG_ADDR_DST28 (REG_ADDR_DST28),
      .REG_ADDR_DST29 (REG_ADDR_DST29),
      .REG_ADDR_DST3 (REG_ADDR_DST3),
      .REG_ADDR_DST30 (REG_ADDR_DST30),
      .REG_ADDR_DST31 (REG_ADDR_DST31),
      .REG_ADDR_DST4 (REG_ADDR_DST4),
      .REG_ADDR_DST5 (REG_ADDR_DST5),
      .REG_ADDR_DST6 (REG_ADDR_DST6),
      .REG_ADDR_DST7 (REG_ADDR_DST7),
      .REG_ADDR_DST8 (REG_ADDR_DST8),
      .REG_ADDR_DST9 (REG_ADDR_DST9),
      .REG_ADDR_ENABLE (REG_ADDR_ENABLE),
      .REG_ADDR_MADDR0 (REG_ADDR_MADDR0),
      .REG_ADDR_MADDR1 (REG_ADDR_MADDR1),
      .REG_ADDR_MADDR10 (REG_ADDR_MADDR10),
      .REG_ADDR_MADDR11 (REG_ADDR_MADDR11),
      .REG_ADDR_MADDR12 (REG_ADDR_MADDR12),
      .REG_ADDR_MADDR13 (REG_ADDR_MADDR13),
      .REG_ADDR_MADDR14 (REG_ADDR_MADDR14),
      .REG_ADDR_MADDR15 (REG_ADDR_MADDR15),
      .REG_ADDR_MADDR16 (REG_ADDR_MADDR16),
      .REG_ADDR_MADDR17 (REG_ADDR_MADDR17),
      .REG_ADDR_MADDR18 (REG_ADDR_MADDR18),
      .REG_ADDR_MADDR19 (REG_ADDR_MADDR19),
      .REG_ADDR_MADDR2 (REG_ADDR_MADDR2),
      .REG_ADDR_MADDR20 (REG_ADDR_MADDR20),
      .REG_ADDR_MADDR21 (REG_ADDR_MADDR21),
      .REG_ADDR_MADDR22 (REG_ADDR_MADDR22),
      .REG_ADDR_MADDR23 (REG_ADDR_MADDR23),
      .REG_ADDR_MADDR24 (REG_ADDR_MADDR24),
      .REG_ADDR_MADDR25 (REG_ADDR_MADDR25),
      .REG_ADDR_MADDR26 (REG_ADDR_MADDR26),
      .REG_ADDR_MADDR27 (REG_ADDR_MADDR27),
      .REG_ADDR_MADDR28 (REG_ADDR_MADDR28),
      .REG_ADDR_MADDR29 (REG_ADDR_MADDR29),
      .REG_ADDR_MADDR3 (REG_ADDR_MADDR3),
      .REG_ADDR_MADDR30 (REG_ADDR_MADDR30),
      .REG_ADDR_MADDR31 (REG_ADDR_MADDR31),
      .REG_ADDR_MADDR4 (REG_ADDR_MADDR4),
      .REG_ADDR_MADDR5 (REG_ADDR_MADDR5),
      .REG_ADDR_MADDR6 (REG_ADDR_MADDR6),
      .REG_ADDR_MADDR7 (REG_ADDR_MADDR7),
      .REG_ADDR_MADDR8 (REG_ADDR_MADDR8),
      .REG_ADDR_MADDR9 (REG_ADDR_MADDR9),
      .REG_ADDR_MASK0 (REG_ADDR_MASK0),
      .REG_ADDR_MASK1 (REG_ADDR_MASK1),
      .REG_ADDR_MASK10 (REG_ADDR_MASK10),
      .REG_ADDR_MASK11 (REG_ADDR_MASK11),
      .REG_ADDR_MASK12 (REG_ADDR_MASK12),
      .REG_ADDR_MASK13 (REG_ADDR_MASK13),
      .REG_ADDR_MASK14 (REG_ADDR_MASK14),
      .REG_ADDR_MASK15 (REG_ADDR_MASK15),
      .REG_ADDR_MASK16 (REG_ADDR_MASK16),
      .REG_ADDR_MASK17 (REG_ADDR_MASK17),
      .REG_ADDR_MASK18 (REG_ADDR_MASK18),
      .REG_ADDR_MASK19 (REG_ADDR_MASK19),
      .REG_ADDR_MASK2 (REG_ADDR_MASK2),
      .REG_ADDR_MASK20 (REG_ADDR_MASK20),
      .REG_ADDR_MASK21 (REG_ADDR_MASK21),
      .REG_ADDR_MASK22 (REG_ADDR_MASK22),
      .REG_ADDR_MASK23 (REG_ADDR_MASK23),
      .REG_ADDR_MASK24 (REG_ADDR_MASK24),
      .REG_ADDR_MASK25 (REG_ADDR_MASK25),
      .REG_ADDR_MASK26 (REG_ADDR_MASK26),
      .REG_ADDR_MASK27 (REG_ADDR_MASK27),
      .REG_ADDR_MASK28 (REG_ADDR_MASK28),
      .REG_ADDR_MASK29 (REG_ADDR_MASK29),
      .REG_ADDR_MASK3 (REG_ADDR_MASK3),
      .REG_ADDR_MASK30 (REG_ADDR_MASK30),
      .REG_ADDR_MASK31 (REG_ADDR_MASK31),
      .REG_ADDR_MASK4 (REG_ADDR_MASK4),
      .REG_ADDR_MASK5 (REG_ADDR_MASK5),
      .REG_ADDR_MASK6 (REG_ADDR_MASK6),
      .REG_ADDR_MASK7 (REG_ADDR_MASK7),
      .REG_ADDR_MASK8 (REG_ADDR_MASK8),
      .REG_ADDR_MASK9 (REG_ADDR_MASK9),
      .REG_ADDR_REMAP (REG_ADDR_REMAP),
      .REG_ADDR_RPADDR0 (REG_ADDR_RPADDR0),
      .REG_ADDR_RPADDR1 (REG_ADDR_RPADDR1),
      .REG_ADDR_RPADDR10 (REG_ADDR_RPADDR10),
      .REG_ADDR_RPADDR11 (REG_ADDR_RPADDR11),
      .REG_ADDR_RPADDR12 (REG_ADDR_RPADDR12),
      .REG_ADDR_RPADDR13 (REG_ADDR_RPADDR13),
      .REG_ADDR_RPADDR14 (REG_ADDR_RPADDR14),
      .REG_ADDR_RPADDR15 (REG_ADDR_RPADDR15),
      .REG_ADDR_RPADDR16 (REG_ADDR_RPADDR16),
      .REG_ADDR_RPADDR17 (REG_ADDR_RPADDR17),
      .REG_ADDR_RPADDR18 (REG_ADDR_RPADDR18),
      .REG_ADDR_RPADDR19 (REG_ADDR_RPADDR19),
      .REG_ADDR_RPADDR2 (REG_ADDR_RPADDR2),
      .REG_ADDR_RPADDR20 (REG_ADDR_RPADDR20),
      .REG_ADDR_RPADDR21 (REG_ADDR_RPADDR21),
      .REG_ADDR_RPADDR22 (REG_ADDR_RPADDR22),
      .REG_ADDR_RPADDR23 (REG_ADDR_RPADDR23),
      .REG_ADDR_RPADDR24 (REG_ADDR_RPADDR24),
      .REG_ADDR_RPADDR25 (REG_ADDR_RPADDR25),
      .REG_ADDR_RPADDR26 (REG_ADDR_RPADDR26),
      .REG_ADDR_RPADDR27 (REG_ADDR_RPADDR27),
      .REG_ADDR_RPADDR28 (REG_ADDR_RPADDR28),
      .REG_ADDR_RPADDR29 (REG_ADDR_RPADDR29),
      .REG_ADDR_RPADDR3 (REG_ADDR_RPADDR3),
      .REG_ADDR_RPADDR30 (REG_ADDR_RPADDR30),
      .REG_ADDR_RPADDR31 (REG_ADDR_RPADDR31),
      .REG_ADDR_RPADDR4 (REG_ADDR_RPADDR4),
      .REG_ADDR_RPADDR5 (REG_ADDR_RPADDR5),
      .REG_ADDR_RPADDR6 (REG_ADDR_RPADDR6),
      .REG_ADDR_RPADDR7 (REG_ADDR_RPADDR7),
      .REG_ADDR_RPADDR8 (REG_ADDR_RPADDR8),
      .REG_ADDR_RPADDR9 (REG_ADDR_RPADDR9),
      .REG_ADR_MAP_CPM (REG_ADR_MAP_CPM),
      .REG_ADR_MAP_FPD_AFI_FS_0 (REG_ADR_MAP_FPD_AFI_FS_0),
      .REG_ADR_MAP_FPD_AFI_FS_1 (REG_ADR_MAP_FPD_AFI_FS_1),
      .REG_ADR_MAP_FPD_GIC (REG_ADR_MAP_FPD_GIC),
      .REG_ADR_MAP_HNIC (REG_ADR_MAP_HNIC),
      .REG_ADR_MAP_LPD_AFI_FS (REG_ADR_MAP_LPD_AFI_FS),
      .REG_ADR_MAP_ME_ARRAY_0 (REG_ADR_MAP_ME_ARRAY_0),
      .REG_ADR_MAP_ME_ARRAY_1 (REG_ADR_MAP_ME_ARRAY_1),
      .REG_ADR_MAP_ME_ARRAY_2 (REG_ADR_MAP_ME_ARRAY_2),
      .REG_ADR_MAP_ME_ARRAY_3 (REG_ADR_MAP_ME_ARRAY_3),
      .REG_ADR_MAP_OCM (REG_ADR_MAP_OCM),
      .REG_ADR_MAP_PCIE (REG_ADR_MAP_PCIE),
      .REG_ADR_MAP_PMC (REG_ADR_MAP_PMC),
      .REG_ADR_MAP_PMC_ALIAS_0 (REG_ADR_MAP_PMC_ALIAS_0),
      .REG_ADR_MAP_PMC_ALIAS_1 (REG_ADR_MAP_PMC_ALIAS_1),
      .REG_ADR_MAP_PMC_ALIAS_2 (REG_ADR_MAP_PMC_ALIAS_2),
      .REG_ADR_MAP_PMC_ALIAS_3 (REG_ADR_MAP_PMC_ALIAS_3),
      .REG_ADR_MAP_XPDS (REG_ADR_MAP_XPDS),
      .REG_ADR_MAP_XSPI (REG_ADR_MAP_XSPI),
      .REG_AFWS_EN (REG_AFWS_EN),
      .REG_AFWS_INTR_EN (REG_AFWS_INTR_EN),
      .REG_AFWS_TIMEOUT_ERR_EN (REG_AFWS_TIMEOUT_ERR_EN),
      .REG_AXI_NON_MOD_DISABLE (REG_AXI_NON_MOD_DISABLE),
      .REG_AXI_PAR_CHK (REG_AXI_PAR_CHK),
      .REG_CHOPSIZE (REG_CHOPSIZE),
      .REG_DDR_ADR_MAP0_0 (REG_DDR_ADR_MAP0_0),
      .REG_DDR_ADR_MAP0_1 (REG_DDR_ADR_MAP0_1),
      .REG_DDR_ADR_MAP1_0 (REG_DDR_ADR_MAP1_0),
      .REG_DDR_ADR_MAP1_1 (REG_DDR_ADR_MAP1_1),
      .REG_DDR_ADR_MAP2_0 (REG_DDR_ADR_MAP2_0),
      .REG_DDR_ADR_MAP2_1 (REG_DDR_ADR_MAP2_1),
      .REG_DDR_ADR_MAP3_0 (REG_DDR_ADR_MAP3_0),
      .REG_DDR_ADR_MAP3_1 (REG_DDR_ADR_MAP3_1),
      .REG_DDR_ADR_MAP4_0 (REG_DDR_ADR_MAP4_0),
      .REG_DDR_ADR_MAP4_1 (REG_DDR_ADR_MAP4_1),
      .REG_DDR_ADR_MAP5_0 (REG_DDR_ADR_MAP5_0),
      .REG_DDR_ADR_MAP5_1 (REG_DDR_ADR_MAP5_1),
      .REG_DDR_ADR_MAP6_0 (REG_DDR_ADR_MAP6_0),
      .REG_DDR_ADR_MAP6_1 (REG_DDR_ADR_MAP6_1),
      .REG_DDR_ADR_MAP7_0 (REG_DDR_ADR_MAP7_0),
      .REG_DDR_ADR_MAP7_1 (REG_DDR_ADR_MAP7_1),
      .REG_DDR_DST_MAP0 (REG_DDR_DST_MAP0),
      .REG_DDR_DST_MAP1 (REG_DDR_DST_MAP1),
      .REG_DDR_DST_MAP10 (REG_DDR_DST_MAP10),
      .REG_DDR_DST_MAP11 (REG_DDR_DST_MAP11),
      .REG_DDR_DST_MAP12 (REG_DDR_DST_MAP12),
      .REG_DDR_DST_MAP13 (REG_DDR_DST_MAP13),
      .REG_DDR_DST_MAP14 (REG_DDR_DST_MAP14),
      .REG_DDR_DST_MAP15 (REG_DDR_DST_MAP15),
      .REG_DDR_DST_MAP2 (REG_DDR_DST_MAP2),
      .REG_DDR_DST_MAP3 (REG_DDR_DST_MAP3),
      .REG_DDR_DST_MAP4 (REG_DDR_DST_MAP4),
      .REG_DDR_DST_MAP5 (REG_DDR_DST_MAP5),
      .REG_DDR_DST_MAP6 (REG_DDR_DST_MAP6),
      .REG_DDR_DST_MAP7 (REG_DDR_DST_MAP7),
      .REG_DDR_DST_MAP8 (REG_DDR_DST_MAP8),
      .REG_DDR_DST_MAP9 (REG_DDR_DST_MAP9),
      .REG_DWIDTH (REG_DWIDTH),
      .REG_ECC_CHK_EN (REG_ECC_CHK_EN),
      .REG_HBM_MAP_T0_CH0 (REG_HBM_MAP_T0_CH0),
      .REG_HBM_MAP_T0_CH1 (REG_HBM_MAP_T0_CH1),
      .REG_HBM_MAP_T0_CH10 (REG_HBM_MAP_T0_CH10),
      .REG_HBM_MAP_T0_CH11 (REG_HBM_MAP_T0_CH11),
      .REG_HBM_MAP_T0_CH12 (REG_HBM_MAP_T0_CH12),
      .REG_HBM_MAP_T0_CH13 (REG_HBM_MAP_T0_CH13),
      .REG_HBM_MAP_T0_CH14 (REG_HBM_MAP_T0_CH14),
      .REG_HBM_MAP_T0_CH15 (REG_HBM_MAP_T0_CH15),
      .REG_HBM_MAP_T0_CH2 (REG_HBM_MAP_T0_CH2),
      .REG_HBM_MAP_T0_CH3 (REG_HBM_MAP_T0_CH3),
      .REG_HBM_MAP_T0_CH4 (REG_HBM_MAP_T0_CH4),
      .REG_HBM_MAP_T0_CH5 (REG_HBM_MAP_T0_CH5),
      .REG_HBM_MAP_T0_CH6 (REG_HBM_MAP_T0_CH6),
      .REG_HBM_MAP_T0_CH7 (REG_HBM_MAP_T0_CH7),
      .REG_HBM_MAP_T0_CH8 (REG_HBM_MAP_T0_CH8),
      .REG_HBM_MAP_T0_CH9 (REG_HBM_MAP_T0_CH9),
      .REG_HBM_MAP_T1_CH0 (REG_HBM_MAP_T1_CH0),
      .REG_HBM_MAP_T1_CH1 (REG_HBM_MAP_T1_CH1),
      .REG_HBM_MAP_T1_CH10 (REG_HBM_MAP_T1_CH10),
      .REG_HBM_MAP_T1_CH11 (REG_HBM_MAP_T1_CH11),
      .REG_HBM_MAP_T1_CH12 (REG_HBM_MAP_T1_CH12),
      .REG_HBM_MAP_T1_CH13 (REG_HBM_MAP_T1_CH13),
      .REG_HBM_MAP_T1_CH14 (REG_HBM_MAP_T1_CH14),
      .REG_HBM_MAP_T1_CH15 (REG_HBM_MAP_T1_CH15),
      .REG_HBM_MAP_T1_CH2 (REG_HBM_MAP_T1_CH2),
      .REG_HBM_MAP_T1_CH3 (REG_HBM_MAP_T1_CH3),
      .REG_HBM_MAP_T1_CH4 (REG_HBM_MAP_T1_CH4),
      .REG_HBM_MAP_T1_CH5 (REG_HBM_MAP_T1_CH5),
      .REG_HBM_MAP_T1_CH6 (REG_HBM_MAP_T1_CH6),
      .REG_HBM_MAP_T1_CH7 (REG_HBM_MAP_T1_CH7),
      .REG_HBM_MAP_T1_CH8 (REG_HBM_MAP_T1_CH8),
      .REG_HBM_MAP_T1_CH9 (REG_HBM_MAP_T1_CH9),
      .REG_HBM_MAP_T2_CH0 (REG_HBM_MAP_T2_CH0),
      .REG_HBM_MAP_T2_CH1 (REG_HBM_MAP_T2_CH1),
      .REG_HBM_MAP_T2_CH10 (REG_HBM_MAP_T2_CH10),
      .REG_HBM_MAP_T2_CH11 (REG_HBM_MAP_T2_CH11),
      .REG_HBM_MAP_T2_CH12 (REG_HBM_MAP_T2_CH12),
      .REG_HBM_MAP_T2_CH13 (REG_HBM_MAP_T2_CH13),
      .REG_HBM_MAP_T2_CH14 (REG_HBM_MAP_T2_CH14),
      .REG_HBM_MAP_T2_CH15 (REG_HBM_MAP_T2_CH15),
      .REG_HBM_MAP_T2_CH2 (REG_HBM_MAP_T2_CH2),
      .REG_HBM_MAP_T2_CH3 (REG_HBM_MAP_T2_CH3),
      .REG_HBM_MAP_T2_CH4 (REG_HBM_MAP_T2_CH4),
      .REG_HBM_MAP_T2_CH5 (REG_HBM_MAP_T2_CH5),
      .REG_HBM_MAP_T2_CH6 (REG_HBM_MAP_T2_CH6),
      .REG_HBM_MAP_T2_CH7 (REG_HBM_MAP_T2_CH7),
      .REG_HBM_MAP_T2_CH8 (REG_HBM_MAP_T2_CH8),
      .REG_HBM_MAP_T2_CH9 (REG_HBM_MAP_T2_CH9),
      .REG_HBM_MAP_T3_CH0 (REG_HBM_MAP_T3_CH0),
      .REG_HBM_MAP_T3_CH1 (REG_HBM_MAP_T3_CH1),
      .REG_HBM_MAP_T3_CH10 (REG_HBM_MAP_T3_CH10),
      .REG_HBM_MAP_T3_CH11 (REG_HBM_MAP_T3_CH11),
      .REG_HBM_MAP_T3_CH12 (REG_HBM_MAP_T3_CH12),
      .REG_HBM_MAP_T3_CH13 (REG_HBM_MAP_T3_CH13),
      .REG_HBM_MAP_T3_CH14 (REG_HBM_MAP_T3_CH14),
      .REG_HBM_MAP_T3_CH15 (REG_HBM_MAP_T3_CH15),
      .REG_HBM_MAP_T3_CH2 (REG_HBM_MAP_T3_CH2),
      .REG_HBM_MAP_T3_CH3 (REG_HBM_MAP_T3_CH3),
      .REG_HBM_MAP_T3_CH4 (REG_HBM_MAP_T3_CH4),
      .REG_HBM_MAP_T3_CH5 (REG_HBM_MAP_T3_CH5),
      .REG_HBM_MAP_T3_CH6 (REG_HBM_MAP_T3_CH6),
      .REG_HBM_MAP_T3_CH7 (REG_HBM_MAP_T3_CH7),
      .REG_HBM_MAP_T3_CH8 (REG_HBM_MAP_T3_CH8),
      .REG_HBM_MAP_T3_CH9 (REG_HBM_MAP_T3_CH9),
      .REG_MODE_SELECT (REG_MODE_SELECT),
      .REG_NMU_BYPASS_EN (REG_NMU_BYPASS_EN),
      .REG_OUTSTANDING_RD_TXN (REG_OUTSTANDING_RD_TXN),
      .REG_OUTSTANDING_WR_TXN (REG_OUTSTANDING_WR_TXN),
      .REG_PRIORITY (REG_PRIORITY),
      .REG_RD_AXPROT_SEL (REG_RD_AXPROT_SEL),
      .REG_RD_RATE_CREDIT_DROP (REG_RD_RATE_CREDIT_DROP),
      .REG_RD_RATE_CREDIT_LIMIT (REG_RD_RATE_CREDIT_LIMIT),
      .REG_RD_VCA_TOKEN0 (REG_RD_VCA_TOKEN0),
      .REG_RESP_SRC_ID_MASK (REG_RESP_SRC_ID_MASK),
      .REG_RPOISON_TO_SLVERR (REG_RPOISON_TO_SLVERR),
      .REG_RROB_RAM_SETTING (REG_RROB_RAM_SETTING),
      .REG_SMID_SEL (REG_SMID_SEL),
      .REG_SRC (REG_SRC),
      .REG_TBASE_AXI_TIMEOUT (REG_TBASE_AXI_TIMEOUT),
      .REG_TBASE_MODE_RLIMIT_RD (REG_TBASE_MODE_RLIMIT_RD),
      .REG_TBASE_MODE_RLIMIT_WR (REG_TBASE_MODE_RLIMIT_WR),
      .REG_TBASE_TRK_TIMEOUT (REG_TBASE_TRK_TIMEOUT),
      .REG_USER_DST0 (REG_USER_DST0),
      .REG_USER_DST1 (REG_USER_DST1),
      .REG_USER_DST10 (REG_USER_DST10),
      .REG_USER_DST11 (REG_USER_DST11),
      .REG_USER_DST12 (REG_USER_DST12),
      .REG_USER_DST13 (REG_USER_DST13),
      .REG_USER_DST14 (REG_USER_DST14),
      .REG_USER_DST15 (REG_USER_DST15),
      .REG_USER_DST2 (REG_USER_DST2),
      .REG_USER_DST3 (REG_USER_DST3),
      .REG_USER_DST4 (REG_USER_DST4),
      .REG_USER_DST5 (REG_USER_DST5),
      .REG_USER_DST6 (REG_USER_DST6),
      .REG_USER_DST7 (REG_USER_DST7),
      .REG_USER_DST8 (REG_USER_DST8),
      .REG_USER_DST9 (REG_USER_DST9),
      .REG_USER_REMAP_CTRL (REG_USER_REMAP_CTRL),
      .REG_VC_MAP (REG_VC_MAP),
      .REG_WBUF_LAUNCH_SIZE (REG_WBUF_LAUNCH_SIZE),
      .REG_WBUF_RAM_SETTING (REG_WBUF_RAM_SETTING),
      .REG_WR_AXPROT_SEL (REG_WR_AXPROT_SEL),
      .REG_WR_RATE_CREDIT_DROP (REG_WR_RATE_CREDIT_DROP),
      .REG_WR_RATE_CREDIT_LIMIT (REG_WR_RATE_CREDIT_LIMIT),
      .REG_WR_VCA_TOKEN0 (REG_WR_VCA_TOKEN0)
) BM_NOC2_NMU128_INST (
      .IF_NOC_AXI_ARREADY (IF_NOC_AXI_ARREADY),
      .IF_NOC_AXI_AWREADY (IF_NOC_AXI_AWREADY),
      .IF_NOC_AXI_BID (IF_NOC_AXI_BID),
      .IF_NOC_AXI_BRESP (IF_NOC_AXI_BRESP),
      .IF_NOC_AXI_BUSER (IF_NOC_AXI_BUSER),
      .IF_NOC_AXI_BVALID (IF_NOC_AXI_BVALID),
      .IF_NOC_AXI_RDATA (IF_NOC_AXI_RDATA),
      .IF_NOC_AXI_RDATA_PAR (IF_NOC_AXI_RDATA_PAR),
      .IF_NOC_AXI_RID (IF_NOC_AXI_RID),
      .IF_NOC_AXI_RLAST (IF_NOC_AXI_RLAST),
      .IF_NOC_AXI_RPOISON (IF_NOC_AXI_RPOISON),
      .IF_NOC_AXI_RRESP (IF_NOC_AXI_RRESP),
      .IF_NOC_AXI_RUSER (IF_NOC_AXI_RUSER),
      .IF_NOC_AXI_RVALID (IF_NOC_AXI_RVALID),
      .IF_NOC_AXI_WREADY (IF_NOC_AXI_WREADY),
      .IF_NOC_NPP_IN_NOC_CREDIT_RETURN (IF_NOC_NPP_IN_NOC_CREDIT_RETURN),
      .IF_NOC_NPP_IN_NOC_CREDIT_RETURN_EN (IF_NOC_NPP_IN_NOC_CREDIT_RETURN_EN),
      .IF_NOC_NPP_OUT_NOC_CREDIT_RDY (IF_NOC_NPP_OUT_NOC_CREDIT_RDY),
      .IF_NOC_NPP_OUT_NOC_FLIT (IF_NOC_NPP_OUT_NOC_FLIT),
      .IF_NOC_NPP_OUT_NOC_FLIT_EN (IF_NOC_NPP_OUT_NOC_FLIT_EN),
      .IF_NOC_NPP_OUT_NOC_VALID (IF_NOC_NPP_OUT_NOC_VALID),
      .IF_NOC_NPP_OUT_NOC_VALID_EN (IF_NOC_NPP_OUT_NOC_VALID_EN),
      .NMU (NMU),
      .NMU_FIREWALL_RD_ERR (NMU_FIREWALL_RD_ERR),
      .NMU_FIREWALL_WR_ERR (NMU_FIREWALL_WR_ERR),
      .AXI_IN (AXI_IN),
      .CLK (CLK),
      .IF_NOC_AXI_ARADDR (IF_NOC_AXI_ARADDR),
      .IF_NOC_AXI_ARADDR_PAR (IF_NOC_AXI_ARADDR_PAR),
      .IF_NOC_AXI_ARBURST (IF_NOC_AXI_ARBURST),
      .IF_NOC_AXI_ARCACHE (IF_NOC_AXI_ARCACHE),
      .IF_NOC_AXI_ARID (IF_NOC_AXI_ARID),
      .IF_NOC_AXI_ARLEN (IF_NOC_AXI_ARLEN),
      .IF_NOC_AXI_ARLOCK (IF_NOC_AXI_ARLOCK),
      .IF_NOC_AXI_ARPROT (IF_NOC_AXI_ARPROT),
      .IF_NOC_AXI_ARQOS (IF_NOC_AXI_ARQOS),
      .IF_NOC_AXI_ARREGION (IF_NOC_AXI_ARREGION),
      .IF_NOC_AXI_ARSIZE (IF_NOC_AXI_ARSIZE),
      .IF_NOC_AXI_ARUSER (IF_NOC_AXI_ARUSER),
      .IF_NOC_AXI_ARVALID (IF_NOC_AXI_ARVALID),
      .IF_NOC_AXI_AWADDR (IF_NOC_AXI_AWADDR),
      .IF_NOC_AXI_AWADDR_PAR (IF_NOC_AXI_AWADDR_PAR),
      .IF_NOC_AXI_AWBURST (IF_NOC_AXI_AWBURST),
      .IF_NOC_AXI_AWCACHE (IF_NOC_AXI_AWCACHE),
      .IF_NOC_AXI_AWID (IF_NOC_AXI_AWID),
      .IF_NOC_AXI_AWLEN (IF_NOC_AXI_AWLEN),
      .IF_NOC_AXI_AWLOCK (IF_NOC_AXI_AWLOCK),
      .IF_NOC_AXI_AWPROT (IF_NOC_AXI_AWPROT),
      .IF_NOC_AXI_AWQOS (IF_NOC_AXI_AWQOS),
      .IF_NOC_AXI_AWREGION (IF_NOC_AXI_AWREGION),
      .IF_NOC_AXI_AWSIZE (IF_NOC_AXI_AWSIZE),
      .IF_NOC_AXI_AWUSER (IF_NOC_AXI_AWUSER),
      .IF_NOC_AXI_AWVALID (IF_NOC_AXI_AWVALID),
      .IF_NOC_AXI_BREADY (IF_NOC_AXI_BREADY),
      .IF_NOC_AXI_RREADY (IF_NOC_AXI_RREADY),
      .IF_NOC_AXI_TDEST (IF_NOC_AXI_TDEST),
      .IF_NOC_AXI_WDATA (IF_NOC_AXI_WDATA),
      .IF_NOC_AXI_WDATA_PAR (IF_NOC_AXI_WDATA_PAR),
      .IF_NOC_AXI_WID (IF_NOC_AXI_WID),
      .IF_NOC_AXI_WLAST (IF_NOC_AXI_WLAST),
      .IF_NOC_AXI_WPOISON (IF_NOC_AXI_WPOISON),
      .IF_NOC_AXI_WSTRB (IF_NOC_AXI_WSTRB),
      .IF_NOC_AXI_WUSER (IF_NOC_AXI_WUSER),
      .IF_NOC_AXI_WVALID (IF_NOC_AXI_WVALID),
      .IF_NOC_NPP_IN_NOC_CREDIT_RDY (IF_NOC_NPP_IN_NOC_CREDIT_RDY),
      .IF_NOC_NPP_IN_NOC_FLIT (IF_NOC_NPP_IN_NOC_FLIT),
      .IF_NOC_NPP_IN_NOC_FLIT_EN (IF_NOC_NPP_IN_NOC_FLIT_EN),
      .IF_NOC_NPP_IN_NOC_VALID (IF_NOC_NPP_IN_NOC_VALID),
      .IF_NOC_NPP_IN_NOC_VALID_EN (IF_NOC_NPP_IN_NOC_VALID_EN),
      .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN (IF_NOC_NPP_OUT_NOC_CREDIT_RETURN),
      .IF_NOC_NPP_OUT_NOC_CREDIT_RETURN_EN (IF_NOC_NPP_OUT_NOC_CREDIT_RETURN_EN),
      .NMU_RD_DEST_MODE (NMU_RD_DEST_MODE),
      .NMU_RD_USR_DST (NMU_RD_USR_DST),
      .NMU_USR_INTERRUPT_IN (NMU_USR_INTERRUPT_IN),
      .NMU_WR_DEST_MODE (NMU_WR_DEST_MODE),
      .NMU_WR_USR_DST (NMU_WR_USR_DST)
    );
// begin behavioral model

// end behavioral model

endmodule

`endcelldefine
