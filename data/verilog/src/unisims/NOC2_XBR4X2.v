///////////////////////////////////////////////////////////////////////////////
//  Copyright (c) 1995/2022 Xilinx, Inc.
//  All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /     Vendor      : Xilinx
// \   \   \/      Version     : 2022.2
//  \   \          Description : Xilinx Unified Simulation Library Component
//  /   /                        NOC2_XBR4X2
// /___/   /\      Filename    : NOC2_XBR4X2.v
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

module NOC2_XBR4X2 #(
  parameter [23:0] REG_DDR2NOC_DP0_NP0_VCA_RD_TOKEN = 24'h101010,
  parameter [15:0] REG_DDR2NOC_DP0_NP0_VCA_WR_TOKEN = 16'h1010,
  parameter [23:0] REG_DDR2NOC_DP0_NP1_VCA_RD_TOKEN = 24'h101010,
  parameter [15:0] REG_DDR2NOC_DP0_NP1_VCA_WR_TOKEN = 16'h1010,
  parameter [23:0] REG_DDR2NOC_DP0_NP2_VCA_RD_TOKEN = 24'h101010,
  parameter [15:0] REG_DDR2NOC_DP0_NP2_VCA_WR_TOKEN = 16'h1010,
  parameter [23:0] REG_DDR2NOC_DP0_NP3_VCA_RD_TOKEN = 24'h101010,
  parameter [15:0] REG_DDR2NOC_DP0_NP3_VCA_WR_TOKEN = 16'h1010,
  parameter [23:0] REG_DDR2NOC_DP1_NP0_VCA_RD_TOKEN = 24'h101010,
  parameter [15:0] REG_DDR2NOC_DP1_NP0_VCA_WR_TOKEN = 16'h1010,
  parameter [23:0] REG_DDR2NOC_DP1_NP1_VCA_RD_TOKEN = 24'h101010,
  parameter [15:0] REG_DDR2NOC_DP1_NP1_VCA_WR_TOKEN = 16'h1010,
  parameter [23:0] REG_DDR2NOC_DP1_NP2_VCA_RD_TOKEN = 24'h101010,
  parameter [15:0] REG_DDR2NOC_DP1_NP2_VCA_WR_TOKEN = 16'h1010,
  parameter [23:0] REG_DDR2NOC_DP1_NP3_VCA_RD_TOKEN = 24'h101010,
  parameter [15:0] REG_DDR2NOC_DP1_NP3_VCA_WR_TOKEN = 16'h1010,
  parameter [19:0] REG_DDR2NOC_PRI_NP0 = 20'h11846,
  parameter [19:0] REG_DDR2NOC_PRI_NP1 = 20'h11846,
  parameter [19:0] REG_DDR2NOC_PRI_NP2 = 20'h11846,
  parameter [19:0] REG_DDR2NOC_PRI_NP3 = 20'h11846,
  parameter [11:0] REG_DDR2NOC_RD_VC_MAP_NP0 = 12'h249,
  parameter [11:0] REG_DDR2NOC_RD_VC_MAP_NP1 = 12'h249,
  parameter [11:0] REG_DDR2NOC_RD_VC_MAP_NP2 = 12'h249,
  parameter [11:0] REG_DDR2NOC_RD_VC_MAP_NP3 = 12'h249,
  parameter [11:0] REG_DST_ID_P0 = 12'h000,
  parameter [11:0] REG_DST_ID_P1 = 12'h001,
  parameter [31:0] REG_NOC2DDR_NP0_DP0_VCA_TOKEN = 32'h10101010,
  parameter [31:0] REG_NOC2DDR_NP0_DP1_VCA_TOKEN = 32'h10101010,
  parameter [31:0] REG_NOC2DDR_NP1_DP0_VCA_TOKEN = 32'h10101010,
  parameter [31:0] REG_NOC2DDR_NP1_DP1_VCA_TOKEN = 32'h10101010,
  parameter [31:0] REG_NOC2DDR_NP2_DP0_VCA_TOKEN = 32'h10101010,
  parameter [31:0] REG_NOC2DDR_NP2_DP1_VCA_TOKEN = 32'h10101010,
  parameter [31:0] REG_NOC2DDR_NP3_DP0_VCA_TOKEN = 32'h10101010,
  parameter [31:0] REG_NOC2DDR_NP3_DP1_VCA_TOKEN = 32'h10101010,
  parameter [31:0] REG_NOC2DDR_PRI_DP0 = 32'h16161616,
  parameter [31:0] REG_NOC2DDR_PRI_DP1 = 32'h16161616,
  parameter [15:0] REG_NOC2DDR_RD_CH_IDX_MAP_DP0 = 16'h4444,
  parameter [15:0] REG_NOC2DDR_RD_CH_IDX_MAP_DP1 = 16'h4444,
  parameter [0:0] REG_NOC_CTL = 1'h0
)(
  output [4:0] IF_DMC_NPP_IN0_NOC_CREDIT_RETURN,
  output IF_DMC_NPP_IN0_NOC_CREDIT_RETURN_EN,
  output [4:0] IF_DMC_NPP_IN1_NOC_CREDIT_RETURN,
  output IF_DMC_NPP_IN1_NOC_CREDIT_RETURN_EN,
  output IF_DMC_NPP_OUT0_NOC_CREDIT_RDY,
  output [181:0] IF_DMC_NPP_OUT0_NOC_FLIT,
  output IF_DMC_NPP_OUT0_NOC_FLIT_EN,
  output [1:0] IF_DMC_NPP_OUT0_NOC_PDEST_ID,
  output [4:0] IF_DMC_NPP_OUT0_NOC_VALID,
  output IF_DMC_NPP_OUT0_NOC_VALID_EN,
  output IF_DMC_NPP_OUT1_NOC_CREDIT_RDY,
  output [181:0] IF_DMC_NPP_OUT1_NOC_FLIT,
  output IF_DMC_NPP_OUT1_NOC_FLIT_EN,
  output [1:0] IF_DMC_NPP_OUT1_NOC_PDEST_ID,
  output [4:0] IF_DMC_NPP_OUT1_NOC_VALID,
  output IF_DMC_NPP_OUT1_NOC_VALID_EN,
  output [7:0] IF_NOC_NPP_IN0_NOC_CREDIT_RETURN,
  output IF_NOC_NPP_IN0_NOC_CREDIT_RETURN_EN,
  output [7:0] IF_NOC_NPP_IN1_NOC_CREDIT_RETURN,
  output IF_NOC_NPP_IN1_NOC_CREDIT_RETURN_EN,
  output [7:0] IF_NOC_NPP_IN2_NOC_CREDIT_RETURN,
  output IF_NOC_NPP_IN2_NOC_CREDIT_RETURN_EN,
  output [7:0] IF_NOC_NPP_IN3_NOC_CREDIT_RETURN,
  output IF_NOC_NPP_IN3_NOC_CREDIT_RETURN_EN,
  output IF_NOC_NPP_OUT0_NOC_CREDIT_RDY,
  output [181:0] IF_NOC_NPP_OUT0_NOC_FLIT,
  output IF_NOC_NPP_OUT0_NOC_FLIT_EN,
  output [7:0] IF_NOC_NPP_OUT0_NOC_VALID,
  output IF_NOC_NPP_OUT0_NOC_VALID_EN,
  output IF_NOC_NPP_OUT1_NOC_CREDIT_RDY,
  output [181:0] IF_NOC_NPP_OUT1_NOC_FLIT,
  output IF_NOC_NPP_OUT1_NOC_FLIT_EN,
  output [7:0] IF_NOC_NPP_OUT1_NOC_VALID,
  output IF_NOC_NPP_OUT1_NOC_VALID_EN,
  output IF_NOC_NPP_OUT2_NOC_CREDIT_RDY,
  output [181:0] IF_NOC_NPP_OUT2_NOC_FLIT,
  output IF_NOC_NPP_OUT2_NOC_FLIT_EN,
  output [7:0] IF_NOC_NPP_OUT2_NOC_VALID,
  output IF_NOC_NPP_OUT2_NOC_VALID_EN,
  output IF_NOC_NPP_OUT3_NOC_CREDIT_RDY,
  output [181:0] IF_NOC_NPP_OUT3_NOC_FLIT,
  output IF_NOC_NPP_OUT3_NOC_FLIT_EN,
  output [7:0] IF_NOC_NPP_OUT3_NOC_VALID,
  output IF_NOC_NPP_OUT3_NOC_VALID_EN,

  input IF_DMC_NPP_IN0_NOC_CREDIT_RDY,
  input [181:0] IF_DMC_NPP_IN0_NOC_FLIT,
  input IF_DMC_NPP_IN0_NOC_FLIT_EN,
  input [1:0] IF_DMC_NPP_IN0_NOC_PDEST_ID,
  input [4:0] IF_DMC_NPP_IN0_NOC_VALID,
  input IF_DMC_NPP_IN0_NOC_VALID_EN,
  input IF_DMC_NPP_IN1_NOC_CREDIT_RDY,
  input [181:0] IF_DMC_NPP_IN1_NOC_FLIT,
  input IF_DMC_NPP_IN1_NOC_FLIT_EN,
  input [1:0] IF_DMC_NPP_IN1_NOC_PDEST_ID,
  input [4:0] IF_DMC_NPP_IN1_NOC_VALID,
  input IF_DMC_NPP_IN1_NOC_VALID_EN,
  input [4:0] IF_DMC_NPP_OUT0_NOC_CREDIT_RETURN,
  input IF_DMC_NPP_OUT0_NOC_CREDIT_RETURN_EN,
  input [4:0] IF_DMC_NPP_OUT1_NOC_CREDIT_RETURN,
  input IF_DMC_NPP_OUT1_NOC_CREDIT_RETURN_EN,
  input IF_NOC_NPP_IN0_NOC_CREDIT_RDY,
  input [181:0] IF_NOC_NPP_IN0_NOC_FLIT,
  input IF_NOC_NPP_IN0_NOC_FLIT_EN,
  input [7:0] IF_NOC_NPP_IN0_NOC_VALID,
  input IF_NOC_NPP_IN0_NOC_VALID_EN,
  input IF_NOC_NPP_IN1_NOC_CREDIT_RDY,
  input [181:0] IF_NOC_NPP_IN1_NOC_FLIT,
  input IF_NOC_NPP_IN1_NOC_FLIT_EN,
  input [7:0] IF_NOC_NPP_IN1_NOC_VALID,
  input IF_NOC_NPP_IN1_NOC_VALID_EN,
  input IF_NOC_NPP_IN2_NOC_CREDIT_RDY,
  input [181:0] IF_NOC_NPP_IN2_NOC_FLIT,
  input IF_NOC_NPP_IN2_NOC_FLIT_EN,
  input [7:0] IF_NOC_NPP_IN2_NOC_VALID,
  input IF_NOC_NPP_IN2_NOC_VALID_EN,
  input IF_NOC_NPP_IN3_NOC_CREDIT_RDY,
  input [181:0] IF_NOC_NPP_IN3_NOC_FLIT,
  input IF_NOC_NPP_IN3_NOC_FLIT_EN,
  input [7:0] IF_NOC_NPP_IN3_NOC_VALID,
  input IF_NOC_NPP_IN3_NOC_VALID_EN,
  input [7:0] IF_NOC_NPP_OUT0_NOC_CREDIT_RETURN,
  input IF_NOC_NPP_OUT0_NOC_CREDIT_RETURN_EN,
  input [7:0] IF_NOC_NPP_OUT1_NOC_CREDIT_RETURN,
  input IF_NOC_NPP_OUT1_NOC_CREDIT_RETURN_EN,
  input [7:0] IF_NOC_NPP_OUT2_NOC_CREDIT_RETURN,
  input IF_NOC_NPP_OUT2_NOC_CREDIT_RETURN_EN,
  input [7:0] IF_NOC_NPP_OUT3_NOC_CREDIT_RETURN,
  input IF_NOC_NPP_OUT3_NOC_CREDIT_RETURN_EN
);

