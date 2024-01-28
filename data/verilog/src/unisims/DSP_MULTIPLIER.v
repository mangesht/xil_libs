///////////////////////////////////////////////////////////////////////////////
//  Copyright (c) 1995/2018 Xilinx, Inc.
//  All Right Reserved.
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /     Vendor      : Xilinx
// \   \   \/      Version     : 2018.3
//  \   \          Description : Xilinx Unified Simulation Library Component
//  /   /                        DSP_MULTIPLIER
// /___/   /\      Filename    : DSP_MULTIPLIER.v
// \   \  /  \
//  \___\/\___\
//
///////////////////////////////////////////////////////////////////////////////
//  Revision:
//  07/15/12 - Migrate from E1.
//  12/10/12 - Add dynamic registers
//  10/22/14 - 808642 - Added #1 to $finish
//  End Revision:
///////////////////////////////////////////////////////////////////////////////
`timescale 1 ps / 1 ps

`celldefine

module DSP_MULTIPLIER #(
`ifdef XIL_TIMING
  parameter LOC = "UNPLACED",
`endif
  parameter AMULTSEL = "A",
  parameter BMULTSEL = "B",
  parameter USE_MULT = "MULTIPLY"
)(
  output AMULT26,
  output BMULT17,
  output [44:0] U,
  output [44:0] V,

  input [26:0] A2A1,
  input [26:0] AD_DATA,
  input [17:0] B2B1
);

// define constants
  localparam MODULE_NAME = "DSP_MULTIPLIER";
  
// Parameter encodings and registers
  localparam AMULTSEL_A = 0;
  localparam AMULTSEL_AD = 1;
  localparam BMULTSEL_AD = 1;
  localparam BMULTSEL_B = 0;
  localparam USE_MULT_DYNAMIC = 1;
  localparam USE_MULT_MULTIPLY = 0;
  localparam USE_MULT_NONE = 2;

  reg trig_attr;
// include dynamic registers - XILINX test only
`ifdef XIL_DR
  `include "DSP_MULTIPLIER_dr.v"
`else
  reg [16:1] AMULTSEL_REG = AMULTSEL;
  reg [16:1] BMULTSEL_REG = BMULTSEL;
  reg [64:1] USE_MULT_REG = USE_MULT;
`endif

`ifdef XIL_XECLIB
  wire AMULTSEL_BIN;
  wire BMULTSEL_BIN;
  wire [1:0] USE_MULT_BIN;
`else
  reg AMULTSEL_BIN;
  reg BMULTSEL_BIN;
  reg [1:0] USE_MULT_BIN;
`endif

`ifdef XIL_XECLIB
reg glblGSR = 1'b0;
`else
tri0 glblGSR = glbl.GSR;
`endif

`ifndef XIL_XECLIB
  reg attr_test;
  reg attr_err;
  
  initial begin
  trig_attr = 1'b0;
  `ifdef XIL_ATTR_TEST
    attr_test = 1'b1;
  `else
    attr_test = 1'b0;
  `endif
    attr_err = 1'b0;
    #1;
    trig_attr = ~trig_attr;
  end
`endif

`ifdef XIL_XECLIB
  assign AMULTSEL_BIN =
      (AMULTSEL_REG == "A") ? AMULTSEL_A :
      (AMULTSEL_REG == "AD") ? AMULTSEL_AD :
       AMULTSEL_A;
  
  assign BMULTSEL_BIN =
      (BMULTSEL_REG == "B") ? BMULTSEL_B :
      (BMULTSEL_REG == "AD") ? BMULTSEL_AD :
       BMULTSEL_B;
  
  assign USE_MULT_BIN =
      (USE_MULT_REG == "MULTIPLY") ? USE_MULT_MULTIPLY :
      (USE_MULT_REG == "DYNAMIC") ? USE_MULT_DYNAMIC :
      (USE_MULT_REG == "NONE") ? USE_MULT_NONE :
       USE_MULT_MULTIPLY;
  
`else
  always @ (trig_attr) begin
  #1;
  AMULTSEL_BIN =
      (AMULTSEL_REG == "A") ? AMULTSEL_A :
      (AMULTSEL_REG == "AD") ? AMULTSEL_AD :
       AMULTSEL_A;
  
  BMULTSEL_BIN =
      (BMULTSEL_REG == "B") ? BMULTSEL_B :
      (BMULTSEL_REG == "AD") ? BMULTSEL_AD :
       BMULTSEL_B;
  
  USE_MULT_BIN =
      (USE_MULT_REG == "MULTIPLY") ? USE_MULT_MULTIPLY :
      (USE_MULT_REG == "DYNAMIC") ? USE_MULT_DYNAMIC :
      (USE_MULT_REG == "NONE") ? USE_MULT_NONE :
       USE_MULT_MULTIPLY;
  
  end
`endif