// define constants
  localparam MODULE_NAME = "NOC2_XBR4X2";
  

      BM_NOC2_XBR4X2 #(
      .REG_DDR2NOC_DP0_NP0_VCA_RD_TOKEN (REG_DDR2NOC_DP0_NP0_VCA_RD_TOKEN),
      .REG_DDR2NOC_DP0_NP0_VCA_WR_TOKEN (REG_DDR2NOC_DP0_NP0_VCA_WR_TOKEN),
      .REG_DDR2NOC_DP0_NP1_VCA_RD_TOKEN (REG_DDR2NOC_DP0_NP1_VCA_RD_TOKEN),
      .REG_DDR2NOC_DP0_NP1_VCA_WR_TOKEN (REG_DDR2NOC_DP0_NP1_VCA_WR_TOKEN),
      .REG_DDR2NOC_DP0_NP2_VCA_RD_TOKEN (REG_DDR2NOC_DP0_NP2_VCA_RD_TOKEN),
      .REG_DDR2NOC_DP0_NP2_VCA_WR_TOKEN (REG_DDR2NOC_DP0_NP2_VCA_WR_TOKEN),
      .REG_DDR2NOC_DP0_NP3_VCA_RD_TOKEN (REG_DDR2NOC_DP0_NP3_VCA_RD_TOKEN),
      .REG_DDR2NOC_DP0_NP3_VCA_WR_TOKEN (REG_DDR2NOC_DP0_NP3_VCA_WR_TOKEN),
      .REG_DDR2NOC_DP1_NP0_VCA_RD_TOKEN (REG_DDR2NOC_DP1_NP0_VCA_RD_TOKEN),
      .REG_DDR2NOC_DP1_NP0_VCA_WR_TOKEN (REG_DDR2NOC_DP1_NP0_VCA_WR_TOKEN),
      .REG_DDR2NOC_DP1_NP1_VCA_RD_TOKEN (REG_DDR2NOC_DP1_NP1_VCA_RD_TOKEN),
      .REG_DDR2NOC_DP1_NP1_VCA_WR_TOKEN (REG_DDR2NOC_DP1_NP1_VCA_WR_TOKEN),
      .REG_DDR2NOC_DP1_NP2_VCA_RD_TOKEN (REG_DDR2NOC_DP1_NP2_VCA_RD_TOKEN),
      .REG_DDR2NOC_DP1_NP2_VCA_WR_TOKEN (REG_DDR2NOC_DP1_NP2_VCA_WR_TOKEN),
      .REG_DDR2NOC_DP1_NP3_VCA_RD_TOKEN (REG_DDR2NOC_DP1_NP3_VCA_RD_TOKEN),
      .REG_DDR2NOC_DP1_NP3_VCA_WR_TOKEN (REG_DDR2NOC_DP1_NP3_VCA_WR_TOKEN),
      .REG_DDR2NOC_PRI_NP0 (REG_DDR2NOC_PRI_NP0),
      .REG_DDR2NOC_PRI_NP1 (REG_DDR2NOC_PRI_NP1),
      .REG_DDR2NOC_PRI_NP2 (REG_DDR2NOC_PRI_NP2),
      .REG_DDR2NOC_PRI_NP3 (REG_DDR2NOC_PRI_NP3),
      .REG_DDR2NOC_RD_VC_MAP_NP0 (REG_DDR2NOC_RD_VC_MAP_NP0),
      .REG_DDR2NOC_RD_VC_MAP_NP1 (REG_DDR2NOC_RD_VC_MAP_NP1),
      .REG_DDR2NOC_RD_VC_MAP_NP2 (REG_DDR2NOC_RD_VC_MAP_NP2),
      .REG_DDR2NOC_RD_VC_MAP_NP3 (REG_DDR2NOC_RD_VC_MAP_NP3),
      .REG_DST_ID_P0 (REG_DST_ID_P0),
      .REG_DST_ID_P1 (REG_DST_ID_P1),
      .REG_NOC2DDR_NP0_DP0_VCA_TOKEN (REG_NOC2DDR_NP0_DP0_VCA_TOKEN),
      .REG_NOC2DDR_NP0_DP1_VCA_TOKEN (REG_NOC2DDR_NP0_DP1_VCA_TOKEN),
      .REG_NOC2DDR_NP1_DP0_VCA_TOKEN (REG_NOC2DDR_NP1_DP0_VCA_TOKEN),
      .REG_NOC2DDR_NP1_DP1_VCA_TOKEN (REG_NOC2DDR_NP1_DP1_VCA_TOKEN),
      .REG_NOC2DDR_NP2_DP0_VCA_TOKEN (REG_NOC2DDR_NP2_DP0_VCA_TOKEN),
      .REG_NOC2DDR_NP2_DP1_VCA_TOKEN (REG_NOC2DDR_NP2_DP1_VCA_TOKEN),
      .REG_NOC2DDR_NP3_DP0_VCA_TOKEN (REG_NOC2DDR_NP3_DP0_VCA_TOKEN),
      .REG_NOC2DDR_NP3_DP1_VCA_TOKEN (REG_NOC2DDR_NP3_DP1_VCA_TOKEN),
      .REG_NOC2DDR_PRI_DP0 (REG_NOC2DDR_PRI_DP0),
      .REG_NOC2DDR_PRI_DP1 (REG_NOC2DDR_PRI_DP1),
      .REG_NOC2DDR_RD_CH_IDX_MAP_DP0 (REG_NOC2DDR_RD_CH_IDX_MAP_DP0),
      .REG_NOC2DDR_RD_CH_IDX_MAP_DP1 (REG_NOC2DDR_RD_CH_IDX_MAP_DP1),
      .REG_NOC_CTL (REG_NOC_CTL)
) BM_NOC2_XBR4X2_INST (
      .IF_DMC_NPP_IN0_NOC_CREDIT_RETURN (IF_DMC_NPP_IN0_NOC_CREDIT_RETURN),
      .IF_DMC_NPP_IN0_NOC_CREDIT_RETURN_EN (IF_DMC_NPP_IN0_NOC_CREDIT_RETURN_EN),
      .IF_DMC_NPP_IN1_NOC_CREDIT_RETURN (IF_DMC_NPP_IN1_NOC_CREDIT_RETURN),
      .IF_DMC_NPP_IN1_NOC_CREDIT_RETURN_EN (IF_DMC_NPP_IN1_NOC_CREDIT_RETURN_EN),
      .IF_DMC_NPP_OUT0_NOC_CREDIT_RDY (IF_DMC_NPP_OUT0_NOC_CREDIT_RDY),
      .IF_DMC_NPP_OUT0_NOC_FLIT (IF_DMC_NPP_OUT0_NOC_FLIT),
      .IF_DMC_NPP_OUT0_NOC_FLIT_EN (IF_DMC_NPP_OUT0_NOC_FLIT_EN),
      .IF_DMC_NPP_OUT0_NOC_PDEST_ID (IF_DMC_NPP_OUT0_NOC_PDEST_ID),
      .IF_DMC_NPP_OUT0_NOC_VALID (IF_DMC_NPP_OUT0_NOC_VALID),
      .IF_DMC_NPP_OUT0_NOC_VALID_EN (IF_DMC_NPP_OUT0_NOC_VALID_EN),
      .IF_DMC_NPP_OUT1_NOC_CREDIT_RDY (IF_DMC_NPP_OUT1_NOC_CREDIT_RDY),
      .IF_DMC_NPP_OUT1_NOC_FLIT (IF_DMC_NPP_OUT1_NOC_FLIT),
      .IF_DMC_NPP_OUT1_NOC_FLIT_EN (IF_DMC_NPP_OUT1_NOC_FLIT_EN),
      .IF_DMC_NPP_OUT1_NOC_PDEST_ID (IF_DMC_NPP_OUT1_NOC_PDEST_ID),
      .IF_DMC_NPP_OUT1_NOC_VALID (IF_DMC_NPP_OUT1_NOC_VALID),
      .IF_DMC_NPP_OUT1_NOC_VALID_EN (IF_DMC_NPP_OUT1_NOC_VALID_EN),
      .IF_NOC_NPP_IN0_NOC_CREDIT_RETURN (IF_NOC_NPP_IN0_NOC_CREDIT_RETURN),
      .IF_NOC_NPP_IN0_NOC_CREDIT_RETURN_EN (IF_NOC_NPP_IN0_NOC_CREDIT_RETURN_EN),
      .IF_NOC_NPP_IN1_NOC_CREDIT_RETURN (IF_NOC_NPP_IN1_NOC_CREDIT_RETURN),
      .IF_NOC_NPP_IN1_NOC_CREDIT_RETURN_EN (IF_NOC_NPP_IN1_NOC_CREDIT_RETURN_EN),
      .IF_NOC_NPP_IN2_NOC_CREDIT_RETURN (IF_NOC_NPP_IN2_NOC_CREDIT_RETURN),
      .IF_NOC_NPP_IN2_NOC_CREDIT_RETURN_EN (IF_NOC_NPP_IN2_NOC_CREDIT_RETURN_EN),
      .IF_NOC_NPP_IN3_NOC_CREDIT_RETURN (IF_NOC_NPP_IN3_NOC_CREDIT_RETURN),
      .IF_NOC_NPP_IN3_NOC_CREDIT_RETURN_EN (IF_NOC_NPP_IN3_NOC_CREDIT_RETURN_EN),
      .IF_NOC_NPP_OUT0_NOC_CREDIT_RDY (IF_NOC_NPP_OUT0_NOC_CREDIT_RDY),
      .IF_NOC_NPP_OUT0_NOC_FLIT (IF_NOC_NPP_OUT0_NOC_FLIT),
      .IF_NOC_NPP_OUT0_NOC_FLIT_EN (IF_NOC_NPP_OUT0_NOC_FLIT_EN),
      .IF_NOC_NPP_OUT0_NOC_VALID (IF_NOC_NPP_OUT0_NOC_VALID),
      .IF_NOC_NPP_OUT0_NOC_VALID_EN (IF_NOC_NPP_OUT0_NOC_VALID_EN),
      .IF_NOC_NPP_OUT1_NOC_CREDIT_RDY (IF_NOC_NPP_OUT1_NOC_CREDIT_RDY),
      .IF_NOC_NPP_OUT1_NOC_FLIT (IF_NOC_NPP_OUT1_NOC_FLIT),
      .IF_NOC_NPP_OUT1_NOC_FLIT_EN (IF_NOC_NPP_OUT1_NOC_FLIT_EN),
      .IF_NOC_NPP_OUT1_NOC_VALID (IF_NOC_NPP_OUT1_NOC_VALID),
      .IF_NOC_NPP_OUT1_NOC_VALID_EN (IF_NOC_NPP_OUT1_NOC_VALID_EN),
      .IF_NOC_NPP_OUT2_NOC_CREDIT_RDY (IF_NOC_NPP_OUT2_NOC_CREDIT_RDY),
      .IF_NOC_NPP_OUT2_NOC_FLIT (IF_NOC_NPP_OUT2_NOC_FLIT),
      .IF_NOC_NPP_OUT2_NOC_FLIT_EN (IF_NOC_NPP_OUT2_NOC_FLIT_EN),
      .IF_NOC_NPP_OUT2_NOC_VALID (IF_NOC_NPP_OUT2_NOC_VALID),
      .IF_NOC_NPP_OUT2_NOC_VALID_EN (IF_NOC_NPP_OUT2_NOC_VALID_EN),
      .IF_NOC_NPP_OUT3_NOC_CREDIT_RDY (IF_NOC_NPP_OUT3_NOC_CREDIT_RDY),
      .IF_NOC_NPP_OUT3_NOC_FLIT (IF_NOC_NPP_OUT3_NOC_FLIT),
      .IF_NOC_NPP_OUT3_NOC_FLIT_EN (IF_NOC_NPP_OUT3_NOC_FLIT_EN),
      .IF_NOC_NPP_OUT3_NOC_VALID (IF_NOC_NPP_OUT3_NOC_VALID),
      .IF_NOC_NPP_OUT3_NOC_VALID_EN (IF_NOC_NPP_OUT3_NOC_VALID_EN),
      .IF_DMC_NPP_IN0_NOC_CREDIT_RDY (IF_DMC_NPP_IN0_NOC_CREDIT_RDY),
      .IF_DMC_NPP_IN0_NOC_FLIT (IF_DMC_NPP_IN0_NOC_FLIT),
      .IF_DMC_NPP_IN0_NOC_FLIT_EN (IF_DMC_NPP_IN0_NOC_FLIT_EN),
      .IF_DMC_NPP_IN0_NOC_PDEST_ID (IF_DMC_NPP_IN0_NOC_PDEST_ID),
      .IF_DMC_NPP_IN0_NOC_VALID (IF_DMC_NPP_IN0_NOC_VALID),
      .IF_DMC_NPP_IN0_NOC_VALID_EN (IF_DMC_NPP_IN0_NOC_VALID_EN),
      .IF_DMC_NPP_IN1_NOC_CREDIT_RDY (IF_DMC_NPP_IN1_NOC_CREDIT_RDY),
      .IF_DMC_NPP_IN1_NOC_FLIT (IF_DMC_NPP_IN1_NOC_FLIT),
      .IF_DMC_NPP_IN1_NOC_FLIT_EN (IF_DMC_NPP_IN1_NOC_FLIT_EN),
      .IF_DMC_NPP_IN1_NOC_PDEST_ID (IF_DMC_NPP_IN1_NOC_PDEST_ID),
      .IF_DMC_NPP_IN1_NOC_VALID (IF_DMC_NPP_IN1_NOC_VALID),
      .IF_DMC_NPP_IN1_NOC_VALID_EN (IF_DMC_NPP_IN1_NOC_VALID_EN),
      .IF_DMC_NPP_OUT0_NOC_CREDIT_RETURN (IF_DMC_NPP_OUT0_NOC_CREDIT_RETURN),
      .IF_DMC_NPP_OUT0_NOC_CREDIT_RETURN_EN (IF_DMC_NPP_OUT0_NOC_CREDIT_RETURN_EN),
      .IF_DMC_NPP_OUT1_NOC_CREDIT_RETURN (IF_DMC_NPP_OUT1_NOC_CREDIT_RETURN),
      .IF_DMC_NPP_OUT1_NOC_CREDIT_RETURN_EN (IF_DMC_NPP_OUT1_NOC_CREDIT_RETURN_EN),
      .IF_NOC_NPP_IN0_NOC_CREDIT_RDY (IF_NOC_NPP_IN0_NOC_CREDIT_RDY),
      .IF_NOC_NPP_IN0_NOC_FLIT (IF_NOC_NPP_IN0_NOC_FLIT),
      .IF_NOC_NPP_IN0_NOC_FLIT_EN (IF_NOC_NPP_IN0_NOC_FLIT_EN),
      .IF_NOC_NPP_IN0_NOC_VALID (IF_NOC_NPP_IN0_NOC_VALID),
      .IF_NOC_NPP_IN0_NOC_VALID_EN (IF_NOC_NPP_IN0_NOC_VALID_EN),
      .IF_NOC_NPP_IN1_NOC_CREDIT_RDY (IF_NOC_NPP_IN1_NOC_CREDIT_RDY),
      .IF_NOC_NPP_IN1_NOC_FLIT (IF_NOC_NPP_IN1_NOC_FLIT),
      .IF_NOC_NPP_IN1_NOC_FLIT_EN (IF_NOC_NPP_IN1_NOC_FLIT_EN),
      .IF_NOC_NPP_IN1_NOC_VALID (IF_NOC_NPP_IN1_NOC_VALID),
      .IF_NOC_NPP_IN1_NOC_VALID_EN (IF_NOC_NPP_IN1_NOC_VALID_EN),
      .IF_NOC_NPP_IN2_NOC_CREDIT_RDY (IF_NOC_NPP_IN2_NOC_CREDIT_RDY),
      .IF_NOC_NPP_IN2_NOC_FLIT (IF_NOC_NPP_IN2_NOC_FLIT),
      .IF_NOC_NPP_IN2_NOC_FLIT_EN (IF_NOC_NPP_IN2_NOC_FLIT_EN),
      .IF_NOC_NPP_IN2_NOC_VALID (IF_NOC_NPP_IN2_NOC_VALID),
      .IF_NOC_NPP_IN2_NOC_VALID_EN (IF_NOC_NPP_IN2_NOC_VALID_EN),
      .IF_NOC_NPP_IN3_NOC_CREDIT_RDY (IF_NOC_NPP_IN3_NOC_CREDIT_RDY),
      .IF_NOC_NPP_IN3_NOC_FLIT (IF_NOC_NPP_IN3_NOC_FLIT),
      .IF_NOC_NPP_IN3_NOC_FLIT_EN (IF_NOC_NPP_IN3_NOC_FLIT_EN),
      .IF_NOC_NPP_IN3_NOC_VALID (IF_NOC_NPP_IN3_NOC_VALID),
      .IF_NOC_NPP_IN3_NOC_VALID_EN (IF_NOC_NPP_IN3_NOC_VALID_EN),
      .IF_NOC_NPP_OUT0_NOC_CREDIT_RETURN (IF_NOC_NPP_OUT0_NOC_CREDIT_RETURN),
      .IF_NOC_NPP_OUT0_NOC_CREDIT_RETURN_EN (IF_NOC_NPP_OUT0_NOC_CREDIT_RETURN_EN),
      .IF_NOC_NPP_OUT1_NOC_CREDIT_RETURN (IF_NOC_NPP_OUT1_NOC_CREDIT_RETURN),
      .IF_NOC_NPP_OUT1_NOC_CREDIT_RETURN_EN (IF_NOC_NPP_OUT1_NOC_CREDIT_RETURN_EN),
      .IF_NOC_NPP_OUT2_NOC_CREDIT_RETURN (IF_NOC_NPP_OUT2_NOC_CREDIT_RETURN),
      .IF_NOC_NPP_OUT2_NOC_CREDIT_RETURN_EN (IF_NOC_NPP_OUT2_NOC_CREDIT_RETURN_EN),
      .IF_NOC_NPP_OUT3_NOC_CREDIT_RETURN (IF_NOC_NPP_OUT3_NOC_CREDIT_RETURN),
      .IF_NOC_NPP_OUT3_NOC_CREDIT_RETURN_EN (IF_NOC_NPP_OUT3_NOC_CREDIT_RETURN_EN)
    );
// begin behavioral model

// end behavioral model

endmodule

`endcelldefine