`ifndef XIL_TIMING
  initial begin
    $display("Error: [Unisim %s-100] SIMPRIM primitive is not intended for direct instantiation in RTL or functional netlists. This primitive is only available in the SIMPRIM library for implemented netlists, please ensure you are pointing to the correct library. Instance %m", MODULE_NAME);
    #1 $finish;
  end
`endif

`ifndef XIL_XECLIB
  always @ (trig_attr) begin
    #1;
    if ((attr_test == 1'b1) ||
        ((AMULTSEL_REG != "A") &&
         (AMULTSEL_REG != "AD"))) begin
      $display("Error: [Unisim %s-101] AMULTSEL attribute is set to %s.  Legal values for this attribute are A or AD. Instance: %m", MODULE_NAME, AMULTSEL_REG);
      attr_err = 1'b1;
    end
    
    if ((attr_test == 1'b1) ||
        ((BMULTSEL_REG != "B") &&
         (BMULTSEL_REG != "AD"))) begin
      $display("Error: [Unisim %s-102] BMULTSEL attribute is set to %s.  Legal values for this attribute are B or AD. Instance: %m", MODULE_NAME, BMULTSEL_REG);
      attr_err = 1'b1;
    end
    
    if ((attr_test == 1'b1) ||
        ((USE_MULT_REG != "MULTIPLY") &&
         (USE_MULT_REG != "DYNAMIC") &&
         (USE_MULT_REG != "NONE"))) begin
      $display("Error: [Unisim %s-103] USE_MULT attribute is set to %s.  Legal values for this attribute are MULTIPLY, DYNAMIC or NONE. Instance: %m", MODULE_NAME, USE_MULT_REG);
      attr_err = 1'b1;
    end
    
    if (attr_err == 1'b1) #1 $finish;
  end
`endif

// begin behavioral model

 localparam M_WIDTH   = 45;
  reg [17:0] b_mult_mux;
  reg [26:0] a_mult_mux;
  reg [M_WIDTH-1:0] mult;
  reg [M_WIDTH-2:0] ps_u_mask;
  reg [M_WIDTH-2:0] ps_v_mask;

// initialize regs
`ifndef XIL_XECLIB
initial begin
  ps_u_mask = 44'h55555555555;
  ps_v_mask = 44'haaaaaaaaaaa;
end
`endif

always @(*) begin
  if (AMULTSEL_BIN == AMULTSEL_A) a_mult_mux = A2A1;
  else a_mult_mux = AD_DATA;
end
always @(*) begin
  if (BMULTSEL_BIN == BMULTSEL_B) b_mult_mux = B2B1;
  else b_mult_mux = AD_DATA;
end

  assign AMULT26 = a_mult_mux[26];
  assign BMULT17 = b_mult_mux[17];
// U[44],V[44]  11 when mult[44]=0,  10 when mult[44]=1
  assign U = {1'b1,      mult[43:0] & ps_u_mask};
  assign V = {~mult[44], mult[43:0] & ps_v_mask};

always @(*) begin
  if (USE_MULT_BIN == USE_MULT_NONE) mult = 45'b0;
  else mult = ({{18{a_mult_mux[26]}},a_mult_mux} * {{27{b_mult_mux[17]}},b_mult_mux});
end

// end behavioral model

`ifndef XIL_XECLIB
`ifdef XIL_TIMING
  // begin timing section
  specify
    (A2A1 *> AMULT26) = (0:0:0, 0:0:0);
    (A2A1 *> U) = (0:0:0, 0:0:0);
    (A2A1 *> V) = (0:0:0, 0:0:0);
    (AD_DATA *> AMULT26) = (0:0:0, 0:0:0);
    (AD_DATA *> BMULT17) = (0:0:0, 0:0:0);
    (AD_DATA *> U) = (0:0:0, 0:0:0);
    (AD_DATA *> V) = (0:0:0, 0:0:0);
    (B2B1 *> BMULT17) = (0:0:0, 0:0:0);
    (B2B1 *> U) = (0:0:0, 0:0:0);
    (B2B1 *> V) = (0:0:0, 0:0:0);
    specparam PATHPULSE$ = 0;
  endspecify
   // end timing section 
`endif
`endif
endmodule

`endcelldefine
